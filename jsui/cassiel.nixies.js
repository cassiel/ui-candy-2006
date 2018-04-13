/*	-*- tab-width: 4; -*- */

autowatch = 0;

sketch.fsaa = 0;
outlets = 0;

var MYGLOBAL = "cassiel.nixies.GLOBAL";

var BIG_DIGIT_HEIGHT = 64;

var g_Images = [];		//	Digit images.
var g_ImageSizeX;		//	Horizontal pitch of images (pixels).
var g_ImageSizeY;		//	Vertical pitch.

var g_NumDigits;
var g_CurrentValue = 0;

var g_DoingBig = false;		//	Which image set do we have?

var g_BGColour = {r: 0.38, g: 0.12, b: 0};

init();

loadDigits.local = 1;
function loadDigits(stem) {
	for (var i = 0; i < 10; i++) {
		g_Images[i] = new Image("gui.Nixie." + stem + "." + i + ".gif");
	}

	g_ImageSizeX = g_Images[0].size[0];
	g_ImageSizeY = g_Images[0].size[1];
}

loadBigDigits.local = 1;
function loadBigDigits() {
	loadDigits("BIG");
}

loadWeeDigits.local = 1;
function loadWeeDigits() {
	loadDigits("WEE");
}

isBig.local = 1;
function isBig() {
	return sketch.size[1] >= BIG_DIGIT_HEIGHT;
}

loadup.local = 1;
function loadup() {
	//	Shall we use the big digits?

	if (isBig()) {
		loadBigDigits();
	} else {
		loadWeeDigits();
	}

	g_DoingBig = isBig();
}

reset.local = 1;
function reset(n) {
	var nowBig = isBig();

	if (nowBig != g_DoingBig) {
		g_DoingBig = nowBig;
		loadup();
	}

	//	How many digits can we fit?

	g_NumDigits = Math.floor(sketch.size[0] / g_ImageSizeX);

	with (sketch) {
		glclearcolor(g_BGColour.r, g_BGColour.g, g_BGColour.b, 1);
		glclear();
	}

	msg_int(n);
}

function init() {
	loadup();
	reset(0);

	announce();
}

announce.local = true;
function announce() {
	var g = new Global(MYGLOBAL);

	if (g.announced === undefined) {
        post("| cassiel.nixies\n");
		post("| nick rothwell, nick@cassiel.com / http://cassiel.com\n");
		g.announced = true;
	}
}

digit.local = 1;
function digit(pos, n) {
	var a = sketch.worldtoscreen(0, 0);		//	Pixel coordinates of centre.

	var xOrigin = a[0] - g_ImageSizeX * (g_NumDigits / 2 - pos);
	var yOrigin = a[1] - g_ImageSizeY / 2;

	sketch.copypixels(g_Images[n], xOrigin, yOrigin);
}

function msg_int(n) {
	g_CurrentValue = n;

	for (var i = g_NumDigits - 1; i >= 0; i--) {
		digit(i, n % 10);
		n = Math.floor(n / 10);
	}

	refresh();
	notifyclients();
}

function getvalueof() {
	return g_CurrentValue;
}

function setvalueof(n) {
	msg_int(n);
}

function brgb(r, g, b) {
	g_BGColour = {r: r, g: g, b: b};
	reset(g_CurrentValue);
}

onresize.local = 1;
function onresize() {
	reset(g_CurrentValue);
}
