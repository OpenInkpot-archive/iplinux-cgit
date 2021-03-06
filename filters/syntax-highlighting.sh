#!/bin/sh
# This script can be used to implement syntax highlighting in the cgit
# tree-view by refering to this file with the source-filter or repo.source-
# filter options in cgitrc.
#
# Note: the highlight command (http://www.andre-simon.de/) uses css for syntax
# highlighting, so you'll probably want something like the following included
# in your css file (generated by highlight 2.4.8 and adapted for cgit):
#
# table.blob .num  { color:#2928ff; }
# table.blob .esc  { color:#ff00ff; }
# table.blob .str  { color:#ff0000; }
# table.blob .dstr { color:#818100; }
# table.blob .slc  { color:#838183; font-style:italic; }
# table.blob .com  { color:#838183; font-style:italic; }
# table.blob .dir  { color:#008200; }
# table.blob .sym  { color:#000000; }
# table.blob .kwa  { color:#000000; font-weight:bold; }
# table.blob .kwb  { color:#830000; }
# table.blob .kwc  { color:#000000; font-weight:bold; }
# table.blob .kwd  { color:#010181; }

case "$1" in
	*.c)
		highlight -f -I -X -S c
		;;
	*.h)
		highlight -f -I -X -S c
		;;
	*.sh)
		highlight -f -I -X -S sh
		;;
	*.css)
		highlight -f -I -X -S css
		;;
	*)
		highlight -f -I -X -S txt
		;;
esac
