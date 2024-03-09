; CONSTANTS
TAB_WIDTH equ 8
TAB_MASK equ 00000111b
END_OF_TEXT equ 26
START_OF_TEXT equ 31
START_LABEL equ 1           ; This is the syntax highlighting start for a label
END_SYNTAX_HIGHLIGHT equ 7
EOL equ 13
LF equ 10
TAB equ 9
ESC equ 27
BDOS equ 5
BACKSPACE equ $08   ; was $7F  -jedmod
ENTER equ $0D
BDOS_CONSOLE_INPUT equ 6

USER_CURSOR_UP equ 128
USER_CURSOR_DOWN equ 129
USER_CURSOR_LEFT equ 130
USER_CURSOR_RIGHT equ 131
USER_CURSOR_HOME equ 132
USER_CURSOR_END equ 133
USER_CURSOR_PGUP equ 134
USER_CURSOR_PGDN equ 135
USER_DELETE equ 136
USER_QUIT equ 255
USER_QUIT_NO_SAVE equ 254

FCB equ 005CH   ; We use the standard default FCB
DMA equ 0080H   ; Standard DMA area
BDOS_Print_String equ 9         ; 09,
BDOS_Read_Console_Buffer equ 10 ; 0A,
BDOS_Open_File  equ 15          ; 0F, 255 = file not found
BDOS_Close_File equ 16          ; 10, 255 = file not found
BDOS_Search_for_First equ 17    ; 11  255 = file not found
BDOS_Delete_File equ 19         ; 13, 255 = file not found
BDOS_Read_Sequential equ 20     ; 14, 0 = OK
BDOS_Write_Sequential equ 21    ; 15, 0 = OK
BDOS_Make_File equ 22           ; 16, 255 = Disk Full
BDOS_Rename_File equ 23         ; 17, 255 = file not found
BDOS_Set_DMA_Address equ 26     ; 1A
GREEN equ '2'
BLACK equ '0'
DEFAULT equ '9'
