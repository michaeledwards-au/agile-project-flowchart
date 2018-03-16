#!/bin/sh

touch $1.dot
gedit $1.dot &
while inotifywait -e modify $1.dot || true; do dot -Tpdf -o $1.pdf $1.dot; done

