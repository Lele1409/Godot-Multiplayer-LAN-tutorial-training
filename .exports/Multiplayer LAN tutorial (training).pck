GDPC                �                                                                         T   res://.godot/exported/133200997/export-36a25e342948d0ceacc500772b5412b3-player.scn  pj      (      �� ybH�0{���7�u    T   res://.godot/exported/133200997/export-6350fccf6e14d2f0c891730ee1d2c6cd-bullet.scn  `      �      6 k���j��Xb��e�    X   res://.godot/exported/133200997/export-cafae89b2e9ebf0216ddfb8de4de99ea-test_scene.scn  P      �      �g%�p&[���:|�m�    `   res://.godot/exported/133200997/export-e60dda51bed480e3e1bc368be4c2479e-multiplayer_scene.scn   �]      �      �:^(V9�ե�+�    ,   res://.godot/global_script_class_cache.cfg  ��             ��Р�8���8~$}P�    H   res://.godot/imported/Famas.png-8704fc8ab35ba07e619c479ccf10a12a.ctex   `      �      ��a��-���0 �.�    h   res://.godot/imported/Main Character - Male - Full spritesheet.png-e683c3a6c372c4c85ed756115f53eb65.ctex�      .,      \�2r:(rM$����c    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex@      �      �̛�*$q�*�́     L   res://.godot/imported/main_tileset.png-3a036a1d5f1b73114cac1a50125870b7.ctexC      �      Ț�P���b�M���{�       res://.godot/uid_cache.bin  ��            I��6(5w�t����ZX       res://Famas.png.import  @      �       ��2qK+�0h����    <   res://Main Character - Male - Full spritesheet.png.import    B      �       �{������-�(z       res://bullet.gd         ]      �ւrb��hc��^<Bݿ       res://bullet.tscn.remap  �      c       �ڦQDc?�]�F��       res://game_manager.gd         +       !^\���+�=� �m"��       res://icon.svg  ��      �      C��=U���^Qu��U3       res://icon.svg.import          �       �rO������x        res://main_tileset.png.import   �T      �        �����Lwc����        res://multiplayer_controller.gd �U      �      IG%�A�4���[��    $   res://multiplayer_scene.tscn.remap  p�      n       ���Z1���8Am]+       res://player.gd 0d      5      �J�g�K?g7���       res://player.tscn.remap ��      c       ������T�?�L���       res://project.binary��      �      M%���:�Sr�x6�&}�       res://scene_manager.gd  �}      �      C�bR�.t��6e       res://test_scene.tscn.remap P�      g       �7Mz�Z�u����_(                extends CharacterBody2D

const SPEED: int = 500

var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction: Vector2


func _ready():
	direction = Vector2(1,0).rotated(rotation)


func _physics_process(delta):
	velocity = SPEED * direction
	
	if not is_on_floor():
		velocity.y += gravity * delta
	
	move_and_slide()
   RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://bullet.gd ��������
   Texture2D    res://icon.svg 0�&k�nQ      local://RectangleShape2D_ibwh0 {         local://PackedScene_1ga67 �         RectangleShape2D       
     �A  @A         PackedScene          	         names "   	      Bullet    script    CharacterBody2D 	   Sprite2D 	   position    scale    texture    CollisionShape2D    shape    	   variants                 
     HA    
   " H>  �=                         node_count             nodes     !   ��������       ����                            ����                                       ����                         conn_count              conns               node_paths              editable_instances              version             RSRC        GST2   `   `      ����               ` `        �  RIFF�  WEBPVP8L�  /_�?��m���H���m�~#=�
