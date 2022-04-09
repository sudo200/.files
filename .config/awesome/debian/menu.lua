-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

local awesome = awesome

Debian_menu = {}

Debian_menu["Debian_Anwendungen_Barrierefreiheit"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Anwendungen_Betrachter"] = {
	{"Xditview","xditview"},
}
Debian_menu["Debian_Anwendungen_Editoren"] = {
	{"bvi", "x-terminal-emulator -e ".."/usr/bin/bvi"},
	{"Xedit","xedit"},
}
Debian_menu["Debian_Anwendungen_Grafik"] = {
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Anwendungen_Netzwerk_Kommunikation"] = {
	{"Xbiff","xbiff"},
}
Debian_menu["Debian_Anwendungen_Netzwerk"] = {
	{ "Kommunikation", Debian_menu["Debian_Anwendungen_Netzwerk_Kommunikation"] },
}
Debian_menu["Debian_Anwendungen_Programmierung"] = {
	{"GDB", "x-terminal-emulator -e ".."/usr/bin/gdb"},
}
Debian_menu["Debian_Anwendungen_Shells"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
	{"Zsh", "x-terminal-emulator -e ".."/bin/zsh"},
}
Debian_menu["Debian_Anwendungen_System_Administration"] = {
	{"Editres","editres"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Anwendungen_System_Hardware"] = {
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Anwendungen_System_Überwachung"] = {
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Anwendungen_System"] = {
	{ "Administration", Debian_menu["Debian_Anwendungen_System_Administration"] },
	{ "Hardware", Debian_menu["Debian_Anwendungen_System_Hardware"] },
	{ "Überwachung", Debian_menu["Debian_Anwendungen_System_Überwachung"] },
}
Debian_menu["Debian_Anwendungen_Wissenschaft_Mathematik"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Anwendungen_Wissenschaft"] = {
	{ "Mathematik", Debian_menu["Debian_Anwendungen_Wissenschaft_Mathematik"] },
}
Debian_menu["Debian_Anwendungen"] = {
	{ "Barrierefreiheit", Debian_menu["Debian_Anwendungen_Barrierefreiheit"] },
	{ "Betrachter", Debian_menu["Debian_Anwendungen_Betrachter"] },
	{ "Editoren", Debian_menu["Debian_Anwendungen_Editoren"] },
	{ "Grafik", Debian_menu["Debian_Anwendungen_Grafik"] },
	{ "Netzwerk", Debian_menu["Debian_Anwendungen_Netzwerk"] },
	{ "Programmierung", Debian_menu["Debian_Anwendungen_Programmierung"] },
	{ "Shells", Debian_menu["Debian_Anwendungen_Shells"] },
	{ "System", Debian_menu["Debian_Anwendungen_System"] },
	{ "Wissenschaft", Debian_menu["Debian_Anwendungen_Wissenschaft"] },
}
Debian_menu["Debian_Fenstermanager"] = {
	{"awesome",function () awesome.exec("/usr/bin/awesome") end,"/usr/share/pixmaps/awesome.xpm"},
}
Debian_menu["Debian_Hilfe"] = {
	{"Xman","xman"},
}
Debian_menu["Debian_Spiele_Spielzeuge"] = {
	{"Oclock","oclock"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Spiele"] = {
	{ "Spielzeuge", Debian_menu["Debian_Spiele_Spielzeuge"] },
}
Debian_menu["Debian"] = {
	{ "Anwendungen", Debian_menu["Debian_Anwendungen"] },
	{ "Fenstermanager", Debian_menu["Debian_Fenstermanager"] },
	{ "Hilfe", Debian_menu["Debian_Hilfe"] },
	{ "Spiele", Debian_menu["Debian_Spiele"] },
}

debian = { menu = { Debian_menu = Debian_menu } }
return debian