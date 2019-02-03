#!/usr/bin/env bash

THUMBNAILS=`find . -name thumb.screenshot*`

for FILE in ${THUMBNAILS}
do
    rm "$FILE"
done

SCREENSHOTS=`find . -name screenshot*`

for FILE in ${SCREENSHOTS}
do
    convert -thumbnail x320 "$FILE" "${FILE%/*}/thumb.${FILE##*/}"
done
