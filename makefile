# Option -d (--define-default) is the command-line interface to LilyPond’s Scheme function ly:set-option.
# https://lilypond.org/doc/v2.23/Documentation/usage.pdf
#
# Add point and click to PDF output
flags=--define-default=point-and-click --define-default=paper-size=\"a4\" --verbose

# The targets are the names of the files

%:
	lilypond $(flags) --include=src --output=out $@.ly
