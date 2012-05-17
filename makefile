# command for compiling from mutopia
#flags = -dno-point-and-click -dpaper-size=\"a4\" --verbose
flags = -dpoint-and-click -dpaper-size=\"a4\" --verbose

# the targets are the names of the files
# this allows executing :mak from vim

%:
	lilypond $(flags) $@.ly

