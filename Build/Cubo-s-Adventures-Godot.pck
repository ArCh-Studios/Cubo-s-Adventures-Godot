GDPC                                                                                 <   res://.import/Cubo.png-eccaebdccd53bba1c16c81f83d7929b0.stex�      �       Li��=���I��t�mX<   res://.import/Goal.png-880106a35ec4c2704e76915525e3bfe0.stexp      �      �1��@2���)<   res://.import/Map.png-cf23b44723f51aea6b059010bedb5b10.stex �      �       ��-�_��ϮVm;�+<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�5      �      �Q!����|M�   res://Map/Map.png.import@      /      ����aT��ݸs>^��   res://Map/Map.res   p      �      �d�K�����	���%   res://Map/Map.tscn         �      �WՄ�:�y��_��   res://Objects/Cubo.tscn �      E      Y�O����C�\�C���   res://Objects/Goal.tscn 0      �      �)ol��(�,�y��8�   res://Scripts/Cubo.gd.remap �E      '       �����mR�Ԇ��|   res://Scripts/Cubo.gdc  �      [      3c)�;eD1�&��    res://Scripts/Stage1.gd.remap   �E      )       ��p��*<l���E���Y   res://Scripts/Stage1.gdcP      /       ��ۂ��KV_���    res://Sprites/Cubo.png.import   0      6      �K�\2�8`�಑D'x    res://Sprites/Goal.png.import         6      nWI�6���C��m�   res://Stages/Stage1.tscnP      L      �8�b�Y�y=a���   res://default_env.tres  �+      
      �?�թ+Ev�/h�!b�   res://icon.png   F      �      �~dg`!����I�҃   res://icon.png.import   �C      .      y/�f�\�>w�ۨJ	   res://project.binary�S            ��%1S����i���QNGDST(   (           �   PNG �PNG

   IHDR   (   (   ���m   EIDATX���1�  ���[	7��(Ț�o�oN+�J��+�J��+�J��+�J��+�J���O��5L    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Map.png-cf23b44723f51aea6b059010bedb5b10.stex"

[deps]

source_file="res://Map/Map.png"
dest_files=[ "res://.import/Map.png-cf23b44723f51aea6b059010bedb5b10.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 RSRC                     TileSet                                                                       resource_local_to_scene    resource_name    custom_solver_bias    extents    script    0/name 
   0/texture    0/normal_map    0/tex_offset    0/material    0/modulate 	   0/region    0/is_autotile    0/occluder_offset    0/occluder    0/navigation_offset    0/navigation 	   0/shapes       Texture    res://Map/Map.png    
   local://1 �      
   local://2 "         RectangleShape2D                 
     �A  �A   TileSet             Wall                           
           	          
        �?  �?  �?  �?                 B   B             
     �A  �A             
     �A  �A                               shape                shape_transform      �?          �?  �A  �A      one_way              autotile_coord 
           RSRC[gd_scene load_steps=3 format=2]

[ext_resource path="res://Map/Map.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 20, 20 )

[node name="Walls" type="Node"]

[node name="Wall" type="Sprite" parent="." index="0"]

position = Vector2( 20, 20 )
texture = ExtResource( 1 )
_sections_unfolded = [ "Transform" ]

[node name="StaticBody2D" type="StaticBody2D" parent="Wall" index="0"]

input_pickable = false
collision_layer = 1
collision_mask = 1
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 0.0

[node name="CollisionShape2D" type="CollisionShape2D" parent="Wall/StaticBody2D" index="0"]

shape = SubResource( 1 )


  [gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/Cubo.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 20, 20 )

[node name="Cubo" type="RigidBody2D" index="0"]

input_pickable = false
collision_layer = 1
collision_mask = 1
mode = 0
mass = 1.0
friction = 1.0
bounce = 0.0
gravity_scale = 1.0
custom_integrator = false
continuous_cd = 0
contacts_reported = 0
contact_monitor = false
sleeping = false
can_sleep = true
linear_velocity = Vector2( 0, 0 )
linear_damp = -1.0
angular_velocity = 0.0
angular_damp = -1.0

[node name="CollisionShape2D" type="CollisionShape2D" parent="." index="0"]

shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="." index="1"]

position = Vector2( 1.43051e-006, 1.43051e-006 )
texture = ExtResource( 1 )


           [gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/Goal.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]

custom_solver_bias = 0.0
radius = 32.0

[node name="Goal" type="KinematicBody2D"]

position = Vector2( -4.76837e-007, 4.76837e-007 )
scale = Vector2( 0.625, 0.625 )
input_pickable = false
collision_layer = 1
collision_mask = 1
collision/safe_margin = 0.08

[node name="CollisionShape2D" type="CollisionShape2D" parent="." index="0"]

shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="." index="1"]

position = Vector2( -4.76837e-007, 4.76837e-007 )
scale = Vector2( 1.6, 1.6 )
texture = ExtResource( 1 )
_sections_unfolded = [ "Visibility" ]


GDSC            �      ��������τ�   ����Ҷ��   ���ƶ���   ��������������ڶ   ������Ӷ   ������ƶ   ����������Ķ   ���������ڶ�   ���������¶�   ���ƶ���   �������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   �����Ӷ�   �����޶�   �������Ӷ���   ���¶���                             ui_right               ui_left    	   ui_cancel                      
                               %   	   *   
   /      4      5      <      E      I      R      W      ]      a      g      k      r      {      5TT:L�  M=�  T:L�  M=�  T=�  T=�  T=�  �  T=�  �  T=�  �  T=�  �  T=�	  �  TT3�
  L�  MR�  &�  P�  L�  MR�  �  �  �  &�  P�  L�  MR�  �  �  �  &�  	R�  �	  �  �  '�  R�  �	  �  �  S�  P�  �	  �  &�  P�  L�  MR�  �  LMP�  LM[     GDSC                   ���Ӷ���       5[ GDST(   (           �   PNG �PNG

   IHDR   (   (   ���m   RIDATX���!�@ �+���!���LRU��ꬵ�����'+������v炝�J`%��`$�X	�V+���J`%�X	�No�O]��    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Cubo.png-eccaebdccd53bba1c16c81f83d7929b0.stex"

[deps]

source_file="res://Sprites/Cubo.png"
dest_files=[ "res://.import/Cubo.png-eccaebdccd53bba1c16c81f83d7929b0.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST(   (           �  PNG �PNG

   IHDR   (   (   ���m  CIDATX��W��0�����b�H��u�����K	e
b����'�?�X���2ȕ�!
�8�S�$�7��UѳU
j�Kl��ſ��;-z���9S�/�	z��ߞ R �"�*� ���C�T!7��>
��_����j�J5En�!����s��ݖO�@�L����L�i�J���i��N��9
� �Jp�tDF_+��6�g?��X0��~�i�J�`�v���Q�̈́�X��U��H��
�)�~kD-�h#�=�Q���<ly��d��Y���_W\��KEQ�]���G�Ġ_+}�ͦ���(E!�%j3ޤ��xYa@]]#�	    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Goal.png-880106a35ec4c2704e76915525e3bfe0.stex"

[deps]

source_file="res://Sprites/Goal.png"
dest_files=[ "res://.import/Goal.png-880106a35ec4c2704e76915525e3bfe0.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          [gd_scene load_steps=6 format=2]

[ext_resource path="res://Scripts/Stage1.gd" type="Script" id=1]
[ext_resource path="res://Objects/Cubo.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scripts/Cubo.gd" type="Script" id=3]
[ext_resource path="res://Map/Map.res" type="TileSet" id=4]
[ext_resource path="res://Objects/Goal.tscn" type="PackedScene" id=5]

[node name="Stage1" type="Node"]

script = ExtResource( 1 )

[node name="Cubo" parent="." index="0" instance=ExtResource( 2 )]

position = Vector2( 180, 910 )
script = ExtResource( 3 )
speed = 1.0
jump = 15.0

[node name="TileMap" type="TileMap" parent="." index="1"]

mode = 0
tile_set = ExtResource( 4 )
cell_size = Vector2( 40, 40 )
cell_quadrant_size = 16
cell_custom_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
cell_half_offset = 2
cell_tile_origin = 0
cell_y_sort = false
cell_clip_uv = false
collision_use_kinematic = false
collision_friction = 1.0
collision_bounce = 0.0
collision_layer = 1
collision_mask = 1
occluder_light_mask = 1
format = 1
tile_data = PoolIntArray( 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 16, 0, 0, 17, 0, 0, 18, 0, 0, 19, 0, 0, 20, 0, 0, 21, 0, 0, 22, 0, 0, 23, 0, 0, 24, 0, 0, 25, 0, 0, 26, 0, 0, 27, 0, 0, 28, 0, 0, 29, 0, 0, 30, 0, 0, 31, 0, 0, 32, 0, 0, 33, 0, 0, 34, 0, 0, 35, 0, 0, 36, 0, 0, 37, 0, 0, 38, 0, 0, 39, 0, 0, 40, 0, 0, 41, 0, 0, 42, 0, 0, 43, 0, 0, 44, 0, 0, 45, 0, 0, 46, 0, 0, 47, 0, 0, 65536, 0, 0, 65583, 0, 0, 131072, 0, 0, 131119, 0, 0, 196608, 0, 0, 196655, 0, 0, 262144, 0, 0, 262191, 0, 0, 327680, 0, 0, 327727, 0, 0, 393216, 0, 0, 393263, 0, 0, 458752, 0, 0, 458799, 0, 0, 524288, 0, 0, 524335, 0, 0, 589824, 0, 0, 589871, 0, 0, 655360, 0, 0, 655407, 0, 0, 720896, 0, 0, 720943, 0, 0, 786432, 0, 0, 786479, 0, 0, 851968, 0, 0, 852015, 0, 0, 917504, 0, 0, 917551, 0, 0, 983040, 0, 0, 983087, 0, 0, 1048576, 0, 0, 1048623, 0, 0, 1114112, 0, 0, 1114159, 0, 0, 1179648, 0, 0, 1179695, 0, 0, 1245184, 0, 0, 1245231, 0, 0, 1310720, 0, 0, 1310767, 0, 0, 1376256, 0, 0, 1376303, 0, 0, 1441792, 0, 0, 1441839, 0, 0, 1507328, 0, 0, 1507375, 0, 0, 1572864, 0, 0, 1572911, 0, 0, 1638400, 0, 0, 1638444, 1, 0, 1638447, 0, 0, 1703936, 0, 0, 1703937, 0, 0, 1703938, 0, 0, 1703939, 0, 0, 1703940, 0, 0, 1703941, 0, 0, 1703942, 0, 0, 1703943, 0, 0, 1703944, 0, 0, 1703945, 0, 0, 1703946, 0, 0, 1703947, 0, 0, 1703948, 0, 0, 1703949, 0, 0, 1703950, 0, 0, 1703951, 0, 0, 1703952, 0, 0, 1703953, 0, 0, 1703954, 0, 0, 1703955, 0, 0, 1703956, 0, 0, 1703957, 0, 0, 1703958, 0, 0, 1703959, 0, 0, 1703960, 0, 0, 1703961, 0, 0, 1703962, 0, 0, 1703963, 0, 0, 1703964, 0, 0, 1703965, 0, 0, 1703966, 0, 0, 1703967, 0, 0, 1703968, 0, 0, 1703969, 0, 0, 1703970, 0, 0, 1703971, 0, 0, 1703972, 0, 0, 1703973, 0, 0, 1703974, 0, 0, 1703975, 0, 0, 1703976, 0, 0, 1703977, 0, 0, 1703978, 0, 0, 1703979, 0, 0, 1703980, 0, 0, 1703981, 0, 0, 1703982, 0, 0, 1703983, 0, 0 )
_sections_unfolded = [ "Cell", "Occluder" ]
__meta__ = {
"_edit_lock_": true
}

[node name="Goal" parent="." index="2" instance=ExtResource( 5 )]

position = Vector2( 1780, 1020 )


    [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

radiance_size = 4
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
sky_energy = 1.0
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
ground_energy = 1.0
sun_color = Color( 1, 1, 1, 1 )
sun_latitude = 35.0
sun_longitude = 0.0
sun_angle_min = 1.0
sun_angle_max = 100.0
sun_curve = 0.05
sun_energy = 16.0
texture_size = 2

[resource]

background_mode = 2
background_sky = SubResource( 1 )
background_sky_custom_fov = 0.0
background_color = Color( 0, 0, 0, 1 )
background_energy = 1.0
background_canvas_max_layer = 0
ambient_light_color = Color( 0, 0, 0, 1 )
ambient_light_energy = 1.0
ambient_light_sky_contribution = 1.0
fog_enabled = false
fog_color = Color( 0.5, 0.6, 0.7, 1 )
fog_sun_color = Color( 1, 0.9, 0.7, 1 )
fog_sun_amount = 0.0
fog_depth_enabled = true
fog_depth_begin = 10.0
fog_depth_curve = 1.0
fog_transmit_enabled = false
fog_transmit_curve = 1.0
fog_height_enabled = false
fog_height_min = 0.0
fog_height_max = 100.0
fog_height_curve = 1.0
tonemap_mode = 0
tonemap_exposure = 1.0
tonemap_white = 1.0
auto_exposure_enabled = false
auto_exposure_scale = 0.4
auto_exposure_min_luma = 0.05
auto_exposure_max_luma = 8.0
auto_exposure_speed = 0.5
ss_reflections_enabled = false
ss_reflections_max_steps = 64
ss_reflections_fade_in = 0.15
ss_reflections_fade_out = 2.0
ss_reflections_depth_tolerance = 0.2
ss_reflections_roughness = true
ssao_enabled = false
ssao_radius = 1.0
ssao_intensity = 1.0
ssao_radius2 = 0.0
ssao_intensity2 = 1.0
ssao_bias = 0.01
ssao_light_affect = 0.0
ssao_color = Color( 0, 0, 0, 1 )
ssao_quality = 0
ssao_blur = 3
ssao_edge_sharpness = 4.0
dof_blur_far_enabled = false
dof_blur_far_distance = 10.0
dof_blur_far_transition = 5.0
dof_blur_far_amount = 0.1
dof_blur_far_quality = 1
dof_blur_near_enabled = false
dof_blur_near_distance = 2.0
dof_blur_near_transition = 1.0
dof_blur_near_amount = 0.1
dof_blur_near_quality = 1
glow_enabled = false
glow_levels/1 = false
glow_levels/2 = false
glow_levels/3 = true
glow_levels/4 = false
glow_levels/5 = true
glow_levels/6 = false
glow_levels/7 = false
glow_intensity = 0.8
glow_strength = 1.0
glow_bloom = 0.0
glow_blend_mode = 2
glow_hdr_threshold = 1.0
glow_hdr_scale = 2.0
glow_bicubic_upscale = false
adjustment_enabled = false
adjustment_brightness = 1.0
adjustment_contrast = 1.0
adjustment_saturation = 1.0

            GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  [remap]

path="res://Scripts/Cubo.gdc"
         [remap]

path="res://Scripts/Stage1.gdc"
       �PNG

   IHDR   @   @   �iq�  qIDATx��{pTU����~���I�A	$2$�H E, 
(�>��ؙ\vvqtwj�ف�}��H�S�̨�*����0��
��S^�
B!$��t������!��N��t�_U�n�9�;������sסO�'}��QA!~'i�E�Dw2��P��w=�%EY}���c�˕�ɢ�!u�$m�)��qz�ȷD�~F����y��ly���n\s�i�}�����$!�Pi��4:$YF�V��g%H0��u��� *�.����zr�W֥Ô���V-���>��Z�G�d�����B I2*��FK��A� !��_�#1��'��:� �MH��V�ܯ~\mV���-�HZYZ(@Vk���H�
�V�@�ZYZ(Ձd��V����akPxP�������:[�$�����KJ00u|	�Y�^��43u|	I	�7��U ��������=e<��*bX�@�(�¦���C��ŢG�[6!AE���%v)g���X[�EϘ;�hh�L徱E!Q^�ʻ{�9|��qy&�*�����OEu]�r��Y�-�Ⱥ�8x����F�2����,���u��n�ɩs�1�7�H���w�/���/��x=��3���ɜ�y����ov)���������%\� ��6��%-A�̒L�����y<��JZ�Θ��i޴��HN�g�;�x{Ou��� �r���;�L�@3�Ņ�3f�������<����%�"91�iG�R�ض ����8�L��2��cu̽+��/[��}��˖�u!�tȼ��XS�]k�	:5�������3��t��ڝ��W������(�]�7uĊ�:��� �
��֨ew��#VD��j���L�NO��Z��CfG���N}�Q��_>�ߟ6�݇��ݻ��t�
z���/z��&�Mu���F[Ԋ�Fe���&;���S����͍�<^����9L�= ��c+���\1bړ
���6��?������_�������%���wSZ\@^N&�y���*7oiT�`^� ����z�<���'��{�/`Ъ��������x��;��r4[�eFR��b�̛�ί/�v� v�n�G�����qx�,�t��5�}2�7�A�u�/p���{x�e�Y�e��9�9�'�X2o&��>?p�W��� �dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG      application/config/name          Cubo-s-Adventures-Godot    application/run/main_scene          res://Stages/Stage1.tscn   application/config/icon         res://icon.png     display/window/size/width     �         display/window/size/height     8         display/window/size/fullscreen            input/ui_leftL              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device               button_index            pressure          pressed           script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  A          unicode              echo          script            input/ui_rightL              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device               button_index            pressure          pressed           script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  D          unicode              echo          script            input/ui_upL              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  W          unicode              echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device               button_index            pressure          pressed           script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script            input/ui_downL              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script               InputEventJoypadButton        resource_local_to_scene           resource_name             device               button_index            pressure          pressed           script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  S          unicode              echo          script         )   rendering/environment/default_environment          res://default_env.tres     GDPC