ڶa�Y����- ���I��m�� G��H���VO�~��+Bl��� P������Аf�� ��1g��לQ�9�����b�w�b��sն���gs9��fӃԓ~�e (C�'�&ݽt�j*j;<�D_T1dfvM  u�a����	�R�b�nfvU3��?���ڏ�Hc�7nq�L�v�b�n�j������H窇�.�`�P��c��	!��?���S�OAمk2�A�_m�xA!B <�r�UI�C���I5����ZH"2%2�� (\lM���g��q�_ͻ�d�֤��|�I���N�YD��[�-�ݢs
�zu�#�B��,S�b��t3R�Y����T�����\��;�^   [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bywthre1inh2w"
path="res://.godot/imported/Famas.png-8704fc8ab35ba07e619c479ccf10a12a.ctex"
metadata={
"vram_texture": false
}
               extends Node

var players: Dictionary = {}
     GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cpupuc5vxidmt"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                GST2   �  �     ����               ��       �+  RIFF�+  WEBPVP8L�+  /�����4�m'���u ���)K�pTAl"�vr~쒁/ �"��A�)?�ڶ���	��;���xE������Հ�<c4���E�1D��v��Mҽm'�;U��%ԝ���	��ٺj@�v�v޶��)�X"�A�me������$0�H�H�z��?Eɶö��D4��> ��_��[{t}��'�]a��u [�}�+�ʟe_�.
 ���⏃��'
�A�m�Q1[ƫ�qOy��n�uyǈ�u�@�>:�oR7�~u ���:I]����'<��9+ pה�O�3ԍ߫Q�n)������9=�`ϱ.��u1F���	���լ_7��Pb��z�"��낿.o( eh�ժn�+)�u�����8�iP�� ��_7/�.o�o�T�x/!�FZ�գZ�7���S��8�KȺG�1ԼnEz�T��%d݈��X2/��� hb��㨈��^�j݈��h2/���e;��� �a�!(�:Gy1eS�MY8��#A��/�^ 늰�GxQ�;+��L2��k��3/̷��m��VH�����1� V���E������� �$���%��x�EP���]�;��r���^��A��v)�Y��}�X���z�!�\��a�q?��\�w���o/���+b����pĸ]2"����N?�s��q;q#'���~��v����E��I   pE�]ĸ}0=�Of�8/��ˑ��Վ�Q��6QT��0�~/o���������5G
�)2k��t�O��Ŏۡb�������E�[c�`�k�#��W��]J (\^�����v(P ���k���~L.�r�b�� ��^���"����)�㘆UZzؽ�H�n��pP����Q�t�"p���q�Pt|�US��^u�Z7��h�����C��~1n~�Gu^���S��k��iٹ ra�r��ȑ^Y�Z�[�y�xԼC�ޟ� �*��8-c�1g�Λ��Z��q��� H�qs�ǥ�� � �����8*b�R�ʴx/��@	1jJ��B��Z�3x=n�<��^_@�/�5b���!�\��i�^.��|]�?78r���)��7��!F�/x.`]V��u/�y�Z�wV�rɼ<�5o~\��:z�0G8����4. �&{���������R�bļ�"��N;n�{� ���Z �A����h�%��)��q;�{��*�^-���7�1ޗ6n�);�,���uw����[�����<�4�:y��q��q;9]���O�������l0��2����6�:c���s��)��\�W'  � �L��3Οk[����)c�
��u�~�.R0M1G��6�:Y�nA���4�E����v^7��P2�nZz����M+�;
@Y�\sZz���릅��RƖ�8�i@a�Z�ҫA����{�1:�ߪ�"�s}����KȺ��M�}��T�4E�9-��~��	.��F�ޟ� U�,W�lZz��%d݈��^����8*b��r5ʦ��/hY7����n ����b�ab�s�Repz��bʦ���p\^��W|/�uEXO�I*^��b�ŔMQ7�s<^7\���������za{%�;��)�fWء�B�u7dW�
$��g�丝{)G)�(��NU�ޘ����.]���0�)�r{��V>T}��;��eɞ�F�в��'�{�ѱ��APHsT�o�G�b�~(�ZkEbz�<:��Z�Xױ,|��Uoq��߱�5����1�Ri�s����\N1�R�un߱�WK�q?������#' ��d��w ����5��o��K��^jMҶn�e�/�cƝe�b�4�����k�4�.�14����[�ޗJ����P���s�.��[�us�/N�; U�Y�Ɵ{E��_7�7n���qLÀ����K�d�[�_7�
7n����Mh^7t�=����VM	^�q;$w}����ֹ	����H�us�T�-���h��-��~7�1*��s Ux�梩�����S�қ�w��1G@�qT F���)�M�@ܹKA ����w����Cؘs\ޗ�F �b�b�	�ٽº&4��ߍs��V��"Y7А{_�n�X���V`3�)2��y���n��%�|TX/������W�#�B��gc��vu�]����O!�&sO���1`�*��K�q�g�����u�ܯ�债)�ּj<�R<L�w�\_�b��#H$f���+g�֍��b��Ԃ���������%���>�uӏߋ$��bùY^$|���͕�()FΛ���=~��G�R�u��_7�J�{d[���[7��W�3��VI�o�B�,���vh8r�s��S;����m��5�=��U��X�qD��D�֙ȱ�z�R 7R�յޠE,T��9=�O*wa���7p�K2VRkr b@�nȣ/��SLS�A�Q�a�h��3LS���5  G�b� �Хs��0`0r���1C�A������pu�� �j_���e�	1fɏI5F���A��;�_w��3[w��~Ev����D�e�i�s���Vz_���qܽ��+c_�4֒q_|���נZ��Y��]�A`x���jbY��+���I�(rG���~�ٜ��n�#��G3�)�a��[�����/_`|� �Q䎙G�qԌ#�j�
��,+����s�����F�Є�`x��ւ�/B8$_V��N@��P�K���Ì}�lk�ek�o�8����/���� �A���T9V ���% 2��f����_��9�a�M_����H�6�2x�b9Μ�sey���N>�5���m�ž�9���������@zQ�"�]L�4�^@�GP�k�,���E�$ϮE시U6��z;��` ���؊��di�bY\� l'Sw1�u�-�7�uu}�҄���Xl؉]rľ�9b]���@dQd�$G5/���@� n�g���عA�<ɲ�ż$ AXJ3��-�%�:�Mའ
-k��43��od95������b�ʆ��ڲX,���x�=��wn�5<��;�e9:w��Hoq�i靘UN�:o����r? pv��̼<A�5�����Yx���%�;{N;��p�'8��$s瘦H!l�+�yiG䎸5� ��%s�4�Ş��V��l�PPǽ1���N����y�k��S �a 0�aH	\��4Zwos^�.��1���~�j��3������~h�o�)����]�??�I"�M~��' � ��1/��j�J�
��sܬ�;/<����u�����a`s��%�n"��3� ��>��}Q���)9��������j6/�}��-���ü����̳U~݆��q���l��b�q��Ꞙ�l^3�j1/=���Q��:��hF�!Yg��_5����nK1/���q�Z7���i��.�%F���=@̪7�:���h�����@�2� rݤ�gf>6�����A�smc_T�4�+f��f�]a G>/�\ ��5`W�c�@2!p����k��A��Zx��N�#��׺��iohQ�Y�|�"ƾ(f����B�{?����b�G��f��`��Fi�`_$�Y~-�Z�QLVX��L d��@��gy��"�OkM97�{�rN�T�l|U�	��/2�����{i�B��5�T���h��cľ�Ye�zw���W�z� �Hnb6��(tǌ�y#?���B������ �w�*̂C�E��
��Ly�����s~n21@��_̯_ȓ��,^� ,���mK�y�M;;�uW����������Y��Uc��4�Y��������e���[jװ?{9֭J�{�߫�h������]���`� lr����]^�qN���:�`6�(0GS���U�����\�6wx��}��M�y��=^� ĭ XbD��W�ë׀�1C�A R��!���3bT0&�Y�.�+�x������V`��d�{���z��@�??� !���/�Y���=6�ρ��x�h���.¨,��ǫG ���xA�a�v���\^]�v���{?���&]��W��dQ����^]A~߸�d���r�E�^�z�	@�M�s�dr>/C��W׼�Fs�ÈU=,�X#�� ht'���\��WW��|�uY*m)�^��۫SȮX|ry�n1�Wg`�����J����+|���,Ě�w�۾_����Ոקּx�'"�`����!\n�  @p���t�����$�m��҃`�ub8ȋ8;��H���x��bZ�1"����ˇk]��~yD PTs;��8���:o�BMD�����4E7M>����.��Jp/̎u��)rݪ7�����xؘ� �m�T�ԏ��9�� H�M�ͼ���0*�i�� �z��hEO��{�P��x�R�D^��a?I$����׸)��_(߻4��2��ë(�� 3�
d��ZqC��˫�Ţl���*�� �	=�Ǆ���p�� 1��r����}r����~k�-�mɠ��^��qRb���E �C.~# �Ȓ[��4^����]M	�:H�OM9�s��/1�m�]({�� $�4��sN�����^�)��C�D���F~��@��� J��uE� n�v�X�,K�x9����V��nF2#sDҽ�����5���
c�@��4`!)F���T­4e��/u�Z�y߅�2���qh�/� �_�cm��
L��=�s�k� <@vN@w�LK���9��ɧ������;�]�yӒGؘ�v�#�.6��1:Hi�CJ}�u��W1-���qL�
��.6��x����>#��bK�Pe)n�~�w�� @Q��׾�)�Cz�C�!�sM-����k�2���<;�{RR%h��J~�/	!�<z�y��:p�Zzu�ρ��⧥�\;4~5�H/G�n�C ���8ކ�r�R���~xHP���_(h�	������\(��8���~y��X�ͽ�Tw�t��! �^�s
����.y�Xy��ۖea�]����d� �C�iW��T�����c${+��BQ�:�ey<z�/zj5�zGe�'�W��~l_Y)��{��v�`Z��ۺ����ck  8����D�;�a���+{�O��?
���^5�T�����`��G�����_�w���oP7���3�&u��W'  ~���U�`�6���Y	>K���Y7��Y ���~N5��� �G�_w��LS,�1��u�x�.���u1F���	���լ_wJ���`�_��+F�^��]�2�����i���寛�Eѯ�%lm��8�iP�� ޫI���.�uy� �QS���VM5��U���W7����G�*���S�؜Ƌ���U�n,������9P�p�z݈��juSz!��@���:��"���׍��+�XxA�n.ۉ�� ��J!�\`�U7e�4�+��B�w�/'늰���ˉ�tEؘk�W�jZ��[��%���K�ǹ���WEk������'��(�	�sg�WUl��-��m���TwTQ�^������]#�R��:�'��q{��������<�*s��?�"f;L���4����د;F��u�~u��	 ����mL��3�� �i��_wK��
��u�~�)b3M1G��6�:]�nA���4�u�~�)�V��Z|I�+��a�w��N��7D� �N�e��Ͻ�a�O��@J�8�a@����՟{���%�+��� 0FMI��[5�(��\��W8�_9���[�K����Hl
/3W�5��WB��_	7�1�H��q�*� E�H�;�ռ_Z��������{��㨈�B���l����P�W��u7 �[��0hA1�<�f���{�,���т��^x9YW��T���+f"w«����Wؘk����V������NX�W��Gh����Z7RUW����+�S�=��u�� ��{i	e�a^t�lT����ߛ��.�sJbY�
8��>�Ӆ��@Ղ�^�z�Ȳdϑ�XFK�;/��J��UH�޷�b�~(�˪7���aPj�w��e�s-�z�+n�����9'���p�q�Jk��7���r�q��s����Zڌ����G�/9	 pH�'��� .0=��\�q�|�~_2��{��5H5og�|�~_,۸0�,��in߳ߗ�y�]c4hY7g����/�ֹ���hU7'���o�{_''��	�mKUAz9�뷸�-���r�ǭe��� �q�0��r���{�Mzޗ	?n-s[��t|�������~��VM)���b�ǭ]�y�cT���4�W뺑�?w��??i`�L�k������K�	�'���n���N���9�*/��b�ǭa�ev��x/�n���N�{Gb$�l�K�7Ռ��[n `�E׍�ߍr�w<l̬��}) p/��[���£��5٣ޤn�~�s��W�b�LU;���+�W��[m�*���ffQS+2�VG�A���n�;���za���\^���q���(֕U�K�Kݫaݬ+B2�M�2+B��ױ�n.�Ғ"d�s���yg7�K��[7%YQ*��o&t�I/�n.������1G�2�f���+giT7d�@:�\f��}������ߛ���T�Q�;?~/׬[��uC�G.L�\2��ys�����-�8��j��V���^*��"W(޺񈕽r����@�J2|k��e9�׷CÑ3睳���{}�\o�;����X�qL�"��z�#b?B��DΈ�8 `��|)1W�z&�&�S����|�r��{b��y��ZO}�É\�G_ r���X��ј�`7pD�qk �
�L��  �� ����.T�93tTQ�7�߆�
�ԑ;�r_�c� d� 0&�k������wSW���w�k;�_���`��G57+�4p�I��[��Z����q�V���}1�XK�}���527#wU.wM���O���ݜ�r�,\j^[�jnY��+(�}M��P���H��1����u�y�������ʭ�~mG��������s�:��V1ͬ�a�5�>�@L�e�N�F�k s3rG57CNCPX�Ŋ�!� �r_����/+�q'����4���{<�;B@X�.[����M0R'��}U�P�� �	���f��@|-�K dT�n��nF�ļ��ŬP�	`LÀ�������j�}�-���E��J-
k�Z�j�b�d�+ٴ֔s���}sN-vkE+�%"�r��H��j��aV�^WL�4�^�b_TgFn��),t7ɱk1��%\]W�z;��` ��+U6���ɶ�4@Q�=X�21S�^WB��¸�~�M�=�ņ��%�}��|@���|O�	�(�t����C���+n��π������,�[�K��d�)�n��;��A�Cǽ	�T�\MZ�*�'�YNͲ8��>cUI6,7�֖�b9��7�N��1��sc���������Z"��Y��wbV9A���J�S��0 �q�u�0����_k�����Yx��)�%�{N���`�h=�)�E*w�i�5��:����8��qk� �+�0T,��4��垙 g�* ��#1�o*q��*v�U~����4)��.<�Ѻ{�ر���%��;j���@J:�ߪ#�ym���o~�r��.W�����ժ��
}���,wj^[�)\?�w+� ＄�+R��*�+bT �?��ܼ.��y;�E���'3tT᝗d��y����Gͤ�y@���)Q�6�l��*Ÿ�2ۗ|�2��f�먞}k����uJiǤ���Z�b$����B9�ż��%׼��M��+��iG�kղ�Ϻ��o���[��\W��<Wz^����I__���.�[6���Yw�}Q�����p�.?ו�2˅���u��%U ��cy��@&>
a��x�l����+l �>�h�K����\�N<;�:�]&�W�Z��N��E���ǵ�W��G�ۀ|^*8
�5;m����Т`3�!�eg��`�*.�r���! �)[��`�$���F߄�9�~��q��bV(0�^-�(&+���L d��^>+�t��j`�������sC��+�$�Q��1�F���[�@u����s���p��^��or61�6����/Z��ϽP�X^�_�)��5����M�f����Kذ���@CȾ^8/�|g��,p�,���
��Ly����r���� �V�1���'�]Y�$X�[�#����Y�F�sv<��[���x�^���,L�Q�lƪ0�֖�RZ���0x�u��$�����]�*�����^"=�?��yu @!ͽ�L��3?���j ��9�xbw�R?�ޥ�Ө�A
�)�H����^�9b��]���H56+7���ű{ͥX_ &34 ΋�z	�@� �� P�is���7ҋ,�Ë���X����q��A �դ��̠�8�(�H�!�+ H:�1ǔ��a�ʛ���b�0���V�>1&��'bT�Tɚ���o�G�\+�"(-���C�na����@L�#-�nQ}�e�g^^�g�)~� ��~E�t�=�:��V\l�]k�5@���D�BL����U8�/0o!0��('�C��*Rg�ҫ�jG�!B��Ϋ`��_H�a-1�������Qz<��s�uϼ^�}���,���}!�ڡ��X�^�̮{�0���6����9v��FM����xu�ۊ`���|,�������dY��Q�:�W����ǟ���\S�7l$k��d;1y����J��{H�b���4�� �� ��u ����������A��J��QzM?�1��Ď�@h�)� ���9���������cF���[��uy�ً�l���R���.����C���@�\�������c PU8���Vh�0���&ԏ�i�G���q��%��������0��͠i�GXf��1�\��β5EX���@� �nʣ:��i���B
�پF���Qa�#��1름\���	s�C�^�m��A�l���^pd�Z����<�g����v շY�x���L���F�= 
�W�F O!�&�we���Nk�������_/��U����I�ˆ��aE6�3	�	^;���>}AB6��̤��A ]�_[��V���^��d6���E?Z�Ζ�d���P��^�%��󙮆�p�{"(���^zt�d��Z�)���8����V�,ls�pR��~��XL���u�E_�㛋G��,g���������xor�إ�z;�Cb����t?�����]Dܱ	�����]�{��R�+i����4�Nś�Ǉ;(
�����u>�fĮ����U��u�3#�k�d^�I��8cL�� ު�@x���~��~� ��q���'�������y��գdmvϝⵡHo�Q��C2��q�j_�_h���ܹ�:"F�0�r�qT��Y�Wd�y�$�y��B  �c楘{���/x߆u�}�ȵV�͊��!(� ��/?y�������W�F��$��q�{k^ܶhyw��-T7ȏ}R�ⰽ���˒��k݋��H����/?�l�}1[w�&w�4o��'Mr��^=��F-�^�Q� PxZ6��P`z>���-g��-r�(�&��1���LS�x��E�ðsG����bqkP0PeC�j��Lji4��z]�+wE����H��x���ag5
��9e�_��^��_x�cX^ �V��K�Z6�V�:��{]6�=�7��q���'��Ŭ�lĜ�eոb�&^L�����)^���UI����Y���jr��U�>��: ڱ]"r��&F��`���Q5b�����䬊z>cd�j�Gx]���̂#��s����Q����P�fUSR�}0n�g«��ׯ��WV�+8ކu�}�ȵV�ͪJ���ŋ1Ȫ&����@�0�@����l�.�_(�����~��e��4s̼��1��|�:�`�[^��y����b�u1`htIȞ���0^�maEX��W����*�����y��><����[��(5lR��0��\�(*�˴A)��൵B+7�1>�^��!��2�^e�ldY��U���")�"$��'���d�22/�ץ�"%1�a����f��x4�r��n���	�l��Ib�J�Q�T�]�w���Hk� �wq�.d�`z>��P�\��{� Ω�I�ӎト]�d�bR�v�?���@c4��"wp|�+�d����ڡ ��S���Ό4����d^��o��W�1���� oUM��6BS���VMJ��{� ��V������O 5 ƨ�y��՝��}�!~ϽNV4#�9��K2�������&�d/)��{e��Š#bT�����8��;���>��k�[�s���1BC �����e'���{���/x�co��Z�[W����*���)� ��/�Wj �����{·��_����?W��zX��ݡ�������ⰽ��2�e����Z��{���wr�h�t=m���s���7�u7mr�J�M�$wi�գHk�в�5 �סe�al�����Y޲qVM_Q���?J��@�e�C�����.��4����}�Z�
"wp�E���!g5x&�4��m���,K+w���Ό4��Y6�F�;����1^�o�@^x�cX^ �V��ʆ�ՊBv��%�7^�=�7�; �߀�~i���ke���j\�}����0Y�\�YьP�7�Jy!�F����TM��Zr��U�>��: �<�Q�"���v1��x�0Ʋl8���6�Fl�5ݚ�������^��~Ey?��w�y+�D����! ڋ*�\*��	�UMI5�a��5pLS�	��w;���W^��aD�u�}�c��+�f� ��K��x1�.�UM��?L�,�]:a��^O������������:l���P~�ܴ��Z¬ʙ
/�h��}B�#s�k��^�gs���y�?W��z|�m'�kPd��^B�4�Z��A-3�+ ���}���^�;Z�qx�
��?�"��+�4�����2�L����ZnU8����zb��]
  [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://q6vcere7k8a3"
path="res://.godot/imported/Main Character - Male - Full spritesheet.png-e683c3a6c372c4c85ed756115f53eb65.ctex"
metadata={
"vram_texture": false
}
             GST2   �        ����               �        �  RIFF�  WEBPVP8L�  /��Gg�6�m%���;�;��_�S�ȶ�����@j�GP<Yh�c�JsW@ܳ�迚�+��m���������f�P�	*w ��-�* ���cN K[�f�K��������Q�=��\j����`�pj�	��SM�lOL^+ �?P}),�@r��;DD�E�غ�H!(`������(�)���3��%�
ڜ�E�i�4�?�mo�Fڶ��v+Q"w_W�=w��rjX����	d?"�/��$A���l� �Z@kv���/����L�eY.n?p�ê������t��r_+�{���V� ����^�If��u�^Rд��<��#��{���k8})� T��"v�=X�j4}m�G��#�ڛɄdFW��|���Q�(U��^d��mbI��?� �+�ʒPu��!�A"�=��G�*�8m3 ҕ%\���z���j	�b�+���=�佷d❺p՛��l;(:I��+���ȀXፘa�D�5mW���f)FD��%�� �=k]&�A��;˺� �����l<�X��~�����eD��Q�
��/��"ц��*�F!"�5T T/� D=2���Ύ��}I�	�5�ο�����[��F�)�,B/���k.�{}�6k��Ta#:W����ax��	x��J�e����G�.5ރH`��H䤉LV��Lr�s�k���E��0�
xW��n{�`n�$���}I�ͦn�ws���Źc���c~\܎N�{ƈ��eH��2 s�t��c���1aFc�1#2w�d�༞{�;�c8��֑�n{�ִ�=���d6;=w���������#��^����qK`�f�<�zvT��axό����Rw�2�<��eSN18���,�:�[FZ6.D`�h�=���q�nي���-���1_K�l��7��5JFڣ
7�͛7&b�[��hy&�92�(�����g��V*�h�D�%1�492�(���O 0����D�%��	�u�#C�L{��#�5�.��[,��ut��9+�392�(��G�!���6 #�4�@U�x�[�x&�F�1J�>rq���Q�C�J�f,Z�HK�j��'����Y��X/fX"��m3�H�eX�ęx��N��pVջ���	���(�:�bx��X�Һ���tG ��hbp����X[��>_�ƒ��4֪�ˈ��cѪ�K��%7kV�]z9wL�ǒ�v���Rw�Xd#�]a�&���(�3gP���Հ��62wLW�0w̜a�;&�8�}Q6�w�3NsǾ,����q�}�86�R�s8�R���D�' �Ǘ7Eo��M���)�E�������w���H�P��[�+���T��k;>T���	Ɍ��7�P�mHFq6�x�d��'������� /�����+�ʒPu��!�!�2�@�cf���	Ȃte	W-��^����Z²��J�h��?
m�f�ԅ�ެ�eۉ@�I25<XQ��1F�#I.>��%5 ��h˸je%4K1"��.a�Ȑ�ˌ��f,f��l<�X��~���%�c�ami $�U�BD<k� �Q�{8�Rى6a��ht�u�-\�����e��X��yZ��$��}�O�f���*T��x��x�� X��w���>����s�4��γeE
����u�<�r��ץ��M��ex掏e�M��c4�p�{1ݚ;v�!�;&��Sg掩3s�T8�玩pf�s�h�;���S�k��6�ׂy�c�7�w�j~�X�9⾍N6�^�M����9�!#y�޿��tJ	�8�.U�1��'c|����N�����-̲�C�e�e�*<��"�f�����6��[�� ٖz�N��w%n�T��	}��G	jdD���V���D�-�F[�<SA��,{>��+ ڥVY�V*�h�D�%1�4}Y�����G�`���e ib	Vm�Ù��e��1�*"�18��nM�.�`�::�᜕Ù���F=*�x�0�N�
TE�G>��g. ���1�Ɖvٓ�;���Z���	;��K�-���+L]�����8����{�+�L����/���3o���~~ ���&���N(�/�H��y�ݓ���=���L��É[zN�掩C�E=�m�tb���H�}��:?w���;&gn���c~�f��1?�F�� ��g��3s�F�{/ ��p���q4Hy�4U� �k�o��k���R�w[�+|AU�{�,z�?�4<� �`
	܈��>��_E�j۳��`U������E�� uȺ �ͷbB2���C�Z�`b��5��+7�c&�������  ���0N�lm�[T��ieI�:����\3!�xJj�{������Zla��]�Y��e1ו��o���p$j3��] ��9,�7ka�v"Pt�L��9Ve	��ZEUn�k$�2�ZY	�R��n�Ki�= @TI���f���+��l<�X��~�@z�AdI�����- 	bD����U�%�� \���]U�m�X����h[ �G��%!�P�g(���A�kI�{�TجU o�p�[�6��6����]� �{ ,�_p�0Z`4p��F�����k�w�Aԁ�X@0��41[$p$�p��-�n�I ��nn�$��3�k��bW�׌<IuX�s�:~sG�߭Q��{����J*ǹ�{f��d�]c����@/�=�sG=.��x^���rǝ�G����s��7�i%gݺ���1�[��9z=5w<�vA��U�0w<P��`���16.� �O)^+���ѕb�tb�$�?w���=R���s���Q���}��1����~(	��kIf�e�Z�Z��M����*��t��KʃJ�]��TMn!�I���\w�X���D�Y���SNv�0˪햑�-5�����햭8H��޷�"�c��-����oS�2=��D�-�F[�<'��jT>Ѥ�Kb��hcW�`��%X��
K��X׉�uU�7d	V��C�Y9���{�� #�4�@U�xdkϹ�����dP�����������h�_p�N���ձ�� 0mV-q�������g���"�_eUg��|��[El41�w��fI�1cZq:���ͩ�-�/�u�׏�i���[�C��Xu��}X�掙1��y2_xv����?F.�N��s�c}1�(9����;���B�)#5w�%	�ص�sV1}�;�ކ>/v=�wߠ�s�E���1�N�&b��6TsG:���e��h�ɞ�:���S�p�Ɉ�Q�M��)��!�R�to�x|S6�$�*��7w<<����,�X�쏢���"�� /���*E�z�<��r_ݗ[�s8}W�ᜂ� 6;����p]J�qi�.��bW܃U���%�v|�B|��	Ɍ��7Yj�{ o�h��9�:���� {l@�HKB��� �����Zla��]�Y��e1�5%68�����Z|,�4%S��9������VV�/i�bDv�!���hL��T�#�:xƱ"��lOV�&DH� ��x$�$��[Դ	cD��m��'�n��ò/%A��K��
ϋ�Z�O�}���-�a�����I���[���'��0�'T�,Yf���hܾ��ѧ[���Ǻ\��\��[9I��<���x��\t3��\���1���X�)���.6C5w�T0�^*8����#����`v��=3��<��k��j80D`�H�VݡM�fn�|uf���?�@�:����S�K�M/n!RZ����U�@�( �%�u����-X%�C
=�O�"��.%�k0w��-J��k8��U DY0�؃�;:�)�̟���+�Jɂ�=�,b�?�%�F$7���^RC�������y?D�h8�� ����(X$�^�4G��^���ӧ��H0��?b�5��P� =�V� �A�|z;&�����X,t΋�
 曲Rp��t�)|X��.�9��
s��ñy�' ���la�U�-#-�A��(�3�����u��8H�y�^-b�7[��M��q1XH�9�h��vC��[��hy�Ҍ�;D�1��f�����'*�h�D�%1Ĵ�rv�b�0����D�%�s�e����00���ZG�:��r8�,2ˍ��~G��v�P�*J<���g���Mc�[�zG�Y�UK��/8a�x�W�e�G��qsf��Җ���3gx����rD�O��=����*eUgΆW>��8�e��q7���&�����Y0��|��oN�М�7��s��a��ٓ��q���Y�@���0g�0�����#��>�玍���P6��sG��͇��q��y�h�����y����|�;6r�|���c��:�Ǉ��1p&�Ǉ��1���8�f����U�9^�h�q�����s����_�~�_�4�������1\���L��f��@�˧�_SP��k���������[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bdx5ic7a7iurj"
path="res://.godot/imported/main_tileset.png-3a036a1d5f1b73114cac1a50125870b7.ctex"
metadata={
"vram_texture": false
}
        extends Control

@export var address = "127.0.0.1"
@export var port = 8910

var peer

func _ready():
	multiplayer.peer_connected.connect(_on_peer_connected)
	multiplayer.peer_disconnected.connect(_on_peer_disconnected)
	multiplayer.connected_to_server.connect(_on_connected_to_server)
	multiplayer.connection_failed.connect(_on_connection_failed)
	
	if "--server" in OS.get_cmdline_args():
		GameManager.players.erase(1)
		host_game()


# Gets called on the server and clients
func _on_peer_connected(id):
	print("Player Connected " + str(id))


# Gets called on the server and clients
func _on_peer_disconnected(id):
	print("Player Disconnected " + str(id))


# Called only from clients
func _on_connected_to_server():
	print("Connected to Server")
	send_player_information.rpc_id(1, $LineEdit.text, multiplayer.get_unique_id())

# Called only from clients
func _on_connection_failed():
	print("Connection Failed")


@rpc("any_peer")
func send_player_information(name, id):
	if !GameManager.players.has(id):
		GameManager.players[id] = {
			"name": name,
			"id": id,
			"score": 0
		}
	
	if multiplayer.is_server():
		for i in GameManager.players:
			send_player_information.rpc(GameManager.players[i].name, i)


@rpc("any_peer", "call_local")
func start_game():
	var scene = preload("res://test_scene.tscn").instantiate()
	get_tree().root.add_child(scene)
	self.hide()


func host_game():
	peer = ENetMultiplayerPeer.new()
	var error = peer.create_server(port, 10)
	
	if error != OK:
		print("Cannot host: " + error)
		return
	
	peer.get_host().compress(ENetConnection.COMPRESS_RANGE_CODER)
	
	multiplayer.set_multiplayer_peer(peer)
	print("Waiting for players!")


func _on_host_button_down():
	host_game()
	
	send_player_information($LineEdit.text, multiplayer.get_unique_id())

func _on_join_button_down():
	peer = ENetMultiplayerPeer.new()
	peer.create_client(address, port)
	
	peer.get_host().compress(ENetConnection.COMPRESS_RANGE_CODER)
	
	multiplayer.set_multiplayer_peer(peer)


func _on_start_game_button_down():
	start_game.rpc()
    RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script     res://multiplayer_controller.gd ��������      local://PackedScene_tha60          PackedScene          	         names "         Control    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Host    offset_left    offset_top    offset_right    offset_bottom    text    Button    Join 
   StartGame 	   LineEdit    Name    Label    _on_host_button_down    button_down    _on_join_button_down    _on_start_game_button_down    	   variants                        �?                            4B     �B     �B     �B      Host      �B     %C      Join
      BC     �C      Start Game
      B     �B      Name       node_count             nodes     r   ��������        ����                                                                ����         	      
               	      
                     ����         	      
               	                           ����         	      
               	                           ����         	   	   
                                    ����         	      
         	                         conn_count             conns                                                                                      node_paths              editable_instances              version             RSRCextends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var id: int
var sync_position: Vector2 = Vector2(0, 0)
var sync_rotation: float = 0.0

@export var bullet: PackedScene

func _ready():
	$MultiplayerSynchronizer.set_multiplayer_authority(id)

func _physics_process(delta):
	if $MultiplayerSynchronizer.get_multiplayer_authority() != multiplayer.get_unique_id():
		global_position = global_position.lerp(sync_position, .2)
		$GunRotation.rotation_degrees = lerpf($GunRotation.rotation_degrees, sync_rotation, .2)
		return
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	$GunRotation.look_at(get_viewport().get_mouse_position())

	# Handle jump.
	if Input.is_action_just_pressed("move_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	sync_position = global_position
	sync_rotation = $GunRotation.rotation_degrees
	
	if Input.is_action_just_pressed("action_trigger"):
		var b = bullet.instantiate()
		b.global_position = $GunRotation/BulletSpawn.global_position
		b.rotation_degrees = $GunRotation.rotation_degrees
		get_tree().root.add_child(b)
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
           RSRC                    PackedScene            ��������                                                  .    sync_position    sync_rotation    resource_local_to_scene    resource_name    atlas    region    margin    filter_clip    script    animations    custom_solver_bias    size    properties/0/path    properties/0/spawn    properties/0/replication_mode    properties/1/path    properties/1/spawn    properties/1/replication_mode 	   _bundled       Script    res://player.gd ��������   PackedScene    res://bullet.tscn �8)�fb
   Texture2D 3   res://Main Character - Male - Full spritesheet.png 0����}
   Texture2D    res://Famas.png pm�jm$9      local://AtlasTexture_f178u x         local://AtlasTexture_bhqa6 �         local://AtlasTexture_7mpw8          local://AtlasTexture_aaky7 G         local://AtlasTexture_ciscu �         local://AtlasTexture_7tfua �         local://AtlasTexture_ij50l          local://AtlasTexture_dqo1g [         local://AtlasTexture_dgf25 �         local://AtlasTexture_3jtjj �         local://AtlasTexture_y0ujw *         local://AtlasTexture_0d8i4 o         local://AtlasTexture_lbqi7 �         local://AtlasTexture_rus4a �         local://SpriteFrames_m6r4g >	         local://RectangleShape2D_wmvkm �      %   local://SceneReplicationConfig_m5dvy �         local://PackedScene_86fit 4         AtlasTexture                         B       B   B	         AtlasTexture                        �B       B   B	         AtlasTexture                        �B       B   B	         AtlasTexture                         C       B   B	         AtlasTexture                         C       B   B	         AtlasTexture                        @C       B   B	         AtlasTexture                         B  �B   B   B	         AtlasTexture                        �B  �B   B   B	         AtlasTexture                        �B  �B   B   B	         AtlasTexture                         C  �B   B   B	         AtlasTexture                         C  �B   B   B	         AtlasTexture                        @C  �B   B   B	         AtlasTexture                        `C  �B   B   B	         AtlasTexture                        �C  �B   B   B	         SpriteFrames    
                     name ,      Idle       speed      @A      loop             frames                   texture              	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            name ,      Run       speed      @A      loop             frames                   texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture       	      	   duration      �?            texture       
      	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?	         RectangleShape2D       
     PA  �A	         SceneReplicationConfig                                                                      	         PackedScene          	         names "         Player    scale    script    bullet    CharacterBody2D    AnimatedSprite2D    texture_filter 	   position    sprite_frames 
   animation 	   autoplay    frame    frame_progress    flip_h    CollisionShape2D    shape    GunRotation    Node2D 	   Sprite2D    texture    BulletSpawn    MultiplayerSynchronizer    replication_interval    delta_interval    replication_config    	   variants       
     �@  �@                         
         ��         ,      Idle       Idle          ;߇>      
      �  �         
         �
     `A    
   ��>��>         
     �A  ��)   �������?               node_count             nodes     ]   ��������       ����                                        ����                     	      
               	      
                     ����                                 ����                          ����                                            ����                           ����                               conn_count              conns               node_paths              editable_instances              version       	      RSRC        extends Node2D

@export var player_scene: PackedScene


func _ready():
	var index = 0
	for i in GameManager.players:
		var current_player = player_scene.instantiate()
		
		current_player.id = GameManager.players[i].id
		
		add_child(current_player)
		for spawn in get_tree().get_nodes_in_group("spawnpoints_player"):
			if spawn.name == str(index):
				current_player.global_position = spawn.global_position
		index += 1
	pass
     RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://scene_manager.gd ��������   PackedScene    res://player.tscn ��Gv��D
   Texture2D    res://icon.svg 0�&k�nQ      local://RectangleShape2D_lu6tg �         local://PackedScene_07aqs �         RectangleShape2D       
      C   C         PackedScene          	         names "         Node2D    script    player_scene    StaticBody2D    CollisionShape2D 	   position    scale    shape 	   Sprite2D    texture    Spawnlocations    Node    0    spawnpoints_player    1    2    3    	   variants    
                      
     
D  
D
     �@  �=                   
     �C  �C
    ��C  �C
    �D  �C
    @8D  �C      node_count    	         nodes     [   ��������        ����                                  ����                     ����                                      ����               	                     
   ����                      ����                             ����                             ����                             ����      	               conn_count              conns               node_paths              editable_instances              version             RSRC      [remap]

path="res://.godot/exported/133200997/export-6350fccf6e14d2f0c891730ee1d2c6cd-bullet.scn"
             [remap]

path="res://.godot/exported/133200997/export-e60dda51bed480e3e1bc368be4c2479e-multiplayer_scene.scn"
  [remap]

path="res://.godot/exported/133200997/export-36a25e342948d0ceacc500772b5412b3-player.scn"
             [remap]

path="res://.godot/exported/133200997/export-cafae89b2e9ebf0216ddfb8de4de99ea-test_scene.scn"
         list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             �8)�fb   res://bullet.tscnpm�jm$9   res://Famas.png0�&k�nQ   res://icon.svg0����}2   res://Main Character - Male - Full spritesheet.png۫�U��$   res://main_tileset.pngtxl���cR   res://multiplayer_scene.tscn��Gv��D   res://player.tscn���*k2(   res://test_scene.tscn    ECFG	      application/config/name,      #   Multiplayer LAN tutorial (training)    application/run/main_scene$         res://multiplayer_scene.tscn   application/config/features$   "         4.2    Forward Plus       application/config/icon         res://icon.svg     autoload/GameManager          *res://game_manager.gd     input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script         input/move_jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script         input/action_trigger�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask           position              global_position               factor       �?   button_index         canceled          pressed           double_click          script             