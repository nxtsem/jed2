1!  "�
�2�
"�
2�
* +"�
!�#6#"�
"�
* 	 "�
��1�u�A�pͻ�T�(��(5�����ʛ��ʂ���G���������ʻ�������Z���	�7*�
+~�(�*�
�[�
��RDM*�
+"�
*�
+~"�
#]T���(:�
=2�
� �7:�
=2�
*�
�ͳ���R}2�
*�
+"�
�1�7*�
�[�
��R�r*�
�[�
��RDM*�
]T��*�
#"�
*�
w#"�
:�
<2�
� �7*�
�[�
��R,>��>[��}��>;��>1��>H��*�
ͳ:�
� ăP~��j��j��#��> ����Û :�
_:�
�02�
L:�
�P_:�
�8�P<2�
R*�
�[�
��R0
*�
"�
T"*�
 �[�
��R0*�
 ��R#"�
Bx�(	��1�ͪ�>-ͪ�*�
�[�
��R�7*�
#"�
*�
͜ͿG:�
�8(x2�
̓"�
�7*�
}��7+"�
*�
ͩͿG:�
�8(x2�
̓"�
�7:�
=2�
*�
+~� 
:�
<2�
�7�("�
�7"�
ͳͿ=2�
:�
=2�
�7:�
<2�
*�
#~�:�
=2�
�7+~#�("�
�7"�
�2�
:�
<2�
�7:�
��7*�
ͳ͡G:�
�8(x�̓"�
�2�
�7"�
> 2�
�7*�
~��7��7#"�
:�
<2�
�*�
�[�
��R�7*�
�[�
��R�:*�
#"�
*�
�͜�"�
�*�
ͳͿG:�
�8(x2�
̓"�
�7*�
}��7*�
}��~+"�
*�
�ͩ�"�
�*�
ͿG:�
�8(x2�
̓"�
�7���  �~�(�(� (�	(�x�#�*�
�[�
��R,:�
G:�
�G>��>[��}����>;��x��>H��� G�d8��8
>2��x��>1��x�d �
8�
�Wx�  y� (�0��>0����*�
�K�
͓����2�
:�
� ăP~����g��(#�͜+:�
<2�
�0>��>
��#��+ɷ�G~����#���x��͜��~�(#� ���+~�(� �+~�(� �#��~�(�(#�x���� � (������*�
O������>��>[��>H��>��>[��>J���>��>[��>?��>2��>5��>l���>��>[��>?��>2��>5��>h����*�
#"�
����� ����(:� 3���[���Aʞ�Bʡ�Cʧ�Dʤ�Hʪ�Fʭ�5ʰ�6ʺ> �>��>��>��>��>��>��>�����~ �>�����~ �>��show_screen:    ; Redraw the entire screen.    ; We draw starting at a given set of coords, e.g.    ; 0,0 to start at the top of the doc.    ; 10,0 to start at the top of the doc, but scrolled across 10 chars.    ; 0,20 to start on line 21, scrolled to the left.    ; We may be showing a selected area, if the selected start loc isn't FFFF. Or maybe it is?    ; The selected area marks a location in the doc to start the selection,    ; and a location to stop the selection.    call cls     ld hl, (doc_start)show_screen1:    ld a, (hl)    cp END_OF_TEXT    ret z    cp EOL     jp z, show_screen2    call print_a    inc hl    jr show_screen1show_screen2:    ld a, 13    call print_a    ld a, 10    call print_a    inc hl    jr show_screen1print_a:    exx    ld c, BDOS_CONSOLE_OUTPUT    ld e, a    call BDOS    exx    ret������333333333333�~� (#���#�;;;;;;;;;;;;����3333�|�Z
}�Z
���?�?�?�?�0�:8������0�:8�����s�
�����
A= �Z
��
, BC= �Q
����
, DE= �Q
������
, HL= �Q
����
, SP= *�
�Q
>��>
�������                                                         !��"�
"�
!  "�
�[�
!�~��J��;#��S�
�>��>[��>��>;��>
��>H��:�
��> ��> ���>��>[��>��>;��>��>H��*�
~�(	��> ���>C��>R����>��>[��>��>;��>��>H������ 