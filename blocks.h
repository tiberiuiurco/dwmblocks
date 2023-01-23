//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
//  {"", "dwm-cmus.sh", 1, 0},
//	{"", "battery",	30,		0},
  {"", "memory", 5, 0},
  {"", "cpu", 5, 0},
  {"", "clock", 60, 0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
