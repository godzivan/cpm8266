1��%1 �~��2m!v5��s*k#"k>��:k��/��!  "n �*t~���Q#�C:y��`�*n|��M�y��ͼ�("t�y�>��ͼ�sͪOK
Sent����^��ڦ*k#"k�y��Ðͅ����ͪO�ͪReceived�*k�3�c blocks$�2m�w�����7� V���u��;�v:p��!m4~�
����>2p�u��W�u��/���2j!  "n �*t�u��w�Q#�7:y��]�u���*nM�����u�����:kG:j�����=¶"t!v4:s��:v��G~͚�\ ͚9���� �2v!~"t�-��x�w����_;{����v��;!m4~�
���\ ͚<��`FILE CLOSE ERROR! May be corrupt.$:w�7�:sG~͚�\ ͚2w��A� ��#!~"t:s�2v�7�W�Oz��*n�g!)�k|�g}�o�a"n����*z-ʛ}*q=ʻ����>�g�ʊ>	ä%*qʭ>��g����>�gʪ����� �¸������       ����      ��+}��;*q���7�>�O:z=�=>��N��  y��>�gy���!  +|��-� ��y����I�� ���Q��Q���Q���Q}�b>��T]<	�T��_��W{�0O>����q����* o�-:+:|<�2|�<�e�2|ͤ�e\ :	���� ����ͭ��ͤ��~��d~#�����>�g��>	�g��ͪABORT:�͘:x��g��*k|�´͒<�g�`Empty file deleted$^C$10 block errors$10 ACK errors$lost blocks$disk write fail$UART Tx fail$sync fail$ͤ�͘�           ~�C ;\ ͚<������ͪFile open
Sen�ͭing via�:z=��=����ͭexternal cod��ͭdirect I/��ͭRDR/PU��2|ͭCO���`File not found$Z!y6 H���u��0�C�w:|<�ͭ with CRC��:|<�ͭ with checksum��no init from receiver$\ ͚<ʧͪFile exists. Overwrite (Y/N)�!� 6�
͚�#5�g#~� �y�g͒�2vͪFile creat�͚<�ͭd
Recei�͢:z���X��P��������:y���2p�"�5:p���c fail. Write protect? Dir full?$��.>2}!� fP~#�6�͚<Ĺ�2wf2s�aڑ͒�s�/�k4> � �\͹�!h w#�y* ��|ҍ>���2s        :xG<��`Must specify /R or /S$�a����;ʉ�/³͒ڳ!��#N#ڛ���G!�	�2y�<2{�͒!��0�!=�!�=�!�=�$��3���w#��ͤ͒���d�#�29�3�� �4�o�g�O������!!��!����=2|�<2x�͒�0��$2z�͒�1�	�$<2}�͒��ͪ=========================
XMODEM 2.4 By M. Eberhard
=========================

Usage: XMODEM <filename> <option list>
^C aborts

Command line and XMODEM.CFG options:
 /R to receive or /S to send
 /C receive with checksums, otherwise CRC checking
    (Receiver sets error-check mode when sending)
 /E if CP/M RDR returns with Z set when not ready

--More-���ͪ /I options patch I/O routines with 8080 code for /X3:
   /I0 h0 h1 ...(up to h7) for initialization
   /I1 h0 h1 ...(up to h7) for Tx data (chr is in reg c)
   /I2 h0 h1 ...(up to h7) for Rx status (Z set if no chr)
   /I3 h0 h1 ...(up to h7) for Rx data (chr in reg a)
 /M console message
 /O pp h0 h1 ... hn outputs bytes h1-hn to port pp
 /P ss dd qq rr tt defines direct I/O port
   ss = status port
   dd = data port
   qq = 00 if ready bits are true low, 01 if true high
   rr = Rx ready bit mask
   tt = Tx ready bit mask

--More-����` /Q for Quiet; else + means good block, - means retry
 /X commands select the transfer port:
   /X0 CP/M CON
   /X1 CP/M RDR/PUN (default)
   /X2 Direct I/O, defined by /P option
   /X3 8080 I/O code, patched with /I options
 /Zm for m MHz CPU. 0<m<10, default m=2

CP/M CON and RDR must not strip parity.
Values for /I, /O and /P are 2-digit hex.
$2�ͪ/& unrecognize�úͪJun�:w����c in XMODEM.CFG$�c in command line$:z�=���O=�#�:}!  	=�"q�s##w#y��6�#####r���3��ͪBad valu�ú�a��Q�J����G�M�$��4�͒��:�[�A���0�?�͒��a� �a�	�a�:w�����͚�͚���7�6�!s~��s��7�5���
7?�C EI	M;OIPXQ}R�S�X�Z�� XMODEM  CFG                                                  