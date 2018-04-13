/*	-*- tab-width: 4; -*- */

/*	A graphical panel for text, with various simple procedures for populating
	it. The panel can left-, centre- or right-justify the text, and the text can
	run in any orientation. Font size and style, and all colours, can be
	modified interactively.

	At the moment we have no plans for interaction (click/drag).
 */

autowatch = 0;

/*	O B J E C T S  */

function COLOUR(r, g, b) {
	this.r = r;
	this.g = g;
	this.b = b;
}

/*	C O N S T A N T S  */

var MYGLOBAL = "cassiel.textbrick.GLOBAL";

var PANEL_BG = new COLOUR(1, 1, 1);		//	Background colour
var TEXT_COLOUR = new COLOUR(0, 0, 0);

//	A format tag for pattr.

var PATTR_TAG = "TextBrick.PATTR.1";

//	Margin, in pixels:

var MARGIN_PX = 5;

//	Rotation modes:

var ROT_RIGHT = "right";
var ROT_UP = "up";
var ROT_DOWN = "down";

//	Alignment modes:

var ALIGN_LEFT = "left";
var ALIGN_CENTRE = "centre";
var ALIGN_RIGHT = "right";

/*	G L O B A L S  */

var g_FontName = "Monaco";
var g_FontSize = 9;

//	Sketch object which we'll either copy direct to the main sketch, or
//	manipulate via Image() to rotate:

var g_WorkingSketch;

//	Rotation mode.

var g_RotationMode = ROT_RIGHT;

//	Alignment.

var g_Alignment = ALIGN_LEFT;

/*	Lines of text; tolerate `undefined' for blank lines. The length of this array
	determines the positioning of the lines.

	Each line is, itself, an array of tokens. (We want to avoid blowing up Max's
	symbol table when we do things like saving and restoring pattr presets, so
	we only build composite lines when rendering.) */

var g_TheLines = new Array(1);		//	Length 1 to avoid arithmetic issues

//	Next target line for writing.

var g_NextLine = 0;

var g_FRGB = new COLOUR(0, 0, 0);
var g_BRGB = new COLOUR(1, 1, 1);

/*	I N I T I A L I S A T I O N  */

init();

function init() {
	sketch.fsaa = 0;
	regenSketch();
	clear();

	announce();

	//	If we have any arguments, take them as the text of a single line.
	if (jsarguments.length > 1) {
		g_TheLines.length = 1;
		g_TheLines[0] = jsarguments.slice(1);		//	Avoid mess-around with setitem() args.
		redraw();
		notifyclients();
	}
}

announce.local = true;
function announce() {
	var g = new Global(MYGLOBAL);

	if (g.announced === undefined) {
		post("| cassiel.textbrick\n");
		post("| nick rothwell, nick@cassiel.com / http://cassiel.com\n");
		g.announced = true;
	}
}

/*	D R A W I N G  */

function regenSketch() {
	if (g_RotationMode == ROT_RIGHT) {
		g_WorkingSketch = new Sketch(sketch.size[0], sketch.size[1]);
	} else {
		g_WorkingSketch = new Sketch(sketch.size[1], sketch.size[0]);
	}

	with (g_WorkingSketch) {
		fsaa = 0;
		font(g_FontName);
		fontsize(g_FontSize);
	}
}

/*	In general, we assume that text is horizontal - we get the other orientations
	by manipulating sketches. */

//	Draw existing text:

redraw.local = 1;
function redraw() {
	var pitch = 2.0 / g_TheLines.length;

	with (g_WorkingSketch) {
		var edge = screentoworld(g_WorkingSketch.size[0], 0)[0];
			//	Right OpenGL coordinate.

		//post("edge = " + edge + "\n");

		glclearcolor(g_BRGB.r, g_BRGB.g, g_BRGB.b, 1);
		glclear();

		glcolor(g_FRGB.r, g_FRGB.g, g_FRGB.b, 1);

		//	Calculate margin in OpenGL coordinates:
		var margin = screentoworld(g_WorkingSketch.size[0] / 2 + MARGIN_PX, 0)[0];
		//post("margin = " + margin + "\n");

		for (var i = 0; i < g_TheLines.length; i++) {
			var rowPos = 1 - pitch * (i + 0.5);

			if (g_Alignment == ALIGN_LEFT) {
				moveto(margin - edge, rowPos);
				textalign("left", "center");
			} else if (g_Alignment == ALIGN_RIGHT) {
				moveto(edge - margin, rowPos);
				//post("move to " + (edge - margin) + ", " + rowPos + "\n");
				textalign("right", "center");
			} else {				//	ALIGN_CENTRE
				moveto(0, rowPos);
				textalign("center", "center");
			}

			if (g_TheLines[i] !== undefined) {
				text(g_TheLines[i].join(" "));
			}
		}
	}

	if (g_RotationMode == ROT_RIGHT) {
		sketch.copypixels(g_WorkingSketch);
	} else {
		var img = new Image(g_WorkingSketch);

		img.swapxy();

		if (g_RotationMode == ROT_UP) {
			img.flip(0, 1);
		} else {
			img.flip(1, 0);
		}

		sketch.copypixels(img);
	}

	refresh();
}

