.PHONY: release
release:
	(cd ../.. \
		&& rm -rf cassiel.ui-candy-2006 \
		&& cp -r ui-candy-2006 cassiel.ui-candy-2006 \
		&& tar -zcvf cassiel.ui-candy-2006.tar.gz \
			--exclude=".git" --exclude="source" \
			--disable-copyfile \
			cassiel.ui-candy-2006 \
		&& rm -rf cassiel.ui-candy-2006)
