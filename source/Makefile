.PHONY: release
release:
	(cd ../.. \
		&& rm -rf cassiel.ui-candy-2006 \
		&& cp -r ui-candy-2006 cassiel.ui-candy-2006 \
		&& tar -cvf cassiel.ui-candy-2006.tar \
			--exclude=".git" --exclude="source" \
			--disable-copyfile \
			cassiel.ui-candy-2006 \
		&& rm -rf cassiel.ui-candy-2006)
