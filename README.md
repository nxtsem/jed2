# jed
This is a text editor for CP/M v2.2

It is a "modern" text editor, in that it can use VT100 cursor keys, and Page Up, Page Down, Home, End, Backspace etc, rather than CP/M-style Ctrl-S, Ctrl-E keys! But it is totally configurable, so you can set the keys to be whatever you want.

It's only a prototype so far, but it supports this:

* You can start it with a filename, and it will load up that file: JED MYFILE.TXT
* You can start it with no filename, and it will make an empty doc: JED
* If you start with no filename it will ask for one when you exit.
* You can navigate around with whichever keys you have chosen to be your cursor keys.
* You can press <kbd>Home</kbd> to go to the first non-space character in a row, or the start of the line.
* You can press <kbd>End</kbd> to go to the end of the row.
* You can press <kbd>PAGE-UP</kbd> and <kbd>PAGE-DOWN</kbd> to go up and down by a page.
* You can press <kbd>Ctrl</kbd> + <kbd>X</kbd> to save and exit.
* You can press another key of your choosing to exit without saving.

There is also a configuration program, JEDCONF.COM, which configures the screen dimensions, and the key definitions. Run JEDCONF first to define all your keys and set your screen height and width. This will create a file JED.CFG with the configuration in it, which JED will then use. Each key, such as Page-Up can be associated with a string of up to 8 hex values, so just about any keyboard should work with it. You must edit a file on the same disk as JED, with the JED.CFG file also on that disk, so JED can find it.

I am experimenting with syntax highlighting specifically for assembler files, so anything after a ";" is treated as a comment and coloured in green!

There is also an auto-indent option, so if you indent a line, then press ENTER, the next line will be implemented too.

------------------------------------------------------------------------------------------
Note from NXTSEM: The Jed editor is a fast, small and lightweight editor written in Z80 assembly code. A CP/M editor that uses arrow keys, page up/down, ect. is excellent for those that are used to typing on modern PC keyboards.  While Jed ran well on the RunCPM CP/M emulator, it would erase the previous content of a file that was re-opened for editing on my CP/M-Z80 hardware and other CP/M emulators.  

My terminal setup is TeraTerm running on Windows emulating a VT100 using a typical PC keyboard. 
Modifications: Altered statements to be compatible with assemblers such as zmac (2022 version for windows) and
for other reasons.
   a) Changed binary number declarations from %xxxxxxxx to xxxxxxxxb.
   b) Changed DS n directives to DC n,0 to fill data segments with zeroes (matches original assembled code).
   c) Added error messages to some BDOS call file functions (initially for debug).
   d) Orginal read sequential code may have an error.  Replaced code CP 255, jr nz  for  CP 0, jr z.
      This seems to have fixed the file content erase issue for me.
   e) Altered some of the default keystroke entries to match my setup.    

A copy/paste function can be accomplished with the mouse using teraterm.

One other issue is that the configuration program (jedconf) does not actually store changes to the screen row/column settings (default is 24x80).  I plan to work on that next.  My goal is to keep the program size under 4K bytes (0FFF). 