/*	S T A T E  */

function clear() {
	g_TheLines = new Array(g_TheLines.length);
	g_NextLine = 0;
	redraw();
	notifyclients();
}

//	frgb() / brgb() - convert 0..255 to 0.0..1.0.

nativeFRGB.local = true;
function nativeFRGB(r, g, b) {
	g_FRGB = new COLOUR(r, g, b);
	redraw();
}

nativeBRGB.local = true;
function nativeBRGB(r, g, b) {
	g_BRGB = new COLOUR(r, g, b);
	redraw();
}

function frgb(r, g, b) {
	nativeFRGB(r / 255, g / 255, b / 255);
}

function brgb(r, g, b) {
	nativeBRGB(r / 255, g / 255, b / 255);
}

//	Change the number of lines, and redraw. */

function setsize(n) {
	if (n >= 1) {
		g_TheLines.length = n;
		redraw();
		notifyclients();
	} else {
		post("*** setsize: arg < 1\n");
	}
}

//	Font selection
function setfont(name, size) {
	g_FontName = name;
	g_FontSize = size;
	regenSketch();
	redraw();
}

//	Lines of text:
function append() {
	if (g_NextLine < g_TheLines.length) {
		var a = new Array();

		for (var i = 0; i < arguments.length; i++) {
			a.push(arguments[i]);
		}

		g_TheLines[g_NextLine++] = a;
		redraw();
		notifyclients();
	}
}

function setitem(n) {
	if (n >= 0 && n < g_TheLines.length) {
		var a = new Array();

		for (var i = 1; i < arguments.length; i++) {
			a.push(arguments[i]);
		}

		g_TheLines[n] = a;
		redraw();
		notifyclients();
	} else {
		post("*** setitem: out of bounds: " + n + "\n");
	}
}

function setdirection(tag) {
	//	TODO: reject illegal tags
	g_RotationMode = tag;
	regenSketch();
	redraw();
}

function setalignment(tag) {
	//	TODO: reject illegal tags
	g_Alignment = tag;
	redraw();
}

/*	S T A T E  */

/*	For presets, we save and restore all the text (but not the colours,
	font selection or alignments). */

function getvalueof() {
	var a = [PATTR_TAG];

	a.push(g_TheLines.length);

	for (var i = 0; i < g_TheLines.length; i++) {
		if (g_TheLines[i] == undefined) {				//	Empty/missing line.
			a.push(0);
		} else {
			var line = g_TheLines[i];

			a.push(line.length);
			for (var j = 0; j < line.length; j++) {
				a.push(line[j]);
			}
		}
	}

	return a;
}

function setvalueof() {
	var a = arrayfromargs(arguments);

	if (a.length < 2) {
		post("*** setvalueof: truncated?\n");
	} else if (a[0] != PATTR_TAG) {
		post("*** setvalueof: bad tag: " + a[0] + "\n");
	} else {		//	We take the format of the rest of the data on trust...
		var len = a[1];
		g_TheLines.length = len;
		g_NextLine = 0;

		var p = 2;									//	First line length at a[2].

		for (var i = 0; i < len; i++) {				//	Retrieve the lines.
			var linelen = a[p++];

			if (linelen == 0) {						//	Empty/undefined line.
				delete(g_TheLines[i]);
			} else {
				var line = new Array(linelen);

				for (var j = 0; j < linelen; j++) {
					line[j] = a[p++];
				}

				g_TheLines[i] = line;

				g_NextLine = i + 1;
					//	It's not clear what to set g_NextLine to when we restore;
					//	so, we point at a line beyond the last good line.
			}
		}

		redraw();
	}
}

/*	State to be embedded within the patcher. */

function save() {
	embedmessage("setdirection", g_RotationMode);
	embedmessage("setalignment", g_Alignment);
	embedmessage("setfont", g_FontName, g_FontSize);
	embedmessage("nativeFRGB", g_FRGB.r, g_FRGB.g, g_FRGB.b);
	embedmessage("nativeBRGB", g_BRGB.r, g_BRGB.g, g_BRGB.b);

	//	Arguably we could save the number of lines, but that will be saved/restored
	//	with the preset data anyway.
}

/*	I N T E R A C T I O N  */

function onresize(x, y) {
	regenSketch();
	redraw();
}
