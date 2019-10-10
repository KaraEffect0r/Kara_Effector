	----------------------------------------------------------------------------------------------------------
	--[[ ( c ) Copyright 2012 - 2019, Vict8r, Karalaura, NatsuoKE & Itachi Akatsuki				  		  ]]--
	----------------------------------------------------------------------------------------------------------
	-- Effector-utils-lib ------------------------------------------------------------------------------------
	Effector_Lib_authors  = "Itachi Akatsuki & Vict8r"
	Effector_Lib_testers  = "NatsuoKE & Vict8r"
	Effector_Lib_version  = "3.6"
	Effector_Lib_modified = "October 07th 2019"
	-- functions abbreviations -------------------------------------------------------------------------------
	sin = math.sin			asin = math.asin		log   = math.log10			pi = math.pi
	cos = math.cos			acos = math.acos		ceil  = math.ceil			ln = math.log
	tan = math.tan			atan = math.atan		rand  = math.random			r  = math.random
	abs = math.abs			sinh = math.sinh		floor = math.floor			F  = string.format
	deg = math.deg			cosh = math.cosh	  	atan2 = math.atan2			format = string.format
	rad = math.rad			tanh = math.tanh		script_version = "3.6"		script_update = " legacy"
	
	-- include Yutils by Christoph Spanknebel "Youka" --------------------------------------------------------
	Yutils = include( "Yutils.lua" ) 									 -- https://github.com/Youka/Yutils --
	----------------------------------------------------------------------------------------------------------
	
	-- Effector-utils-lib-3.6 functions ----------------------------------------------------------------------
	--[[
	Effector-utils-lib-3.6
	{
		set_temp & remember
		-	set_temp( ref, val )
		-	remember( ref, val )
		
		librería time
		-	HMS_to_ms( time_HMS )
		-	ms_to_HMS( time_ms )
		-	time_to_frame( Time )
		-	frame_to_ms( frames )
		-	frame_to_HMS( frames )
		-	time_mid1( Delay )
		-	time_mid2( Delay )
		-	time_li( Delay )
		-	time_lo( Delay )
		
		librería random
		-	r( r_i, r_f, r_step )
		-	random.color( H, S, V )
		-	random.colorvc( H, S, V )
		-	random.alpha( alpha_i, alpha_f )
		-	random.alphava( alpha_i, alpha_f )
		-	random.e( ... )
		-	random.unique( table_or_number, index_r )
		
		librería table
		<	table.view( Table, Table_name, indent )
		-	table.inside( Table, e )
		-	table.index( Table, e )
			table.show( Table )
			table.duplicate( Table )
		-	table.compare( Table1, Table2 )
			table.complete( Table, Start_time, End_time )
		-	table.disorder( table_or_number )
		-	table.make( objet, size, limit_i, limit_f, ... )
		-	table.rmake( objet, size, limit_i, limit_f, ... )
			table.concat1( Table, ... )
			table.concat2( Table, ... )
		-	table.concat3( ... )
		-	table.concat4( ... )
		-	table.filter( Table, Filter )
		-	table.replay( len_table, ... )
		-	table.count( Table, e )
		-	table.pos( Table, e )
		-	table.string( String, Number_str )
		-	table.space( String )
		-	table.word( String )
		-	table.retire( Table, ... )
		+	table.combine( Table, n_combinations )
		-	table.inserttable( Table1, Table2, index_insert )
		-	table.reverse( Table )
		-	table.cyclic( Table )
		+	table.set( color_masktable )
		-	table.op( Table, mode, add )
		-	table.gradient( Size, ... )
			table.bigradient( gradient1, gradient2, Size )
			table.mask( Color_or_Alpha, Maskfx, Mode, First )
			table.remember( table_ref, table_val )
		+	table.delete( Table, ... )
		+	table.permute( Table )
		+	table.ipol( Table, Size, Tags, algorithm )
		-	table.capture( String, Capture )
		-	table.gsub( Table, Capture, Replace )
		-	table.match( Table, Capture )
		-	table.unique( Table )
			table.twin( ... )
			table.type( Table )
			
		librería string
		+	string.count( String, Capture )
		+	string.toval( String )
		+	string.i( String )
		+	string.change( String, Capture, NoDelete, NoCapture, Change )
		+	string.cap( String, Capture, Extra_Capture, Filter )
		+	string.parts( String, Parts )
		
		librería math
		-	math.R( Rand_i, Rand_f )
		-	R( Rand_i, Rand_f, Step )
		<	Rs( Rand_i, Rand_f, Step )
		<	Rr( Rand_i, Rand_f, Step )
		<	Rd( Rand_i, Rand_f, Step )
		<	Rc( Rand_i, Rand_f, Step )
		<	Rm( Rand_i, Rand_f, Step )
		/	Rsr( Rand_i, Rand_f, Step )
		/	Rdr( Rand_i, Rand_f, Step )
		/	Rcr( Rand_i, Rand_f, Step )
		/	Rmr( Rand_i, Rand_f, Step )
		/	Rds( Rand_i, Rand_f, Step )
		/	Rcs( Rand_i, Rand_f, Step )
		/	Rms( Rand_i, Rand_f, Step )
		/	Rdrs( Rand_i, Rand_f, Step )
		/	Rcrs( Rand_i, Rand_f, Step )
		/	Rmrs( Rand_i, Rand_f, Step )
		/	Re( Table )
		-	math.Rfake( Rand_i, Rand_f, Counter )
			math.Rfake2( Rand_i, Rand_f, Counter, Counter2, Mode )
			math.Rredefine( Rand_i, Rand_f, Step, Counter, Counter2 )
		+	math.format( String, ... )
		-	math.round( number_or_table, decimal )
		-	math.distance( px1, py1, px2, py2 )
		-	math.angle( px1, py1, px2, py2 )
		-	math.polar( angle, radius, Return )
			math.intersect( x1, y1, x2, y2, x3, y3, x4, y4 )
		-	math.length_bezier( ... )
			math.angle_bezier( points, t )
		-	math.point( c_num, x_range, y_range, s_point_x, s_point_y, e_point_x, e_point_y )
		-	math.factk( n )
			math.bernstein( i, n, t )
			math.confi_bezier( n, x, y, t, Return )
		-	math.bezier( Return, ... )
			math.bezier2( Shape, mode, Align_Shape, OffsetB, length )
			math.movebezier( Shapes, t1, t2 )
			math.bezier2move( Shape, Mode, Accel )
		+	math.circle( Shape )
		+	math.rotate( p, axis, angle )
		<	math.matrix_sum( A, B )
		<	math.matrix_trans( A )
		<	math.matrix_esc( A, Escalar )
		<	math.matrix_mul( A, B )
		<	math.matrix_mul2( ... )
		<	math.matrix_cof( A, Return )
		<	math.matrix_det( A )
		<	math.matrix_adj( A )
		<	math.matrix_inv( A )
		<	math.matrix_dis( Disx, Disy )
		<	math.matrix_rot( Angle, Axis, Orgx, Orgy )
		<	math.matrix_rat( Ratx, Raty, Orgx, Orgy )
		<	math.matrix_ref( Mode )
		<	math.matrix_fil( Filxy, Axis )
		<	math.i( counter, A, B, C )
			math.shape( Shape, Length, Mode )
			math.audio( Audio_wav, Loops, Scale, Offset_time, Values )
			math.to16( Num )
			math.clamp( Num, Min, Max )
			math.clamp2( Num, Min, Max )
		
		librería tag
		+	tag.redefine( String )
		+	tag.dark( String )
		+	tag.timefx( String )
		+	tag.modify( String )
		+	tag.default( String )
		+	tag.default2( String )
		+	tag.inverse( String )
		+	tag.natsu( String )
		+	tag.do_alpha( String )
		+	tag.HTML_to_ass( String )
		+	tag.tonumber( String )
		-	tag.set( times_set, events_set )
		-	tag.movevc( Shape, posx, posy, Dx, Dy, time_vci, time_vcf )
		-	tag.movevci( Shape, posx, posy, Dx, Dy, time_vci, time_vcf )
		-	tag.only( condition, s_true, s_false )
		<	tag.only2( Conditions, ... )
		-	tag.oscill( dur, delay, ... )
		<	tag.oscill2( Times, ... )
		-	tag.glitter( dur, ExtraTags_i, ExtraTags_f )
		<	tag.glitterx( dur, ExtraTags_i, ExtraTags_f )
		<	tag.glittery( dur, ExtraTags_i, ExtraTags_f )
		-	tag.clip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move )
		-	tag.clip2( left_cx, top_cy, width_clip, height_clip, clip_move )
		-	tag.iclip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move )
		-	tag.iclip2( left_cx, top_cy, width_clip, height_clip, clip_move )
		/	tag.moveclip( left_cx, top_cy, width_clip, height_clip, Mode )
		/	tag.moveiclip( left_cx, top_cy, width_clip, height_clip, Mode )
		/	tag.moveclip2( left_cx, top_cy, width_clip, height_clip )
		/	tag.moveiclip2( left_cx, top_cy, width_clip, height_clip )
		*	tag.Rclip( left_cx, top_cy, width_clip, height_clip, Mode )
		*	tag.Riclip( left_cx, top_cy, width_clip, height_clip, Mode )
		*	tag.moveRclip( left_cx, top_cy, width_clip, height_clip, Mode )
		*	tag.moveRiclip( left_cx, top_cy, width_clip, height_clip, Mode )
		+	tag.Pclip( size_clip, left_cx, top_cy, width_clip, height_clip )
		+	tag.Piclip( size_clip, left_cx, top_cy, width_clip, height_clip )
		+	tag.movePclip( size_clip, left_cx, top_cy, width_clip, height_clip )
		+	tag.movePiclip( size_clip, left_cx, top_cy, width_clip, height_clip )
		-	tag.clip_shape( Shapes, Center_x, Center_y )
		-	tag.iclip_shape( Shapes, Center_x, Center_y )
		+	tag.do_tag( String )
		+	tag.to_Auto4( String )
		+	tag.to_temp( String )
		+	tag.v_dollar( String )
		+	tag.coupling( String )
		+	tag.operation( String )
		+	tag.to_err( String )
		+	tag.to_vsf( String )
		+	tag.to_mod( String )
			tag.colorchange( Color_or_Table, dur )
			tag.colorchange1( Color_or_Table, dur )
			tag.colorchange2( Color_or_Table, dur )
			tag.colorchange3( Color_or_Table, dur )
			tag.colorchange4( Color_or_Table, dur )
		-	tag.ipol( Ipol_i, ... )
		+	tag.temp2( my_temp )
		+	tag.inbar( string_tags )
		+	tag.adjust( t_adjust, adj_accel )
		-	tag.val( val_tags )
		-	tag.num( string_values, special_tag )
		-	tag.module( ... )
		-	tag.module1( ... )
		-	tag.module2( ... )
		-	tag.moduler( ... )
			tag.delete( String, ... )
		+	tag.delete_in_return( return_fx )
		+	tag.cyclic( Dur, Dur_tr, Delay, Fad_i, Fad_f, tags_ini, tags_fin )
		<	tag.sec( Dur, Dur_tr, tags_ini, tags_fin )
		+	tag.filter( String, Tag, Filter )

		librería color
			color.ass( html_color )
			color.ass2( Rnum, Gnum, Bnum )
			color.ass3( Hnum, Snum, Vnum )
		<	color.rgb( Color_or_table, Matrix_1x3, Multi )
		<	color.hsv( Color_or_table, Matrix_1x3, Multi )
			color.assF( color_or_table )
		-	color.to_RGB( color_or_table )
		-	color.to_HSV( color_or_table )
		-	color.vc( color_or_table )
		-	color.r( )
		-	color.rc( CrC_color, ... )
			color.rvc( CrVC_color, ... )
		-	color.gradientv( ColorTop_or_table, ColorBottom_or_table )
		-	color.gradienth( ColorLeft_or_table, ColorRight_or_table, algorithm )
		-	color.vc_to_c( colorvc_or_table )
		-	color.c_to_vc( colorc_or_table )
		-	color.interpolate( color1_or_table, color2_or_table, Index_Ipol )
		+	color.vector( color1, color2 )
		-	color.delay( time_i, delay, color_i, color_f, ... )
		-	color.movedelay( dur, delay, mode, ... )
		-	color.set( Cset_times, Cset_colors, ... )
		-	color.mask( Mode, Color, Mask )
		-	color.movemask( Dur, Delay, Mode, Color, Mask )
		-	color.setmovemask( delay, mode, t, colors )
		-	color.movemaskv( Dur, Delay, Mode, Color, Mask )
		-	color.masktable( color_or_table )
		-	color.module( color1_or_table, color2_or_table )
		-	color.module1( color1_or_table, color2_or_table )
		-	color.module2( color1_or_table, color2_or_table )
		+	color.moduler( color1_or_table, color2_or_table )
		-	color.ipol( ... )
		-	color.loop( ... )
			color.bigradient( Color_or_Table1, Color_or_Table2, Size_Table )
		*	color.distance( CD_center, ... )
		*	color.angle( CA_origin, ... )
			color.from_error( color_or_table )
		<	color.matrix( Color_or_table, ... )
		
		librería alpha
			alpha.assF( alpha_or_table )
		-	alpha.va( alpha_or_table )
		-	alpha.r( )
			alpha.ra( ArA_alpha, ... )
			alpha.rva( ArCA_alpha, ... )
		-	alpha.gradientv( AlphaTop_or_table, AlphaBottom_or_table )
		-	alpha.gradienth( AlphaLeft_or_table, AlphaRight_or_table, algorithm )
		-	alpha.va_to_a( alphava_or_table )
		-	alpha.a_to_va( alphaa )
		-	alpha.interpolate( alpha1_or_table, alpha2_or_table, Index_Ipol )
		-	alpha.delay( time_i, delay, alpha_i, alpha_f, ... )
		-	alpha.set( Aset_times, Aset_alphas, ... )
		-	alpha.mask( Mode, Alpha, Mask )
		-	alpha.movemask( Dur, Delay, Mode, Alpha, Mask )
		-	alpha.movemaskv( Dur, Delay, Mode, Alpha, Mask )
		-	alpha.masktable( alpha_or_table )
		-	alpha.module( alpha1_or_table, alpha2_or_table )
		-	alpha.module1( alpha1_or_table, alpha2_or_table )
		-	alpha.module2( alpha1_or_table, alpha2_or_table )
		+	alpha.moduler( alpha1_or_table, alpha2_or_table )		
		+	alpha.ipol( ... )
		+	alpha.loop( ... )
			alpha.bigradient( Alpha_or_Table1, Alpha_or_Table2, Size_Table )
		*	alpha.distance( AD_center, ... )
		*	alpha.angle( AA_origin, ... )
			alpha.from_error( alpha_or_table )
		
		librería shape
		+	shape.ASSDraw3( Shape )
		-	shape.round( Shape )
		-	shape.info( Shape )
		-	shape.redraw( Shape, tract )
		-	shape.modify( Shape, modify )
		-	shape.filter( Shape, Filter )
		-	shape.filter2( Shape, Filter, Split )
		<	shape.filter3( Shape, Split, ... )
		-	shape.length( Shape )
		-	shape.width( Shape )
		-	shape.height( Shape )
		-	shape.from_clip( )
		-	shape.rotate( Shape, Angle, org_x, org_y )
		-	shape.reflect( Shape, Axis )
		-	shape.oblique( Shape, Pixel, Axis )
		+	shape.to_bezier( Shape )
		-	shape.reverse( Shape )
		-	shape.origin( Shape )
		-	shape.displace( Shape, Dx, Dy )
		-	shape.incenter( Shape )
		-	shape.centerpos( Shape, CenterX, CenterY )
		-	shape.firstpos( Shape, pos_x, pos_y )
		-	shape.ratio( Shape, Ratiox, Ratioy, Mode )
		-	shape.size( Shape, SizeX, SizeY, Mode )
		-	shape.array( Shape, loops, Angle_or_mode, Dxy )
		-	shape.Lmove( x1, y1, x2, y2, t1, t2, Accel )
		-	shape.Lmove2( Coor, Times )
		-	shape.Pmove( F_x, F_y, domainF, t1, t2, Accel, offset_t )
		-	shape.Smove( Shape, t1, t2, offset_t, Relative )
		-	shape.Rmove( Rx, Ry, t1, t2, Accel, offset_t )
		<	shape.Rmove2( Rx, Ry, t, Accel )
		<	shape.Rmove3( Rx, Ry, t, Accel, offset_t )
		<	shape.Rmove4( Rx, Ry, t1, t2, Accel, offset_t, move4 )
		<	shape.Omove( P, t1, t2, Dur, Accel )
		+	shape.lineclip( Mode, Dur, Ini )
		+	shape.setclip( Set_clips, Set_tagfx, Indx_line )
		-	shape.animated( dur, frame_duration, frames, size_x, size_y )
		-	shape.animated2( dur, frame_duration, ... )
		-	shape.movevc( Shape, Return, width_vc, height_vc, posx, posy, Dx, Dy, time_vci, time_vcf )
		-	shape.movevci( Shape, Return, width_vc, height_vc, posx, posy, Dx, Dy, time_vci, time_vcf )
		-	shape.divide( Shape, Mark )
		-	shape.to_shape( Table_points )
		-	shape.retire( Shape, Index_1, Index_2 )
		-	shape.trajectory( Loop_t, distance_nim, distance_max )
		-	shape.Ltrajectory( length_total, length_curve, height_curve )
		-	shape.Ctrajectory( Loop_Ct, radius_min, radius_max )
		-	shape.Rtrajectory( Loop_Rt, radius_min, radius_max )
		-	shape.Strajectory( Loops_St, Radius )
		-	shape.multi1( Size, Px )
		-	shape.multi2( Width, Height, Pixel )
		-	shape.multi3( Size, Bord, Shape )
		-	shape.multi4( Size, Loop1, Loop2, n )
		-	shape.multi5( Shapes, Width, Height, Dxy )
		+	shape.multi6( Size, Bord, Part )
		+	shape.multi7( Part, Radius )
		+	shape.multi8( Shape, Size_ini, Size_fin, Loop )
		+	shape.multi9( Shape, Loop, Tags, Vertical )
		-	shape.equality( Shape1, Shape2 )
		-	shape.morphism( Size, Shape1, Shape2 )
		-	shape.bord( Shape, Bord, Size )
		-	shape.from_audio( Audio, Width, Height_scale, Thickness, Offset_time )
		-	shape.to_pixels( Shape, Shape2, Seed, Filter )
		<	shape.bord_to_pixels( Shape, Shape2, Pixel, Seed, Filter )
		+	shape.fxline( P1, P2, Radius )
		+	shape.fxcircle( Shape )
		+	shape.trim( Shape, Lines, Mark, Ratio )
		+	shape.reduce( Shape )
		+	shape.inclip( Tags )
		<	shape.matrix( Shape, Matrix )
		/	shape.do_shape( Shape1, Shape2, Mode, Split )
		<	shape.to_outline( Shape, Bord )
		/	shape.point( Shape, Pixel )
		<	shape.deformed( Shape, Deformed, Pixel, Axis )
		+	shape.allin( Shape, Tags )
		+	shape.fusion( Shapes, Tags )
		-	shape.deformed2( Shape, Defor_x, Defor_y )
		-	shape.filtershape( Shape, ... )
			shape.intersect( Shape1, Shape2 )
		
		librería text
		-	text.upper( Text )
		-	text.lower( Text )
		-	text.kara( )
		-	text.infx( syl_in_fx, true_false )
		-	text.outfx( syl_out_fx )
		-	text.tag( ... )
		+	text.rand( Text_ran, num_tran, dur_tran, extra_tags, table_rand, text_all )
		+	text.inclip( Text )
		+	text.outclip( Text )
		+	text.karaoke_true( Table )
		+	text.remove_tags( text_string )
		+	text.remove_space_in_tags( text_str )
		+	text.remove_extra_space( linetext_str )
		+	text.remove_syls_nil( linetext_str, linetext_dur )	
		+	text.to_word( l_text_str, l_text_dur )
		+	text.text2word( linetext_str, linetext_dur )
		+	text.text2syl( linetext_str, linetext_dur )
		+	text.text2char( linetext_str, linetext_dur )
		*	text.to_kara( String )
		+	text.syl2hiragana( Text )
		+	text.syl2katakana( Text )
		+	text.kana2romaji( Text )
		+	text.text2stripped( text_str4 )
		+	text.char_size( )
		+	text.char2byte( string_text )
		+	text.byte2char( table_bytes )
		-	text.inside( inside, Text )
		-	text.bezier( Shape, mode, Accel, Offset_time )
		-	text.text2part( line_text_str, line_text_dur, line_text_left, parts )
		-	text.to_shape( Text, Scale, Tags )
		-	text.bord_to_shape( Text, Scale, Tags, Bord )
		-	text.do_shape( Text, Shape, Scale, Mode, Tags )
		-	text.deformed( Text, Deformed, Pixel, Axis )
		-	text.deformed2( Text, Mode )
		-	text.to_pixels( Text, Mode, Shape )
		-	text.to_clip( Text, relative_pos, iclip )
		<	text.bord_to_pixels( Text, Shape, Pixel, Seed, Filter )
		-	text.gradienth( ... )
		/	text.gradienth2( ... )
		-	text.gradientv( ... )
		*	text.maskclip( Fondo, Color, fxBord, fxMask, Shape, Space )
		
		librería image
		+	image.data( bmp_image, Return )
		+	image.to_pixels( bmp_image, Size )
		
		librería aegisub
		+	aegisub.word( line_text, line_dur, ci_ )
		+	aegisub.word2s( )
		+	aegisub.wordsi( ws_ )
		+	aegisub.syls2c( )
		+	aegisub.line2W( )
		+	aegisub.line2S( )
		+	aegisub.line2C( )
		+	aegisub.word2S( )
		+	aegisub.word2C( )
		+	aegisub.word2c( )
		+	aegisub.wordci( wc_ )
		-	aegisub.width( string_txt )
		-	aegisub.height( string_txt )
		
		librería file
		-	file.get_lines( File_lua, Number_or_match )
		-	file.gsub( File_lua, ... )
		-	file.match( File_lua, Match_or_tbl )
		-	file.gmatch( File_lua, Match_or_tbl )
		-	file.count( File_lua, Match_or_tbl )
		
		librería effector
		+	effector.create_fx( new_fx_type, ... )
		+	effector.keeptags( template_type, keeptags_type )
		+	effector.pos( t_move, t_pos, t_time )
		+	effector.knj( v_knj )
		-	effector.offset_pos( string_inPos, offset_dx, offset_dy )
		-	effector.import( Lua_file )
		-	effector.addfx( Library_fx, Name_fx )
		-	effector.savefx( New_fxname, File_fx )
		+	effector.modify_pos( )
		+	effector.new_pos( posx, posy )
		+	effector.default_val( )
		-	effector.effect_offset( )
		+	effector.decide( )
		+	effector.print_error( argument, type, function, pos )
		+	effector.time( Time_i, Time_f )
		+	effector.default_val2( )
		+	effector.pos_config( )
		+	effector.run_fx( subs, sett, index )
		+	effector.preprosses_styles( styles, subtitles, has_selected_lines )
		+	effector.preprosses_macro( subtitles, sett, fx__, selected_lines )
		+	effector.preprosses_lines( subtitles )
		+	effector.macro_fx( subtitles, selected_lines, active_line )
	}
	--]]
	-----------------------------------------------------------------------------------------------------------------------------------
	alpha = { } color = { } effector = { } image = { } random = { } recall = { } shape = { } tag = { } temp = { } text = { } file = { }
	-----------------------------------------------------------------------------------------------------------------------------------
	-- Librería de shapes prediceñadas del Kara Effector ------------------------------------------------------------------------------
	shape.circle	= "m 50 0 b 22 0 0 22 0 50 b 0 78 22 100 50 100 b 78 100 100 78 100 50 b 100 22 78 0 50 0 "
	shape.triangle  = "m 50 0 l 0 86 l 100 86 l 50 0 "
	shape.rectangle = "m 0 0 l 0 100 l 100 100 l 100 0 l 0 0 "
	shape.circangle = "m 20 0 b 8 0 0 8 0 20 l 0 80 b 0 92 8 100 20 100 l 80 100 b 92 100 100 92 100 80 l 100 20 b 100 8 92 0 80 0 l 20 0 "
	shape.pixel		= "m 0 0 l 0 1 l 1 1 l 1 0 l 0 0 "
	shape.pentagon	= "m 50 0 l 0 36 l 19 95 l 81 95 l 100 36 l 50 0 "
	shape.hexagon	= "m 50 0 l 0 29 l 0 87 l 50 116 l 100 87 l 100 29 l 50 0 "
	shape.octagon	= "m 29 0 l 0 29 l 0 71 l 29 100 l 71 100 l 100 71 l 100 29 l 71 0 l 29 0 "
	shape.heart		= "m 50 25 b 32 0 0 16 0 40 b 0 68 24 71 50 106 b 75 71 100 68 100 40 b 100 16 68 0 50 25 "
	shape.heart2t	= "m 50 25 b 32 0 0 16 0 40 b 0 68 24 71 50 100 b 75 71 100 68 100 40 b 100 16 68 0 50 25 m 79 27 b 74 25 76 20 81 22 b 90 26 93 36 93 43 b 93 48 87 48 87 43 b 87 39 86 30 79 27 "
	shape.heart_b	= "m 50 25 b 32 0 0 16 0 40 b 0 68 24 71 50 100 b 75 71 100 68 100 40 b 100 16 68 0 50 25 l 50 28 b 69 2 98 18 98 40 b 98 66 74 69 50 97 b 25 69 2 66 2 40 b 2 18 31 2 50 28 "
	shape.shine1t	= "m 0 0 l 47 50 l 0 100 l 50 53 l 100 100 l 53 50 l 100 0 l 50 47 m 42 50 b 42 61 58 61 58 50 b 58 39 42 39 42 50 "
	shape.shine2t	= "m 0 0 l 45 50 l 0 100 l 50 55 l 100 100 l 55 50 l 100 0 l 50 45 m 40 50 b 40 64 60 64 60 50 b 60 36 40 36 40 50 "
	shape.shine3t	= "m 0 0 b 35 39 61 65 100 100 b 65 61 39 35 0 0 m 100 0 b 61 35 35 61 0 100 b 39 65 65 39 100 0 "
	shape.shine4t	= "m 50 100 b 52 69 52 31 50 0 b 48 31 48 69 50 100 m 0 50 b 31 52 69 52 100 50 b 69 48 31 48 0 50 "
	shape.trebol 	= "m 1 99 l 4 106 b 21 99 44 83 53 56 b 51 73 40 88 56 98 b 72 106 80 90 77 82 b 85 86 100 82 100 69 b 100 58 87 52 64 54 b 52 55 51 50 68 48 b 85 46 94 40 95 29 b 96 18 80 10 70 19 b 70 0 40 0 40 21 b 40 33 47 37 50 43 b 54 50 52 54 47 47 b 39 38 31 26 19 27 b 0 29 0 49 13 53 b 0 58 3 80 19 79 b 39 78 40 62 51 55 b 42 79 23 92 1 99 "
	shape.feather	= "m 0 0 b 0 20 10 28 27 34 b 10 33 47 49 54 55 b 62 62 72 77 78 75 l 80 78 l 90 79 b 94 86 96 94 97 100 l 100 100 b 99 93 96 84 93 78 b 100 56 88 41 73 30 l 73 39 l 69 28 b 62 24 55 23 49 19 l 48 24 l 45 19 b 31 10 13 12 0 0 m 91 74 l 88 75 b 79 49 57 40 46 35 b 22 25 8 15 2 5 b 11 17 22 23 48 34 b 64 41 82 51 91 74 "
	shape.feather2	= "m 99 8 l 87 18 b 83 13 75 18 75 23 b 69 19 68 29 62 27 b 53 27 50 21 44 21 b 38 15 31 11 21 8 b 14 2 7 0 4 2 b 0 16 11 37 29 43 b 40 49 65 50 78 31 b 83 34 93 29 89 20 l 100 9 "
	shape.diamond	= "m 50 0 l 0 50 l 50 100 l 100 50 l 50 0 "
	shape.gear		= "m 3 70 l 3 70 l 17 69 l 25 78 l 22 92 l 30 97 l 40 86 l 53 86 l 60 99 l 70 96 l 68 82 l 79 73 l 92 78 l 97 69 l 86 60 l 86 46 l 100 38 l 96 29 l 82 31 l 74 21 l 77 7 l 70 3 l 60 14 l 46 13 l 38 0 l 30 2 l 30 18 l 20 26 l 6 23 l 1 31 l 13 41 l 12 53 l 0 61 l 3 70 m 24 49 b 24 15 74 15 74 49 b 74 83 24 83 24 49 "
	shape.bubble	= "m 50 100 b 78 100 100 78 100 50 b 100 22 78 0 50 0 b 22 0 0 22 0 50 b 0 78 22 100 50 100 m 50 1 b 79 1 99 21 99 50 b 99 76 80 93 68 96 b 62 98 66 94 50 94 b 34 94 38 98 32 96 b 20 93 1 78 1 50 b 1 22 22 1 50 1 m 88 22 b 79 11 75 14 85 24 b 92 38 94 33 88 22 m 12 15 b 12 19 18 19 18 15 b 18 11 12 11 12 15 m 14 16 l 15 30 l 16 16 l 30 15 l 16 14 l 15 0 l 14 14 l 0 15 m 50 94 b 63 94 61 100 52 100 b 42 100 38 94 50 94 "
	shape.note1t	= "m 33 70 b 16 57 0 67 0 82 b 0 93 9 100 19 100 b 28 100 40 93 40 73 l 40 15 b 46 18 53 25 56 36 b 56 18 48 8 33 0 l 33 70 "
	shape.note2t	= "m 33 70 b 16 57 0 67 0 82 b 0 93 9 100 19 100 b 28 100 40 93 40 73 l 40 27 l 93 18 l 93 55 b 76 42 60 52 60 67 b 60 78 69 85 79 85 b 88 85 100 78 100 58 l 100 0 l 33 12 l 33 70 "
	shape.note3t	= "m 33 70 b 16 57 0 67 0 82 b 0 93 9 100 19 100 b 28 100 40 93 40 73 l 40 36 l 93 27 l 93 55 b 76 42 60 52 60 67 b 60 78 69 85 79 85 b 88 85 100 78 100 58 l 100 0 l 33 12 l 33 70 m 40 29 l 40 18 l 93 8 l 93 20 l 40 29 "
	shape.note4t	= "m 33 70 b 16 57 0 67 0 82 b 0 93 9 100 19 100 b 28 100 40 93 40 73 l 40 28 l 93 18 l 93 55 b 76 42 60 52 60 67 b 60 78 69 85 79 85 b 88 85 100 78 100 58 l 100 0 l 33 12 l 33 70 m 35 73 l 35 13 l 98 2 l 98 59 b 98 77 87 83 79 83 b 70 83 62 77 62 67 b 62 53 76 44 95 58 l 95 16 l 38 27 l 38 74 b 38 91 27 98 19 98 b 10 98 2 91 2 82 b 2 68 16 59 35 73 "
	shape.star		= "m 38 36 l 0 36 l 31 59 l 20 95 l 50 72 l 81 94 l 69 59 l 100 36 l 62 36 l 50 0 l 38 36 "
	shape.star1t 	= "m 0 35 l 29 56 l 33 55 b 37 44 42 66 34 58 l 30 60 l 18 95 l 48 73 l 48 69 b 38 63 60 63 51 69 l 51 73 l 81 95 l 70 60 l 65 58 b 57 65 63 44 66 55 l 71 56 l 100 35 l 63 35 l 61 39 b 64 48 47 36 59 36 l 61 33 l 50 0 l 38 33 l 40 36 b 52 36 36 49 38 39 l 36 35 l 0 35 "
	shape.star2t 	= "m 31 26 b 0 29 0 29 14 58 b 0 87 0 87 31 89 b 50 116 50 116 69 89 b 100 87 100 87 86 58 b 100 29 100 29 69 26 b 50 0 50 0 31 26 l 33 29 b 50 16 50 16 67 29 b 86 37 86 37 83 58 b 86 79 86 79 67 87 b 50 100 50 100 33 87 b 14 79 14 79 17 58 b 14 37 14 37 33 29 "
	shape.star3t 	= "m 31 26 b 0 29 0 29 14 58 b 0 87 0 87 31 89 b 50 116 50 116 69 89 b 100 87 100 87 86 58 b 100 29 100 29 69 26 b 50 0 50 0 31 26 "
	shape.star4t 	= "m 25 72 l 18 61 l 0 87 l 33 87 b 42 72 53 53 25 72 m 50 87 l 37 87 l 50 116 l 67 87 b 58 72 47 53 50 87 m 75 72 l 69 83 l 100 87 l 83 58 b 66 58 45 58 75 72 m 75 43 l 82 54 l 100 29 l 67 29 b 58 45 47 63 75 43 m 50 29 l 63 29 l 50 0 l 33 29 b 42 45 53 63 50 29 m 25 43 l 31 32 l 0 29 l 16 58 b 34 58 54 58 25 43 "
	shape.star5t 	= "m 33 29 l 0 29 l 50 116 l 100 29 l 33 29 l 50 0 l 100 87 l 0 87 l 33 29 "
	shape.star6t 	= "m 36 33 b 0 36 0 36 27 60 b 20 95 20 95 50 77 b 81 95 81 95 73 60 b 100 36 100 36 64 33 b 50 0 50 0 36 33 m 61 35 b 95 38 95 38 69 59 b 78 90 78 90 50 73 b 23 90 23 90 31 59 b 6 38 6 38 39 35 b 50 6 50 6 61 35 "
	shape.star7t 	= "m 36 33 b 0 36 0 36 27 60 b 20 95 20 95 50 77 b 81 95 81 95 73 60 b 100 36 100 36 64 33 b 50 0 50 0 36 33 "
	shape.star8t 	= "m 39 36 b 0 36 0 36 31 59 b 20 95 20 95 50 72 b 81 95 81 95 69 59 b 100 36 100 36 62 36 b 50 0 50 0 39 36 "
	shape.star9t 	= "m 0 29 l 16 58 l 0 87 l 33 87 l 50 116 l 67 87 l 100 87 l 84 58 l 100 29 l 67 29 l 50 0 l 33 29 l 0 29 l 10 35 l 37 35 l 50 12 l 63 35 l 90 35 l 77 58 l 90 81 l 63 81 l 50 104 l 37 81 l 10 81 l 23 58 l 10 35 "
	shape.star10t 	= "m 0 29 l 16 58 l 0 87 l 33 87 l 50 116 l 67 87 l 100 87 l 84 58 l 100 29 l 67 29 l 50 0 l 33 29 l 0 29 "
	shape.sakura 	= "m 50 40 l 35 0 b 10 10 0 32 0 61 b 0 88 15 117 50 130 b 85 117 100 88 100 61 b 100 32 90 10 65 0 l 50 40 "
	shape.sakura1t 	= "m 41 57 b 23 57 1 53 0 82 b 26 97 34 76 44 60 l 11 76 l 41 57 m 47 62 b 38 78 23 95 50 110 b 76 95 62 78 52 62 l 50 99 l 47 62 m 56 60 b 66 76 73 97 100 82 b 99 53 77 57 58 57 l 89 76 l 56 60 m 44 50 b 34 33 26 13 0 27 b 1 57 23 53 41 53 l 11 33 l 44 50 m 52 47 b 62 32 76 15 50 0 b 23 15 38 32 47 47 l 50 12 l 52 47 m 58 53 b 77 53 99 57 100 27 b 73 13 66 33 56 50 l 89 33 l 58 53 "
	shape.sakura2t 	= "m 50 52 l 50 40 l 16 20 l 0 28 l 0 46 l 15 55 l 27 46 l 14 36 l 50 52 m 46 54 l 35 48 l 0 67 l 0 86 l 16 94 l 30 86 l 30 72 l 14 79 l 46 54 m 46 59 l 34 67 l 34 104 l 50 114 l 66 104 l 66 88 l 52 81 l 50 100 l 46 59 m 50 62 l 50 75 l 84 94 l 100 86 l 100 67 l 85 60 l 73 67 l 87 79 l 50 62 m 54 60 l 66 65 l 100 46 l 100 28 l 84 20 l 69 28 l 70 44 l 87 36 l 54 60 m 54 55 l 66 47 l 66 10 l 50 0 l 34 10 l 34 26 l 48 34 l 50 14 l 54 55 "
	shape.sakura3t 	= "m 47 49 b 25 49 10 52 0 63 l 0 78 l 12 85 b 21 85 26 80 31 75 b 33 69 36 63 39 58 l 18 67 l 47 49 m 44 55 b 35 70 30 84 32 102 l 47 110 l 60 102 b 61 92 61 85 59 80 b 54 76 50 70 48 65 l 47 89 l 44 55 m 48 58 b 55 73 66 88 82 92 l 95 84 l 95 69 b 90 64 85 62 78 60 b 73 61 66 62 60 61 l 79 75 l 48 58 m 53 57 b 71 60 91 54 100 46 l 100 31 l 86 22 b 79 24 72 28 68 33 b 67 39 65 45 61 50 l 80 40 l 53 57 m 56 53 b 65 39 69 24 68 8 l 53 0 l 39 8 b 38 15 38 21 41 27 b 45 31 49 36 52 41 l 53 20 l 56 53 m 52 49 b 47 34 31 21 18 15 l 4 24 l 4 39 b 9 44 15 47 23 48 b 29 46 35 46 41 46 l 22 33 l 52 49 "
	shape.sakura4t 	= "m 42 59 l 18 59 b 0 59 0 74 0 86 l 25 86 b 36 86 40 70 47 62 l 25 73 l 42 59 m 48 65 l 35 86 b 26 101 38 107 50 114 l 63 93 b 69 85 57 71 53 62 l 51 87 l 48 65 m 57 62 l 69 85 b 77 100 89 92 100 85 l 89 64 b 83 55 67 57 56 57 l 78 71 l 57 62 m 58 55 l 84 55 b 100 55 100 40 100 29 l 76 29 b 65 29 61 43 53 53 l 76 42 l 58 55 m 52 49 l 64 30 b 75 14 62 7 50 0 l 38 18 b 32 29 43 40 47 53 l 50 27 l 52 49 m 44 53 l 33 30 b 24 15 10 23 0 30 l 12 50 b 19 59 35 57 44 57 l 25 43 l 44 53 "
	shape.sakura5t 	= "m 43 55 b 33 49 4 55 4 65 b 4 76 14 90 24 90 b 33 90 27 74 43 61 l 23 68 l 43 55 m 49 61 b 38 65 27 93 35 99 b 44 105 61 104 66 96 b 72 89 55 85 54 64 l 49 85 l 49 61 m 55 59 b 55 70 75 93 85 88 b 93 83 100 66 96 59 b 91 50 80 63 61 56 l 77 69 l 55 59 m 58 52 b 68 58 98 52 98 41 b 98 31 87 18 77 18 b 68 18 74 33 58 46 l 78 39 l 58 52 m 52 46 b 63 41 74 12 66 6 b 57 0 39 2 33 10 b 29 18 45 22 48 43 l 52 21 l 52 46 m 45 46 b 46 36 25 12 15 18 b 6 24 0 41 5 49 b 10 58 20 43 40 50 l 23 38 l 45 46 "
	shape.sakura6t	= "m 46 75 b 29 79 37 99 50 110 b 64 99 72 79 53 75 l 50 90 l 46 75 m 30 61 b 19 48 4 65 0 81 b 15 87 39 85 33 68 l 18 71 l 30 61 m 67 68 b 61 85 85 87 100 81 b 96 65 81 48 70 61 l 82 71 l 67 68 m 53 34 b 72 31 64 10 50 0 b 37 10 29 32 46 34 l 50 21 l 53 34 m 69 48 b 79 60 96 43 100 28 b 85 22 61 25 67 41 l 82 38 l 69 48 m 34 41 b 39 25 15 22 0 28 b 3 43 22 60 31 48 l 18 38 l 34 41 "
	shape.sakura7t 	= "m 46 75 b 28 79 37 99 50 110 b 64 99 72 79 53 75 l 50 90 l 46 75 m 30 61 b 19 48 4 65 0 81 b 15 87 39 85 33 68 l 18 71 l 30 61 m 66 68 b 61 85 85 87 100 81 b 96 65 81 48 69 61 l 82 71 l 66 68 m 53 34 b 72 31 64 10 50 0 b 37 10 28 31 46 34 l 50 21 l 53 34 m 69 48 b 81 60 96 43 100 28 b 85 22 61 25 66 41 l 82 38 l 69 48 m 33 41 b 39 25 15 22 0 28 b 4 43 19 60 30 48 l 18 38 l 33 41 m 55 42 b 55 34 44 34 44 42 b 44 50 55 50 55 42 m 55 67 b 55 59 44 59 44 67 b 44 75 55 75 55 67 m 44 48 b 44 40 33 40 33 48 b 33 56 44 56 44 48 m 44 61 b 44 53 33 53 33 61 b 33 69 44 69 44 61 m 66 48 b 66 40 55 40 55 48 b 55 56 66 56 66 48 m 66 61 b 66 53 55 53 55 61 b 55 69 66 69 66 61 "
	shape.snow1t 	= "m 30 45 l 30 52 l 20 52 l 20 55 l 30 55 l 30 62 l 16 70 l 2 61 l 0 64 l 13 72 l 1 79 l 3 82 l 15 75 l 15 90 l 18 90 l 18 73 l 32 65 l 39 69 l 33 78 l 36 80 l 42 71 l 48 74 l 48 89 l 32 98 l 34 101 l 48 93 l 48 108 l 52 108 l 52 93 l 66 101 l 67 98 l 52 89 l 52 74 l 58 71 l 64 80 l 67 78 l 61 69 l 67 65 l 82 73 l 82 90 l 85 90 l 85 75 l 97 82 l 99 79 l 87 72 l 100 64 l 98 61 l 84 70 l 70 62 l 70 55 l 80 55 l 80 52 l 70 52 l 70 45 l 84 37 l 98 46 l 100 43 l 87 35 l 99 28 l 97 25 l 85 32 l 85 16 l 82 17 l 82 34 l 68 42 l 61 38 l 67 30 l 64 28 l 58 36 l 52 33 l 52 18 l 68 9 l 66 6 l 52 14 l 52 0 l 48 0 l 48 14 l 34 6 l 32 9 l 48 18 l 48 33 l 42 36 l 36 28 l 33 30 l 39 38 l 32 42 l 18 34 l 18 17 l 15 16 l 15 32 l 3 25 l 1 28 l 13 35 l 0 43 l 2 46 l 16 37 l 30 45 l 35 45 l 50 37 l 65 45 l 65 62 l 50 70 l 35 62 l 35 45 "
	shape.snow2t 	= "m 18 45 l 14 29 l 6 31 l 8 39 l 0 41 l 2 49 l 18 45 l 21 44 l 32 42 l 42 47 l 32 53 l 21 51 l 19 59 l 27 60 l 23 62 l 8 59 l 5 66 l 13 68 l 11 76 l 19 77 l 23 62 l 27 60 l 25 68 l 33 70 l 35 60 l 46 54 l 46 65 l 38 72 l 35 75 l 22 87 l 28 93 l 35 87 l 42 93 l 48 87 l 35 75 l 38 72 l 45 78 l 50 73 l 56 78 l 62 72 l 65 75 l 52 87 l 59 93 l 65 87 l 71 93 l 78 86 l 65 75 l 62 72 l 54 65 l 54 54 l 65 60 l 67 70 l 75 68 l 73 60 l 77 62 l 80 77 l 89 76 l 87 68 l 95 67 l 93 59 l 77 62 l 73 60 l 80 59 l 78 51 l 68 53 l 58 47 l 68 42 l 78 44 l 81 45 l 97 49 l 100 41 l 92 39 l 94 31 l 86 29 l 81 45 l 78 44 l 80 37 l 73 35 l 75 26 l 67 24 l 67 21 l 84 26 l 86 18 l 77 15 l 79 7 l 71 5 l 67 21 l 67 24 l 65 35 l 54 40 l 54 29 l 63 22 l 57 16 l 50 22 l 50 17 l 62 6 l 56 0 l 50 6 l 44 0 l 38 6 l 50 17 l 50 22 l 43 16 l 37 22 l 46 29 l 46 40 l 35 35 l 33 24 l 33 21 l 29 5 l 21 7 l 23 15 l 14 18 l 16 26 l 33 21 l 33 24 l 25 26 l 27 35 l 19 37 l 21 44 "
	shape.snow3t 	= "m 25 39 l 11 35 l 0 47 l 11 59 l 25 55 l 19 64 l 17 61 l 6 66 l 14 68 l 11 75 l 22 69 l 20 66 l 32 65 l 22 74 l 24 90 l 39 86 l 44 74 l 49 83 l 44 83 l 44 94 l 50 87 l 56 94 l 56 83 l 51 83 l 56 74 l 61 86 l 76 90 l 78 74 l 68 65 l 80 66 l 78 69 l 88 75 l 86 68 l 94 67 l 83 61 l 81 64 l 75 55 l 88 59 l 100 47 l 88 35 l 75 39 l 81 30 l 83 33 l 94 27 l 86 26 l 88 18 l 78 24 l 80 28 l 68 29 l 78 19 l 76 4 l 61 8 l 56 20 l 51 11 l 56 11 l 56 0 l 50 7 l 44 0 l 44 11 l 49 11 l 43 20 l 39 8 l 24 4 l 22 19 l 32 29 l 20 28 l 22 24 l 11 18 l 14 26 l 6 27 l 17 33 l 19 30 l 25 39 l 46 47 b 38 47 29 57 19 47 l 28 41 l 46 47 l 48 43 b 43 36 29 35 34 19 l 42 24 l 48 43 l 52 43 l 58 24 l 66 19 b 71 35 56 36 52 43 l 54 47 l 72 41 l 81 46 b 71 57 62 47 54 47 l 52 51 b 57 58 71 59 66 75 l 58 70 l 52 51 l 48 51 l 42 70 l 34 75 b 29 59 42 58 48 51 l 46 47 "
	shape.flower1t 	= "m 44 44 b 30 41 25 18 0 36 b 10 66 22 68 40 56 b 33 69 10 66 20 95 b 50 95 56 84 50 62 b 61 75 50 95 81 95 b 90 66 81 56 60 56 b 76 50 90 66 100 36 b 75 18 65 22 56 44 b 57 26 75 18 50 0 b 25 18 28 33 44 44 "
	shape.flower2t 	= "m 44 44 b 30 41 25 18 0 36 b 10 66 22 68 40 56 b 33 69 10 66 20 95 b 50 95 56 84 50 62 b 61 75 50 95 81 95 b 90 66 81 56 60 56 b 76 50 90 66 100 36 b 75 18 65 22 56 44 b 57 26 75 18 50 0 b 25 18 28 33 44 44 m 43 15 b 43 6 55 6 55 15 b 55 24 43 24 43 15 m 9 42 b 9 33 21 33 21 42 b 21 51 9 51 9 42 m 23 82 b 23 73 35 73 35 82 b 35 91 23 91 23 82 m 66 82 b 66 73 78 73 78 82 b 78 91 66 91 66 82 m 78 40 b 78 31 90 31 90 40 b 90 49 78 49 78 40 "
	shape.flower3t 	= "m 44 44 b 30 41 25 18 0 36 b 10 66 22 68 40 56 b 33 69 10 66 20 95 b 50 95 56 84 50 62 b 61 75 50 95 81 95 b 90 66 81 56 60 56 b 76 50 90 66 100 36 b 75 18 65 22 56 44 b 57 26 75 18 50 0 b 25 18 28 33 44 44 m 19 23 b 19 14 31 14 31 23 b 31 32 19 32 19 23 m 8 69 b 8 60 20 60 20 69 b 20 78 8 78 8 69 m 48 91 b 48 82 60 82 60 91 b 60 100 48 100 48 91 m 83 62 b 83 53 95 53 95 62 b 95 71 83 71 83 62 m 64 17 b 64 8 76 8 76 17 b 76 26 64 26 64 17 m 44 52 b 44 43 56 43 56 52 b 56 61 44 61 44 52 "
	shape.flower4t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 0 55 12 20 50 53 b 31 7 70 7 50 53 b 87 20 100 55 50 53 b 93 79 62 100 50 53 b 38 100 7 79 50 53 m 5 39 b 5 32 15 32 15 39 b 15 46 5 46 5 39 m 84 39 b 84 32 94 32 94 39 b 94 46 84 46 84 39 m 45 11 b 45 4 55 4 55 11 b 55 18 45 18 45 11 m 21 87 b 21 80 31 80 31 87 b 31 94 21 94 21 87 m 70 87 b 70 80 80 80 80 87 b 80 94 70 94 70 87 "
	shape.flower5t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 0 55 12 20 50 53 b 31 7 70 7 50 53 b 87 20 100 55 50 53 b 93 79 62 100 50 53 b 38 100 7 79 50 53 "
	shape.flower6t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 38 69 46 91 23 91 b 16 69 38 69 50 53 b 31 46 14 61 6 38 b 24 24 31 46 50 53 b 50 33 31 20 50 6 b 69 20 50 33 50 53 b 69 46 75 25 94 38 b 87 61 69 46 50 53 b 62 69 85 68 78 91 b 54 91 62 69 50 53 m 44 19 b 44 28 56 28 56 19 b 56 10 44 10 44 19 m 24 80 b 24 89 36 89 36 80 b 36 71 24 71 24 80 m 64 80 b 64 89 76 89 76 80 b 76 71 64 71 64 80 m 12 42 b 12 51 24 51 24 42 b 24 33 12 33 12 42 m 76 42 b 76 51 88 51 88 42 b 88 33 76 33 76 42 m 40 53 b 40 67 60 67 60 53 b 60 40 40 40 40 53 "
	shape.flower7t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 38 69 46 91 23 91 b 16 69 38 69 50 53 b 31 46 14 61 6 38 b 24 24 31 46 50 53 b 50 33 31 20 50 6 b 69 20 50 33 50 53 b 69 46 75 25 94 38 b 87 61 69 46 50 53 b 62 69 85 68 78 91 b 54 91 62 69 50 53 m 44 19 b 44 28 56 28 56 19 b 56 10 44 10 44 19 m 24 80 b 24 89 36 89 36 80 b 36 71 24 71 24 80 m 64 80 b 64 89 76 89 76 80 b 76 71 64 71 64 80 m 12 42 b 12 51 24 51 24 42 b 24 33 12 33 12 42 m 76 42 b 76 51 88 51 88 42 b 88 33 76 33 76 42 "
	shape.flower8t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 38 69 46 91 23 91 b 16 69 38 69 50 53 b 31 46 14 61 6 38 b 24 24 31 46 50 53 b 50 33 31 20 50 6 b 69 20 50 33 50 53 b 69 46 75 25 94 38 b 87 61 69 46 50 53 b 62 69 85 68 78 91 b 54 91 62 69 50 53 "
	shape.flower9t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 "
	shape.flower10t = "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 0 55 12 20 50 53 b 31 7 70 7 50 53 b 87 20 100 55 50 53 b 93 79 62 100 50 53 b 38 100 7 79 50 53 m 11 64 b 11 71 21 71 21 64 b 21 57 11 57 11 64 m 80 64 b 80 71 90 71 90 64 b 90 57 80 57 80 64 m 45 89 b 45 96 55 96 55 89 b 55 82 45 82 45 89 m 24 23 b 24 30 34 30 34 23 b 34 16 24 16 24 23 m 66 23 b 66 30 76 30 76 23 b 76 16 66 16 66 23 "
	shape.flower11t = "m 100 88 b 79 99 57 89 57 62 b 80 75 100 37 100 88 m 49 66 b 49 92 92 92 49 116 b 28 104 25 80 49 66 m 41 62 b 19 75 38 110 0 88 b 0 65 18 48 41 62 m 41 54 b 20 40 0 77 0 28 b 19 17 41 26 41 54 m 49 49 b 49 23 8 23 49 0 b 68 11 71 36 49 49 m 57 54 b 80 40 58 5 100 28 b 100 54 81 67 57 54 "
	shape.flower12t = "m 0 87 b 21 99 43 89 43 62 b 20 75 0 38 0 87 m 50 66 b 50 92 8 92 50 116 b 71 103 74 80 50 66 m 57 62 b 80 75 61 109 100 87 b 100 65 81 49 57 62 m 57 54 b 79 41 100 77 100 29 b 80 17 57 27 57 54 m 50 50 b 50 24 92 24 50 0 b 30 11 27 37 50 50 m 43 54 b 20 41 42 4 0 29 b 0 54 19 67 43 54 m 44 58 b 44 66 56 66 56 58 b 56 50 44 50 44 58 m 24 82 b 24 90 12 90 12 82 b 12 74 24 74 24 82 m 60 97 b 60 105 48 105 48 97 b 48 89 60 89 60 97 m 93 76 b 93 84 81 84 81 76 b 81 68 93 68 93 76 m 91 34 b 91 42 79 42 79 34 b 79 26 91 26 91 34 m 54 17 b 54 25 42 25 42 17 b 42 9 54 9 54 17 m 20 39 b 20 47 8 47 8 39 b 8 31 20 31 20 39 "
	shape.flower13t = "m 0 87 b 21 99 43 89 43 62 b 20 75 0 38 0 87 m 50 66 b 50 92 8 92 50 116 b 71 103 74 80 50 66 m 57 62 b 80 75 61 109 100 87 b 100 65 81 49 57 62 m 57 54 b 79 41 100 77 100 29 b 80 17 57 27 57 54 m 50 50 b 50 24 92 24 50 0 b 30 11 27 37 50 50 m 43 54 b 20 41 42 4 0 29 b 0 54 19 67 43 54 m 44 58 b 44 66 56 66 56 58 b 56 50 44 50 44 58 "
	shape.flower14t = "m 0 87 b 21 99 43 89 43 62 b 20 75 0 38 0 87 m 50 66 b 50 92 8 92 50 116 b 71 103 74 80 50 66 m 57 62 b 80 75 61 109 100 87 b 100 65 81 49 57 62 m 57 54 b 79 41 100 77 100 29 b 80 17 57 27 57 54 m 50 50 b 50 24 92 24 50 0 b 30 11 27 37 50 50 m 43 54 b 20 41 42 4 0 29 b 0 54 19 67 43 54 "
	shape.flower15t = "m 30 71 l 33 62 b 16 59 0 59 0 88 b 24 102 33 88 38 74 l 30 71 m 50 84 l 44 77 b 33 88 24 102 50 117 b 76 102 68 88 56 77 l 50 84 m 70 71 l 62 74 b 68 88 76 102 100 88 b 100 59 84 59 67 62 l 70 71 m 70 47 l 67 56 b 84 59 100 59 100 30 b 76 16 67 30 62 45 l 70 47 m 50 35 l 56 42 b 67 30 76 16 50 1 b 24 16 33 30 44 42 l 50 35 m 30 47 l 38 45 b 33 30 24 16 0 30 b 0 59 16 59 33 56 l 30 47 m 0 35 b 0 25 14 25 14 35 b 14 45 0 45 0 35 m 0 83 b 0 73 14 73 14 83 b 14 93 0 93 0 83 m 43 108 b 43 98 57 98 57 108 b 57 118 43 118 43 108 m 43 10 b 43 0 57 0 57 10 b 57 20 43 20 43 10 m 86 83 b 86 73 100 73 100 83 b 100 93 86 93 86 83 m 86 35 b 86 25 100 25 100 35 b 100 45 86 45 86 35 "
	shape.flower16t = "m 30 70 l 33 61 b 16 58 0 58 0 87 b 24 102 33 87 38 73 l 30 70 m 50 83 l 44 76 b 33 87 24 102 50 116 b 76 102 68 87 56 76 l 50 83 m 70 70 l 62 73 b 68 87 76 102 100 87 b 100 58 84 58 67 61 l 70 70 m 70 46 l 67 55 b 84 58 100 58 100 29 b 76 14 67 29 62 44 l 70 46 m 50 34 l 56 41 b 67 29 76 14 50 0 b 24 14 33 29 44 41 l 50 34 m 30 46 l 38 44 b 33 29 24 14 0 29 b 0 58 16 58 33 55 l 30 46 m 26 29 b 26 19 40 19 40 29 b 40 39 26 39 26 29 m 60 29 b 60 19 74 19 74 29 b 74 39 60 39 60 29 m 9 58 b 9 48 23 48 23 58 b 23 68 9 68 9 58 m 77 58 b 77 48 91 48 91 58 b 91 68 77 68 77 58 m 26 87 b 26 77 40 77 40 87 b 40 97 26 97 26 87 m 60 87 b 60 77 74 77 74 87 b 74 97 60 97 60 87 "
	shape.flower17t = "m 30 70 l 33 61 b 16 58 0 58 0 87 b 24 102 33 87 38 73 l 30 70 m 50 83 l 44 76 b 33 87 24 102 50 116 b 76 102 68 87 56 76 l 50 83 m 70 70 l 62 73 b 68 87 76 102 100 87 b 100 58 84 58 67 61 l 70 70 m 70 46 l 67 55 b 84 58 100 58 100 29 b 76 14 67 29 62 44 l 70 46 m 50 34 l 56 41 b 67 29 76 14 50 0 b 24 14 33 29 44 41 l 50 34 m 30 46 l 38 44 b 33 29 24 14 0 29 b 0 58 16 58 33 55 l 30 46 "
	shape.flower18t = "m 30 70 l 33 61 b 16 58 0 58 0 87 b 24 102 33 87 38 73 l 30 70 m 50 82 l 43 75 b 33 87 24 102 50 116 b 76 102 68 87 57 75 l 50 82 m 70 70 l 62 73 b 68 87 76 102 100 87 b 100 58 84 58 67 61 l 70 70 m 70 46 l 67 55 b 84 58 100 58 100 29 b 76 14 67 29 62 44 l 70 46 m 50 34 l 57 42 b 67 29 76 14 50 0 b 24 14 33 29 43 42 l 50 34 m 30 46 l 38 44 b 33 29 24 14 0 29 b 0 58 16 58 33 55 l 30 46 m 58 34 l 42 34 l 50 21 l 58 34 m 82 40 l 74 53 l 66 40 l 82 40 m 34 40 l 26 53 l 18 40 l 34 40 m 58 82 l 50 95 l 42 82 l 58 82 m 34 76 l 18 76 l 26 63 l 34 76 m 82 76 l 66 76 l 74 63 l 82 76 m 5 35 b 5 28 15 28 15 35 b 15 42 5 42 5 35 m 5 81 b 5 74 15 74 15 81 b 15 88 5 88 5 81 m 85 81 b 85 74 95 74 95 81 b 95 88 85 88 85 81 m 85 35 b 85 28 95 28 95 35 b 95 42 85 42 85 35 m 45 104 b 45 97 55 97 55 104 b 55 111 45 111 45 104 m 45 12 b 45 5 55 5 55 12 b 55 19 45 19 45 12 "
	shape.flower19t = "m 30 70 l 33 61 b 16 58 0 58 0 87 b 24 102 33 87 38 73 l 30 70 m 50 82 l 43 75 b 33 87 24 102 50 116 b 76 102 68 87 57 75 l 50 82 m 70 70 l 62 73 b 68 87 76 102 100 87 b 100 58 84 58 67 61 l 70 70 m 70 46 l 67 55 b 84 58 100 58 100 29 b 76 14 67 29 62 44 l 70 46 m 50 34 l 57 42 b 67 29 76 14 50 0 b 24 14 33 29 43 42 l 50 34 m 30 46 l 38 44 b 33 29 24 14 0 29 b 0 58 16 58 33 55 l 30 46 m 58 34 l 42 34 l 50 21 l 58 34 m 82 40 l 74 53 l 66 40 l 82 40 m 34 40 l 26 53 l 18 40 l 34 40 m 58 82 l 50 95 l 42 82 l 58 82 m 34 76 l 18 76 l 26 63 l 34 76 m 82 76 l 66 76 l 74 63 l 82 76 "
	shape.flower20t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 m 19 43 b 19 35 31 35 31 43 b 31 51 19 51 19 43 m 19 73 b 19 65 31 65 31 73 b 31 81 19 81 19 73 m 69 43 b 69 35 81 35 81 43 b 81 51 69 51 69 43 m 69 73 b 69 65 81 65 81 73 b 81 81 69 81 69 73 m 44 87 b 44 79 56 79 56 87 b 56 95 44 95 44 87 m 44 28 b 44 20 56 20 56 28 b 56 36 44 36 44 28 m 44 58 b 44 50 56 50 56 58 b 56 66 44 66 44 58 m 0 58 b 0 50 12 50 12 58 b 12 66 0 66 0 58 m 88 58 b 88 50 100 50 100 58 b 100 66 88 66 88 58 m 22 96 b 22 88 34 88 34 96 b 34 104 22 104 22 96 m 66 20 b 66 12 78 12 78 20 b 78 28 66 28 66 20 m 22 20 b 22 12 34 12 34 20 b 34 28 22 28 22 20 m 67 96 b 67 88 79 88 79 96 b 79 104 67 104 67 96 "
	shape.flower21t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 m 0 58 b 0 50 12 50 12 58 b 12 66 0 66 0 58 m 88 58 b 88 50 100 50 100 58 b 100 66 88 66 88 58 m 22 96 b 22 88 34 88 34 96 b 34 104 22 104 22 96 m 66 20 b 66 12 78 12 78 20 b 78 28 66 28 66 20 m 22 20 b 22 12 34 12 34 20 b 34 28 22 28 22 20 m 67 96 b 67 88 79 88 79 96 b 79 104 67 104 67 96 "
	shape.flower22t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 m 19 43 b 19 35 31 35 31 43 b 31 51 19 51 19 43 m 19 73 b 19 65 31 65 31 73 b 31 81 19 81 19 73 m 69 43 b 69 35 81 35 81 43 b 81 51 69 51 69 43 m 69 73 b 69 65 81 65 81 73 b 81 81 69 81 69 73 m 44 87 b 44 79 56 79 56 87 b 56 95 44 95 44 87 m 44 28 b 44 20 56 20 56 28 b 56 36 44 36 44 28 m 44 58 b 44 50 56 50 56 58 b 56 66 44 66 44 58 "
	shape.flower23t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 m 56 48 l 78 42 l 61 58 l 78 75 l 56 67 l 50 88 l 44 67 l 23 75 l 39 58 l 23 42 l 44 48 l 50 28 l 56 48 "
	shape.flower24t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 m 56 48 l 94 33 l 61 58 l 94 84 l 56 67 l 50 109 l 44 67 l 6 84 l 39 58 l 6 33 l 44 48 l 50 8 l 56 48 "
	shape.flower25t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 "
	shape.flower26t = "m 50 55 b 33 98 44 110 50 110 b 54 110 64 98 50 55 b 78 88 95 86 97 83 b 100 79 94 63 50 55 b 6 63 0 79 2 83 b 4 86 21 88 50 55 b 21 23 4 25 2 28 b 0 31 6 46 50 55 b 94 46 100 31 97 28 b 95 25 78 23 50 55 b 64 14 53 0 50 0 b 45 0 33 14 50 55 m 100 55 b 100 42 83 42 83 55 b 83 68 100 68 100 55 m 17 55 b 17 42 0 42 0 55 b 0 68 17 68 17 55 m 78 91 b 78 78 61 78 61 91 b 61 103 78 103 78 91 m 37 91 b 37 78 20 78 20 91 b 20 103 37 103 37 91 m 78 19 b 78 7 61 7 61 19 b 61 32 78 32 78 19 m 37 19 b 37 7 20 7 20 19 b 20 32 37 32 37 19 m 62 55 b 62 38 38 38 38 55 b 38 72 62 72 62 55 "
	shape.flower27t = "m 50 55 b 35 98 45 110 50 110 b 55 110 65 98 50 55 b 79 88 96 87 98 83 b 100 80 95 63 50 55 b 7 63 0 80 2 83 b 4 87 21 88 50 55 b 21 23 4 25 2 28 b 0 31 7 47 50 55 b 95 47 100 31 98 28 b 96 25 79 23 50 55 b 65 14 55 0 50 0 b 45 0 35 14 50 55 m 62 55 b 62 38 38 38 38 55 b 38 72 62 72 62 55 "
	shape.flower28t = "m 50 55 b 35 98 45 110 50 110 b 55 110 65 98 50 55 b 79 88 96 87 98 83 b 100 80 95 63 50 55 b 7 63 0 80 2 83 b 4 87 21 88 50 55 b 21 23 4 25 2 28 b 0 31 7 47 50 55 b 95 47 100 31 98 28 b 96 25 79 23 50 55 b 65 14 55 0 50 0 b 45 0 35 14 50 55 "
	shape.flower29t = "m 50 55 b 33 98 44 110 50 110 b 54 110 64 98 50 55 b 78 88 95 86 97 83 b 100 79 94 63 50 55 b 6 63 0 79 2 83 b 4 86 21 88 50 55 b 21 23 4 25 2 28 b 0 31 6 46 50 55 b 94 46 100 31 97 28 b 95 25 78 23 50 55 b 64 14 53 0 50 0 b 45 0 33 14 50 55 m 100 55 b 100 42 83 42 83 55 b 83 68 100 68 100 55 m 17 55 b 17 42 0 42 0 55 b 0 68 17 68 17 55 m 78 91 b 78 78 61 78 61 91 b 61 103 78 103 78 91 m 37 91 b 37 78 20 78 20 91 b 20 103 37 103 37 91 m 78 19 b 78 7 61 7 61 19 b 61 32 78 32 78 19 m 37 19 b 37 7 20 7 20 19 b 20 32 37 32 37 19 "
	shape.cristal17 = "m 56 50 l 64 100 l 38 78 l 56 50 m 56 50 l 24 100 l 0 65 l 56 50 m 56 50 l 0 65 l 28 39 l 56 50 m 56 50 l 31 0 l 0 28 l 56 50 m 56 50 l 78 0 l 42 22 l 56 50 m 56 50 l 100 40 l 68 23 l 56 50 m 56 50 l 100 40 l 61 80 l 56 50 m 100 40 l 61 80 l 56 50 m 100 40 l 77 64 l 100 100 l 100 40 m 61 80 l 100 100 l 77 64 l 61 80 m 61 80 l 64 100 l 100 100 l 61 80 m 38 78 l 24 100 l 64 100 l 38 78 m 0 65 l 0 100 l 24 100 l 0 65 m 0 28 l 0 65 l 28 39 l 0 28 m 31 0 l 0 0 l 0 28 l 31 0 m 78 0 l 31 0 l 42 22 l 78 0 m 100 0 l 68 23 l 100 40 l 100 0 m 100 0 l 78 0 l 68 23 l 100 0 "
	shape.geometric10 = "m 0 50 l 0 100 l 100 100 l 100 50 l 90 50 l 90 90 l 10 90 l 10 50 l 0 50 m 0 50 l 10 50 l 10 10 l 90 10 l 90 50 l 100 50 l 100 0 l 0 0 l 0 50 m 50 90 l 50 80 l 20 80 l 20 20 l 50 20 l 50 10 l 10 10 l 10 90 l 50 90 m 50 90 l 90 90 l 90 10 l 50 10 l 50 20 l 80 20 l 80 80 l 50 80 l 50 90 m 20 50 l 20 80 l 80 80 l 80 50 l 70 50 l 70 70 l 30 70 l 30 50 l 20 50 m 20 50 l 30 50 l 30 30 l 70 30 l 70 50 l 80 50 l 80 20 l 20 20 l 20 50 m 50 70 l 50 60 l 40 60 l 40 40 l 50 40 l 50 30 l 30 30 l 30 70 l 50 70 m 50 70 l 70 70 l 70 30 l 50 30 l 50 40 l 60 40 l 60 60 l 50 60 l 50 70 m 40 50 l 40 60 l 60 60 l 60 50 l 40 50 m 40 50 l 60 50 l 60 40 l 40 40 l 40 50 "
	shape.diagonal13r = "m 15 0 l 0 0 l 0 15 l 15 0 m 15 0 l 0 15 l 0 30 l 30 0 l 15 0 m 30 0 l 0 30 l 0 45 l 45 0 l 30 0 m 45 0 l 0 45 l 0 60 l 60 0 l 45 0 m 60 0 l 0 60 l 0 75 l 75 0 l 60 0 m 75 0 l 0 75 l 0 90 l 90 0 l 75 0 m 90 0 l 0 90 l 0 100 l 5 100 l 100 5 l 100 0 l 90 0 m 100 5 l 5 100 l 20 100 l 100 20 l 100 5 m 100 20 l 20 100 l 35 100 l 100 35 l 100 20 m 100 35 l 35 100 l 50 100 l 100 50 l 100 35 m 100 50 l 50 100 l 65 100 l 100 65 l 100 50 m 100 65 l 65 100 l 80 100 l 100 80 l 100 65 m 100 80 l 80 100 l 100 100 l 100 80 "
	shape.diagonal13l = "m 0 85 l 0 100 l 15 100 l 0 85 m 0 85 l 15 100 l 30 100 l 0 70 l 0 85 m 0 70 l 30 100 l 45 100 l 0 55 l 0 70 m 0 55 l 45 100 l 60 100 l 0 40 l 0 55 m 0 40 l 60 100 l 75 100 l 0 25 l 0 40 m 0 25 l 75 100 l 90 100 l 0 10 l 0 25 m 0 10 l 90 100 l 100 100 l 100 95 l 5 0 l 0 0 l 0 10 m 5 0 l 100 95 l 100 80 l 20 0 l 5 0 m 20 0 l 100 80 l 100 65 l 35 0 l 20 0 m 35 0 l 100 65 l 100 50 l 50 0 l 35 0 m 50 0 l 100 50 l 100 35 l 65 0 l 50 0 m 65 0 l 100 35 l 100 20 l 80 0 l 65 0 m 80 0 l 100 20 l 100 0 l 80 0 "
	
	--------------------------------------------------------------------------------------------------
	-- set_temp function by Pyointa-sensei and remember function from Aegisub ------------------------
	function set_temp( ref, val )
		effector.print_error( ref, "numberstring", "set_temp", 1 )
		effector.print_error( val, "true", "set_temp", 2 )
		temp[ ref ] = val
		return val
	end --Create New fx
	
	function remember( ref, val )
		effector.print_error( ref, "numberstring", "remember", 1 )
		effector.print_error( val, "true", "remember", 2 )
		recall[ ref ] = val
		return val
	end
	
	--------------------------------------------------------------------------------------------------
	-- Librería de Funciones de "tiempo" -------------------------------------------------------------
	function HMS_to_ms( time_HMS )
		--convierte el tiempo de HMS a ms
		if type( time_HMS ) == "function" then
			time_HMS = time_HMS( )
		end
		if type( time_HMS ) == "string" then
			if time_HMS:match( "%d+%:%d+%:%d+%.%d+" ) then
				local H, M, S, ms = time_HMS:match( "(%d+)%:(%d+)%:(%d+)%.(%d+)" )
				if ms:len( ) == 2 then
					ms = 10 * ms
				elseif ms:len( ) == 1 then
					ms = 100 * ms
				end
				return H * 3600000 + M * 60000 + S * 1000 + ms
			end
			return tonumber( time_HMS )
		elseif type( time_HMS ) == "table" then
			if type( time_HMS[ 1 ] ) == "string" then
				if time_HMS[ 1 ]:match( "%d+%:%d+%:%d+%.%d+" ) then
					local H, M, S, ms = time_HMS[ 1 ]:match( "(%d+)%:(%d+)%:(%d+)%.(%d+)" )
					if ms:len( ) == 2 then
						ms = 10 * ms
					elseif ms:len( ) == 1 then
						ms = 100 * ms
					end
					time_HMS[ 1 ] = H * 3600000 + M * 60000 + S * 1000 + ms
				else
					time_HMS[ 1 ] = tonumber( time_HMS[ 1 ] )
				end
			end
			if type( time_HMS[ 2 ] ) == "string" then
				if time_HMS[ 2 ]:match( "%d+%:%d+%:%d+%.%d+" ) then
					local H, M, S, ms = time_HMS[ 2 ]:match( "(%d+)%:(%d+)%:(%d+)%.(%d+)" )
					if ms:len( ) == 2 then
						ms = 10 * ms
					elseif ms:len( ) == 1 then
						ms = 100 * ms
					end
					time_HMS[ 2 ] = H * 3600000 + M * 60000 + S * 1000 + ms - time_HMS[ 1 ]
				else
					time_HMS[ 2 ] = tonumber( time_HMS[ 2 ] )
				end
			end
			return { time_HMS[ 1 ], time_HMS[ 2 ] }
		end
		return time_HMS
	end
	
	function ms_to_HMS( time_ms )
		--convierte el tiempo de ms a formato HMS
		if type( time_ms ) == "function" then
			time_ms = time_ms( )
		end
		local time_to_HMS
		if type( time_ms ) == "table" then
			local rec_table = { }
			for i = 1, #time_ms do
				rec_table[ i ] = ms_to_HMS( time_ms[ i ] )
			end
			time_to_HMS = rec_table
		else --recursividad: september 10th 2019
			effector.print_error( time_ms, "numberstring", "ms_to_HMS", 1 )
			local tms, time_H, time_M, time_S = math.round( time_ms ), 0, 0, 0
			time_H = floor( tms / 3600000 )
			tms = tms - time_H * 3600000
			time_M = floor( tms / 60000 )
			tms = tms - time_M * 60000
			time_S = floor( tms / 1000 )
			tms = tms - time_S * 1000
			if time_M < 10 then
				time_M = "0" .. time_M
			end
			if time_S < 10 then
				time_S = "0" .. time_S
			end
			if tostring( tms ):len( ) == 1 then
				tms = "00" .. tms
			elseif tostring( tms ):len( ) == 2 then
				tms =  "0" .. tms
			end --ms_to_HMS( 234.945 )
			time_to_HMS = format( "%s:%s:%s.%s", time_H, time_M, time_S, tms )
		end --ms_to_HMS( { 540, 5645, 27432 } )
		return time_to_HMS
	end --ms_to_HMS( (j - 1) * 1f )
	
	function time_to_frame( Time )
		--retorna la cantidad de frames que hay en un tiempo determinado
		if type( Time ) == "function" then
			Time = Time( )
		end
		local t_to_frame
		if type( Time ) == "table" then
			local rec_table = { }
			for i = 1, #Time do
				rec_table[ i ] = time_to_frame( Time[ i ] )
			end
			t_to_frame = rec_table
		else --recursividad: september 10th 2019
			effector.print_error( Time, "numberstring", "time_to_frame", 1 )
			local Time = tostring( Time )
			if Time:match( "%d+%:%d+%:%d+%.%d+" ) then
				if type( HMS_to_ms( Time ) ) == "table" then
					Time = HMS_to_ms( Time )[ 1 ]
				else
					Time = HMS_to_ms( Time )
				end
			end
			t_to_frame = ceil( Time / frame_dur )
		end --time_to_frame( { 3000, "0:00:25.673" } )
		return t_to_frame
	end --time_to_frame( 2000 )
	
	function frame_to_ms( frames )
		--convierte la cantidad de frames en un tiempo en formato ms
		if type( frames ) == "function" then
			frames = frames( )
		end
		local f_to_ms
		if type( frames ) == "table" then
			local rec_table = { }
			for i = 1, #frames do
				rec_table[ i ] = frame_to_ms( frames[ i ] )
			end
			f_to_ms = rec_table
		else --recursividad: september 10th 2019
			effector.print_error( frames, "number", "frame_to_ms", 1 )
			f_to_ms =  math.round( frames * frame_dur, 2 )
		end --frame_to_ms( { 2365, 128, 82351 } )
		return f_to_ms
	end
	
	function frame_to_HMS( frames )
		--convierte la cantidad de frames en un tiempo en formato HMS
		local f_to_HMS
		if type( frames ) == "table" then
			local rec_table = { }
			for i = 1, #frames do
				rec_table[ i ] = frame_to_HMS( frames[ i ] )
			end
			f_to_HMS = rec_table
		else --recursividad: september 10th 2019
			effector.print_error( frames, "number", "frame_to_HMS", 1 )
			f_to_HMS = ms_to_HMS( frame_to_ms( frames ) )
		end --frame_to_HMS( { 35, 240, { 4532, { 24, 276 }, 9574 } } )
		return f_to_HMS
	end

	function time_mid1( Delay )
		-- sumado en <Line Start Time>, hace que el texto aparezca desde los extremos hacia el centro de
		-- la línea, y restado tiene el efecto contrario: desde el centro hacia los extremos. Sumado o
		-- restado en <Line End Time>, el texto desaparece de forma similar que en <Line Start Time>
		if type( Delay ) == "function" then
			Delay = Delay( )
		end
		local Delay = Delay or 60
		effector.print_error( Delay, "number", "time_mid1", 1 )
		if val_i <= (val_n + 1) / 2 then
			return Delay * (val_i - 1) - 200
		end
		return Delay * (val_n - val_i + 0.5) - 200
	end

	function time_mid2( Delay )
		-- restado en <Line Start Time>, hace que el texto aparezca desde los extremos hacia el centro de
		-- la línea, y sumado tiene el efecto contrario: desde el centro hacia los extremos. Sumado o
		-- restado en <Line End Time>, el texto desaparece de forma similar que en <Line Start Time>
		if type( Delay ) == "function" then
			Delay = Delay( )
		end
		local Delay = Delay or 60
		effector.print_error( Delay, "number", "time_mid2", 1 )
		if val_i >= (val_n + 1) / 2 then
			return Delay * (val_i - val_n - 1) - 200
		end
		return Delay * (-val_i + 0.5) - 200
	end	
	
	function time_li( Delay, Mode )
		if type( Delay ) == "function" then
			Delay = Delay( )
		end
		local Delay = Delay or 40
		effector.print_error( Delay, "number", "time_li", 1 )
		if Mode == "syl" then
			return syl.start_time + Delay * (val_si - 1) - 200
		elseif Mode == "word" then
			return word.start_time + Delay * (val_wi - 1) - 200
		end
		return Delay * (val_i - 1) - 200
	end
	
	function time_lo( Delay, Mode )
		if type( Delay ) == "function" then
			Delay = Delay( )
		end
		local Delay = Delay or 40
		effector.print_error( Delay, "number", "time_lo", 1 )
		if Mode == "syl" then
			return syl.end_time + Delay * (val_si - val_sn - 1) + 200
		elseif Mode == "word" then
			return word.end_time + Delay * (val_wi - val_wn - 1) + 200
		end
		return Delay * (val_i - val_n - 1) + 200
	end
	
	function time_loop1( Mode, Delay )
		-- repecto a j y maxj
		if type( Delay ) == "function" then
			Delay = Delay( )
		end
		local Mode = Mode or "li"
		local Delay = Delay or 30
		local Loop = maxj
		effector.print_error( Mode, "string", "time_loop1", 1 )
		effector.print_error( Delay, "number", "time_loop1", 2 )
		if Mode == "li" then
			return Delay * (j - 1) - 200
		elseif Mode == "lo" then
			return Delay * (j - Loop - 1) + 200
		elseif Mode == "mid1" then
			if j <= (Loop + 1) / 2 then
				return Delay * (j - 1) - 200
			end
			return Delay * (Loop - j + 0.5) - 200
		elseif Mode == "mid2" then
			if j >= (Loop + 1) / 2 then
				return Delay * (j - Loop - 1) - 200
			end
			return Delay * (-j + 0.5) - 200
		end
		return Delay
	end
	
	function time_loop2( Mode, Delay )
		-- repecto a J y maxJ
		if type( Delay ) == "function" then
			Delay = Delay( )
		end
		local Mode = Mode or "li"
		local Delay = Delay or 30
		local Loop = maxJ
		effector.print_error( Mode, "string", "time_loop2", 1 )
		effector.print_error( Delay, "number", "time_loop2", 2 )
		if Mode == "li" then
			return Delay * (J - 1) - 200
		elseif Mode == "lo" then
			return Delay * (J - Loop - 1) + 200
		elseif Mode == "mid1" then
			if J <= (Loop + 1) / 2 then
				return Delay * (J - 1) - 200
			end
			return Delay * (Loop - J + 0.5) - 200
		elseif Mode == "mid2" then
			if J >= (Loop + 1) / 2 then
				return Delay * (J - Loop - 1) - 200
			end
			return Delay * (-J + 0.5) - 200
		end
		return Delay
	end
	
	--------------------------------------------------------------------------------------------------
	-- Librería de Funciones "random" ----------------------------------------------------------------
	function r( r_i, r_f, r_step )
		local rand_i, rand_f = r_i, r_f
		local rand_s = r_step or 1
		if type( rand_i ) == "function" then
			rand_i = r_i( )
		end
		if type( rand_f ) == "function" then
			rand_f = r_f( )
		end
		if type( r_step ) == "function" then
			rand_s = r_step( )
		end
		if rand_i == nil then
			return math.random( )
		end
		if rand_f == nil then
			return math.random( rand_i )
		end
		effector.print_error( rand_i, "number", "r", 1 )
		effector.print_error( rand_f, "number", "r", 2 )
		effector.print_error( rand_s, "number", "r", 3 )
		local r_ii = math.min( rand_i, rand_f )
		local r_ff = math.max( rand_i, rand_f )
		if rand_s == 0 then
			rand_s = 1
		end
		return math.random( math.round( r_ii / rand_s ), math.round( r_ff / rand_s ) ) * rand_s
	end
	rand = r
	
	function random.color( H, S, V )
		local Hrc, Src, Vrc = R( 360 ), 1, 1
		if type( H ) == "function" then
			H = H( )
		end
		if type( S ) == "function" then
			S = S( )
		end
		if type( V ) == "function" then
			V = V( )
		end
		if type( H ) == "table" then
			Hrc = R( (H[ 1 ] - 1) % 360 + 1, (H[ 2 ] - 1) % 360 + 1 )
		elseif type( H ) == "number" then
			Hrc = (H - 1) % 360 + 1
		end
		if type( S ) == "table" then
			Src = R( S[ 2 ] % 101, S[ 1 ] % 101 ) / 100
		elseif type( S ) == "number" then
			Src = math.i( S + 1, 0, 100 )[ "A-->B-->A" ] / 100
		end
		if type( V ) == "table" then
			Vrc = R( V[ 2 ] % 101, V[ 1 ] % 101 ) / 100
		elseif type( V ) == "number" then
			Vrc = math.i( V + 1, 0, 100 )[ "A-->B-->A" ] / 100
		end
		return color.HSV_to_RGB( Hrc, Src, Vrc )
	end
	
	function random.colorvc( H, S, V )
		return format( "(%s,%s,%s,%s)",
			random.color( H, S, V ), random.color( H, S, V ),
			random.color( H, S, V ), random.color( H, S, V )
		)
	end
	
	function random.alpha( alpha_i, alpha_f )
		if type( alpha_i ) == "function" then
			alpha_i = alpha_i( )
		end
		if type( alpha_f ) == "function" then
			alpha_f = alpha_f( )
		end
		local ra_i, ra_f = 0, 255
		if type( alpha_i ) == "string" then
			ra_i = tonumber( alpha_i:match( "(%x%x)" ), 16 )
		elseif type( alpha_i ) == "number" then
			ra_i = math.i( alpha_i + 1, 0, 255 )[ "A-->B-->A" ]
		end
		if type( alpha_f ) == "string" then
			ra_f = tonumber( alpha_f:match( "(%x%x)" ), 16 )
		elseif type( alpha_f ) == "number" then
			ra_f = math.i( alpha_f + 1, 0, 255 )[ "A-->B-->A" ]
		end
		return alpha.val2ass( R( ra_f, ra_i ) )
	end
	
	function random.alphava( Ai, Af )
		return format( "(%s,%s,%s,%s)",
			random.alpha( Ai, Af ), random.alpha( Ai, Af ),
			random.alpha( Ai, Af ), random.alpha( Ai, Af )
		)
	end

	function random.e( ... )
		-- retorma un elemento al azar de un listado de elementos o de una tabla
		local Table_e = { ... }
		if type( ... ) == "table" then
			Table_e = ...
		end
		return Table_e[ R( #Table_e ) ]
	end
	
	function random.unique( table_or_number, index_r ) --( table_or_number[, index_r] )
		if type( table_or_number ) == "function" then
			table_or_number = table_or_number( )
		end
		if type( index_r ) == "function" then
			index_r = index_r( )
		end
		effector.print_error( table_or_number, "numbertable", "random.unique", 1 )
		local Table_u, Ind = recall.tableu, 1
		if index_r == nil then
			return table.disorder( table_or_number )
		end
		if index_r == 1 then
			Table_u = remember( "tableu", table.disorder( table_or_number ) )
		end
		effector.print_error( index_r, "number", "random.unique", 2 )
		Ind = #Table_u - #Table_u * ceil( index_r / #Table_u ) + index_r
		return Table_u[ Ind ]
	end
	
	--------------------------------------------------------------------------------------------------
	-- Ampliación de la Librería "table" -------------------------------------------------------------
	function table.view( Table, Table_name, indent )
		--retorna en modo string el contenido completo de una tabla
		if type( Table ) == "function" then
			Table = Table( )
		end
		local cart
		local autoref
		local function isemptytable( Table )
			return next( Table ) == nil
		end
		local function basicSerialize( o )
			local so = tostring( o )
			if type( o ) == "function" then
				local info = debug.getinfo( o, "S" )
				if info.what == "C" then
					return format( "%q", so .. ", C function" )
				end 
				return format( "%q, defined in (lines: %s - %s), ubication %s",
					so, info.linedefined, info.lastlinedefined, info.source
				)
			elseif type( o ) == "number"
				or type( o ) == "boolean" then
				return so
			end
			return format( "%q", so )
		end
		local function addtocart( value, Table_name, indent, saved, field )
			indent = indent or ""
			saved  = saved or { }
			field  = field or Table_name
			cart   = cart .. indent .. field
			if type( value ) ~= "table" then
				cart = cart .. " = " .. basicSerialize( value ) .. ";\n"
			else
				if saved[ value ] then
					cart = cart .. " = {}; -- " .. saved[ value ] .. " (self reference)\n"
					autoref = autoref ..  Table_name .. " = " .. saved[ value ] .. ";\n"
				else
					saved[ value ] = Table_name
					if isemptytable( value ) then
						cart = cart .. " = {};\n"
					else
						cart = cart .. " = {\n"
						for k, v in pairs( value ) do
							k = basicSerialize( k )
							local fname = format( "%s[ %s ]", Table_name, k )
							field = format( "[ %s ]", k )
							addtocart( v, fname, indent .. "	", saved, field )
						end
						cart = format( "%s%s};\n", cart, indent )
					end
				end
			end
		end
		Table_name = Table_name or "table_unnamed"
		if type( Table ) ~= "table" then
			return format( "%s = %s", Table_name, basicSerialize( Table ) )
		end
		cart, autoref = "", ""
		addtocart( Table, Table_name, indent )
		return cart .. autoref
	end
	
	function table.inside( Table, e, str1, str2 )	-- only for indexed table
		--retorna "false" o "true" si un elemento está dentro de una tabla
		local repl1 = str1 or ""
		local repl2 = str2 or ""
		effector.print_error( Table, "table",  "table.inside", 1 )
		effector.print_error( repl1, "string", "table.inside", 3 )
		effector.print_error( repl2, "string", "table.inside", 4 )
		for _, v in ipairs( Table ) do
			if type( e ) ~= "table" then
				if type( v ) == "string" then
					if e == v:gsub( repl1, repl2 ) then
						return true
					end
				else
					if e == v then
						return true
					end
				end
			else
				if table.compare( v, e ) then
					return true
				end
			end
		end
		return false
	end
	
	function table.index( Table, e, str1, str2 )	-- only for indexed table
		--retorna la posición (index) de un elemento dentro de una tabla
		local repl1 = str1 or ""
		local repl2 = str2 or ""
		effector.print_error( Table, "table",  "table.index", 1 )
		effector.print_error( repl1, "string", "table.index", 3 )
		effector.print_error( repl2, "string", "table.index", 4 )
		if table.inside( Table, e, repl1, repl2 ) == true then
			for k, v in ipairs( Table ) do
				if type( e ) ~= "table" then
					if type( v ) == "string" then
						if e == v:gsub( repl1, repl2 ) then
							return k
						end
					else
						if e == v then
							return k
						end
					end
				else
					if table.compare( v, e ) then
						return k
					end
				end
			end
		end
		return e
	end
	
	function table.show( Table )		-- only for indexed table
		--retorna el contenido de una tabla, entre paréntesis y separados por comas (,)
		effector.print_error( Table, "table", "table.show", 1 )
		local t_show, t_show2 = "", ""
		for i = 1, #Table do
			if type( Table[ i ] ) == "table" then
				t_show2 = ""
				for k = 1, #Table[ i ] do
					t_show2 = format( "%s%s,", t_show2, Table[ i ][ k ] )
				end
				Table[ i ] = format( "(%s)", t_show2:sub( 1, -2 ) )
			end
			t_show = format( "%s%s,", t_show, Table[ i ] )
		end
		return t_show:sub( 1, -2 )
	end

	function table.duplicate( Table )
		--duplica completamente el contenido de una tabla
		local lookup_table = { }
		local function table_copy( Table )
			if type( Table ) ~= "table" then
				return Table
			elseif lookup_table[ Table ] then
				return lookup_table[ Table ]
			end
			local new_table = { }
			lookup_table[ Table ] = new_table
			for k, v in pairs( Table ) do
				new_table[ table_copy( k ) ] = table_copy( v )
			end
			return setmetatable( new_table, getmetatable( Table ) )
		end
		return table_copy( Table )
	end
	
	function table.compare( Table1, Table2 )
		--retorna "false" o "true" al comparar dos tablas
		if type( Table1 ) ~= type( Table2 ) then
			return false
		end
		if type( Table1 ) ~= "table"
			and type( Table2 ) ~= "table" then
			return Table1 == Table2
		end
		mt = getmetatable( Table1 )
		if mt
			and mt.__eq then
			return Table1 == Table2
		end
		for k1, val1 in pairs( Table1 ) do
			val2 = Table2[ k1 ]
			if val2 == nil
				or not table.compare( val1, val2 ) then
				return false
			end
		end
		for k2, val2 in pairs( Table2 ) do
			val1 = Table1[ k2 ]
			if val1 == nil
				or not table.compare( val1, val2 ) then
				return false
			end
		end
		return true
	end

	function table.complete( Table, Start_time, End_time )
		--ingresa el tiempo inicial y final de una línea kara
		--en una tabla de tiempos y los ordena ascendentemente
		local End_time = End_time or fx.end_time
		local Start_time = Start_time or fx.start_time
		effector.print_error( Table, "table", "table.complete", 1 )
		effector.print_error( Start_time, "number", "table.complete", 2 )
		effector.print_error( End_time, "number", "table.complete", 3 )
		local Table_com = table.duplicate( Table )
		for i = 1, #Table_com do
			Table_com[ i ] = HMS_to_ms( Table_com[ i ] )
		end
		table.insert( Table_com, Start_time )
		table.insert( Table_com, End_time )
		local B_com, nB, vB = table.duplicate( Table_com ), { }, { }
		for i = 1, #B_com do
			if type( B_com[ i ] ) == "table" then
				B_com[ i ] = B_com[ i ][ 1 ]
				table.insert( nB, i )
				table.insert( vB, B_com[ i ] )
			end
		end
		local C_com = table.duplicate( B_com )
		table.sort( C_com, function( a, b ) return a < b end )
		local D_com = table.duplicate( C_com )
		for i = 1, #D_com do
			if table.inside( vB, D_com[ i ] ) == true then
				D_com[ i ] = Table_com[ nB[ table.index( vB, D_com[ i ] ) ] ]
			end
		end
		return D_com
	end
	
	function table.disorder( table_or_number )
		--desordena aleatoriamente el contenido de una tabla
		if type( table_or_number ) == "function" then
			table_or_number = table_or_number( )
		end
		effector.print_error( table_or_number, "numbertable", "table.disorder", 1 )
		local Table_dis = table_or_number
		local newt, newtable, newt1, newtable1, table_n = { }, { }, { }, { }, { }
		if type( Table_dis ) == "table" then
			newt = table.duplicate( Table_dis )
			while #newt > 0 do
				idx = R( 1, #newt )
				newtable[ #newtable + 1 ] = newt[ idx ]
				table.remove( newt, idx )
			end
			return newtable
		elseif type( Table_dis ) == "number" then
			for i = 1, Table_dis do
				table_n[ i ] = i
			end
			newt1 = table.duplicate( table_n )
			while #newt1 > 0 do
				idx = R( 1, #newt1 )
				newtable1[ #newtable1 + 1 ] = newt1[ idx ]
				table.remove( newt1, idx )
			end
			return newtable1
		end
		return Table_dis
	end
	
	function table.make( objet, size, limit_i, limit_f, ... )
		--crea una tabla de diferentes objetos por valores predeterminados ordenados
		local t_make, Tme_concat, Tm_n = { }, { [ 1 ] = "" }, 0.5
		local i_c, i_a, _c, _a = color.ipolfx, alpha.ipolfx, color.vc_to_c, alpha.va_to_a
		if ... then
			Tme_concat = { ... }
			if type( ... ) == "table" then
				Tme_concat = ...
			end
		end
		if type( size ) == "function" then
			size = size( )
		end
		if type( limit_i ) == "function" then
			limit_i = limit_i( )
		end
		if type( limit_f ) == "function" then
			limit_f = limit_f( )
		end
		if type( limit_i ) ~= "table" then 
			for i = 1, size do
				Tm_n = (i - 1) / (size - 1)
				if size == 1 then
					Tm_n = 0.5
				end
				if objet == "number" then
					t_make[ i ] = math.round( size * Tm_n, 2 )
					if limit_i then
						t_make[ i ] = math.round( limit_i + Tm_n * (limit_f - limit_i), 2 )
					end
				elseif objet == "color"
					or objet == "colorc"
					or objet == "colorvc" then
					t_make[ i ] = random.color( 360 * Tm_n )
					if type( limit_i ) == "string" then
						t_make[ i ] = i_c( Tm_n, _c( limit_i ), _c( limit_f ) )
					elseif type( limit_i ) == "number" then
						t_make[ i ] = random.color( limit_i + Tm_n * (limit_f - limit_i) )
					end
				elseif objet == "alpha"
					or objet == "alphaa"
					or objet == "alphava" then
					t_make[ i ] = alpha.val2ass( 255 * Tm_n )
					if type( limit_i ) == "string" then
						t_make[ i ] = i_a( Tm_n, _a( limit_i ), _a( limit_f ))
					elseif type( limit_i ) == "number" then
						t_make[ i ] = alpha.val2ass( limit_i + Tm_n * (limit_f - limit_i) )
					end
				else
					t_make[ i ] = objet .. size
					if limit_i then
						t_make[ i ] = objet .. math.round( limit_i + Tm_n * (limit_f - limit_i), 2 )
					end
				end
			end
		else
			Tme_concat = limit_f
			t_make = table.gradient( size, limit_i )
		end
		t_make = table.concat2( t_make, Tme_concat or "" )
		return t_make
	end
	
	function table.rmake( objet, size, limit_i, limit_f, ... )
		--crea una tabla de diferentes objetos por valores predeterminados aleatoreamente
		local t_rmake, Trme_concat = { }, { [ 1 ] = "" }
		local i_c, i_a, _c, _a = color.ipolfx, alpha.ipolfx, color.vc_to_c, alpha.va_to_a
		if ... then
			Trme_concat = { ... }
			if type( ... ) == "table" then
				Trme_concat = ...
			end
		end
		if type( size ) == "function" then
			size = size( )
		end
		if type( limit_i ) == "function" then
			limit_i = limit_i( )
		end
		if type( limit_f ) == "function" then
			limit_f = limit_f( )
		end
		if type( limit_i ) ~= "table" then 
			for i = 1, size do
				t_rmake[ i ] = ""
				for k = 1, #Trme_concat do
					if objet == "number" then
						t_rmake[ i ] = t_rmake[ i ] .. Trme_concat[ k ] .. R( size )
						if limit_i then
							t_rmake[ i ] = t_rmake[ i ] .. Trme_concat[ k ] .. Rc( limit_i, limit_f )
						end
					elseif objet == "color"
						or objet == "colorc"
						or objet == "colorvc" then
						t_rmake[ i ] = t_rmake[ i ] .. Trme_concat[ k ] .. random.color( )
						if type( limit_i ) == "string" then
							t_rmake[ i ] = t_rmake[ i ] .. Trme_concat[ k ] .. i_c( R( ), _c( limit_i ), _c( limit_f ) )
						elseif type( limit_i ) == "number" then
							t_rmake[ i ] = t_rmake[ i ] .. Trme_concat[ k ] .. random.color( { limit_i, limit_f } )
						end
					elseif objet == "alpha"
						or objet == "alphaa"
						or objet == "alphava" then
						t_rmake[ i ] = t_rmake[ i ] .. Trme_concat[ k ] .. random.alpha( )
						if type( limit_i ) == "string" then
							t_rmake[ i ] = t_rmake[ i ] .. Trme_concat[ k ] .. i_a( R( ), _a( limit_i ), _a( limit_f ) )
						elseif type( limit_i ) == "number" then
							t_rmake[ i ] = t_rmake[ i ] .. Trme_concat[ k ] .. random.alpha( limit_i, limit_f )
						end
					else
						t_rmake[ i ] = objet .. Rc( size )
						if limit_i then
							t_rmake[ i ] = objet .. math.round( R( limit_i, limit_f ), 2 )
						end
					end
				end
			end
		else
			Trme_concat = limit_f
			t_rmake = table.concat2( table.disorder( table.gradient( size, limit_i ) ), Trme_concat or "" )
		end
		return t_rmake
	end
	
	function table.concat1( Table, ... )-->Table = {a, b, c}; ... = {1, 2, 3} -->return {1a,2a,3a, 1b,2b,3b, 1c,2c,3c}
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "table", "table.concat1", 1 )
		local Concat, Table_Concat = { [ 1 ] = "" }, { }
		if type( ... ) == "table" then
			Concat = ...
		else
			Concat = { ... }
		end
		for i = 1, #Table * #Concat do
			Table_Concat[ i ] = Concat[ #Concat - #Concat * ceil( i / #Concat ) + i ] .. Table[ ceil( i / #Concat ) ]
		end
		return Table_Concat
	end
	
	function table.concat2( Table, ... )-->Table = {a, b, c}; ... = {1, 2, 3} -->return {1a2a3a, 1b2b3b, 1c2c3c}
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "table", "table.concat2", 1 )
		local Concat, Table_Concat, Table_Concat2 = { [ 1 ] = "" }, { }, { }
		if type( ... ) == "table" then
			Concat = ...
		else
			Concat = { ... }
		end
		for i = 1, #Table * #Concat do
			Table_Concat[ i ] = Concat[ #Concat - #Concat * ceil( i / #Concat ) + i ] .. Table[ ceil( i / #Concat ) ]
		end
		for i = 1, #Table do
			Table_Concat2[ i ] = ""
			for k = 1, #Concat do
				Table_Concat2[ i ] = Table_Concat2[ i ] .. Table_Concat[ k + #Concat * (i - 1) ]
			end
		end
		return Table_Concat2
	end
	
	function table.concat3( ... )
		--"concatena" uno a uno los elementos de dos o más tablas
		local Tables = { ... }
		if #Tables == 1 then
			Tables = ...
		end --add: june 25th 2019
		local Sizes, max_n = { [ 1 ] = 1 }
		-- obtiene el tamaño de la tabla más grande
		for i = 1, #Tables do
			if type( Tables[ i ] ) == "table" then
				table.insert( Sizes, #Tables[ i ] )
			end
		end
		max_n = table.op( Sizes, "max" )
		-------------------------------------------
		-- convierte en tabla los elementos que no lo son
		for i = 1, #Tables do
			if type( Tables[ i ] ) ~= "table" then
				Tables[ i ] = table.replay( max_n, Tables[ i ] )
			end
		end
		-------------------------------------------
		-- concatena los elementos de cada tabla uno a uno
		local tbl_twin = { }
		for i = 1, max_n do
			tbl_twin[ i ] = ""
			for k = 1, #Tables do
				tbl_twin[ i ] = tbl_twin[ i ] .. Tables[ k ][ (i - 1) % #Tables[ k ] + 1 ]
			end
		end
		return tbl_twin --may 20th 2018
	end --table.concat3( { "A", "B", "C", "D" }, "1", { "w", "x", "y", "z" } )
	
	function table.concat4( ... )
		-->table.concat4( { "a", "b", "c", "d" }, { 1, 2, 3 } ) = { a1, b2, c3, d }
		--concatena uno a uno los elementos de las tablas ingresadas
		--si no hay emparejamiento, concatena con un string vacío ( "" )
		local Table = { ... }
		if #Table == 1 then
			Table = ...
		end
		local tbl_sizes = { }
		for i = 1, #Table do
			tbl_sizes[ i ] = #Table[ i ]
		end
		local max_sizes = table.op( tbl_sizes, "max" )
		local tbl_concat4 = { }
		for i = 1, max_sizes do
			tbl_concat4[ i ] = ""
			for k = 1, #Table do
				tbl_concat4[ i ] = tbl_concat4[ i ] .. (Table[ k ][ i ] or "")
			end
		end
		return tbl_concat4
	end --december 13th 2018
	
	function table.filter( Table, Filter )
		--filtra los elementos de la tabla por medio de una función
		--retorna una tabla con los elementos filtrados de Table
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "table", "table.filter", 1 )
		effector.print_error( Filter, "function", "table.filter", 2 )
		local tbl_filter = { }
		for k, v in pairs( Table ) do
			if Filter( k, v ) then
				table.insert( tbl_filter, v )
			end
		end
		return tbl_filter --table.filter( { 1, 2, 3, 4, 5 ,6 }, Filter ) <-- impares
		--Filter = function( k, v ) if k % 2 == 1 then return true end return false end
	end --december 13th 2018

	function table.replay( Len, ... )	-->Len = 3; t = {a, b, c} -->return {a,b,c, a,b,c, a,b,c}
		--replica n cantidad de veces a los elementos de una tabla, o los ingresados
		if type( Len ) == "function" then
			Len = Len( )
		end
		local Len = math.round( abs( Len ) )
		effector.print_error( Len, "number", "table.replay", 1 )
		local Table = { }
		local e_val = { ... }
		if type( ... ) == "table" then
			e_val = ...
		end
		for i = 1, Len do
			for k = 1, #e_val do
				if type( e_val[ k ] ) == "function" then --add: may 23rd 2018
					Table[ #Table + 1 ] = e_val[ k ]( )
				else
					Table[ #Table + 1 ] = e_val[ k ]
				end
			end
		end
		return Table
	end

	function table.count( Table, e )
		-- cuenta la cantidad de veces que está un elemento en una tabla
		if type( Table ) == "function" then
			Table = Table( )
		end
		if type( e ) == "function" then
			e = e( )
		end
		effector.print_error( Table, "table", "table.count", 1 )
		effector.print_error( e, "true", "table.count", 2 )
		local Count = 0
		for k, v in pairs( Table ) do
			if e == v then
				Count = Count + 1
			end
		end
		return Count
	end
	
	function table.pos( Table, e )
		--retorna una tabla con las posiciones del elemento "e"
		if type( Table ) == "function" then
			Table = Table( )
		end
		if type( e ) == "function" then
			e = e( )
		end
		effector.print_error( Table, "table", "table.pos", 1 )
		effector.print_error( e, "true", "table.pos", 2 )
		local Table_pos = { }
		for k, v in pairs( Table ) do
			if e == v then
				table.insert( Table_pos, k )
			end
		end
		return Table_pos
	end
	
	function table.string( String, Number_str )-- ( "String", 2 ) -> { St, tr, ri, in, ng }
		--retorna una tabla con las partes de n tamaño de un string
		if type( String ) == "function" then
			String = String( )
		end
		if type( Number_str ) == "function" then
			Number_str = Number_str( )
		end
		local String = String or ""
		local Number = Number_str or 1
		effector.print_error( String, "string", "table.string", 1 )
		effector.print_error( Number, "number", "table.string", 2 )
		local Table_str, chars_, Len_str = { }, { }, unicode.len( String )
		for c in unicode.chars( String ) do
			table.insert( chars_, c )
		end
		if Number >= Len_str then
			return { String }
		end
		for i = 1, Len_str - Number + 1 do
			Table_str[ i ] = ""
			for k = 1, Number do
				Table_str[ i ] = Table_str[ i ] .. chars_[ i + k - 1 ]
			end
		end
		return Table_str
	end
	
	function table.space( String )
		--retorna una tabla con las posciones de los espacios (" ") que contenga un string
		if type( String ) == "function" then
			String = String( )
		end
		effector.print_error( String, "string", "table.space", 1 )
		local Table_s, Table_spc = table.string( String ), { }
		for i = 1, #Table_s do
			if Table_s[ i ] == " " then
				table.insert( Table_spc, i )
			end
		end
		return Table_spc
	end
	
	function table.word( String )
		--retorna una tabla con las palabras de un string
		if type( String ) == "function" then
			String = String( )
		end
		local Table_word = { }
		if type( String ) == "table" then
			for i = 1, #String do
				Table_word[ i ] = table.word( String[ i ] )
			end
		else --recursividad: september 16th 2019
			effector.print_error( String, "string", "table.word", 1 )
			for word_s in String:gmatch( "%S+" ) do
				table.insert( Table_word, word_s )
			end
		end --table.word( { "line demo", "string word fx" } )
		return Table_word
	end --table.word( "line demo" )
	
	function table.retire( Table, ... )
		--retira de una tabla los elementos indicados o los elementos
		--que estén desde la posición { { a, b } } consecutivos todos
		if type( Table ) == "function" then
			Table = Table( )
		end
		local Table_ret, retire_e = table.duplicate( Table ), { ... }
		effector.print_error( Table_ret, "table", "table.retire", 1 )
		if type( ... ) == "table" then
			retire_e = ...
		end
		if type( retire_e[ 1 ] ) == "table" then
			if retire_e[ 1 ][ 2 ] then
				for i = retire_e[ 1 ][ 1 ], retire_e[ 1 ][ 2 ] do
					table.remove( Table_ret, retire_e[ 1 ][ 1 ] )
				end
			else
				table.remove( Table_ret, retire_e[ 1 ][ 1 ] )
			end
		else
			for i = 1, #retire_e do
				while table.inside( Table_ret, retire_e[ i ] ) == true do
					table.remove( Table_ret, table.index( Table_ret, retire_e[ i ] ) )
				end
			end
		end
		return Table_ret
	end --table.retire( { 21, 22, 23, 24, 25, 26 }, { { 1, 4 } } )
	
	function table.combine( Table, n_combinations )
		--obtiene las combinaciones de n tamaño de una tabla
		if type( Table ) == "function" then
			Table = Table( )
		end
		if type( n_combinations ) == "function" then
			n_combinations = n_combinations( )
		end
		effector.print_error( Table, "table", "table.combine", 1 )
		effector.print_error( n_combinations, "number", "table.combine", 2 )
		local Table_com, a, nN = { }, { }, math.round( abs( n_combinations ) )
		local newrow
		for i = 1, nN do
			a[ #a + 1 ] = i
		end
		while ( 1 ) do
			newrow = { }
			for i = 1, nN do
				newrow[ #newrow + 1 ] = Table[ a[ i ] ]
			end
			Table_com[ #Table_com + 1 ] = newrow
			i = nN
			while a[ i ] == #Table - nN + i do
				i = i - 1
			end
			if i < 1 then
				break
			end
			a[ i ] = a[ i ] + 1
			for k = i, nN do
				a[ k ] = a[ i ] + k - i
			end
		end
		return Table_com --( {a,b,c,d}, 2 ) -> {{a,b}, {a,c}, {a,d}, {b,c}, {b,d}, {c,d}}
	end
	
	function table.inserttable( Table1, Table2, index_insert ) --(Table1, Table2[, index_insert])
		--inserta los elementos de la tabla 2 dentro de la tabla 1
		if type( Table1 ) == "function" then
			Table1 = Table1( )
		end
		if type( Table2 ) == "function" then
			Table2 = Table2( )
		end
		if type( index_insert ) == "function" then
			index_insert = index_insert( )
		end
		effector.print_error( Table1, "table", "table.inserttable", 1 )
		effector.print_error( Table2, "table", "table.inserttable", 2 )
		local Table_ins = Table1
		if index_insert == nil then
			for i = 1, #Table2 do
				Table_ins[ #Table_ins + 1 ] = Table2[ i ]
			end
		else
			for i = 1, #Table2 do
				table.insert( Table_ins, index_insert, Table2[ #Table2 - i + 1 ] )
			end
		end
		return Table_ins
	end

	function table.reverse( Table )
		--invierte el orden de los elementos de una tabla
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "table", "table.reverse", 1 )
		local Table_rev = { }
		for i = 1, #Table do
			Table_rev[ i ] = Table[ #Table - i + 1 ]
		end
		return Table_rev
	end
	
	function table.cyclic( Table ) --{a,b,c,d,e} --> {a,b,c,d,e,d,c,b}
		--crea un "ciclo" con los elementos de una tabla
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "table", "table.cyclic", 1 )
		if #Table <= 2 then
			return Table
		end
		local Table_cyc = table.duplicate( Table )
		for i = 1, #Table - 2 do
			Table_cyc[ #Table_cyc + 1 ] = Table[ #Table - i ]
		end
		return Table_cyc
	end
	
	function table.set( color_masktable )
		if type( color_masktable ) == "function" then
			color_masktable = color_masktable( )
		end
		effector.print_error( color_masktable, "table", "table.set", 1 )
		local table_mask_val_i = { }
		for i = 1, #color_masktable do
			table_mask_val_i[ i ] = color_masktable[ i ][ val_i ]
		end
		return table_mask_val_i
	end
	
	function table.op( Table, mode, add )
		--realiza múltiples operaciones con los elementos de la tabla ingresada
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "table", "table.op", 1 )
		local table_sum, table_average, table_concat = 0, 0, ""
		local table_add, table_inverse, table_function = { }, { }, { }
		if type( mode ) == "function" then
			--retorna una tabla en donde a cada elemento se le aplica la función mode( val )
			for k, v in pairs( Table ) do
				table_function[ k ] = mode( v )
			end
			return table_function --may 23rd 2018
		elseif mode == "sum"
			or mode == "suma"
			or mode == nil then
			--retorna el valor de la suma de los elemente desde 1 hasta add o #Table
			-------------------
			local add = add or #Table
			if add > #Table then
				add = #Table
			end --september 30th 2018
			-------------------
			for i = 1, add do
				table_sum = table_sum + Table[ i ]
			end
			return table_sum
		elseif mode == "pro"
			or mode == "multi" then
			--retorna una tabla con cada elemento multiplicado por un mismo número
			local table_pro = table.duplicate( Table )
			for i = 1, #Table do
				table_pro[ i ] = Table[ i ] * add
			end
			return table_pro
		elseif mode == "concat" then
			--retorna un string equivalente a todos los elementos de la tabla concatenados
			local con_add = ""
			for i = 1, #Table do
				con_add = ""
				if add
					and i < #Table then
					con_add = add
				end
				table_concat = table_concat .. Table[ i ] .. con_add
			end
			return table_concat
		elseif mode == "average" then
			--retorna un número equivalente al promedio aritmético de los números de la tabla
			for i = 1, #Table do
				table_average = table_average + Table[ i ]
			end
			if #Table > 0 then
				return table_average / #Table
			end
			return 0
		elseif mode == "min" then
			--retorna el mínimo valor de la tabla ingresada
			local table_min = table.duplicate( Table )
			table.sort( table_min, function( a, b ) return a < b end )
			if table_min[ 1 ] then
				return table_min[ 1 ]
			end
			return 0
		elseif mode == "max" then
			--retorna el máximo valor de la tabla ingresada
			local table_max = table.duplicate( Table )
			table.sort( table_max, function( a, b ) return a < b end )
			if table_max[ #table_max ] then
				return table_max[ #table_max ]
			end
			return 0
		elseif mode == "rank" then
			--retorna el rango de los valores de la tabla ingresada
			local table_rank = table.duplicate( Table )
			table.sort( table_rank, function( a, b ) return a < b end )
			if table_rank[ 1 ] then
				return table_rank[ #table_rank ] - table_rank[ 1 ]
			end
			return 0
		elseif mode == "org" then
			--retorna la tabla con los números organizados ascendentemente
			local table_org = table.duplicate( Table )
			table.sort( table_org, function( a, b ) return a < b end )
			return table_org
		elseif mode == "org2" then
			--retorna la tabla con los números organizados descendentemente
			local table_org2 = table.duplicate( Table )
			table.sort( table_org2, function( a, b ) return a > b end )
			return table_org2
		elseif mode == "round" then
			--retorna la tabla con todos los números redondeados según el Argumento 3
			local table_round = table.duplicate( Table )
			return math.round( table_round, add )
		elseif mode == "add" then
			--retorna la tabla, y a cada uno de los elementos le suma un número
			if type( add ) == "number" then
				for i = 1, #Table do
					table_add[ i ] = Table[ i ] + add
				end
			elseif type( add ) == "table" then
				for i = 1, #Table do 
					if type( Table[ i ] ) == "table" then
						table_add[ i ] = { }
						for k = 1, #Table[ i ] do
							table_add[ i ][ k ] = Table[ i ][ k ] + add[ 1 + (k + 1) % 2 ]
							if k % 2 == 1 then
								table_add[ i ][ k ] = Table[ i ][ k ] + add[ 1 + (k - 1) % 2 ]
							end
						end
					elseif i % 2 == 1 then
						table_add[ i ] = Table[ i ] + add[ 1 + (i - 1) % 2 ]
					else
						table_add[ i ] = Table[ i ] + add[ 1 + (i + 1) % 2 ]
					end
				end
			end
			return table_add
		elseif mode == "inverse" then
			--retorna la tabla con los elementos invertidos en el orden en que se ingresaron
			for i = 1, #Table do
				table_inverse[ i ] = Table[ #Table - i + 1 ]
			end
			return table_inverse
		end
	end
	
	function table.gradient( Size, ... )
		-- example algorithm: "sin( pi * %s )"
		local toGradient = { ... }
		if type( ... ) == "table" then
			toGradient = ...
		end
		if #toGradient == 1 then
			toGradient[ 2 ] = text.color1
		end
		toGradient = color.from_error( toGradient )
		local Size = Size or val_n
		effector.print_error( Size, "numbertable", "table.gradient", 1 )
		local Grad, Gradient_H, Gradient_V = { }, { }, { }
		local algorithm, Siz = "%s", math.round( Size )
		if type( Size ) == "table"
			and Size[ 2 ] then
			Siz = math.round( Size[ 1 ] )
			algorithm = Size[ 2 ]
		end
		if type( Size ) == "table"
			and type( Size[ 1 ] ) == "table" then
			Siz = math.round( Size[ 1 ][ 1 ] )
			for i = 1, Siz do
				Grad[ i ] = tag.ipol( math.format( algorithm, (i - 1) / (Siz - 1) ), toGradient )
			end
			return Grad
		end
		for i = 1, Siz + 1 do
			Grad[ i ] = tag.ipol( math.format( algorithm, (i - 1) / Siz ), toGradient )
		end
		for i = 1, Siz do
			Gradient_H[ i ] = format( "(%s,%s,%s,%s)", Grad[ i ], Grad[ i + 1 ], Grad[ i ], Grad[ i + 1 ] )
			Gradient_V[ i ] = format( "(%s,%s,%s,%s)", Grad[ i ], Grad[ i ], Grad[ i + 1 ], Grad[ i + 1 ] )
		end
		if fx__.v_kanji == false then
			return Gradient_H
		end
		return Gradient_V
	end --"\\1c" .. table.gradient( val_n, "&H0000FF&", text.color1, "&H00FFFF&" )[val_i]
	
	function table.bigradient( gradient1, gradient2, Size )
		local gradient1 = color.from_error( gradient1 or text.color1 )
		local gradient2 = color.from_error( gradient2 or text.color2 )
		local Size = math.round( Size or val_n )
		local N1, N2
		local bigradient1, bigradient2 = gradient1, gradient2
		if type( gradient1 ) == "string" then
			bigradient1 = { gradient1, gradient1 }
		end
		if type( gradient2 ) == "string" then
			bigradient2 = { gradient2, gradient2 }
		end
		if #bigradient1 == 1 then
			bigradient1 = { bigradient1[ 1 ], bigradient1[ 1 ] }
		end
		if #bigradient2 == 1 then
			bigradient2 = { bigradient2[ 1 ], bigradient2[ 1 ] }
		end
		local n1, n2, vector1, vector2 = #bigradient1 - 1, #bigradient2 - 1, { }, { }
		local table_bigradientH, table_bigradientV = { }, { }
		for k = 1, Size + 1 do
			N1 = ceil( k / ((Size + 1) / n1) )
			N2 = ceil( k / ((Size + 1) / n2) )
			vector1[ k ] = tag.ipol( (k - (N1 - 1) * (Size + 1) / n1 - 1) / ((Size + 1) / n1), bigradient1[ N1 ], bigradient1[ N1 + 1 ] )
			vector2[ k ] = tag.ipol( (k - (N2 - 1) * (Size + 1) / n2 - 1) / ((Size + 1) / n2), bigradient2[ N2 ], bigradient2[ N2 + 1 ] )
		end
		for i = 1, Size do
			table_bigradientH[ i ] = format( "(%s,%s,%s,%s)", vector1[ i ], vector1[ i + 1 ], vector2[ i ], vector2[ i + 1 ] )
			table_bigradientV[ i ] = format( "(%s,%s,%s,%s)", vector1[ i ], vector2[ i ], vector1[ i + 1 ], vector2[ i + 1 ] )
		end
		if fx__.v_kanji == false then
			return table_bigradientH
		end
		return table_bigradientV
	end --"\\1vc" .. table.bigradient( {"&H0000FF&", text.color1}, "&H00FFFF&", val_n )[val_i]
	
	function table.mask( Color_or_Alpha, Maskfx, Mode, First )
		local vectorMask = color.from_error( Color_or_Alpha or text.color1 )
		if type( vectorMask ) ~= "table" then
			vectorMask = { vectorMask }
		end
		local Mask = Maskfx or { "&HFF&", "&H00&" }
		local func_ipol, func_conv = alpha.ipolfx, alpha.va_to_a
		if vectorMask[ 1 ]:match( "&H(%x+)&" ):len( ) == 6 then
			Mask = color.from_error( Maskfx or { "&H5A5A5A&", "&H000000&" } )
			func_ipol, func_conv = color.ipolfx, color.vc_to_c
		end
		if type( Mask ) ~= "table" then
			Mask = { Mask }
		end
		if #Mask == 1 then
			Mask[ 2 ] = Mask[ 1 ]
		end
		local Mode = Mode or ""
		local ind, msk = recall.Ind, recall.Msk
		local Mask1, Mask2, MaskT, Hue = { }, { }, { }, { }
		if val_i == 1
			and j == 1 then
			ind = remember( "Ind", { } )
			msk = remember( "Msk", { } )
			for i = 1, 12 * (2 * (val_n + 1)) do
				Mask = table.disorder( Mask )
				ind[ i ] = Rc( 0.24, 1 )
				msk[ i ] = func_ipol( R( 2 ) - 1, Mask[ 1 ], Mask[ 2 ] )
			end
		end
		for k = 1, #vectorMask do
			Hue[ k ], Mask2[ k ] = { }, { }
			for i = 1, 12 * (2 * (val_n + 1)) do
				Hue[ k ][ i ] = func_ipol( ind[ i ], msk[ i ], func_conv( vectorMask[ k ] ) )
			end
			for i = 1, 2 do
				table.insert( Hue[ k ], Hue[ k ][ i ] )
			end
			for i = 1, 12 * val_n + 1 do
			--for i = 12 * val_n + 1, 1, -1 do
				Mask1[ i ] = format( "%s(%s,%s,%s,%s)",
					Mode, Hue[ k ][ 2 * i - 1 ], Hue[ k ][ 2 * i + 1 ], Hue[ k ][ 2 * i ], Hue[ k ][ 2 * i + 2 ]
				)
				Mask2[ k ][ i ] = format( "%s(%s,%s,%s,%s)",
					Mode, Hue[ k ][ 2 * i - 1 ], Hue[ k ][ 2 * i + 1 ], Hue[ k ][ 2 * i ], Hue[ k ][ 2 * i + 2 ]
				)
				if fx__.v_kanji then
					Mask1[ i ] = format( "%s(%s,%s,%s,%s)",
						Mode, Hue[ k ][ 2 * i - 1 ], Hue[ k ][ 2 * i ], Hue[ k ][ 2 * i + 1 ], Hue[ k ][ 2 * i + 2 ]
					)
					Mask2[ k ][ i ] = format( "%s(%s,%s,%s,%s)",
						Mode, Hue[ k ][ 2 * i - 1 ], Hue[ k ][ 2 * i ], Hue[ k ][ 2 * i + 1 ], Hue[ k ][ 2 * i + 2 ]
					)
				end
			end
			for i = 1, 12 * val_n + 1 do
				Hue[ k ][ i ] = Mask1[ i ]
			end --color.movemask( fx.dur, 220, "\\1c", table.make( "color", syl.n, 15, 90 )[ syl.i ], "&H000000&" )
		end
		if First == 1 then
			return Mask2
		end
		if First then
			return Mask1
		end
		if #vectorMask == 1 then
			return Hue[ 1 ][ val_i ]
		end
		for i = 1, #vectorMask do
			MaskT[ i ] = Hue[ i ][ val_i ]
		end
		return MaskT
	end --table.mask( "&H00FFFF&", "&H000000&", "\\1vc" )
	
	table.recall = { }
	function table.remember( table_ref, table_val )
		--similar a "remember" con elementos de una tabla
		for i = 1, #table_ref do
			ref_i = table_ref[ i ]
			table.recall[ ref_i ] = table_val[ i ]
		end
		return unpack( table_val )
	end
	
	function table.random( Table_or_Number )
		--retorna un elemento aleatoriamente de la tabla ingresada
		--o un número entero al azar entre 1 y el número ingresado
		local T_o_N = Table_or_Number or { 1 }
		effector.print_error( T_o_N, "numbertable", "table.random", 1 )
		if type( T_o_N ) == "number" then
			local Num = T_o_N
			T_o_N = { }
			for i = 1, Num do
				T_o_N[ i ] = i
			end
		end
		return T_o_N[ R( #T_o_N ) ]
	end	--table.random( 9 )
	
	function table.delete( Table, ... )
		--elimina el o los elementos, o una tabla de elementos
		--que estén dentro de una tabla seleccionada "Table"
		local tbl_delete, retire_e = table.duplicate( Table ), { ... }
		if type( ... ) == "table" then
			retire_e = ...
		end
		for i = 1, #retire_e do
			while table.inside( tbl_delete, retire_e[ i ] ) == true do
				table.remove( tbl_delete, table.index( tbl_delete, retire_e[ i ] ) )
			end
		end
		return tbl_delete
	end

	function table.permute( Table )
		--retorna una tabla que contiene las tablas con todas las
		--combinaciones posibles que se pueden hacer de la tabla ingresada
		--{ 1, 2, 3 } --> { {2, 3, 1}, {2, 1, 3}, {3, 1, 2}, {3, 2, 1}, {1, 3, 2}, {1, 2, 3} }
		local Table_Per = { }
		local function output( table_per )
			local tbl_inside = { }
			for _, val in ipairs( table_per ) do
				table.insert( tbl_inside, val )
			end
			table.insert( Table_Per, tbl_inside )
		end
		local function permutation( table_per, n )
			if n == 0 then
				output( table_per )
			else
				for i = 1, n do
					table_per[ n ], table_per[ i ] = table_per[ i ], table_per[ n ]
					permutation( table_per, n - 1 )
					table_per[ n ], table_per[ i ] = table_per[ i ], table_per[ n ]
				end
			end
		end
		local n = #Table
		permutation( Table, n )
		return Table_Per
	end
	
	function table.ipol( Table, Size, Tags, algorithm )
		--retorna una tabla con la interpolación de los valores de la tabla ingresada
		--interpola números, shapes, clips vectoriales, clips rectangulares, colores y transparencias
		if type( Table ) == "function" then
			Table = Table( )
		end
		if type( Size ) == "function" then
			Size = Size( )
		end
		if type( Tags ) == "function" then
			Tags = Tags( )
		end
		if type( algorithm ) == "function" then
			algorithm = algorithm( )
		end
		local Table = Table or { 0, 1 }
		local Size = ceil( abs( Size or 10 ) )
		if #Table == 1 then
			Table[ 2 ] = Table[ 1 ]
		end
		if Size < #Table then
			Size = #Table
		end
		local algorithm = algorithm or "%s"
		-- algorithm example: "%s ^ 0.5"
		local function tbl_ipol_funct( Table_ipol, Size_ipol, Tags_ipol, algorithm_ipol, Shp_or_Clip )
			---------------------------------------------
			local ipols = { }
			local max_loop = Size_ipol - 1
			local ipol_i, ipol_f, pct_ip
			---------------------------------------------
			-- interpola el valor de dos números
			local function ipol_number( val_1, val_2, pct_ipol )
				return val_1 + (val_2 - val_1) * pct_ipol
			end
			---------------------------------------------
			-- interpola el valor de dos shapes o dos clips
			local function ipol_shpclip( val_1, val_2, pct_ipol )
				local tbl_1, tbl_2, k = { }, { }, 1
				for c in val_1:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( tbl_1, tonumber( c ) )
				end
				for c in val_2:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( tbl_2, tonumber( c ) )
				end
				local val_ipol = val_1:gsub( "%-?%d+[%.%d]*", 
					function( val )
						local val = tbl_1[ k ] + ( tbl_2[ (k - 1) % #tbl_2 + 1 ] - tbl_1[ k ]) * pct_ipol
						k = k + 1
						return math.round( val, 3 )
					end
				)
				return val_ipol
			end --add: december 12th 2018
			---------------------------------------------
			-- busca un string dentro de la tabla
			local function string_in_tbl( str_in_tbl )
				for i = 1, #str_in_tbl do
					if type( str_in_tbl[ i ] ) == "string" then
						return true, str_in_tbl[ i ]
					end
				end
				return false
			end
			---------------------------------------------
			-- decide cuál de las 4 interpolaciones se usará
			local ipol_function = ipol_number
			if Shp_or_Clip then
				ipol_function = ipol_shpclip
			end
			local ipol_coloralpha = ""
			if string_in_tbl( Table_ipol ) then
				local True, Val_str = string_in_tbl( Table_ipol )
				if Val_str:match( "[&Hh%#]^*%x%x%x%x%x%x[&]*" ) then
					ipol_function = color.interpolate
					ipol_coloralpha = "coloralpha"
				elseif Val_str:match( "[&Hh%#]^*%x%x[&]*" ) then
					ipol_function = alpha.interpolate
					ipol_coloralpha = "coloralpha"
				end
			end
			---------------------------------------------
			if fx.filter == "mod" 
				and ipol_coloralpha == "coloralpha" then
				max_loop = Size_ipol
			end
			for i = 1, max_loop do
				--algoritmos de interpolación :D
				ipol_i = Table_ipol[ floor( (i - 1) / (max_loop / (#Table_ipol - 1)) ) + 1 ]
				ipol_f = Table_ipol[ floor( (i - 1) / (max_loop / (#Table_ipol - 1)) ) + 2 ]
				pct_ip = floor( (i - 1) % (max_loop / (#Table_ipol - 1)) ) / (max_loop / (#Table_ipol - 1))
				ipols[ i ] = ipol_function( ipol_i, ipol_f, math.format( algorithm_ipol, pct_ip ) )
			end --table.ipol( { 12, 31 }, 11, "\\fscy", "sin( pi * %s )" )
			--fixed: october 07th 2019
			pct_ip = math.clamp( math.format( algorithm_ipol, 1 ) ) * (#Table_ipol - 1)
			ipol_i = Table_ipol[ floor( pct_ip ) + 1 ]
			ipol_f = Table_ipol[ floor( pct_ip ) + 2 ] or Table_ipol[ floor( pct_ip ) + 1 ]
			ipols[ #ipols + 1 ] = math.round( ipol_function( ipol_i, ipol_f, pct_ip - floor( pct_ip ) ), 3 )
			--ipols[ #ipols + 1 ] = Table_ipol[ #Table_ipol ]
			if fx.filter == "mod"
				and ipol_coloralpha == "coloralpha" then
				local coloralpha_ipos = { }
				for i = 1, max_loop do
					if fx__.v_kanji == false then
						coloralpha_ipos[ i ] = format( "(%s,%s,%s,%s)", ipols[ i ], ipols[ i + 1 ], ipols[ i ], ipols[ i + 1 ] )
					else
						coloralpha_ipos[ i ] = format( "(%s,%s,%s,%s)", ipols[ i ], ipols[ i ], ipols[ i + 1 ], ipols[ i + 1 ] )
					end --table.ipol( { "&HFF&", "&H00&" }, 10, "\\3a" )
				end
				return coloralpha_ipos
			end --add: october 13th 2018
			--concatena los valores con los Tags_ipol, si lo hay
			if Tags_ipol then
				return table.concat2( ipols, Tags_ipol )
			end --add: december 05th 2018
			---------------------------------------------
			return ipols --rewrite: october 11th 2018
			--table.ipol( { 12, 31, 20, 13, 47 }, 16, "\\fscy" )
		end
		-------------------------------------------------------------
		-- determina si los elementos son tablas, clip's o shapes
		local function type_table( Table )
			if type( Table[ 1 ] ) == "table" then
				for i = 1, #Table do
					if type( Table[ i ] ) ~= "table" then
						return "mixed"
					end
				end
				return "table"
			elseif type( Table[ 1 ] ) == "string" then --fix: december 09th 2018
				if Table[ 1 ]:match( "%([ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%)" ) then
					for i = 1, #Table do
						if not Table[ i ]:match( "%([ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%)" ) then
							return "mixed"
						end
					end
					return "clip"
				elseif Table[ 1 ]:match( "m %-?%d+[%.%d]* %-?%d+[%.%-%dblm ]*" ) then
					for i = 1, #Table do
						if not Table[ i ]:match( "m %-?%d+[%.%d]* %-?%d+[%.%-%dblm ]*" ) then
							return "mixed"
						end
					end
					return "shape"
				end
			end --type_table( { {1,2}, {3,4}, {5,6} } )
			return "others"
		end --add: december 08th 2018
		-------------------------------------------------------------
		if type_table( Table ) == "table" then
			local tbls_ipol, Tags_tbl = { }, Tags
			for i = 1, #Table do
				if type( Tags ) == "table" then
					Tags_tbl = Tags[ i ] or ""
				end
				if type_table( Table[ i ] ) == "shape"
					or type_table( Table[ i ] ) == "clip" then
					tbls_ipol[ i ] = tbl_ipol_funct( Table[ i ], Size, Tags_tbl, algorithm, true )
				else
					tbls_ipol[ i ] = tbl_ipol_funct( Table[ i ], Size, Tags_tbl, algorithm )
				end
			end --mod: january 17th 2019
			return table.concat4( tbls_ipol )
		elseif type_table( Table ) == "shape"
			or type_table( Table ) == "clip" then
			return tbl_ipol_funct( Table, Size, Tags, algorithm, true )
		end
		return tbl_ipol_funct( Table, Size, Tags, algorithm )
	end --january 11th 2018
	
	function table.ipol2( Table, Size, Tags, algorithm )
		--retorna una tabla con la interpolación de los valores de la tabla ingresada
		--interpola números, shapes, clips vectoriales, clips rectangulares, colores y transparencias
		local Table = Table or { 0, 1 }
		local Size = ceil( abs( Size or 10 ) )
		if #Table == 1 then
			Table[ 2 ] = Table[ 1 ]
		end
		if Size < #Table then
			Size = #Table
		end
		local algorithm = algorithm or "%s" -- algorithm example: "%s ^ 0.5"
		local function tbl_ipol_funct( Table_ipol, Size_ipol, Tags_ipol, algorithm_ipol )
			local ipols = { }
			for i = 1, Size_ipol do
				ipols[ i ] = math.round( tag.ipol( math.format( algorithm_ipol, (i - 1) / (Size_ipol - 1) ), Table_ipol ), 3 )
			end
			if Tags_ipol then --concatena los valores con los Tags_ipol, si los hay
				return table.concat2( ipols, Tags_ipol )
			end
			return ipols
		end
		-- determina si los elementos son tablas, clip's o shapes
		local function type_table( Table )
			if type( Table[ 1 ] ) == "table" then
				for i = 1, #Table do
					if type( Table[ i ] ) ~= "table" then
						return "mixed"
					end
				end
				return "table"
			end
			return "others"
		end
		-------------------------------------------------------------
		if type_table( Table ) == "table" then
			local tbls_ipol, Tags_tbl = { }, Tags
			for i = 1, #Table do
				if type( Tags ) == "table" then
					Tags_tbl = Tags[ i ] or ""
				end
				itbls_ipol[ i ] = tbl_ipol_funct( Table[ i ], Size, Tags_tbl, algorithm )
			end
			return table.concat4( tbls_ipol )
		end --october 07th 2019
		return tbl_ipol_funct( Table, Size, Tags, algorithm )
	end --table.ipol2( { 12, 31, 20, 13, 47 }, 21, "\\fscy" )


	function table.capture( String, Capture )
		--crea una tabla con las capturas de un String
		local tbl_cap = { }
		local String = String or ""
		local Capture = Capture or ""
		effector.print_error( String, "string", "table.capture", 1 )
		effector.print_error( Capture, "stringtable", "table.capture", 2 )
		if type( Capture ) == "table" then
			for i = 1, #Capture do
				for cap in String:gmatch( Capture[ i ] ) do
					table.insert( tbl_cap, cap )
				end
			end
		else
			for cap in String:gmatch( Capture ) do
				table.insert( tbl_cap, cap )
			end
		end
		return tbl_cap
	end --may 12th 2018

	function table.gsub( Table, Capture, Replace )
		-- genera reemplazos en los elementos string de una tabla
		local Replace = Replace or ""
		local Capture = Capture or "KEfx"
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "table", "table.gsub", 1 )
		effector.print_error( Capture, "stringtable", "table.gsub", 2 )
		effector.print_error( Replace, "string", "table.gsub", 3 )
		local tbl_gsub = { }
		local Table_gs = table.duplicate( Table )
		for k, val in pairs( Table_gs ) do
			if type( val ) == "string" then
				if type( Capture ) == "table" then
					for i = 1, #Capture do
						val = val:gsub( Capture[ i ], Replace )
					end
				else
					val = val:gsub( Capture, Replace )
				end
			end
			tbl_gsub[ k ] = val
		end
		return tbl_gsub
	end --may 27th 2018

	function table.match( Table, Capture )
		-- genera una tabla con las coincidencias que encuentre
		local tbl_match = { }
		local table_mch = table.duplicate( Table )
		if type( Capture ) == "table" then
			for i = 1, #Capture do
				if table.inside( table_mch, Capture[ i ] ) then
					table.insert( tbl_match, Capture[ i ] )
				else
					for _, val in pairs( table_mch ) do
						if Capture[ i ] == val then
							table.insert( tbl_match, Capture[ i ] )
						elseif type( val ) == "string"
							and type( Capture[ i ] ) == "string" then
							if val:match( Capture[ i ] ) then
								table.insert( tbl_match, val:match( Capture[ i ] ) )
							end
						end
					end
				end
			end
		else
			if table.inside( table_mch, Capture ) then
				table.insert( tbl_match, Capture )
			else
				for _, val in pairs( table_mch ) do
					if Capture == val then
						table.insert( tbl_match, Capture )
					elseif type( val ) == "string"
						and type( Capture ) == "string" then
						if val:match( Capture ) then
							table.insert( tbl_match, val:match( Capture ) )
						end
					end
				end
			end
		end
		return tbl_match
	end --may 30th 2018
	
	function table.unique( Table )
		--elimina los elementos repetidos de una tabla
		local tbl_uni = { }
		effector.print_error( Table, "table", "table.unique", 1 )
		local tbl_cop = table.duplicate( Table )
		while #tbl_cop > 0 do
			table.insert( tbl_uni, tbl_cop[ 1 ] )
			tbl_cop = table.retire( tbl_cop, tbl_cop[ 1 ] )
		end --table.unique( { 1, 2, 2, 2, 5, 6, 7, 8 } )
		return tbl_uni
	end --may 12th 2018
	
	function table.twin( ... )
		--crea una tabla con los emparejamientos uno a uno de los elementos de las tablas ingresadas
		local Table = { ... }
		if #Table == 1 then
			Table = ...
		end
		local twin_tbl, sizes_tbl, min_size = { }, { }, 0
		for i = 1, #Table do
			sizes_tbl[ i ] = #Table[ i ]
		end
		min_size = table.op( sizes_tbl, "min" )
		for i = 1, min_size do
			twin_tbl[ i ] = { }
			for k = 1, #Table do
				twin_tbl[ i ][ k ] = Table[ k ][ i ]
			end
		end
		return twin_tbl --january 17th 2019
	end --table.twin( { { 1, 2, 3, 4 }, { "A", "B", "C", "D" }, { 7, 8, 9, 0, -1 } } )
	
	function table.type( Table )
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "table", "table.type", 1 )
		if #Table > 0 then
			::go_to_ini::
			if type( Table[ 1 ] ) == "string" then
				--color
				if Table[ 1 ]:match( "%x%x%x%x%x%x" ) then
					local is_color = 0
					for i = 1, #Table do
						if type( Table[ i ] ) == "string"
							and Table[ i ]:match( "%x%x%x%x%x%x" ) then
							is_color = is_color + 1
						end
						if type( Table[ i ] ) == "function"
							and type( Table[ i ]( ) ) == "string" then
							if Table[ i ]( ):match( "%x%x%x%x%x%x" ) then
								is_color = is_color + 1
							end
						end
					end
					if is_color == #Table then
						return "color"
					end
				end
				--alpha
				if Table[ 1 ]:match( "%x%x" ) then
					local is_alpha = 0
					for i = 1, #Table do
						if type( Table[ i ] ) == "string"
							and Table[ i ]:match( "%x%x" ) then
							is_alpha = is_alpha + 1
						end
						if type( Table[ i ] ) == "function" then
							if type( Table[ i ]( ) ) == "string"
								and Table[ i ]( ):match( "%x%x" ) then
								is_alpha = is_alpha + 1
							elseif type( Table[ i ]( ) ) == "number" then
								is_alpha = is_alpha + 1
							end
						end
						if type( Table[ i ] ) == "number" then
							is_alpha = is_alpha + 1
						end
					end
					if is_alpha == #Table then
						return "alpha"
					end
				end
				--shape
				if Table[ 1 ]:match( "m %-?%d+[%.%d]* %-?%d+[%.%-%dblm ]*" ) then
					local is_shape = 0
					for i = 1, #Table do
						if type( Table[ i ] ) == "string"
							and Table[ i ]:match( "m %-?%d+[%.%d]* %-?%d+[%.%-%dblm ]*" ) then
							is_shape = is_shape + 1
						end
						if type( Table[ i ] ) == "function"
							and type( Table[ i ]( ) ) == "string" then
							if Table[ i ]( ):match( "m %-?%d+[%.%d]* %-?%d+[%.%-%dblm ]*" ) then
								is_shape = is_shape + 1
							end
						end
					end
					if is_shape == #Table then
						return "shape"
					end
				end
				--clip
				if Table[ 1 ]:match( "%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*" ) then
					local is_clip = 0
					for i = 1, #Table do
						if type( Table[ i ] ) == "string"
							and Table[ i ]:match( "%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*" ) then
							is_clip = is_clip + 1
						end
						if type( Table[ i ] ) == "function"
							and type( Table[ i ]( ) ) == "string" then
							if Table[ i ]( ):match( "%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*" ) then
								is_clip = is_clip + 1
							end
						end
					end
					if is_clip == #Table then
						return "clip"
					end
				end
			end
			if type( Table[ 1 ] ) == "string" then
				for i = 1, #Table do
					if type( Table[ i ] ) ~= "string" then
						if type( Table[ i ] ) == "function"
							and type( Table[ i ]( ) ) == "string" then
							goto is_string
						end
						return "mixed"
					end
					::is_string::
				end
				return "string"
			elseif type( Table[ 1 ] ) == "number" then
				--alpha
				local its_alpha = 0
				local min_alpha = 0
				for i = 1, #Table do
					if type( Table[ i ] ) == "string"
						and Table[ i ]:match( "%x%x" ) then
						its_alpha = its_alpha + 1
						min_alpha = min_alpha + 1
					end
					if type( Table[ i ] ) == "function" then
						if type( Table[ i ]( ) ) == "string"
							and Table[ i ]( ):match( "%x%x" ) then
							its_alpha = its_alpha + 1
							min_alpha = min_alpha + 1
						elseif type( Table[ i ]( ) ) == "number" then
							its_alpha = its_alpha + 1
						end
					end
					if type( Table[ i ] ) == "number" then
						its_alpha = its_alpha + 1
					end
				end
				if its_alpha == #Table
					and min_alpha > 0 then
					return "alpha"
				end
				--number
				for i = 1, #Table do
					if type( Table[ i ] ) ~= "number" then
						if type( Table[ i ] ) == "function"
							and type( Table[ i ]( ) ) == "number" then
							goto is_number
						end
						return "mixed"
					end
					::is_number::
				end
				return "number"
			elseif type( Table[ 1 ] ) == "table" then
				for i = 1, #Table do
					if type( Table[ i ] ) ~= "table" then
						if type( Table[ i ] ) == "function"
							and type( Table[ i ]( ) ) == "table" then
							goto is_table
						end
						return "mixed"
					end
					::is_table::
				end
				return "table"
			elseif type( Table[ 1 ] ) == "boolean" then
				for i = 1, #Table do
					if type( Table[ i ] ) ~= "boolean" then
						if type( Table[ i ] ) == "function"
							and type( Table[ i ]( ) ) == "boolean" then
							goto is_boolean
						end
						return "mixed"
					end
					::is_boolean::
				end
				return "boolean"
			elseif type( Table[ 1 ] ) == "thread" then
				for i = 1, #Table do
					if type( Table[ i ] ) ~= "thread" then
						if type( Table[ i ] ) == "function"
							and type( Table[ i ]( ) ) == "thread" then
							goto is_thread
						end
						return "mixed"
					end
					::is_thread::
				end
				return "thread"
			elseif type( Table[ 1 ] ) == "userdata" then
				for i = 1, #Table do
					if type( Table[ i ] ) ~= "userdata" then
						if type( Table[ i ] ) == "function"
							and type( Table[ i ]( ) ) == "userdata" then
							goto is_userdata
						end
						return "mixed"
					end
					::is_userdata::
				end
				return "userdata"
			elseif type( Table[ 1 ] ) == "function" then
				Table[ 1 ] = Table[ 1 ]( )
				goto go_to_ini
				for i = 1, #Table do
					if type( Table[ i ] ) ~= "function" then
						return "mixed"
					end
				end
				return "function"
			end
			return "nil"
		end
		return "empty"
	end --august 03rd 2019

	--------------------------------------------------------------------------------------------------
	-- Ampliación de la Librería "string" ------------------------------------------------------------
	function string.count( String, Capture )
		-- cantidad de veces que una captura o familia de capturas aparecen en un string
		if type( String ) == "function" then
			String = String( )
		end
		if type( Capture ) == "function" then
			Capture = Capture( )
		end
		local String = String or ""
		local Capture = Capture or "KE"
		local str_count = 0
		effector.print_error( String, "string", "string.count", 1 )
		effector.print_error( Capture, "stringtable", "string.count", 2 )
		if type( Capture ) == "string" then
			if Capture == "number" then
				Capture = "%-?%d+[%.%d]*"
			elseif Capture == "color" then
				Capture = "[%&%#Hh]^*%x%x%x%x%x%x[%&]*"
			elseif Capture == "alpha" then
				Capture = "%&[Hh]^*%x%x%&"
			elseif Capture == "shape" then
				Capture = "m %-?%d+[%.%d]* %-?%d+[%.%-%dblm ]*"
			end --add: august 03rd 2019
			for cap in String:gmatch( Capture ) do
				str_count = str_count + 1
			end
		elseif type( Capture ) == "table" then
			for i = 1, #Capture do
				if Capture[ i ] == "number" then
					Capture[ i ] = "%-?%d+[%.%d]*"
				elseif Capture[ i ] == "color" then
					Capture[ i ] = "[%&%#Hh]^*%x%x%x%x%x%x[%&]*"
				elseif Capture[ i ] == "alpha" then
					Capture[ i ] = "%&[Hh]^*%x%x%&"
				elseif Capture[ i ] == "shape" then
					Capture[ i ] = "m %-?%d+[%.%d]* %-?%d+[%.%-%dblm ]*"
				end
				if type( Capture[ i ] ) == "string" then
					for cap in String:gmatch( Capture[ i ] ) do
						str_count = str_count + 1
					end
				end
			end
		end --may 18th 2018
		return str_count
	end --string.count( "&HF58628&", "%x" )

	function string.toval( String )
		--convierte un string en el valor real que representa
		if type( String ) == "function" then
			String = String( )
		end
		local String = String or ""
		effector.print_error( String, "string", "string.toval", 1 )
		local line, str_to_val = linefx[ ii ]
		if type( String ) == "string" then
			-- march 15th 2018 ----------------------
			String = String:gsub( "%.line", ".LINE" )
			String = String:gsub( "meta%.res_x", "xres" ):gsub( "meta%.res_y", "yres" )
			:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_counter" )
			:gsub( "line%.", "linefx[  ii  ]." )
			:gsub( "(&H%x+&)", "\"" .. "%1" .. "\"" )
			:gsub( "%.LINE", ".line" )
			-------------------------- le da valor a los var.line
			if pcall( loadstring( format( "return function( meta, line, x, y ) return %s end", String ) ) ) then
				local string_to_funct = loadstring( format( "return function( meta, line, x, y ) return %s end", String ) )( )
				if pcall( string_to_funct ) then
					str_to_val = string_to_funct( meta, line, x, y )
					if str_to_val then
						return str_to_val
					end
					String = String:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
					:gsub( "l_counter", "line.i" ):gsub( "maxil_counter", "line.n" )
					:gsub( "linefx%[  ii  %]%.", "line." )
					:gsub( "\"(&H%x+&)\"", "%1" )--> deja al string tal cual
					--fix: may 11th 2018 --> modify the String before to return
					return String
				end --string.toval( "line.nil + 2" )
			end
			String = String:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
			:gsub( "l_counter", "line.i" ):gsub( "maxil_counter", "line.n" )
			:gsub( "linefx%[  ii  %]%.", "line." )
			:gsub( "\"(&H%x+&)\"", "%1" )--> deja al string tal cual
			--fix: may 11th 2018 --> modify the String before to return
			return String
		end
		return String
	end --string.toval( "5 + 7" )

	function string.i( String )
		-- convierte al string "i" en un valor numérico consecutivo
		local count_i = 0
		local String = String or ""
		effector.print_error( String, "string", "string.i", 1 )
		String = String:gsub( "\\%w+%b()",
			function( capture )
				local capture_i = capture
				local capture = capture:gsub( "([%+%-%*%/%^%(%[%{%d%% ]^*)(i)([%+%-%*%/%^%)%]%}%%%\\ ]^*)",
					function( capture_ini, capture_i, capture_fin )
						local cap_ini, cap_i, cap_fin = capture_ini, count_i, capture_fin
						if capture_ini:match( "%d" ) then
							return cap_ini .. "*" .. cap_i .. cap_fin
						end
						return cap_ini .. cap_i .. cap_fin
					end
				)
				if capture_i ~= capture then
					count_i = count_i + 1
				end
				return capture
			end
		)
		return String
	end --tag.oscill( fx.dur, 1000, "\\fr( -5i )\\frx( 10 - i )" )
	
	function string.change( String, Capture, NoChange, NoCapture, Change )
		-- elimina o cambia una captura específica de un string
		local String = String or ""
		local Change = Change or ""
		local nocapture_tbl = { }
		effector.print_error( String, "string", "string.change", 1 )
		effector.print_error( Capture, "stringtable", "string.change", 2 )
		if NoCapture then
			effector.print_error( NoCapture, "stringtable", "string.change", 4 )
			if type( NoCapture ) == "table" then
				for i = 1, #NoCapture do
					for nocap in String:gmatch( NoCapture[ i ] ) do
						table.insert( nocapture_tbl, nocap )
					end
					String = String:gsub( NoCapture[ i ], "<nocap>" )
				end
			else
				for nocap in String:gmatch( NoCapture ) do
					table.insert( nocapture_tbl, nocap )
				end
				String = String:gsub( NoCapture, "<nocap>" )
			end
		end
		if NoChange then
			effector.print_error( NoChange, "numbertable", "string.change", 3 )
			if type( NoChange ) == "number" then
				NoChange = { NoChange }
			end
		else
			NoChange = { 0 }
		end
		local del_count
		if type( Capture ) == "string" then
			del_count = 0
			String = String:gsub( Capture,
				function( capture )
					del_count = del_count + 1
					if table.inside( NoChange, del_count ) then
						return capture
					end
					if type( Change ) == "function" then
						return Change( capture )
					end
					return Change
				end
			)
		else
			for i = 1, #Capture do
				del_count = 0
				String = String:gsub( Capture[ i ],
					function( capture )
						del_count = del_count + 1
						if table.inside( NoChange, del_count ) then
							return capture
						end
						if type( Change ) == "function" then
							return Change( capture )
						end
						return Change
					end
				)
			end
		end
		if NoCapture then
			nocap_count = 0
			String = String:gsub( "<nocap>",
				function( nocap_capture )
					nocap_count = nocap_count + 1
					return nocapture_tbl[ nocap_count ]
				end
			)
		end
		return String
	end --string.change( "\\c&H0000FF&\\t(\\c&HFF00AA&)\\c&H00FFFF&ru", "\\c&H%x+&", 1, "\\t%b()" )
	
	function string.cap( String, Capture, Extra_Capture, Filter )
		-- ampliación de string.sub y string.gsub con la opción de capturas extras
		--string.cap( line.text_stripped, 4, 10 )
		local String = String or ""
		local Filter = Filter or ""
		effector.print_error( String, "string", "string.cap", 1 )
		effector.print_error( Capture, "numberstring", "string.cap", 2 )
		effector.print_error( Extra_Capture, "numbertable", "string.cap", 3 )
		effector.print_error( Filter, "true", "string.cap", 4 )
		if type( Capture ) == "number"
			and type( Extra_Capture ) == "number" then
			local char_i, char_f = ceil( Capture ), ceil( Extra_Capture )
			-- captura un tramo del String desde char_i hasta char_f, como String:sub( )
			-- si char_i es mayor que char_f, entonces captura en tramo de forma inversa
			local chars_tbl, chars_sub = { }, ""
			for c in unicode.chars( String ) do
				table.insert( chars_tbl, c )
			end
			local chars_n = #chars_tbl
			--------------------------------
			if char_i < 0 then
				if char_i < -chars_n then
					char_i = -chars_n
				end
				char_i = chars_n + char_i + 1
			end
			if char_i > chars_n then
				char_i = chars_n
			end
			--------------------------------
			if char_f < 0 then
				if char_f < -chars_n then
					char_f = -chars_n
				end
				char_f = chars_n + char_f + 1
			end
			if char_f > chars_n then
				char_f = chars_n
			end
			--------------------------------
			local Steep = 1
			if type( Filter ) == "number" then
				--string.cap( line.text_stripped, 4, 10, 0 )
				-- retorna la parte "negativa" de la captura
				local char_0i, char_0f = math.min( char_i, char_f ), math.max( char_i, char_f )
				for i = 1, chars_n do
					if i < char_0i
						or i > char_0f then
						chars_sub = chars_sub .. chars_tbl[ i ]
					end
				end
			else
				if char_i > char_f then
					Steep = -1
				end
				for i = char_i, char_f, Steep do
					chars_sub = chars_sub .. chars_tbl[ i ]
				end
			end
			String = chars_sub --add: october 06th 2018
		elseif type( Capture ) == "string"
			and type( Extra_Capture ) == "table" then
			local Captures_tbl = { }
			if #Extra_Capture > 0 then
				for i = 1, #Extra_Capture do
					Captures_tbl[ i ] = Capture
					for k = 1, #Extra_Capture - i + 1 do
						Captures_tbl[ i ] = Captures_tbl[ i ] .. Extra_Capture[ k ]
					end
				end
			end
			Captures_tbl[ #Captures_tbl + 1 ] = Capture
			for i = 1, #Captures_tbl do
				String = String:gsub( Captures_tbl[ i ], Filter )
			end
		end
		return String
		--str = "de45yo34 de34g de34g7 de de67g"
		--string.cap( str, "(de)", { "(%d+)", "(g)" }, function( A, B, C ) if C then return ";3" elseif B then return ";2" end return ";1" end )
	end --rewrite: september 17th 2018

	function string.coupling( String, Modified, Group )
		local cap_exp = {
			[ 1 ] = {
				[ 1 ] = "(%%-?[%%d&]^*[%%.%%d&H%%x]*)",
				[ 2 ] = "(%%-?[%%d&]^*[%%.%%d&H%%x]*)"
			},
			[ 2 ] = {
				[ 1 ] = "(%%b())",
				[ 2 ] = "(%%-?[%%d&]^*[%%.%%d&H%%x]*)"
			},
			[ 3 ] = {
				[ 1 ] = "(%%-?[%%d&]^*[%%.%%d&H%%x]*)",
				[ 2 ] = "(%%b())"
			}
		}
		local cap_rep = {
			[ 1 ] = "%1(%2)%3(%4)",
			[ 2 ] = "%1%2%3(%4)",
			[ 3 ] = "%1(%2)%3%4"
		}
		local String = String or ""
		effector.print_error( String, "string", "string.coupling", 1 )
		effector.print_error( Modified, "string", "string.coupling", 2 )
		if Group then
			effector.print_error( Group, "string", "string.coupling", 3 )
			cap_rep = {
				[ 1 ] = "%1" .. Group:sub( 1, 1 ) .. "%2" .. Group:sub( 2, 2 ) .. "%3" .. Group:sub( 1, 1 ) .. "%4" .. Group:sub( 2, 2 ),
				[ 2 ] = "%1%2%3" .. Group:sub( 1, 1 ) .. "%4" .. Group:sub( 2, 2 ),
				[ 3 ] = "%1" .. Group:sub( 1, 1 ) .. "%2" .. Group:sub( 2, 2 ) .. "%3%4"
			}
		end
		local capx
		for i = 1, 3 do
			capx = Modified:gsub( "(%b())(%b())(%b())(%b())", "%1" .. cap_exp[ i ][ 1 ] .. "%3" .. cap_exp[ i ][ 2 ] )
			String = String:gsub( capx, cap_rep[ i ] )
		end
		return String
	end --string.coupling( "tag8<>9", "(tag)(__)(<>)(__)", "[]" )
	
	function string.parts( String, Parts )
		local String = String or linefx[ ii ].text_stripped
		local Parts = Parts or 3
		effector.print_error( String, "string", "string.parts", 1 )
		effector.print_error( Parts, "numbertable", "string.parts", 2 )
		if type( Parts ) == "number" then
			Parts = ceil( abs( Parts ) )
		end
		if type( Parts ) == "table" then
			if Parts[ 1 ] <= 0 then
				Parts[ 1 ] = 1
			end
			if Parts[ 2 ] <= 0 then
				Parts[ 2 ] = 2
			end
		end --add: october 06th 2018
		if Parts == 0 then
			Parts = 2
		end
		local Parts_tbl, Chars_tbl = { }, { }
		for c in unicode.chars( String ) do
			table.insert( Chars_tbl, c )
		end
		local Part_i, i = 0, 1
		while #Chars_tbl > 0 do
			Part_i = Parts
			if type( Parts ) == "table" then
				Part_i = R( Parts[ 1 ], Parts[ 2 ] )
			end
			Parts_tbl[ i ] = ""
			for k = 1, Part_i do
				Parts_tbl[ i ] = Parts_tbl[ i ] .. (Chars_tbl[ 1 ] or "")
				table.remove( Chars_tbl, 1 )
			end
			i = i + 1
		end --string.parts( nil, { 1, 3 } )
		return Parts_tbl
		-- retorna una tabla con las partes de n tamaño de un string
		-- string.parts( "por ejemplo", 2 ) --> { "po", "r ", "ej", "em", "pl", "o" }
	end --june 23rd 2018

	--------------------------------------------------------------------------------------------------
	-- Ampliación de la Librería "math" --------------------------------------------------------------
	function math.R( Rand_i, Rand_f )
		local Offset_r = tonumber( tostring( os.time( ) ):sub( -3, -1 ) )
		local rand_i, rand_f = Rand_i, Rand_f
		if Rand_f == nil
			and Rand_i == nil then
			return math.round( r( ), 4 )
		end
		if Rand_f == nil
			and Rand_i then
			if Rand_i == 0 then
				return 0
			end --may 18th 2018
			rand_f = Rand_i
			rand_i = 1
		end
		if type( Rand_i ) == "function" then
			rand_i = Rand_i( )
		end
		if type( Rand_f ) == "function" then
			rand_f = Rand_f( )
		end
		effector.print_error( rand_i, "number", "math.R", 1 )
		effector.print_error( rand_f, "number", "math.R", 2 )
		local rand_i = math.round( rand_i )
		local rand_f = math.round( rand_f )
		local R_i = math.min( rand_i, rand_f )
		local R_f = math.max( rand_i, rand_f )
		return R_i + (r( R_i, R_f ) + Offset_r - 1) % (R_f - R_i + 1)
	end
	
	function R( Rand_i, Rand_f, Step )
		local rand_s = Step or 1
		local rand_i, rand_f = Rand_i, Rand_f
		if type( rand_i ) == "function" then
			rand_i = rand_i( )
		end
		if type( rand_f ) == "function" then
			rand_f = rand_f( )
		end
		if type( rand_s ) == "function" then
			rand_s = rand_s( )
		end
		if rand_i == nil then
			return math.R( )
		end
		if rand_f == nil then
			effector.print_error( rand_i, "number", "R", 1 )
			return math.R( rand_i )
		end
		effector.print_error( rand_i, "number", "R", 1 )
		effector.print_error( rand_f, "number", "R", 2 )
		effector.print_error( rand_s, "number", "R", 3 )
		local Rand_ii = math.min( rand_i, rand_f )
		local Rand_ff = math.max( rand_i, rand_f )
		if rand_s == 0 then
			rand_s = 1
		end
		local Rand_v = Rand_ii + math.R( 0, (Rand_ff - Rand_ii) / rand_s ) * rand_s
		if Rand_v > Rand_ff then
			return Rand_ff
		end
		return Rand_v
	end
	
	function math.Rs( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rs", 1 )
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rs", 2 )
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rs", 3 )
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * (-1) ^ R( 2 )
	end
	Rs = math.Rs

	function math.Rr( Rand_i, Rand_f, Step )
		--math random ratio
		local rand_s = Step or 1
		local rand_i, rand_f = Rand_i, Rand_f
		if type( rand_i ) == "function" then
			rand_i = rand_i( )
		end
		if type( rand_f ) == "function" then
			rand_f = rand_f( )
		end
		if type( rand_s ) == "function" then
			rand_s = rand_s( )
		end
		if rand_i == nil then
			return math.R( )
		end
		if rand_f == nil then
			effector.print_error( rand_i, "number", "Rr", 1 )
			return math.R( rand_i * ratio )
		end
		effector.print_error( rand_i, "number", "Rr", 1 )
		effector.print_error( rand_f, "number", "Rr", 2 )
		effector.print_error( rand_s, "number", "Rr", 3 )
		return R( rand_i * ratio, rand_f * ratio, rand_s )
	end
	Rr = math.Rr
	
	function math.Rd( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rd", 1 )
			Rnd_i = Rnd_i * 10
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rd", 2 )
			Rnd_f = Rnd_f * 10
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rd", 3 )
			Rnd_s = Rnd_s * 10
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) / 10
	end
	Rd = math.Rd
	
	function math.Rc( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rc", 1 )
			Rnd_i = Rnd_i * 100
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rc", 2 )
			Rnd_f = Rnd_f * 100
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rc", 3 )
			Rnd_s = Rnd_s * 100
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) / 100
	end
	Rc = math.Rc

	function math.Rm( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rm", 1 )
			Rnd_i = Rnd_i * 1000
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rm", 2 )
			Rnd_f = Rnd_f * 1000
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rm", 3 )
			Rnd_s = Rnd_s * 1000
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) / 1000
	end
	Rm = math.Rm
	
	function math.Rsr( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rsr", 1 )
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rsr", 2 )
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rsr", 3 )
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * ratio * (-1) ^ R( 2 )
	end
	Rsr = math.Rsr
	Rrs = Rsr
	
	function math.Rdr( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rdr", 1 )
			Rnd_i = Rnd_i * 10
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rdr", 2 )
			Rnd_f = Rnd_f * 10
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rdr", 3 )
			Rnd_s = Rnd_s * 10
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * ratio / 10
	end
	Rdr = math.Rdr

	function math.Rcr( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rcr", 1 )
			Rnd_i = Rnd_i * 100
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rcr", 2 )
			Rnd_f = Rnd_f * 100
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rcr", 3 )
			Rnd_s = Rnd_s * 100
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * ratio / 100
	end
	Rcr = math.Rcr

	function math.Rmr( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rmr", 1 )
			Rnd_i = Rnd_i * 1000
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rmr", 2 )
			Rnd_f = Rnd_f * 1000
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rmr", 3 )
			Rnd_s = Rnd_s * 1000
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * ratio / 1000
	end
	Rmr = math.Rmr
	
	function math.Rds( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rds", 1 )
			Rnd_i = Rnd_i * 10
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rds", 2 )
			Rnd_f = Rnd_f * 10
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rds", 3 )
			Rnd_s = Rnd_s * 10
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * 0.1 * (-1) ^ R( 2 )
	end
	Rds = math.Rds

	function math.Rcs( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rcs", 1 )
			Rnd_i = Rnd_i * 100
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rcs", 2 )
			Rnd_f = Rnd_f * 100
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rcs", 3 )
			Rnd_s = Rnd_s * 100
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * 0.01 * (-1) ^ R( 2 )
	end
	Rcs = math.Rcs

	function math.Rms( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rms", 1 )
			Rnd_i = Rnd_i * 1000
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rms", 2 )
			Rnd_f = Rnd_f * 1000
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rms", 3 )
			Rnd_s = Rnd_s * 1000
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * 0.001 * (-1) ^ R( 2 )
	end
	Rms = math.Rms
	
	function math.Rdrs( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rdrs", 1 )
			Rnd_i = Rnd_i * 10
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rdrs", 2 )
			Rnd_f = Rnd_f * 10
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rdrs", 3 )
			Rnd_s = Rnd_s * 10
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * 0.1 * ratio * (-1) ^ R( 2 )
	end
	Rdrs = math.Rdrs

	function math.Rcrs( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rcrs", 1 )
			Rnd_i = Rnd_i * 100
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rcrs", 2 )
			Rnd_f = Rnd_f * 100
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rcrs", 3 )
			Rnd_s = Rnd_s * 100
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * 0.01 * ratio * (-1) ^ R( 2 )
	end
	Rcrs = math.Rcrs

	function math.Rmrs( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if type( Rnd_i ) == "function" then
			Rnd_i = Rnd_i( )
		end
		if type( Rnd_f ) == "function" then
			Rnd_f = Rnd_f( )
		end
		if type( Rnd_s ) == "function" then
			Rnd_s = Rnd_s( )
		end
		if Rnd_i then
			effector.print_error( Rnd_i, "number", "Rmrs", 1 )
			Rnd_i = Rnd_i * 1000
		end
		if Rnd_f then
			effector.print_error( Rnd_f, "number", "Rmrs", 2 )
			Rnd_f = Rnd_f * 1000
		end
		if Rnd_s then
			effector.print_error( Rnd_s, "number", "Rmrs", 3 )
			Rnd_s = Rnd_s * 1000
		end
		return R( Rnd_i, Rnd_f, Rnd_s ) * 0.001 * ratio * (-1) ^ R( 2 )
	end
	Rmrs = math.Rmrs
	
	function math.Re( Table )
		--retorna el valor de un elemento al azar de la tabla ingresada
		if type( Table ) == "function" then
			Table = Table( )
		end
		local Table = Table or { 1 }
		effector.print_error( Table, "table", "Re", 1 )
		local keys = { }
		for k, v in pairs( Table ) do
			table.insert( keys, k )
		end
		return Table[ keys[ R( #keys ) ] ]
	end --september 19th 2015
	Re = math.Re
	
	function math.Rfake( Rand_i, Rand_f, Counter )
		local rfake_c = Counter or val_i
		local rfake_i, rfake_f = Rand_i, Rand_f
		if type( rfake_i ) == "function" then
			rfake_i = rfake_i( )
		end
		if type( rfake_f ) == "function" then
			rfake_f = rfake_f( )
		end
		if type( rfake_c ) == "function" then
			rfake_c = rfake_c( )
		end
		if Rand_f == nil
			and Rand_i then
			rfake_f = Rand_i
			rfake_i = 1
		end
		effector.print_error( rfake_i, "number", "Rf", 1 )
		effector.print_error( rfake_f, "number", "Rf", 2 )
		effector.print_error( rfake_c, "number", "Rf", 3 )
		local Rf_fk = math.round( val_left - (val_i + 3) ^ 2 + rfake_c * l_i ^ 2 )
		local Rf_in = math.min( math.round( rfake_i ), math.round( rfake_f ) )
		local Rf_fn = math.max( math.round( rfake_i ), math.round( rfake_f ) )
		return Rf_in + Rf_fk % (Rf_fn - Rf_in + 1)
	end
	Rf = math.Rfake
	
	function math.Rfake2( Rand_i, Rand_f, Counter, Counter2, Mode )
		local Lft, Rht, Vli
		if Mode == "line" then
			Lft = l_left
			Rht = l_right
			Vli = l_i
		elseif Mode == "word" then
			Lft = word_left
			Rht = word_right
			Vli = word_i
		elseif Mode == "syl" then
			Lft = syl_left
			Rht = syl_right
			Vli = syl_i
		elseif Mode == "furi" then
			Lft = furi_left
			Rht = furi_right
			Vli = furi_i
		elseif Mode == "roma" then
			Lft = roma_left
			Rht = roma_right
			Vli = roma_i
		elseif Mode == "hira" then
			Lft = hira_left
			Rht = hira_right
			Vli = hira_i
		elseif Mode == "kata" then
			Lft = kata_left
			Rht = kata_right
			Vli = kata_i
		elseif Mode == "char" then
			Lft = char_left
			Rht = char_right
			Vli = char_i
		elseif Mode == "loop" then
			Lft = val_left - 3 * j
			Rht = val_right + j
			Vli = val_i	- j
		elseif Mode == "replay" then
			Lft = val_left - 3 * j + J
			Rht = val_right + j - 4 * J
			Vli = val_i	- j + 7 * J
		elseif Mode == "time" then
			Lft = 10--linefx[ ii ].start_time
			Rht = 20--linefx[ ii ].end_time
			Vli = 30--linefx[ ii ].duration
		else
			Lft = val_left
			Rht = val_right
			Vli = val_i
		end
		local Rf2_loop = 0
		if random_loop then
			Rf2_loop = j
		end
		local rfake2_ii, rfake2_ff = Rand_i, Rand_f
		local rfake2_c1 = Counter or Vli
		local rfake2_c2 = Counter2 or 0
		local Dec = 1
		if type( Rand_i ) == "function" then
			rfake2_ii = Rand_i( )
		end
		if type( Rand_f ) == "function" then
			rfake2_ff = Rand_f( )
		end
		if Rand_i == nil then
			Dec = 1000
			rfake2_ii = 0
			rfake2_ff = Rand_f or 1
		end
		if Rand_f == nil
			and Rand_i then
			rfake2_ff = Rand_i
			rfake2_ii = 1
		end
		effector.print_error( rfake2_ii, "number", "Rf2", 1 )
		effector.print_error( rfake2_ff, "number", "Rf2", 2 )
		effector.print_error( rfake2_c1, "number", "Rf2", 3 )
		effector.print_error( rfake2_c2, "number", "Rf2", 4 )
		local Rf2_fk = math.round( abs( Lft + (Vli + 3 * rfake2_c1 - Rf2_loop) ^ 2 - rfake2_c1 * Rht / 16 + 7 * rfake2_c2 ) )
		local Rf2_ii = math.min( math.round( rfake2_ii ) * Dec, math.round( rfake2_ff ) * Dec )
		local Rf2_ff = math.max( math.round( rfake2_ii ) * Dec, math.round( rfake2_ff ) * Dec )
		return (Rf2_ii + Rf2_fk % (Rf2_ff - Rf2_ii + 1)) / Dec
	end
	Rf2 = math.Rfake2
	
	function math.Rredefine( First, Last, Step, Counter, Counter2 )
		if First then
			if type( First ) == "function" then
				First = First( )
			end
			effector.print_error( First, "number", "math.Rredefine", 1 )
		end
		if Last then
			if type( Last ) == "function" then
				Last = Last( )
			end
			effector.print_error( Last, "number", "math.Rredefine", 2 )
		end
		if Step then
			if type( Step ) == "function" then
				Step = Step( )
			end
			effector.print_error( Step, "number", "math.Rredefine", 3 )
		end
		if Counter then
			if type( Counter ) == "function" then
				Counter = Counter( )
			end
			effector.print_error( Counter, "number", "math.Rredefine", 4 )
		end
		if Counter2 then
			if type( Counter2 ) == "function" then
				Counter2 = Counter2( )
			end
			effector.print_error( Counter2, "number", "math.Rredefine", 5 )
		end
		if random_mode then
			return Rf2( First, Last, Counter, Counter2, random_mode )
		end
		return R( First, Last, Step )
	end
	Rrd = math.Rredefine
	
	function math.format( String, ... )
		--le da valores a un string de formato
		if type( String ) == "function" then
			String = String( )
		end
		local Values = { ... }
		if ...
			and type( ... ) == "table" then
			Values = ...
		end
		if #Values == 0 then
			Values = { 1 }
		end --math.format( "frame_dur" )
		effector.print_error( String, "string", "math.format", 1 )
		effector.print_error( Values, "table", "math.format", 2 )
		local line = linefx[ ii ]
		local max_index = string.count( String, "%%[aAcdeEfgGioqsuxX]^*" ) --modos del string.format
		local str_mathf = format( String, unpack( table.replay( ceil( max_index / #Values ), Values ) ) )
		------------------------------------------------------------------
		--convierte los strings de variables a sus valores reales :D
		local str_mathformat
		str_mathf = str_mathf:gsub( "%.line", ".LINE" ) -->save the var.line.val
		:gsub( "meta%.res_x", "xres" ):gsub( "meta%.res_y", "yres" )
		:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_counter" )
		:gsub( "line%.", "linefx[  ii  ]." )
		:gsub( "(&H%x+&)", "\"" .. "%1" .. "\"" )
		:gsub( "%.LINE", ".line" )
		if pcall( loadstring( format( "return function( meta, line, x, y ) return %s end", str_mathf ) ) ) then
			local math_format_funct = loadstring( format( "return function( meta, line, x, y ) return %s end", str_mathf ) )( )
			if pcall( math_format_funct ) then
				str_mathformat = math_format_funct( meta, line, x, y )
				if str_mathformat then
					return str_mathformat
				end
				str_mathf = str_mathf:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
				:gsub( "l_counter", "line.i" ):gsub( "maxil_counter", "line.n" )
				:gsub( "linefx%[  ii  %]%.", "line." )
				:gsub( "\"(&H%x+&)\"", "%1" )
				return str_mathf
			end --math.format( "%s + %s * line.i + 2", 5, 7 )
		end
		str_mathf = str_mathf:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
		:gsub( "l_counter", "line.i" ):gsub( "maxil_counter", "line.n" )
		:gsub( "linefx%[  ii  %]%.", "line." )
		:gsub( "\"(&H%x+&)\"", "%1" )
		--rewrite: january 17th 2019
		------------------------------------------------------------------
		return str_mathf
	end

	function math.round( number_or_table, decimal )
		--redondea un número o una tabla de números a la
		--cantidad de decimales indicados o al entero más cercano
		local decimal = decimal or 0
		local Num_round = number_or_table
		local multiple, Table_round = 10 ^ decimal, { }
		if type( number_or_table ) == "function" then
			Num_round = number_or_table( )
		end
		if type( decimal ) == "function" then
			decimal = decimal( )
		end
		effector.print_error( Num_round, "true", "math.round", 1 )
		effector.print_error( decimal, "number", "math.round", 2 )
		if type( Num_round ) == "number"
			or type( tonumber( Num_round ) ) == "number" then
			return floor( tonumber( Num_round ) * multiple + 0.5 ) / multiple
		elseif type( Num_round ) == "table" then
			for i, v in pairs( Num_round ) do
				Table_round[ i ] = v
				if type( v ) == "number"
					or type( tonumber( v ) ) == "number" then
					Table_round[ i ] = floor( tonumber( v ) * multiple + 0.5 ) / multiple
				end
			end
			return Table_round
		end
		return Num_round
	end
	
	function math.distance( px1, py1, px2, py2 )
		--mide la distancia entre dos puntos o entre un punto y el origen ( 0, 0 )
		local x1, x2, y1, y2 = 0, 0, 0, 0
		if px1 then
			if type( px1 ) == "function" then
				px1 = px1( )
			end
			effector.print_error( px1, "numberstringtable", "math.distance", 1 )
		end
		if py1 then
			if type( py1 ) == "function" then
				py1 = py1( )
			end
			effector.print_error( py1, "numberstringtable", "math.distance", 2 )
		end
		if px2 then
			if type( px2 ) == "function" then
				px2 = px2( )
			end
			effector.print_error( px2, "numberstringtable", "math.distance", 3 )
		end
		if py2 then
			if type( py2 ) == "function" then
				py2 = py2( )
			end
			effector.print_error( py2, "numberstringtable", "math.distance", 4 )
		end
		if type( px1 ) == "string" then
			px1 = tonumber( px1 )
		end
		if type( px2 ) == "string" then
			px2 = tonumber( px2 )
		end
		if type( py1 ) == "string" then
			py1 = tonumber( py1 )
		end
		if type( py2 ) == "string" then
			py2 = tonumber( py2 )
		end
		if type( px1 ) ~= "table"
			and px2 == nil then				--math.distance( Px, Py )
			x1 = 0
			y1 = 0
			x2 = px1
			y2 = py1
		elseif type( px1 ) ~= "table"
			and type( px2 ) ~= "table" then	--math.distance( Px1, Py1, Px2, Py2 )
			x1 = px1
			y1 = py1
			x2 = px2
			y2 = py2
		elseif type( px1 ) ~= "table"
			and type( px2 ) == "table" then	--math.distance( Px1, Py1, { Px2, Py2 } )
			x1 = px1
			y1 = py1
			x2 = px2[ 1 ]
			y2 = px2[ 2 ]
		elseif type( px1 ) == "table"
			and py1 == nil then				--math.distance( { Px, Py } )
			x1 = 0
			y1 = 0
			x2 = px1[ 1 ]
			y2 = px1[ 2 ]
		elseif type( px1 ) == "table"
			and type( py1 ) == "table" then	--math.distance( { Px1, Py1 }, { Px2, Py2 } )
			x1 = px1[ 1 ]
			y1 = px1[ 2 ]
			x2 = py1[ 1 ]
			y2 = py1[ 2 ]
		elseif type( px1 ) == "table"
			and type( py1 ) ~= "table" then	--math.distance( { Px1, Py1 }, Px2, Py2 )
			x1 = px1[ 1 ]
			y1 = px1[ 2 ]
			x2 = py1
			y2 = px2
		end
		return math.round( ((x2 - x1) ^ 2 + (y2 - y1) ^ 2) ^ 0.5, 3 )
	end
	
	function math.angle( px1, py1, px2, py2 )
		--mide el ángulo entre dos puntos o entre el origen ( 0, 0 ) y un punto
		local angle, x1, x2, y1, y2 = 0, 0, 0, 0, 0
		if px1 then
			if type( px1 ) == "function" then
				px1 = px1( )
			end
			effector.print_error( px1, "numberstringtable", "math.distance", 1 )
		end
		if py1 then
			if type( py1 ) == "function" then
				py1 = py1( )
			end
			effector.print_error( py1, "numberstringtable", "math.distance", 2 )
		end
		if px2 then
			if type( px2 ) == "function" then
				px2 = px2( )
			end
			effector.print_error( px2, "numberstringtable", "math.distance", 3 )
		end
		if py2 then
			if type( py2 ) == "function" then
				py2 = py2( )
			end
			effector.print_error( py2, "numberstringtable", "math.distance", 4 )
		end
		if type( px1 ) == "string" then
			px1 = tonumber( px1 )
		end
		if type( px2 ) == "string" then
			px2 = tonumber( px2 )
		end
		if type( py1 ) == "string" then
			py1 = tonumber( py1 )
		end
		if type( py2 ) == "string" then
			py2 = tonumber( py2 )
		end
		if type( px1 ) ~= "table"
			and px2 == nil then
			x1 = 0
			y1 = 0
			x2 = px1
			y2 = py1
		elseif type( px1 ) ~= "table"
			and type( px2 ) ~= "table" then
			x1 = px1
			y1 = py1
			x2 = px2
			y2 = py2
		elseif type( px1 ) ~= "table"
			and type( px2 ) == "table" then
			x1 = px1
			y1 = py1
			x2 = px2[ 1 ]
			y2 = px2[ 2 ]
		elseif type( px1 ) == "table"
			and py1 == nil then
			x1 = 0
			y1 = 0
			x2 = px1[ 1 ]
			y2 = px1[ 2 ]
		elseif type( px1 ) == "table"
			and type( py1 ) == "table" then
			x1 = px1[ 1 ]
			y1 = px1[ 2 ]
			x2 = py1[ 1 ]
			y2 = py1[ 2 ]
		elseif type( px1 ) == "table"
			and type( py1 ) ~= "table" then
			x1 = px1[ 1 ]
			y1 = px1[ 2 ]
			x2 = py1
			y2 = px2
		end
		local Ang = deg( atan( (y2 - y1) / (x2 - x1) ) )
		if x2 > x1
			and y2 > y1 then
			angle = 360 - Ang
		elseif x2 > x1
			and y2 < y1 then
			angle = -Ang
		elseif x2 < x1
			and y2 < y1 then
			angle = 180 - Ang
		elseif x2 < x1
			and y2 > y1 then
			angle = 180 - Ang
		elseif x2 > x1
			and y2 == y1 then
			angle = 0
		elseif x2 < x1
			and y2 == y1 then
			angle = 180
		elseif x2 == x1
			and y2 < y1 then
			angle = 90
		elseif x2 == x1
			and y2 > y1 then
			angle = 270
		elseif x2 == x1
			and y2 == y1 then
			angle = 0
		end
		return math.round( angle, 3 )
	end
	
	function math.polar( angle, radius, Return )
		--retorna las coordenadas del punto ubicado en el ángulo y radio dado, respecto al origen
		if type( angle ) == "function" then
			angle = angle( )
		end
		if type( radius ) == "function" then
			radius = radius( )
		end
		effector.print_error( angle,  "number", "math.polar", 1 )
		effector.print_error( radius, "number", "math.polar", 2 )
		local Px = math.round(  radius * cos( rad( angle ) ), 3 )
		local Py = math.round( -radius * sin( rad( angle ) ), 3 )
		if Return == "x" then
			return Px
		end
		if Return == "y" then
			return Py
		end
		return Px, Py
	end
	
	function math.intersect( x1, y1, x2, y2, x3, y3, x4, y4 )
		--retorna el punto en donde se intersectan las rectas definidas en 4 puntos
		effector.print_error( x1, "number", "math.intersect", 1 )
		effector.print_error( y1, "number", "math.intersect", 2 )
		effector.print_error( x2, "number", "math.intersect", 3 )
		effector.print_error( y2, "number", "math.intersect", 4 )
		effector.print_error( x3, "number", "math.intersect", 5 )
		effector.print_error( y3, "number", "math.intersect", 6 )
		effector.print_error( x4, "number", "math.intersect", 7 )
		effector.print_error( y4, "number", "math.intersect", 8 )
		local Ec1, Ec2 = { }, { }
		local im1 = (y2 - y1) / (x2 - x1)
		Ec1[ 1 ] = -im1
		Ec1[ 2 ] = 1
		Ec1[ 3 ] = y1 - im1 * x1
		if x1 == x2 then
			im1 = math.huge
			Ec1[ 1 ] = 1
			Ec1[ 2 ] = 0
			Ec1[ 3 ] = x1
		end
		local im2 = (y4 - y3) / (x4 - x3)
		Ec2[ 1 ] = -im2
		Ec2[ 2 ] = 1
		Ec2[ 3 ] = y3 - im2 * x3
		if x3 == x4 then
			im2 = math.huge
			Ec2[ 1 ] = 1
			Ec2[ 2 ] = 0
			Ec2[ 3 ] = x3
		end
		if im1 == im2 then
			return "las rectas son paralelas"
		end
		local DetI = Ec1[ 1 ] * Ec2[ 2 ] - Ec1[ 2 ] * Ec2[ 1 ]
		local DetX = Ec1[ 3 ] * Ec2[ 2 ] - Ec1[ 2 ] * Ec2[ 3 ]
		local DetY = Ec1[ 1 ] * Ec2[ 3 ] - Ec1[ 3 ] * Ec2[ 1 ]
		local ix = math.round( DetX / DetI, 3 )
		local iy = math.round( DetY / DetI, 3 )
		return ix, iy
	end
	
	function math.length_bezier( ... )
		--retorna la longitud de una curva bezier a partir de sus puntos
		local coor, Px, Py, Bx, By = { }, { }, { }, { }, { }
		local Blength, nN, shape_bezier = recall.mLength, 1024, ""
		if j == 1 then
			Blength, coor = 0, { ... }
			if type( ... ) == "table" then
				coor = ...
			elseif type( ... ) == "string" then
				coor = { }
				shape_bezier = shape.ASSDraw3( ... )
				for c in shape_bezier:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( coor, tonumber( c ) )
				end
			end
			if #coor == 4 then
				Blength = math.distance( coor[ 1 ], coor[ 2 ], coor[ 3 ], coor[ 4 ] )
			else
				for i = 1, #coor / 2 do
					Px[ i ] = coor[ 2 * i - 1 ]
					Py[ i ] = coor[ 2 * i - 0 ]
				end
				for i = 1, nN do
					Bx[ i ], By[ i ] = math.confi_bezier( #Px, Px, Py, (i - 1) / (nN - 1) )
				end
				for i = 2, nN do
					Blength = Blength + math.distance( Bx[ i ], By[ i ], Bx[ i - 1 ], By[ i - 1 ] )
				end
			end
			Blength = remember( "mLength", Blength )
		end
		return Blength
	end --math.length_bezier( shape.circle )
	
	function math.angle_bezier( points, t )
		local coor, Px, Py, shape_bezier = { }, { }, { }, ""
		local Angle, Pdx, Pdy = recall.mA_bezier, 0, 0
		local t = t or 1
		if type( points ) == "function" then
			points = points( )
		end
		if type( t ) == "function" then
			t = t( )
		end
		effector.print_error( points, "stringtable", "math.angle_bezier", 1 )
		effector.print_error( t, "number", "math.angle_bezier", 2 )
		if j == 1 then
			if type( points ) == "table" then
				coor = points
			elseif type( points ) == "string" then
				shape_bezier = shape.ASSDraw3( points )
				for c in shape_bezier:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( coor, tonumber( c ) )
				end
			end
			for i = 1, #coor / 2 do
				Px[i] = coor[ 2 * i - 1 ]
				Py[i] = coor[ 2 * i - 0 ]
			end
			if #Px == 2 then
				Angle = remember( "mA_bezier", deg( atan( -(Py[ 2 ] - Py[ 1 ]) / (Px[ 2 ] - Px[ 1 ]) ) ) )
			else
				Pdx = -3 * (Px[ 1 ] - Px[ 2 ]) * (1 - t) ^ 2 - 6 * (Px[ 2 ] - Px[ 3 ]) * t * (1 - t) - 3 * (Px[ 3 ] - Px[ 4 ]) * t ^ 2
				Pdy = -3 * (Py[ 1 ] - Py[ 2 ]) * (1 - t) ^ 2 - 6 * (Py[ 2 ] - Py[ 3 ]) * t * (1 - t) - 3 * (Py[ 3 ] - Py[ 4 ]) * t ^ 2
				Angle = remember( "mA_bezier", deg( atan( -Pdy / Pdx ) ) )
			end
		end
		return math.round( Angle, 3 )
	end
	
	function math.point( c_num, x_range, y_range, s_point_x, s_point_y, e_point_x, e_point_y )
		local Points = remember( "mPoint", { } )
		if j == 1 then
			if type( c_num ) == "function" then
				c_num = c_num( )
			end
			if type( x_range ) == "function" then
				x_range = x_range( )
			end
			if type( y_range ) == "function" then
				y_range = y_range( )
			end
			if type( s_point_x ) == "function" then
				s_point_x = s_point_x( )
			end
			if type( s_point_y ) == "function" then
				s_point_y = s_point_y( )
			end
			if type( e_point_x ) == "function" then
				e_point_x = e_point_x( )
			end
			if type( e_point_y ) == "function" then
				e_point_y = e_point_y( )
			end
			local Cn = c_num or 4
			local Rx = x_range or 2.5 * l.fontsize
			local Ry = y_range or 2.5 * l.fontsize
			local Sx = s_point_x or Rs( Rx )
			local Sy = s_point_y or Rs( Ry )
			local Ex = e_point_x or 0
			local Ey = e_point_y or 0
			effector.print_error( Cn, "number", "math.point", 1 )
			effector.print_error( Rx, "number", "math.point", 2 )
			effector.print_error( Ry, "number", "math.point", 3 )
			effector.print_error( Sx, "number", "math.point", 4 )
			effector.print_error( Sy, "number", "math.point", 5 )
			effector.print_error( Ex, "number", "math.point", 6 )
			effector.print_error( Ey, "number", "math.point", 7 )
			for i = 3, 2 * Cn - 2, 2 do
				Points[ i + 0 ] = Rs( Rx )
				Points[ i + 1 ] = Rs( Ry )
			end
			Points[ 1 ] = Sx
			Points[ 2 ] = Sy
			Points[ 2 * Cn - 1 ] = Ex
			Points[ 2 * Cn - 0 ] = Ey
		else
			Points = recall.mPoint
		end
		return Points
	end

	function math.factk( n )
		if type( n ) == "function" then
			n = n( )
		end
		effector.print_error( n, "number", "math.factk", 1 )
		local k_factk = 1
		if n > 1 then
			for i = 2, n do
				k_factk = k_factk * i
			end
		end
		return k_factk
	end
	
	function math.bernstein( i, n, t )
		if type( i ) == "function" then
			i = i( )
		end
		if type( n ) == "function" then
			n = n( )
		end
		if type( t ) == "function" then
			t = t( )
		end
		effector.print_error( i, "number", "math.bernstein", 1 )
		effector.print_error( n, "number", "math.bernstein", 2 )
		effector.print_error( t, "number", "math.bernstein", 3 )
		return (math.factk( n ) / (math.factk( i ) * math.factk( n - i ))) * (t ^ i) * ((1 - t) ^ (n - i))
	end
	
	function math.confi_bezier( n, x, y, t, Return )
		if type( n ) == "function" then
			n = n( )
		end
		if type( x ) == "function" then
			x = x( )
		end
		if type( y ) == "function" then
			y = y( )
		end
		if type( t ) == "function" then
			t = t( )
		end
		local Px, Py = x, y
		local pos_x, pos_y = 0, 0
		if y == nil then
			Px, Py = { }, { }
			if type( x ) == "string" then
				local coor = { }
				for c in x:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( coor, tonumber( c ) )
				end
				for i = 1, #coor / 2 do
					Px[ i ] = coor[ 2 * i - 1 ]
					Py[ i ] = coor[ 2 * i - 0 ]
				end
			elseif type( x ) == "table" then
				for i = 1, #x / 2 do
					Px[ i ] = x[ 2 * i - 1 ]
					Py[ i ] = x[ 2 * i - 0 ]
				end
			end
		end
		local n = n or #Px
		effector.print_error( n, "number", "math.confi_bezier", 1 )
		effector.print_error( x, "stringtable", "math.confi_bezier", 2 )
		effector.print_error( Py, "table", "math.confi_bezier", 3 )
		effector.print_error( t, "number", "math.confi_bezier", 4 )
		for i = 1, n do
			pos_x = pos_x + Px[ i ] * math.bernstein( i - 1, n - 1, t )
			pos_y = pos_y + Py[ i ] * math.bernstein( i - 1, n - 1, t )
		end
		if Return == "x" then
			return pos_x
		end
		if Return == "y" then
			return pos_y
		end
		return pos_x, pos_y
	end
	
	function math.bezier( Return, ... )
		if type( ... ) ~= "string" then
			local points_Bezier = { ... }
			if type( ... ) == "table" then
				points_Bezier = ...
			end
			local MB_points_Bx, MB_points_By = { }, { }
			for i = 1, #points_Bezier / 2 do
				MB_points_Bx[ i ] = points_Bezier[ 2 * i - 1 ]
				MB_points_By[ i ] = points_Bezier[ 2 * i - 0 ]
			end
			local MBpos_x, MBpos_y = math.confi_bezier( nil, MB_points_Bx, MB_points_By, module )
			if Return == "x" then
				return MBpos_x
			end
			if Return == "y" then
				return MBpos_y
			end
			return MBpos_x, MBpos_y
		else
			if j == 1 then
				local Shape9 = shape.ASSDraw3( ... )
				local max_space = (2 + offset_maxspace) / ((fx.scale_x * fx.scale_y) ^ 0.5)
				if max_space <= 0 then
					max_space = 1
				end
				local MB_t, MB_i, MB_points_Bezier = 0, 1, { }
				MBpos_x, MBpos_y, MB_m = { }, { }, 0
				for sh_c in Shape9:gmatch( "%S+" ) do
					table.insert( MB_points_Bezier, sh_c )
				end
				local MB_lpos_x, MB_lpos_y = MB_points_Bezier[ 2 ], MB_points_Bezier[ 3 ]
				while MB_i <= #MB_points_Bezier do
					MB_points_Bx, MB_points_By = { }, { }
					if MB_points_Bezier[ MB_i ] == "m" then
						s_point_x = MB_points_Bezier[ MB_i + 1 ]
						s_point_y = MB_points_Bezier[ MB_i + 2 ]
						MB_i = MB_i + 3
						MB_ldist = 0
					elseif MB_points_Bezier[ MB_i ] == "b" then
						MB_points_Bx[ 1 ] = s_point_x
						MB_points_By[ 1 ] = s_point_y
						for k = 2, 4 do
							MB_points_Bx[ k ] = MB_points_Bezier[ MB_i + 2 * (k - 2) + 1 ]
							MB_points_By[ k ] = MB_points_Bezier[ MB_i + 2 * (k - 2) + 2 ]
						end
						s_point_x = MB_points_Bezier[ MB_i + 5 ]
						s_point_y = MB_points_Bezier[ MB_i + 6 ]
						MB_i = MB_i + 7
					elseif MB_points_Bezier[ MB_i ] == "l" then
						MB_points_Bx[ 1 ] = s_point_x
						MB_points_By[ 1 ] = s_point_y
						MB_points_Bx[ 2 ] = MB_points_Bezier[ MB_i + 1 ]
						MB_points_By[ 2 ] = MB_points_Bezier[ MB_i + 2 ]
						s_point_x = MB_points_Bezier[ MB_i + 1 ]
						s_point_y = MB_points_Bezier[ MB_i + 2 ]
						MB_i = MB_i + 3
					else
						MB_i = #MB_points_Bezier + 1
					end
					MB_ct = 0
					MB_n = #MB_points_Bx
					if MB_n ~= 0 then
						while MB_ct >= 0
							and MB_ct < 1 do
							MB_m = MB_m + 1
							if MB_ct == 0 then
								if MB_points_Bx[ 1 ] == MB_lpos_x
									and MB_points_By[ 1 ] == MB_lpos_y then
									MBpos_x[ MB_m ], MBpos_y[ MB_m ] = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, 0.12 )
									MB_dist = math.distance( MBpos_x[ MB_m ], MBpos_y[ MB_m ], MB_points_Bx[ 1 ], MB_points_By[ 1 ] )
									if MB_dist == 0 then
										MB_ct = 1
									else
										MB_ct = (max_space - MB_ldist) / MB_dist * 0.1
										MBpos_x[ MB_m ], MBpos_y[ MB_m ] = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, MB_ct )
										MB_nx, MB_ny = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, MB_ct + 0.1 )
										MB_dist = math.distance( MB_nx, MB_ny, MBpos_x[ MB_m ], MBpos_y[ MB_m ] )
										MB_ct = MB_ct + max_space / MB_dist * 0.1
									end
								else
									MBpos_x[ MB_m ], MBpos_y[ MB_m ] = MB_points_Bx[ 1 ], MB_points_By[ 1 ]
									MB_nx, MB_ny = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, MB_ct + 0.1 )
									MB_dist = math.distance( MB_nx, MB_ny, MBpos_x[ MB_m ], MBpos_y[ MB_m ] )
									if MB_dist == 0 then
										MB_ct = 1
									else
										MB_ct = MB_ct + max_space / MB_dist * 0.1
									end
								end
							else
								MBpos_x[ MB_m ], MBpos_y[ MB_m ] = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, MB_ct )
								MB_nx, MB_ny = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, MB_ct + 0.1 )
								MB_dist = math.distance( MB_nx, MB_ny, MBpos_x[ MB_m ], MBpos_y[ MB_m ] )
								if MB_dist == 0 then
									MB_ct = 1
								else
									MB_ct = MB_ct + max_space / MB_dist * 0.1
								end
							end
						end
						MB_lpos_x, MB_lpos_y = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, 1 )
						MB_ldist = math.distance( MB_lpos_x, MB_lpos_y, MBpos_x[ MB_m ], MBpos_y[ MB_m ] )
						if MB_ldist > max_space then
							MB_ldist = max_space
						end
					end
				end
			end
			maxloop( MB_m )
			MB_t = j / MB_m
			if Return == "x" then
				return MBpos_x[ j ]
			end
			if Return == "y" then
				return MBpos_y[ j ]
			end
			return MBpos_x[ j ], MBpos_y[ j ]
		end
	end

	function math.bezier2( Shape, mode, Align_Shape, OffsetB, length )
		local pyointa = { }
		function pyointa.tangential2P( Pnts, t_ )
			local tanVec, XY, dpos = { }, { }, { }
			XY = pyointa.difference( Pnts )
			dpos = pyointa.tDifferential( XY, t_ ) 
			for i = 1, 2 do
				tanVec[ i ] = dpos[ 2 ][ i ] / math.sqrt( dpos[ 2 ][ 1 ] ^ 2 + dpos[ 2 ][ 2 ] ^ 2 )
			end
			return tanVec
		end

		function pyointa.normal2P( Pnts, t_ )
			local normalVec = { }
			normalVec = pyointa.tangential2P( Pnts, t_ )
			normalVec[ 1 ], normalVec[ 2 ] = normalVec[ 2 ], -normalVec[ 1 ]
			return normalVec
		end

		function pyointa.difference( Pnts )
			local DVec, XY = { }, { }
			-- 1st step difference
			DVec[ 1 ] = { [ 1 ] = Pnts[ 2 ][ 1 ] - Pnts[ 1 ][ 1 ], [ 2 ] = Pnts[ 2 ][ 2 ] - Pnts[ 1 ][ 2 ] }
			DVec[ 2 ] = { [ 1 ] = Pnts[ 3 ][ 1 ] - Pnts[ 2 ][ 1 ], [ 2 ] = Pnts[ 3 ][ 2 ] - Pnts[ 2 ][ 2 ] }
			DVec[ 3 ] = { [ 1 ] = Pnts[ 4 ][ 1 ] - Pnts[ 3 ][ 1 ], [ 2 ] = Pnts[ 4 ][ 2 ] - Pnts[ 3 ][ 2 ] }
			-- 2nd step difference
			DVec[ 4 ] = { [ 1 ] = DVec[ 2 ][ 1 ] - DVec[ 1 ][ 1 ], [ 2 ] = DVec[ 2 ][ 2 ] - DVec[ 1 ][ 2 ] }
			DVec[ 5 ] = { [ 1 ] = DVec[ 3 ][ 1 ] - DVec[ 2 ][ 1 ], [ 2 ] = DVec[ 3 ][ 2 ] - DVec[ 2 ][ 2 ] }
			-- 3rd step difference
			DVec[ 6 ] = { [ 1 ] = DVec[ 5 ][ 1 ] - DVec[ 4 ][ 1 ], [ 2 ] = DVec[ 5 ][ 2 ] - DVec[ 4 ][ 2 ] }
			XY[ 1 ] = { [ 1 ] = Pnts[ 1 ][ 1 ], [ 2 ] = Pnts[ 1 ][ 2 ] }
			XY[ 2 ] = { [ 1 ] = DVec[ 1 ][ 1 ], [ 2 ] = DVec[ 1 ][ 2 ] }
			XY[ 3 ] = { [ 1 ] = DVec[ 4 ][ 1 ], [ 2 ] = DVec[ 4 ][ 2 ] }
			XY[ 4 ] = { [ 1 ] = DVec[ 6 ][ 1 ], [ 2 ] = DVec[ 6 ][ 2 ] }
			return XY
		end

		function pyointa.tDifferential( XY, ta ) 
			local dPos = { }
			dPos[ 1 ] = {
				[ 1 ] = XY[ 4 ][ 1 ] * ta ^ 3 + 3 * XY[ 3 ][ 1 ] * ta ^ 2 + 3 * XY[ 2 ][ 1 ] * ta + XY[ 1 ][ 1 ],
				[ 2 ] = XY[ 4 ][ 2 ] * ta ^ 3 + 3 * XY[ 3 ][ 2 ] * ta ^ 2 + 3 * XY[ 2 ][ 2 ] * ta + XY[ 1 ][ 2 ]
			}
			dPos[ 2 ] = {
				[ 1 ] = 3 * (XY[ 4 ][ 1 ] * ta ^ 2 + 2 * XY[ 3 ][ 1 ] * ta + XY[ 2 ][ 1 ]),
				[ 2 ] = 3 * (XY[ 4 ][ 2 ] * ta ^ 2 + 2 * XY[ 3 ][ 2 ] * ta + XY[ 2 ][ 2 ])
			}
			dPos[ 3 ] = {
				[ 1 ] = 6 * (XY[ 4 ][ 1 ] * ta + XY[ 3 ][ 1 ]),
				[ 2 ] = 6 * (XY[ 4 ][ 2 ] * ta + XY[ 3 ][ 2 ])
			}
			return dPos
		end

		function pyointa.getBezierLength( p, ta , tb, nN ) 
			local XY, dpos, t_ = { }, { }, { }
			for i = 1, 2 * nN + 1 do
				t_[ i ] = ta + (i - 1) * (tb - ta) / (2 * nN)
			end
			XY = pyointa.difference( p )				
			dpos = pyointa.tDifferential( XY, t_[ 1 ] )	
			local Ft1 = (dpos[ 2 ][ 1 ] ^ 2 + dpos[ 2 ][ 2 ] ^ 2) ^ 0.5
			dpos = pyointa.tDifferential( XY, t_[ 2 * nN + 1 ] )
			local Ft2 = (dpos[ 2 ][ 1 ] ^ 2 + dpos[ 2 ][ 2 ] ^ 2) ^ 0.5
			local SFt1 = 0
			for i = 1, nN do
				dpos = pyointa.tDifferential( XY, t_[ 2 * i ] )
				SFt1 = SFt1 + (dpos[ 2 ][ 1 ] ^ 2 + dpos[ 2 ][ 2 ] ^ 2) ^ 0.5
			end
			local SFt2 = 0
			for i = 1, nN - 1 do
				dpos = pyointa.tDifferential( XY, t_[ 2 * i + 1 ] )
				SFt2 = SFt2 + (dpos[ 2 ][ 1 ] ^ 2 + dpos[ 2 ][ 2 ] ^ 2) ^ 0.5
			end
			local SimpLength = ((tb - ta) / (2 * nN) / 3) * ((Ft1 + Ft2) + (4 * SFt1) + (2 * SFt2))
			return SimpLength
		end

		function pyointa.length2t( Pnts, Ltarget, nN ) 
			local ll = { [ 1 ] = 0 }
			local ni, tb, t_ = 1.0 / nN, 0, 0
			for i = 2, nN + 1 do
				tb = tb + ni
				ll[ i ] = pyointa.getBezierLength( Pnts, 0, tb, nN * 2 )
			end
			if Ltarget > ll[ nN + 1 ] then
				t_ = false
				return t_
			end
			for i = 1, nN do
				if ((Ltarget >= ll[ i ])
					and (Ltarget <= ll[ i + 1 ])) then
					t_ = (i - 1) / nN + (Ltarget - ll[ i ]) / (ll[ i + 1 ] - ll[ i ]) * (1 / nN)
					break
				end
			end
			return t_
		end

		function pyointa.length2PtNo( Pnts, Ltarget, nN )
			local bl, cpoint = { }, { }
			local leng
			for h = 1, #Pnts do
				bl = { }
				bl[ 1 ] = 0
				for i = 2, #Pnts[ h ] + 1 do
					bl[ i ] = bl[ i - 1 ] + pyointa.getBezierLength( Pnts[ h ][ i - 1 ], 0, 1.0, nN )
				end
				if Ltarget > bl[ #bl ] then
					Ltarget = Ltarget - bl[ #bl ]
				else
					for k = 1, #Pnts[ h ] do
						if ((Ltarget >= bl[ k ])
							and (Ltarget <= bl[ k + 1 ])) then
							cpoint = Pnts[ h ][ k ]
							leng = Ltarget - bl[ k ]
							break
						end
					end
				end
				if leng then
					break
				end
			end
			if leng then
				return cpoint, leng
			end
			return false
		end

		function pyointa.getBezierPos( Pnts, t_ ) 
			local XY, pos_Bzr = { }, { }
			local t_ = t_ or 1
			XY = pyointa.difference( Pnts )
			for i = 1, 2 do
				pos_Bzr[ i ] = XY[ 4 ][ i ] * t_ ^ 3 + 3 * XY[ 3 ][ i ] * t_ ^ 2 + 3 * XY[ 2 ][ i ] * t_ + XY[ 1 ][ i ]
			end
			return pos_Bzr
		end

		function pyointa.shape2coord( Shape ) 
			local coord, xy, k = { }, { }, 0
			for c in Shape:gmatch( "%S+" ) do
				table.insert( xy, c )
			end
			repeat
				k = k + 1
			until xy[ k ] == "m" or k > #xy
			if k > 1 then
				aegisub.debug.out( "invalid drawing command" )
			end
			local d_comm = "m"
			local i = 1
			k = k + 3
			coord[ i ] = { }
			while k < #xy do 
				if xy[ k ] == "m" then 
					k = k + 3
					i = i + 1
					coord[ i ] = { }
					d_comm = "m"
				elseif xy[ k ] == "b" then
					cp1x, cp1y = xy[ k - 2 ], xy[ k - 1 ] 
					cp2x, cp2y = xy[ k + 1 ], xy[ k + 2 ]
					cp3x, cp3y = xy[ k + 3 ], xy[ k + 4 ]
					cp4x, cp4y = xy[ k + 5 ], xy[ k + 6 ]
					k = k + 7
					d_comm = "b"
					table.insert( coord[ i ], { { cp1x, cp1y }, { cp2x, cp2y }, { cp3x, cp3y }, { cp4x, cp4y } } )
				elseif xy[ k ] == "l" then 		
					cp1x, cp1y = xy[ k - 2 ], xy[ k - 1 ]
					cp2x = xy[ k - 2 ] + ((xy[ k + 1 ] - xy[ k - 2 ]) * (1 / 3))
					cp2y = xy[ k - 1 ] + ((xy[ k + 2 ] - xy[ k - 1 ]) * (1 / 3))
					cp3x = xy[ k - 2 ] + ((xy[ k + 1 ] - xy[ k - 2 ]) * (2 / 3))
					cp3y = xy[ k - 1 ] + ((xy[ k + 2 ] - xy[ k - 1 ]) * (2 / 3))
					cp4x, cp4y = xy[ k + 1 ], xy[ k + 2 ]
					k = k + 3
					d_comm = "l"
					table.insert( coord[ i ], { { cp1x, cp1y }, { cp2x, cp2y }, { cp3x, cp3y }, { cp4x, cp4y } } )
				elseif string.match( xy[ k ], "%d+" ) ~= nil then
					if d_comm == "b" then        
						cp1x, cp1y = xy[ k - 2 ], xy[ k - 1 ] 
						cp2x, cp2y = xy[ k + 0 ], xy[ k + 1 ]
						cp3x, cp3y = xy[ k + 2 ], xy[ k + 3 ]
						cp4x, cp4y = xy[ k + 4 ], xy[ k + 5 ]
						k = k + 6
						table.insert( coord[ i ], { { cp1x, cp1y }, { cp2x, cp2y }, { cp3x, cp3y }, { cp4x, cp4y } } )
					elseif d_comm == "l" then       
						cp1x, cp1y = xy[ k - 2 ], xy[ k - 1 ]
						cp2x = xy[ k - 2 ] + ((xy[ k + 0 ] - xy[ k - 2 ]) * (1 / 3))
						cp2y = xy[ k - 1 ] + ((xy[ k + 1 ] - xy[ k - 1 ]) * (1 / 3))
						cp3x = xy[ k - 2 ] + ((xy[ k + 0 ] - xy[ k - 2 ]) * (2 / 3))
						cp3y = xy[ k - 1 ] + ((xy[ k + 1 ] - xy[ k - 1 ]) * (2 / 3))
						cp4x, cp4y = xy[ k ], xy[ k + 1 ]
						k = k + 2     
						table.insert( coord[ i ], { { cp1x, cp1y }, { cp2x, cp2y }, { cp3x, cp3y }, { cp4x, cp4y } } )
					end
				else
					aegisub.debug.out( "unkown drawing command" )
				end
			end
			return coord
		end
		
		---------------------------------
		if type( length ) == "table" then
			local bezier_pos, bezier_vec, bezier_points, bezier_PtNo = { }, { }, { }, { }
			local Bn, bezier_length, bezier_offset = 8, 0, 0
			local return_length = length[ 1 ]
			bezier_points = pyointa.shape2coord( shape.ASSDraw3( Shape ) )
			for i = 1, #bezier_points do
				for k = 1, #bezier_points[ i ] do
					bezier_length = bezier_length + pyointa.getBezierLength( bezier_points[ i ][ k ], 0 , 1.0, Bn )
				end
			end
			if return_length == nil then
				return_length = bezier_length
			else
				if return_length <= 0 then
					return_length = 1
				elseif return_length > bezier_length then
					return_length = bezier_length
				end
			end
			local math_shape_tbl, max_n = { }
			if length[ 2 ] then
				max_n = length[ 2 ]
			end
			local B_actor_offset = 0
			if l_actor:match( "%-?%d+[%.%d]*" ) then
				B_actor_offset = tonumber( l_actor:match( "%-?%d+[%.%d]*" ) )
			end
			if OffsetB then
				B_actor_offset = OffsetB
			end
			if mode == nil
				or mode == 1 then -- modo por default (centro de la shape)
				bezier_offset = (bezier_length - return_length) / 2 + B_actor_offset
			elseif mode == 2 then -- desde la izquierda de la shape
				bezier_offset = B_actor_offset
			elseif mode == 3 then -- desde la derecha de la shape
				bezier_offset = bezier_length - return_length - B_actor_offset
			end
			-------------
			if max_n then
				local bezier_target_length, bezier_angle = 0, 0
				local bezier_t, bezier_tags
				local shp_points = shape.point( Shape )
				if table.compare( shp_points[ 1 ], shp_points[ #shp_points ] )
					and return_length == bezier_length then
					return_length = math.round( bezier_length * ( 1 - 1 / max_n ), 2 )
				end --pregunta si el primer y último punto de la shape son iguales
				for i = 1, max_n do
					if mode == 4 then -- justifica en toda la longitud de la shape
						bezier_offset = (bezier_length - return_length) * (i - 1) / (max_n - 1)
					end --math.shape( shape.circle, nil, nil, 20 )
					bezier_PtNo, bezier_target_length = pyointa.length2PtNo( bezier_points, bezier_offset + (return_length - 0.0001) * (i - 1) / (max_n - 1), Bn )
					bezier_t = pyointa.length2t( bezier_PtNo, bezier_target_length, Bn )
					bezier_pos = pyointa.getBezierPos( bezier_PtNo, bezier_t )
					bezier_vec = pyointa.normal2P( bezier_PtNo, bezier_t )
					bezier_angle = -math.deg( math.atan2( bezier_vec[ 2 ], bezier_vec[ 1 ] ) ) - 90
					bezier_angle = math.round( tag.only( bezier_angle < -180, bezier_angle + 360, bezier_angle ), 3 )
					------------------------------------------------------------------------
					math_shape_tbl[ i ] = { bezier_pos[ 1 ], bezier_pos[ 2 ], bezier_angle }
					------------------------------------------------------------------------
				end --math.bezier2( shape.circle, nil, nil, 0, { nil, 20 } )
				return math_shape_tbl
			end --add: december 08th 2018
			-------------
			local shp_points = recall.shp_pnt
			if j == 1 then
				shp_points = remember( "shp_pnt", shape.point( Shape ) )
			end
			if table.compare( shp_points[ 1 ], shp_points[ #shp_points ] )
				and return_length == bezier_length then
				return_length = math.round( bezier_length * ( 1 - 1 / maxj ), 2 )
			end --pregunta si el primer y último punto de la shape son iguales
			-------------
			if mode == 4 then -- justifica en toda la longitud de la shape
				bezier_offset = (bezier_length - return_length) * module
			end
			local bezier_target_length, bezier_angle = 0, 0
			bezier_PtNo, bezier_target_length = pyointa.length2PtNo( bezier_points, bezier_offset + (return_length - 0.0001) * module, Bn )
			local bezier_t = pyointa.length2t( bezier_PtNo, bezier_target_length, Bn ) or 1
			bezier_pos = pyointa.getBezierPos( bezier_PtNo, bezier_t )
			bezier_vec = pyointa.normal2P( bezier_PtNo, bezier_t )
			bezier_angle = -math.deg( math.atan2( bezier_vec[ 2 ], bezier_vec[ 1 ] ) ) - 90
			bezier_angle = math.round( tag.only( bezier_angle < -180, bezier_angle + 360, bezier_angle ), 3 )
			local bezier_tags = effector.new_pos( bezier_pos[ 1 ], bezier_pos[ 2 ] )
			return format( "%s\\fr%s%s", bezier_tags, bezier_angle, extra_tags or "" )
			--math.bezier2( shape.circle, 2, nil, 0, { 120 } )
		end --add: november 27th 2018
		---------------------------------
		
		if Shape == nil then
			Shape = shape.displace( format( "m 0 0 l %d 0", l_width ), l_left, l_middle )
			if linefx[ ii ].text:match( "\\i?clip%b()" ) then
				Shape = shape.ASSDraw3( linefx[ ii ].text:match( "\\i?clip%b()" ) )
			end
		end
		if Align_Shape then
			Shape = shape.incenter( Shape )
			local MB2_x = l_center + 0.5 * l_width * ((math.round( Align_Shape ) - 1) % 3 - 1)
			local MB2_y = l_middle + 0.5 * l_height * (ceil( (10 - ((math.round( Align_Shape ) - 1) % 9 + 1)) / 3 ) - 2)
			Shape = shape.displace( Shape, MB2_x, MB2_y )
		end
		
		local pos_Bezier, vec_Bezier, cont_point, PtNo = { }, { }, { }, { }
		local nN, Blength, lineoffset = 8, 0, 0
		cont_point = pyointa.shape2coord( shape.ASSDraw3( Shape ) )
		for i = 1, #cont_point do
			for k = 1, #cont_point[ i ] do
				Blength = Blength + pyointa.getBezierLength( cont_point[ i ][ k ], 0 , 1.0, nN )
			end
		end
		if length then
			return Blength
		end
		local actor_offset = 0
		if l_actor:match( "%-?%d+[%.%d]*" ) then
			actor_offset = tonumber( l_actor:match( "%-?%d+[%.%d]*" ) )
		end
		if OffsetB then
			actor_offset = OffsetB
		end
		if mode == nil
			or mode == 1 then -- modo por default (centro de la shape)
			lineoffset = (Blength - l_width) / 2 + actor_offset
		elseif mode == 2 then -- alinea el texto desde la izquierda
			lineoffset = actor_offset
		elseif mode == 3 then -- alinea el texto desde la derecha
			lineoffset = Blength - l_width - actor_offset
		elseif mode == 4 then -- justifica el texto en toda la longitud de la shape, equidistantemente
			lineoffset = (Blength - l_width) * (val_i - 1) / (val_n - 1)
		end
		targetLength, rot_Bezier = 0, 0
		PtNo, targetLength = pyointa.length2PtNo( cont_point, lineoffset + val_center - l_left, nN )
		if mode == 5 then -- para trazar una curva por medio de shapes
			maxloop( (0.68 + offset_maxspace) * Blength )
			PtNo, targetLength = pyointa.length2PtNo( cont_point, Blength * module , nN )
		end
		if PtNo ~= false then
			tb = pyointa.length2t( PtNo, targetLength, nN )
			if tb ~= false then
				pos_Bezier = pyointa.getBezierPos( PtNo, tb )
				vec_Bezier = pyointa.normal2P( PtNo, tb )
				rot_Bezier = -math.deg( math.atan2( vec_Bezier[ 2 ], vec_Bezier[ 1 ] ) ) - 90
			end
		else
			pos_Bezier[ 1 ] = val_center
			pos_Bezier[ 2 ] = val_middle
			rot_Bezier = 0
		end
		bezier_angle = math.round( tag.only( rot_Bezier < -180, rot_Bezier + 360, rot_Bezier ), 3 )
		local PosBzr = effector.new_pos( pos_Bezier[ 1 ], pos_Bezier[ 2 ] )
		return format( "%s\\fr%s%s", PosBzr, bezier_angle, extra_tags or "" )
	end
	
	function math.movebezier( Shapes, t1, t2, mode )
		local MmBSh = Shapes
		local t2 = t2 or fx.movet_f
		local t1 = t1 or fx.movet_i
		local dur = t2 - t1
		if type( Shapes ) == "string" then
			MmBSh = { Shapes }
		end
		local MmBTb, MmBtm, MmBps, MmBfr, MmBco, MmBfx = { }, { }, { }, { }, { }, ""
		for i = 1, #MmBSh do
			MmBTb[ i ] = math.bezier2( MmBSh[ i ], mode )
		end
		MmBtg = table.op( MmBTb, "concat" )
		if #MmBSh > 1 then
			for i = 1, #MmBSh do
				MmBtm[ i ] = t1 + dur * (i - 1) / (#MmBSh - 1)
			end
		end
		for c in MmBtg:gmatch( "%b()" ) do
			table.insert( MmBps, c )
		end
		for c in MmBtg:gmatch( "\\fr%-?%d+[%.%d]*" ) do
			table.insert( MmBfr, c )
		end
		MmBrz = MmBfr[ 1 ]
		if #MmBSh > 1 then
			for i = 2, #MmBSh do
				MmBrz = MmBrz .. format( "\\t(%s,%s,%s)", MmBtm[ i - 1 ], MmBtm[ i ], MmBfr[ i ] )
			end
		end
		for i = 1, #MmBps do
			MmBco[ 2 * i - 1 ], MmBco[ 2 * i ] = MmBps[ i ]:match( "(%-?%d+[%.%d]*),(%-?%d+[%.%d]*)" )
		end
		if #MmBSh == 1 then
			MmBfx = format( "\\pos(%s,%s)%s", MmBco[ 1 ], MmBco[ 2 ], MmBrz )
		elseif #MmBSh == 2 then
			MmBfx = format( "\\move(%s,%s,%s,%s,%s,%s)%s", MmBco[ 1 ], MmBco[ 2 ], MmBco[ 3 ], MmBco[ 4 ], t1, t2, MmBrz )
		elseif #MmBSh == 3 then
			MmBfx = format( "\\moves3(%s,%s,%s,%s,%s,%s,%s,%s)%s",
				MmBco[ 1 ], MmBco[ 2 ], MmBco[ 3 ], MmBco[ 4 ], MmBco[ 5 ], MmBco[ 6 ], t1, t2, MmBrz
			)
		elseif #MmBSh == 4 then
			MmBfx = format( "\\moves4(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)%s",
				MmBco[ 1 ], MmBco[ 2 ], MmBco[ 3 ], MmBco[ 4 ], MmBco[ 5 ], MmBco[ 6 ], MmBco[ 7 ], MmBco[ 8 ], t1, t2, MmBrz
			)
		end
		return MmBfx
	end
	
	function math.bezier2move( Shape, Mode, Accel, Offset_time )
		local Mode = Mode or 1
		local Accel = Accel or 1
		local timeO = Offset_time or 0
		local bzr_length, bzr_offset = recall.lgth, recall.offt
		if j == 1 then
			bzr_length = remember( "lgth", math.bezier2( Shape, 1, nil, 0, true ) )
			bzr_offset = remember( "offt", bzr_length - linefx[ ii ].width )
			if bzr_offset <= 0 then
				return ""
			end
			maxloop( ceil( fx.dur / (frame_dur + timeO) ) )
		end
		retime( "fxpretime", (j - 1) * (frame_dur + timeO), j * (frame_dur + timeO) )
		if Mode == 1 then
			return math.bezier2( Shape, 2, nil, bzr_offset * module ^ Accel )
		end
		return math.bezier2( Shape, 3, nil, bzr_offset * module ^ Accel )
	end --math.bezier2move( nil, 1 )
	
	function math.circle( Shape )
		--retorna las coordenadas del centro y el radio de un círculo a partir de tres puntos en un clip
		local coor, center = { }, { }
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "string", "math.circle", 1 )
		for c in Shape:gmatch( "%-?%d+[%.%d]*" ) do
			table.insert( coor, tonumber( c ) )
		end
		local P1 = { x = coor[ 1 ], y = coor[ 2 ], z = -(coor[ 1 ] ^ 2 + coor[ 2 ] ^ 2) }
		local P2 = { x = coor[ 3 ], y = coor[ 4 ], z = -(coor[ 3 ] ^ 2 + coor[ 4 ] ^ 2) }
		local P3 = { x = coor[ 5 ], y = coor[ 6 ], z = -(coor[ 5 ] ^ 2 + coor[ 6 ] ^ 2) }
		local Det_i = (P1.x * P2.y + P2.x * P3.y + P3.x * P1.y) - (P1.y * P2.x + P2.y * P3.x + P3.y * P1.x)
		local Det_D = (P1.z * P2.y + P2.z * P3.y + P3.z * P1.y) - (P1.y * P2.z + P2.y * P3.z + P3.y * P1.z)
		local Det_E = (P1.x * P2.z + P2.x * P3.z + P3.x * P1.z) - (P1.z * P2.x + P2.z * P3.x + P3.z * P1.x)
		local Det_F = (P1.x * P2.y * P3.z + P2.x * P3.y * P1.z + P3.x * P1.y * P2.z) - (P1.z * P2.y * P3.x + P2.z * P3.y * P1.x + P3.z * P1.y * P2.x)
		local Cd = Det_D / Det_i
		local Ce = Det_E / Det_i
		local Cf = Det_F / Det_i
		center.x = math.round( -Cd / 2, 3 )
		center.y = math.round( -Ce / 2, 3 )
		local radius = math.round( ((Cd / 2) ^ 2 + (Ce / 2) ^ 2 - Cf) ^ 0.5, 3 )
		return center.x, center.y, radius
	end
	
	function math.rotate( p, axis, angle )
		if type( p ) == "function" then
			p = p( )
		end
		if type( angle ) == "function" then
			angle = angle( )
		end
		effector.print_error( p, "table", "math.rotate", 1 )
		if angle then
			effector.print_error( angle, "number", "math.rotate", 3 )
		end
		local angle = rad( angle or 0 )
		local axisr = axis or "z"
		local rot_p = { }
		local coo_x = p[ 1 ] or 0
		local coo_y = p[ 2 ] or 0
		local coo_z = p[ 3 ] or 0
		if axisr == "x" then
			rot_p[ 1 ] = coo_x
			rot_p[ 2 ] = cos( angle ) * coo_y - sin( angle ) * coo_z
			rot_p[ 3 ] = sin( angle ) * coo_y + cos( angle ) * coo_z
		elseif axisr == "y" then
			rot_p[ 1 ] = cos( angle ) * coo_x + sin( angle ) * coo_z
			rot_p[ 2 ] = coo_y
			rot_p[ 3 ] = cos( angle ) * coo_z - sin( angle ) * coo_x
		elseif axisr == "z" then
			rot_p[ 1 ] = cos( angle ) * coo_x - sin( angle ) * coo_y
			rot_p[ 2 ] = sin( angle ) * coo_x + cos( angle ) * coo_y
			rot_p[ 3 ] = coo_z
		end
		return rot_p
	end
	
	function math.matrix_sum( A, B )
		effector.print_error( A, "numbertable", "math.matrix_sum", 1 )
		effector.print_error( B, "numbertable", "math.matrix_sum", 2 )
		local sum
		if type( A ) == "table"
			and type( B ) == "table" then
			for _, v in ipairs( A ) do
				if type( v ) ~= "number" then
					error( "<<Error: math.matrix_sum>> La primera matriz solo debe contener números\nmatrix must contain only numbers", 2 )
				end
			end
			for _, v in ipairs( B ) do
				if type( v ) ~= "number" then
					error( "<<Error: math.matrix_sum>> La segunda matriz solo debe contener números\nmatrix must contain only numbers", 2 )
				end
			end
			sum = { }
			for i = 1, #A do
				sum[ i ] = A[ i ] + B[ i ]
			end
		elseif  type( A ) == "number"
			and type( B ) == "table" then
			for _, v in ipairs( B ) do
				if type( v ) ~= "number" then
					error( "<<Error: math.matrix_sum>> La matriz solo debe contener números\nmatrix must contain only numbers", 2 )
				end
			end
			sum = { }
			for i = 1, #B do
				sum[ i ] = A + B[ i ]
			end
		elseif  type( A ) == "table"
			and type( B ) == "number" then
			for _, v in ipairs( A ) do
				if type( v ) ~= "number" then
					error( "<<Error: math.matrix_sum>> La matriz solo debe contener números\nmatrix must contain only numbers", 2 )
				end
			end
			sum = { }
			for i = 1, #A do
				sum[ i ] = A[ i ] + B
			end
		else
			sum = A + B
		end
		return sum
	end
	
	function math.matrix_trans( A )
		effector.print_error( A, "table", "math.matrix_trans", 1 )
		for _, v in ipairs( A ) do
			if type( v ) ~= "number" then
				error( "<<Error: math.matrix_trans>> La matriz solo debe contener números\nmatrix must contain only numbers", 2 )
			end
		end
		local trans = { }
		local n = (#A) ^ 0.5
		if n == math.round( n ) then
			for i = 1, #A do
				trans[ i ] = A[ n * ((i - 1) % n) + ceil( i / n ) ]
			end
			return trans
		end
		return A
	end

	function math.matrix_esc( A, Escalar )
		effector.print_error( A, "table", "math.matrix_esc", 1 )
		effector.print_error( Escalar, "number", "math.matrix_esc", 2 )
		for _, v in ipairs( A ) do
			if type( v ) ~= "number" then
				error( "<<Error: math.matrix_esc>> La matriz solo debe contener números\nmatrix must contain only numbers", 2 )
			end
		end
		local esc = { }
		for i = 1, #A do
			esc[ i ] = Escalar * A[ i ]
		end
		return esc
	end
	
	function math.matrix_mul( A, B )
		effector.print_error( A, "table", "math.matrix_mul", 1 )
		effector.print_error( B, "table", "math.matrix_mul", 2 )
		for _, v in ipairs( A ) do
			if type( v ) ~= "number" then
				error( "<<Error: math.matrix_mul>> La primera matriz solo debe contener números\nmatrix must contain only numbers", 2 )
			end
		end
		for _, v in ipairs( B ) do
			if type( v ) ~= "number" then
				error( "<<Error: math.matrix_mul>> La segunda matriz solo debe contener números\nmatrix must contain only numbers", 2 )
			end
		end
		local mul, trans = { }, { }
		local An, Bn = #A, #B
		if An < Bn then
			trans = math.matrix_trans( B )
			for i = 1, An do
				mul[ i ] = 0
				for k = 1, An do
					mul[ i ] = mul[ i ] + A[ k ] * trans[ An * ((i - 1) % An) + k ]
				end
			end
		elseif An > Bn then
			for i = 1, Bn do
				mul[ i ] = 0
				for k = 1, Bn do
					mul[ i ] = mul[ i ] + B[ i ] * A[ Bn * ((i - 1) % Bn) + k ]
				end
			end
		elseif An == Bn then
			local n = An ^ 0.5
			for i = 1, An do
				mul[ i ] = 0
				for k = 1, n do
					mul[ i ] = mul[ i ] + A[ (i - 1) % n + (k - 1) * n + 1 ] * B[ floor( (i - 1) / n ) * n + k ]
				end
			end
		end
		return mul
	end
	
	function math.matrix_mul2( ... )
		local Matrixes = { ... }
		for i = 1, #Matrixes do
			if #Matrixes[ i ] ~= 9 then
				error( "<<Error: math.matrix_mul2>> Cada matriz debe ser de tamaño 3x3\n3x3 matrix expected", 2 )
			end
			for _, v in ipairs( Matrixes[ i ] ) do
				if type( v ) ~= "number" then
					error( "<<Error: math.matrix_mul2>> Cada matriz solo debe contener números\nmatrix must contain only numbers", 2 )
				end
			end
		end
		local Mul = {
			1,	0,	0,
			0,	1,	0,
			0,	0,	1
		}
		for i = 1, #Matrixes do
			Mul = math.matrix_mul( Mul, Matrixes[ i ] )
		end
		return Mul
	end
	
	function math.matrix_cof( A, Return )
		effector.print_error( A, "table", "math.matrix_cof", 1 )
		if #A ~= 9 then
			error( "<<Error: math.matrix_cof>> Debe ser una matriz 3x3\n3x3 matrix expected", 2 )
		end
		for _, v in ipairs( A ) do
			if type( v ) ~= "number" then
				error( "<<Error: math.matrix_cof>> La matriz solo debe contener números\nmatrix must contain only numbers", 2 )
			end
		end
		local Ext = table.duplicate( A )
		for i = 1, 6 do
			table.insert( Ext, i )
		end
		for i = 1, 5 do
			table.insert( Ext, 5 * i - 1, Ext[ 5 * i - 3 ] )
			table.insert( Ext, 5 * i - 1, Ext[ 5 * i - 4 ] )
		end
		local cof = { }
		local n
		for i = 1, 9 do
			n = i + 2 * (ceil( i / 3 ) - 1)
			cof[ i ] = Ext[ n + 6 ] * Ext[ n + 12 ] - Ext[ n + 7 ] * Ext[ n + 11 ]
		end
		local det = 0
		for i = 1, 3 do
			det = det + A[ i ] * cof[ i ]
		end
		local adj = math.matrix_trans( cof )
		local inv = table.duplicate( A )
		if det ~= 0 then
			inv = math.matrix_esc( adj, 1 / det )
		end
		if Return == "det" then
			return det
		elseif Return == "adj" then
			return adj
		elseif Return == "inv" then
			if det ~= 0 then
				return inv
			end
			return nil
		end
		return cof
	end
	
	function math.matrix_det( A )
		effector.print_error( A, "table", "math.matrix_det", 1 )
		if #A ~= 9 then
			error( "<<Error: math.matrix_det>> Debe ser una matriz 3x3\n3x3 matrix expected", 2 )
		end
		for _, v in ipairs( A ) do
			if type( v ) ~= "number" then
				error( "<<Error: math.matrix_det>> La matriz solo debe contener números\nmatrix must contain only numbers", 2 )
			end
		end
		local det = math.matrix_cof( A, "det" )
		return det
	end

	function math.matrix_adj( A )
		effector.print_error( A, "table", "math.matrix_adj", 1 )
		if #A ~= 9 then
			error( "<<Error: math.matrix_adj>> Debe ser una matriz 3x3\n3x3 matrix expected", 2 )
		end
		for _, v in ipairs( A ) do
			if type( v ) ~= "number" then
				error( "<<Error: math.matrix_adj>> La matriz solo debe contener números\nmatrix must contain only numbers", 2 )
			end
		end
		local adj = math.matrix_cof( A, "adj" )
		return adj
	end

	function math.matrix_inv( A )
		effector.print_error( A, "table", "math.matrix_det", 1 )
		if #A ~= 9 then
			error( "<<Error: math.matrix_inv>> Debe ser una matriz 3x3\n3x3 matrix expected", 2 )
		end
		for _, v in ipairs( A ) do
			if type( v ) ~= "number" then
				error( "<<Error: math.matrix_inv>> La matriz solo debe contener números\nmatrix must contain only numbers", 2 )
			end
		end
		local inv = math.matrix_cof( A, "inv" )
		return inv
	end
	
	function math.matrix_dis( Disx, Disy ) --> displace
		if type( Disx ) == "function" then
			Disx = Disx( )
		end
		if type( Disy ) == "function" then
			Disy = Disy( )
		end
		local dis_x = Disx or 0
		local dis_y = Disy or 0
		effector.print_error( dis_x, "number", "math.matrix_dis", 1 )
		effector.print_error( dis_y, "number", "math.matrix_dis", 2 )
		local Dis = {
			1,		0,		0,
			0,		1,		0,
			dis_x,	dis_y,	1
		}
		return Dis
	end
	
	function math.matrix_rot( Angle, Axis, Orgx, Orgy ) --> rotation
		if type( Angle ) == "function" then
			Angle = Angle( )
		end
		if type( Orgx ) == "function" then
			Orgx = Orgx( )
		end
		if type( Orgy ) == "function" then
			Orgy = Orgy( )
		end
		local AngR = -rad( Angle or 0 )
		local Orgx = Orgx or 0
		local Orgy = Orgy or 0
		effector.print_error( AngR, "number", "math.matrix_rot", 1 )
		effector.print_error( Orgx, "number", "math.matrix_rot", 2 )
		effector.print_error( Orgy, "number", "math.matrix_rot", 3 )
		local Rot_x = {
			1,	  0,			0,
			0,	  cos( AngR ),	sin( AngR ),
			0,	  -sin( AngR ), cos( AngR )
		}
		local Rot_y = {
			cos( AngR ),  0,	sin( AngR ),
			0,			  1,	0,
			-sin( AngR ), 0,	cos( AngR )
		}
		local Rot_z = {
			cos( AngR ),  sin( AngR ),	0,
			-sin( AngR ), cos( AngR ),	0,
			0,			  0,			1
		}
		local Rot = Rot_z
		if Axis == "x" then
			Rot = Rot_x
		elseif Axis == "y" then
			Rot = Rot_y
		end
		local Rot1 = math.matrix_mul( math.matrix_dis( Orgx, Orgy ), Rot )
		return math.matrix_mul( Rot1, math.matrix_dis( -Orgx, -Orgy ) )
	end
	
	function math.matrix_rat( Ratx, Raty, Orgx, Orgy ) --> ratio
		if type( Ratx ) == "function" then
			Ratx = Ratx( )
		end
		if type( Raty ) == "function" then
			Raty = Raty( )
		end
		if type( Orgx ) == "function" then
			Orgx = Orgx( )
		end
		if type( Orgy ) == "function" then
			Orgy = Orgy( )
		end
		local esc_x = Ratx or 1
		local esc_y = Raty or esc_x
		local org_x = Orgx or 0
		local org_y = Orgy or 0
		effector.print_error( esc_x, "number", "math.matrix_rat", 1 )
		effector.print_error( esc_y, "number", "math.matrix_rat", 2 )
		effector.print_error( org_x, "number", "math.matrix_rat", 3 )
		effector.print_error( org_y, "number", "math.matrix_rat", 4 )
		local Rat = {
			esc_x,	0,		0,
			0,		esc_y,	0,
			0,		0,		1
		}
		local Rat1 = math.matrix_mul( math.matrix_dis( org_x, org_y ), Rat )
		return math.matrix_mul( Rat1, math.matrix_dis( -org_x, -org_y ) )
	end
	
	function math.matrix_ref( Mode ) --> reflection
		local Ref_x = {
			1,	0,	0,
			0,	-1,	0,
			0,	0,	1
		}
		local Ref_y = {
			-1,	0,	0,
			0,	1,	0,
			0,	0,	1
		}
		local Ref_org = {
			-1,	0,	0,
			0,	-1,	0,
			0,	0,	1
		}
		local Ref_yequx = {
			0,	1,	0,
			1,	0,	0,
			0,	0,	1
		}
		local Ref = Ref_yequx
		if Mode == "x" then
			Ref = Ref_x
		elseif Mode == "y" then
			Ref = Ref_y
		elseif Mode == "o" then
			Ref = Ref_org
		end
		return Ref
	end

	function math.matrix_fil( Filxy, Axis ) --> oblique
		if type( Filxy ) == "function" then
			Filxy = Filxy( )
		end
		local fil_px, fil_py = 0, 0
		if type( Filxy ) == "number" then
			fil_px, fil_py = Filxy, Filxy
		elseif type( Filxy ) == "table" then
			fil_px, fil_py = Filxy[ 1 ], Filxy[ 2 ]
		end
		effector.print_error( fil_px, "numbertable", "math.matrix_fil", 1 )
		effector.print_error( fil_py, "numbertable", "math.matrix_fil", 1 )
		local Fil_x = {
			1,		 0,	0,
			-fil_px, 1,	0,
			0,		 0,	1
		}
		local Fil_y = {
			1,	fil_py,	0,
			0,	1,		0,
			0,	0,		1
		}
		local Fil = Fil_x
		if Axis == "y" then
			Fil = Fil_y
		end
		if type( Filxy ) == "table" then
			return math.matrix_mul( Fil_x, Fil_y )
		end
		return Fil
	end
	
	function math.i( counter, A, B, C )
		if type( counter ) == "function" then
			counter = counter( )
		end
		if type( A ) == "function" then
			A = A( )
		end
		if type( B ) == "function" then
			B = B( )
		end
		if type( C ) == "function" then
			C = C( )
		end
		local idx = counter or j
		local A = A or 1
		local B = B or 1
		local C = C or 1
		effector.print_error( idx, "number", "math.i", 1 )
		effector.print_error( A, "number", "math.i", 2 )
		effector.print_error( B, "number", "math.i", 3 )
		effector.print_error( C, "number", "math.i", 4 )
		local D = A - B + 1
		local E = B - A + 1
		local algorithms = {
			[ 01 ] = (-1) ^ (idx + 1),												-->( +,- )
			[ 02 ] = (-1) ^ idx,													-->( -,+ )
			[ 03 ] = (-1) ^ (ceil( idx / A ) + 1),									-->( ++,-- ) A-veces
			[ 04 ] = (-1) ^ ceil( idx / A ),										-->( --,++ ) A-veces
			[ 05 ] = (1 + (-1) ^ idx) / 2,											-->( 0,1 )
			[ 06 ] = (1 - (-1) ^ idx) / 2,											-->( 1,0 )
			[ 07 ] = (1 + (-1) ^ ceil( idx / A )) / 2,								-->( 00,11 ) A-veces
			[ 08 ] = (1 - (-1) ^ ceil( idx / A )) / 2,								-->( 11,00 ) A-veces
			[ 09 ] = (A / 2) * (1 + (-1) ^ idx ),									-->( 0,A )
			[ 10 ] = (A / 2) * (1 - (-1) ^ idx ),									-->( A,0 )
			[ 11 ] = (A / 2) * (1 + (-1) ^ ceil( idx / B ) ),						-->( 00,AA ) B-veces
			[ 12 ] = (A / 2) * (1 - (-1) ^ ceil( idx / B ) ),						-->( AA,00 ) B-veces
			[ 13 ] = A + ((B - A) / 2) * (1 + (-1) ^ idx ),							-->( A,B )
			[ 14 ] = A + ((B - A) / 2) * (1 + (-1) ^ ceil( idx / C ) ),				-->( AA,BB ) C-veces
			[ 15 ] = B * ceil( idx / A ),											-->( A,mB )  A-veces los múltiplos de B
			[ 16 ] = A * ceil( idx / A ) - idx + 1,									-->( A-->1 )
			[ 17 ] = A - A * ceil( idx / A ) + idx,									-->( 1-->A )
			[ 18 ] = (A - A * ceil( idx / A ) + idx) * (-1) ^ (ceil( idx / A ) + 1),-->( 1-->A,-1-->-A )
			[ 19 ] = (A - 1 - (A - 1) * ceil( idx / (A - 1) ) + idx) * (-1) ^ (ceil( idx / (A - 1) ) + 1) + (A + 1) * (1 + (-1) ^ ceil( idx / (A - 1) )) / 2,
			--[ 19 ]																-->( 1-->A-->1 )
			[ 20 ] = A + 1 - ((A - 1 - (A - 1) * ceil( idx / (A - 1) ) + idx) * (-1) ^ (ceil( idx / (A - 1) ) + 1) + (A + 1) * (1 + (-1) ^ ceil( idx / (A - 1) )) / 2),
			--[ 20 ]																-->( A-->1-->A )
			[ 21 ] = (( A > B )
				and B + D - ((D - 1 - (D - 1) * ceil( idx / (D - 1) ) + idx) * (-1) ^ (ceil( idx / (D - 1) ) + 1) + (D + 1) * (1 + (-1) ^ ceil( idx / (D - 1) )) / 2)
				or  A + (E - 1 - (E - 1) * ceil( idx / (E - 1) ) + idx) * (-1) ^ (ceil( idx / (E - 1) ) + 1) + (E + 1) * (1 + (-1) ^ ceil( idx / (E - 1) )) / 2 - 1
			),--[ 21 ]																-->( A-->B-->A )
			[ 22 ] = 1 - floor( 1 / idx ),											-->( 0,11 ) primer 0 y el resto 1
			[ 23 ] = floor( 1 / idx ),												-->( 1,00 ) primer 1 y el resto 0
			[ 24 ] = A * (1 - floor( 1 / idx )),									-->( 0,AA ) primer 0 y el resto A
			[ 25 ] = A * floor( 1 / idx ),											-->( A,00 ) primero A y el resto 0
			[ 26 ] = A * floor( 1 / idx ) + B * (1 - floor( 1 / idx )),				-->( A,BB" ) primero A y el resto B
			[ 27 ] = 1 - floor( (A * ceil( idx / A ) - idx + 1) / A ),				-->( 0<->11 ) primer 0 y (A-1)veces 1
			[ 28 ] = floor( (A - A * ceil( idx / A ) + idx) / A ),					-->( 00<->1 ) (A-1)veces 0 el un 1
			[ 29 ] = floor( (A * ceil( idx / A ) - idx + 1) / A ),					-->( 1<->00 ) primer 1 y (A-1)veces 0
			[ 30 ] = 1 - floor( (A - A * ceil( idx / A ) + idx) / A ),				-->( 11<->0 ) (A-1)veces 1 el un 0
			[ 31 ] = A * (1 - floor( (B * ceil( idx / B ) - idx + 1) / B )),		-->( 0<->AA ) primer 0 y (B-1)veces A
			[ 32 ] = A * floor( (B - B * ceil( idx / B ) + idx) / B ),				-->( 00<->A ) (B-1)veces 0 y un A
			[ 33 ] = A * floor( (B * ceil( idx / B ) - idx + 1) / B ),				-->( A<->00 ) primer A y (B-1)veces 0
			[ 34 ] = A * (1 - floor( (B - B * ceil( idx / B ) + idx) / B )),		-->( AA<->0 ) (B-1)veces A y un 0
			[ 35 ] = A * floor( (C * ceil( idx / C ) - idx + 1) / C ) + B * (1 - floor( (C * ceil( idx / C ) - idx + 1) / C )),	-->( A<->BB ) primer A y (C-1)veces B
			[ 36 ] = A * (1 - floor( (C - C * ceil( idx / C ) + idx) / C )) + B * floor( (C - C * ceil( idx / C ) + idx) / C ),	-->( AA<->B ) (C-1)veces A y un B
			[ 37 ] = floor( (idx - 1) / A ) + 1,									-->( N,n ) los Naturales n-veces cada uno
			-----------------------------------------------------------------------------------------------------------------
			
			[ "+,-" ]			= (-1) ^ (idx + 1),
			[ "-,+" ]			= (-1) ^ idx,
			[ "++,--" ]			= (-1) ^ (ceil( idx / A ) + 1),
			[ "--,++" ]			= (-1) ^ ceil( idx / A ),
			[ "0,1" ]			= (1 + (-1) ^ idx) / 2,
			[ "1,0" ]			= (1 - (-1) ^ idx) / 2,
			[ "00,11" ]			= (1 + (-1) ^ ceil( idx / A )) / 2,
			[ "11,00" ]			= (1 - (-1) ^ ceil( idx / A )) / 2,
			[ "0,A" ]			= (A / 2) * (1 + (-1) ^ idx ),
			[ "A,0" ]			= (A / 2) * (1 - (-1) ^ idx ),
			[ "00,AA" ]			= (A / 2) * (1 + (-1) ^ ceil( idx / B ) ),
			[ "AA,00" ]			= (A / 2) * (1 - (-1) ^ ceil( idx / B ) ),
			[ "A,B" ]			= A + ((B - A) / 2) * (1 + (-1) ^ idx ),
			[ "AA,BB" ]			= A + ((B - A) / 2) * (1 + (-1) ^ ceil( idx / C ) ),
			[ "A,mB" ]			= B * ceil( idx / A ),
			[ "A-->1" ]			= A * ceil( idx / A ) - idx + 1,
			[ "1-->A" ]			= A - A * ceil( idx / A ) + idx,
			[ "1-->A,-1-->-A" ]	= (A - A * ceil( idx / A ) + idx) * (-1) ^ (ceil( idx / A ) + 1),
			[ "1-->A-->1" ]		= (A - 1 - (A - 1) * ceil( idx / (A - 1) ) + idx) * (-1) ^ (ceil( idx / (A - 1) ) + 1) + (A + 1) * (1 + (-1) ^ ceil( idx / (A - 1) )) / 2,
			[ "A-->1-->A" ]		= A + 1 - ((A - 1 - (A - 1) * ceil( idx / (A - 1) ) + idx) * (-1) ^ (ceil( idx / (A - 1) ) + 1) + (A + 1) * (1 + (-1) ^ ceil( idx / (A - 1) )) / 2),
			[ "A-->B-->A" ]		= (( A > B )
								and B + D - ((D - 1 - (D - 1) * ceil( idx / (D - 1) ) + idx) * (-1) ^ (ceil( idx / (D - 1) ) + 1) + (D + 1) * (1 + (-1) ^ ceil( idx / (D - 1) )) / 2)
								or  A + (E - 1 - (E - 1) * ceil( idx / (E - 1) ) + idx) * (-1) ^ (ceil( idx / (E - 1) ) + 1) + (E + 1) * (1 + (-1) ^ ceil( idx / (E - 1) )) / 2 - 1
								),
			[ "0,11" ]			= 1 - floor( 1 / idx ),
			[ "1,00" ]			= floor( 1 / idx ),
			[ "0,AA" ]			= A * (1 - floor( 1 / idx )),
			[ "A,00" ]			= A * floor( 1 / idx ),
			[ "A,BB" ]			= A * floor( 1 / idx ) + B * (1 - floor( 1 / idx )),		--math.i( j, 5, 7 )[ "A,BB" ]
			[ "0<->11" ]		= 1 - floor( (A * ceil( idx / A ) - idx + 1) / A ),			--math.i( j, 5 )[ "0<->11" ]
			[ "00<->1" ]		= floor( (A - A * ceil( idx / A ) + idx) / A ),				--math.i( j, 5 )[ "00<->1" ]
			[ "1<->00" ]		= floor( (A * ceil( idx / A ) - idx + 1) / A ),				--math.i( j, 5 )[ "1<->00" ]
			[ "11<->0" ]		= 1 - floor( (A - A * ceil( idx / A ) + idx) / A ),			--math.i( j, 5 )[ "11<->0" ]
			[ "0<->AA" ]		= A * (1 - floor( (B * ceil( idx / B ) - idx + 1) / B )),	--math.i( j, 5, 7 )[ "0<->AA" ]
			[ "00<->A" ]		= A * floor( (B - B * ceil( idx / B ) + idx) / B ),			--math.i( j, 5, 7 )[ "00<->A" ]
			[ "A<->00" ]		= A * floor( (B * ceil( idx / B ) - idx + 1) / B ),			--math.i( j, 5, 7 )[ "A<->00" ]
			[ "AA<->0" ]		= A * (1 - floor( (B - B * ceil( idx / B ) + idx) / B )),	--math.i( j, 5, 7 )[ "AA<->0" ]
			[ "A<->BB" ]		= A * floor( (C * ceil( idx / C ) - idx + 1) / C ) + B * (1 - floor( (C * ceil( idx / C ) - idx + 1) / C )),	--math.i( j, 5, 2, 7 )[ "A<->BB" ]
			[ "AA<->B" ]		= A * (1 - floor( (C - C * ceil( idx / C ) + idx) / C )) + B * floor( (C - C * ceil( idx / C ) + idx) / C ),	--math.i( j, 5, 2, 7 )[ "AA<->B" ]
			[ "N,n" ]			= floor( (idx - 1) / A ) + 1,
		}
		return algorithms
	end
	
	function math.pyf( )
		local number_list, number_pyf = { }, ""
		local numb1, numb2, numb3, numb4
		for i = 123, 9876 do
			number_pyf = tostring( i )
			if number_pyf:len( ) == 3 then
				number_pyf = "0" .. number_pyf
			end
			numb1, numb2 = number_pyf:sub( 1, 1 ), number_pyf:sub( 2, 2 )
			numb3, numb4 = number_pyf:sub( 3, 3 ), number_pyf:sub( 4, 4 )
			if numb1 ~= numb2
				and numb1 ~= numb3
				and numb1 ~= numb4
				and numb2 ~= numb3
				and numb2 ~= numb4
				and numb3 ~= numb4 then
				table.insert( number_list, R( 100 ), number_pyf )
			end
		end
		number_list = table.disorder( number_list )
		return Re( number_list )
	end
	
	function picas( numb )
		local number_false = "Debes ingresar un número de 4 cifras y que todas ellas sean diferentes entre sí"
		if type( numb ) ~= "number" then
			return number_false
		end
		local number_str = tostring( numb )
		if number_str:len( ) == 3 then
			number_str = "0" .. number_str
		end
		if number_str:len( ) ~= 4 then
			return number_false
		end
		local table_pyf, table_numb = { }, { }
		for i = 1, 4 do
			table_pyf[ i ] = randpf:sub( i, i )
			table_numb[ i ] = number_str:sub( i, i )
		end
		local num_picas, num_fijas = 0, 0
		for i = 1, 4 do
			if table.inside( table_pyf, table_numb[ i ] ) then
				if table.index( table_pyf, table_numb[ i ] ) == i then
					num_fijas = num_fijas + 1
				else
					num_picas = num_picas + 1
				end
			end
		end
		count_pf = count_pf + 1
		local num_intentos = "intentos"
		if count_pf == 1 then
			num_intentos = "intento"
		end
		if num_fijas == 4 then
			return format( "%s --> Ganaste en %s %s", number_str, count_pf, num_intentos )
		end
		if num_picas == 0
			and num_fijas == 0 then
			return format( "%s --> Nada!!", number_str )
		end
		local pica_str, fija_str = "picas", "fijas"
		if num_picas == 1 then
			pica_str = "pica"
		end
		if num_fijas == 1 then
			fija_str = "fija"
		end
		return format( "%s --> %s %s y %s %s", number_str, num_picas, pica_str, num_fijas, fija_str )
	end

	function sudoku_gen( levels )
		local function sudoku2( levels )
			local fila = { 1, 2, 3, 4, 5, 6, 7, 8, 9 }
			local filas = { [ 1 ] = table.disorder( fila ) }
			for i = 2, 9 do
				filas[ i ] = { }
			end
			local colums, matrix = { }, { }
			for i = 1, 9 do
				colums[ i ] = { }
				matrix[ i ] = { }
			end
			--------------------------------------------------------------
			-- agrega los 3 primeros elementos de las 3 primeras matrices
			-- agrega el primer elemento de las 9 columnas
			local filx = table.duplicate( fila )
			for i = 1, 3 do
				for k = 1, 3 do
					matrix[ i ][ k ] = filas[ 1 ][ 3 * (i - 1) + k ]
					colums[ 3 * (i - 1) + k ][ 1 ] = filas[ 1 ][ 3 * (i - 1) + k ]
				end
				filx = table.retire( filx, matrix[ 1 ][ i ] )
			end
			--------------------------------------------------------------
			-- primeros 3 elementos de la fila 2
			for i = 1, 3 do
				filas[ 2 ][ i ] = filx[ R( #filx ) ]
				filx = table.retire( filx, filas[ 2 ][ i ] )
			end
			-- segundos 3 elementos de la fila 2
			filx = table.duplicate( matrix[ 3 ] )
			filx = table.delete( filx, filas[ 2 ] )
			local mtx_1, i = random.unique( matrix[ 1 ] ), 1
			while #filx < 3 do
				table.insert( filx, mtx_1[ i ] )
				i = i + 1
			end
			for i = 4, 6 do
				filas[ 2 ][ i ] = filx[ R( #filx ) ]
				filx = table.retire( filx, filas[ 2 ][ i ] )
			end
			-- terceros 3 elementos de la fila 2
			filx = table.duplicate( fila )
			filx = table.delete( filx, filas[ 2 ] )
			for i = 7, 9 do
				filas[ 2 ][ i ] = filx[ R( #filx ) ]
				filx = table.retire( filx, filas[ 2 ][ i ] )
			end
			--------------------------------------------------------------
			-- agrega los 3 segundos elementos de las 3 primeras matrices
			-- agrega el segundo elemento de las 9 columnas
			for i = 1, 3 do
				for k = 1, 3 do
					matrix[ i ][ k + 3 ] = filas[ 2 ][ 3 * (i - 1) + k ]
					colums[ 3 * (i - 1) + k ][ 2 ] = filas[ 2 ][ 3 * (i - 1) + k ]
				end
			end
			--------------------------------------------------------------
			-- elementos de la fila 3
			filx = table.duplicate( fila )
			filx = table.delete( filx, matrix[ 1 ] )
			for i = 1, 3 do
				filas[ 3 ][ i ] = filx[ R( #filx ) ]
				filx = table.retire( filx, filas[ 3 ][ i ] )
			end
			filx = table.duplicate( fila )
			filx = table.delete( filx, matrix[ 2 ] )
			for i = 4, 6 do
				filas[ 3 ][ i ] = filx[ R( #filx ) ]
				filx = table.retire( filx, filas[ 3 ][ i ] )
			end
			filx = table.duplicate( fila )
			filx = table.delete( filx, matrix[ 3 ] )
			for i = 7, 9 do
				filas[ 3 ][ i ] = filx[ R( #filx ) ]
				filx = table.retire( filx, filas[ 3 ][ i ] )
			end
			--------------------------------------------------------------
			-- agrega los 3 terceros elementos de las 3 primeras matrices
			-- agrega el tercer elemento de las 9 columnas
			for i = 1, 3 do
				for k = 1, 3 do
					matrix[ i ][ k + 6 ] = filas[ 3 ][ 3 * (i - 1) + k ]
					colums[ 3 * (i - 1) + k ][ 3 ] = filas[ 3 ][ 3 * (i - 1) + k ]
				end
			end
			--------------------------------------------------------------
			-- fila 4
			for i = 1, 9 do
				filx = table.duplicate( fila )
				filx = table.delete( filx, filas[ 4 ] )
				filx = table.delete( filx, colums[ i ] )
				filas[ 4 ][ i ] = filx[ R( #filx ) ] or 0
			end
			while table.inside( filas[ 4 ], 0 ) do
				filas[ 4 ] = { } -- limpia la fila 4
				for i = 1, 9 do  -- inicia nuevamente el llenado de la fila 4
					filx = table.duplicate( fila )
					filx = table.delete( filx, filas[ 4 ] )
					filx = table.delete( filx, colums[ i ] )
					filas[ 4 ][ i ] = filx[ R( #filx ) ] or 0
				end
			end
			--------------------------------------------------------------
			-- agrega los 3 primeros elementos de las matrices 4, 5 y 6
			-- agrega el cuarto elemento de las 9 columnas
			for i = 4, 6 do
				for k = 1, 3 do
					matrix[ i ][ k ] = filas[ 4 ][ 3 * (i - 4) + k ]
					colums[ 3 * (i - 4) + k ][ 4 ] = filas[ 4 ][ 3 * (i - 4) + k ]
				end
			end
			--------------------------------------------------------------
			-- fila 5
			-- primeros 3 elementos de la fila 5
			for i = 1, 3 do
				filx = table.duplicate( fila )
				filx = table.delete( filx, colums[ i ] )
				filx = table.delete( filx, matrix[ 4 ] )
				filx = table.delete( filx, filas[ 5 ] )
				filas[ 5 ][ i ] = filx[ R( #filx ) ]
			end
			-- segundos 3 elementos de la fila 5
			filx = table.duplicate( matrix[ 6 ] )
			filx = table.delete( filx, filas[ 5 ] )
			local mtx_1, i = random.unique( matrix[ 4 ] ), 1
			while #filx < 3 do
				table.insert( filx, mtx_1[ i ] )
				i = i + 1
			end
			for i = 4, 6 do
				filas[ 5 ][ i ] = filx[ R( #filx ) ]
				local k = 0
				while table.inside( colums[ i ], filas[ 5 ][ i ] ) do
					filas[ 5 ][ i ] = filx[ R( #filx ) ]
					k = k + 1
					if k == 8 then
						filas[ 5 ][ i ] = 0
						break
					end
				end
				filx = table.retire( filx, filas[ 5 ][ i ] )
			end
			while table.inside( filas[ 5 ], 0 ) do
				filas[ 5 ][ 4 ], filas[ 5 ][ 5 ], filas[ 5 ][ 6 ] = nil, nil, nil
				filx = table.duplicate( matrix[ 6 ] )
				filx = table.delete( filx, filas[ 5 ] )
				mtx_1, i = random.unique( matrix[ 4 ] ), 1
				while #filx < 3 do
					table.insert( filx, mtx_1[ i ] )
					i = i + 1
				end
				for i = 4, 6 do
					filas[ 5 ][ i ] = filx[ R( #filx ) ]
					local k = 0
					while table.inside( colums[ i ], filas[ 5 ][ i ] ) do
						filas[ 5 ][ i ] = filx[ R( #filx ) ]
						k = k + 1
						if k == 8 then
							break
						end
					end
					filx = table.retire( filx, filas[ 5 ][ i ] )
				end
			end
			-- terceros 3 elementos de la fila 5
			filx = table.duplicate( fila )
			filx = table.delete( filx, filas[ 5 ] )
			filx = table.disorder( filx )
			local filx2, i = table.permute( filx ), 1
			while  table.inside( colums[ 7 ], filx[ 1 ] )
				or table.inside( colums[ 8 ], filx[ 2 ] )
				or table.inside( colums[ 9 ], filx[ 3 ] ) do
				filx = filx2[ i ]
				i = i + 1
				if i == 7 then
					break
				end
			end
			filas[ 5 ] = table.inserttable( filas[ 5 ], filx )
			--------------------------------------------------------------
			-- agrega los 3 segundos elementos de las matrices 4, 5 y 6
			-- agrega el quinto elemento de las 9 columnas
			for i = 4, 6 do
				for k = 1, 3 do
					matrix[ i ][ k + 3 ] = filas[ 5 ][ 3 * (i - 4) + k ]
					colums[ 3 * (i - 4) + k ][ 5 ] = filas[ 5 ][ 3 * (i - 4) + k ]
				end
			end
			--------------------------------------------------------------
			-- fila 6
			for k = 1, 3 do
				filx = table.duplicate( fila )
				filx = table.delete( filx, matrix[ 3 + k ] )
				filx = table.disorder( filx )
				local filx2, i = table.permute( filx ), 1
				while (table.inside( colums[ 1 + 3 * (k - 1) ], filx[ 1 ] )
					or table.inside( colums[ 2 + 3 * (k - 1) ], filx[ 2 ] ))
					or table.inside( colums[ 3 + 3 * (k - 1) ], filx[ 3 ] ) do
					filx = filx2[ i ]
					i = i + 1
					if i == 7 then
						break
					end
				end
				filas[ 6 ] = table.inserttable( filas[ 6 ], filx )
			end
			for i = 1, 9 do
				if table.inside( colums[ i ], filas[ 6 ][ i ] ) then
					return "error"
				end
			end
			--------------------------------------------------------------
			-- agrega los 3 terceros elementos de las matrices 4, 5 y 6
			-- agrega el sexto elemento de las 9 columnas
			for i = 4, 6 do
				for k = 1, 3 do
					matrix[ i ][ k + 6 ] = filas[ 6 ][ 3 * (i - 4) + k ]
					colums[ 3 * (i - 4) + k ][ 6 ] = filas[ 6 ][ 3 * (i - 4) + k ]
				end
			end
			--------------------------------------------------------------
			-- fila 7
			for i = 1, 9 do
				filx = table.duplicate( fila )
				filx = table.delete( filx, filas[ 7 ] )
				filx = table.delete( filx, colums[ i ] )
				filas[ 7 ][ i ] = filx[ R( #filx ) ] or 0
			end
			while table.inside( filas[ 7 ], 0 ) do
				filas[ 7 ] = { } -- limpia la fila 7
				for i = 1, 9 do  -- inicia nuevamente el llenado de la fila 7
					filx = table.duplicate( fila )
					filx = table.delete( filx, filas[ 7 ] )
					filx = table.delete( filx, colums[ i ] )
					filas[ 7 ][ i ] = filx[ R( #filx ) ] or 0
				end
			end
			--------------------------------------------------------------
			-- agrega los 3 primeros elementos de las matrices 7, 8 y 9
			-- agrega el séptimo elemento de las 9 columnas
			for i = 7, 9 do
				for k = 1, 3 do
					matrix[ i ][ k ] = filas[ 7 ][ 3 * (i - 7) + k ]
					colums[ 3 * (i - 7) + k ][ 7 ] = filas[ 7 ][ 3 * (i - 7) + k ]
				end
			end
			--------------------------------------------------------------
			-- fila 8
			-- primeros 3 elementos de la fila 8
			for i = 1, 3 do
				filx = table.duplicate( fila )
				filx = table.delete( filx, colums[ i ] )
				filx = table.delete( filx, matrix[ 7 ] )
				filx = table.delete( filx, filas[ 8 ] )
				filas[ 8 ][ i ] = filx[ R( #filx ) ]
			end
			-- segundos 3 elementos de la fila 8
			filx = table.duplicate( matrix[ 9 ] )
			filx = table.delete( filx, filas[ 8 ] )
			local mtx_1, i = table.disorder( matrix[ 7 ] ), 1
			while #filx < 3 do
				table.insert( filx, mtx_1[ i ] )
				i = i + 1
			end
			for i = 4, 6 do
				filas[ 8 ][ i ] = filx[ R( #filx ) ]
				local k = 0
				while table.inside( colums[ i ], filas[ 8 ][ i ] ) do
					filas[ 8 ][ i ] = filx[ R( #filx ) ]
					k = k + 1
					if k == 9 then
						filas[ 8 ][ i ] = 0
						break
					end
				end
				filx = table.retire( filx, filas[ 8 ][ i ] )
			end
			if table.inside( filas[ 8 ], 0 ) then
				return "error"
			end
			-- terceros 3 elementos de la fila 8
			filx = table.duplicate( fila )
			filx = table.delete( filx, filas[ 8 ] )
			filx = table.disorder( filx )
			local filx2, i = table.permute( filx ), 1
			while  table.inside( colums[ 7 ], filx[ 1 ] )
				or table.inside( colums[ 8 ], filx[ 2 ] )
				or table.inside( colums[ 9 ], filx[ 3 ] ) do
				filx = filx2[ i ]
				i = i + 1
				if i == 7 then
					break
				end
			end
			filas[ 8 ] = table.inserttable( filas[ 8 ], filx )
			for i = 1, 3 do
				if table.inside( colums[ i + 6 ], filas[ 8 ][ i + 6 ] ) then
					return "error"
				end
			end
			--------------------------------------------------------------
			-- agrega los 3 segundos elementos de las matrices 7, 8 y 9
			-- agrega el octavo elemento de las 9 columnas
			for i = 7, 9 do
				for k = 1, 3 do
					matrix[ i ][ k + 3 ] = filas[ 8 ][ 3 * (i - 7) + k ]
					colums[ 3 * (i - 7) + k ][ 8 ] = filas[ 8 ][ 3 * (i - 7) + k ]
				end
			end
			--------------------------------------------------------------
			-- fila 9
			for i = 1, 9 do
				filas[ 9 ][ i ] = unpack( table.delete( fila, colums[ i ] ) )
			end
			--------------------------------------------------------------
			-- agrega los 3 terceros elementos de las matrices 7, 8 y 9
			-- agrega el noveno elemento de las 9 columnas
			for i = 7, 9 do
				for k = 1, 3 do
					matrix[ i ][ k + 6 ] = filas[ 9 ][ 3 * (i - 7) + k ]
					colums[ 3 * (i - 7) + k ][ 9 ] = filas[ 9 ][ 3 * (i - 7) + k ]
				end
			end
			--------------------------------------------------------------
			for i = 4, 9 do
				for k = 1, 9 do
					if table.count( matrix[ i ], k ) > 1 then
						return "error"
					end
				end
			end
			--------------------------------------------------------------
			--levels
			local levels = levels or 8
			for i = 1, 9 do
				for k = 1, 9 do
					if R( R( 1, R( 2, R( 4, levels ) ) ) ) == 1 then
						filas[ i ][ k ] = 0
					end
				end
			end
			--------------------------------------------------------------
			return filas
		end
		local sud_gen = sudoku2( levels )
		while sud_gen == "error" do
			sud_gen = sudoku2( levels )
		end
		return sud_gen
	end

	function sudoku( levels )
		local levels = levels or 3
		local sudoku_tbl = recall.sud_tbl
		local Shap = recall.Shap
		local Shap3 = recall.Shap3
		local shap5 = recall.shap5
		local siz = recall.siz
		if j < 5 then
			local Size = yres - 40 * ratio
			local Bord = 5 * ratio
			local Siz2 = (Size - 4 * Bord) / 3
			Shap = remember( "Shap", shape.size( shape.rectangle, Size ) )
			local ShaC = shape.reverse( shape.size( shape.rectangle, Siz2 ) )
			for i = 1, 3 do
				for k = 1, 3 do
					Shap = Shap .. shape.displace( ShaC, Bord + (Siz2 + Bord) * (k - 1), Bord + (Siz2 + Bord) * (i - 1) )
				end
			end
			Shap2, Shap3 = shape.size( Shap, Siz2 + Bord ), ""
			for i = 1, 3 do
				for k = 1, 3 do
					Shap3 = Shap3 .. shape.displace( Shap2, 0.5 * Bord + (Siz2 + Bord) * (k - 1), 0.5 * Bord + (Siz2 + Bord) * (i - 1) )
				end
			end
			Shap3 = remember( "Shap3", Shap3 )
			local shap4 = shape.size( shape.rectangle, Size, Siz2 + Bord )
			local shap5 = remember( "shap5", shape.displace( shap4, 0, Siz2 + 1.5 * Bord ) .. shape.displace( shape.origin( shape.rotate( shape.reverse( shap4 ), 90 ) ), Siz2 + 1.5 * Bord, 0 ) )
			siz = remember( "siz", Size / 9 )
			sudoku_tbl = remember( "sud_tbl", sudoku_gen( LVL ) )
		end
		local count_1, count_2
		maxloop( 85 )
		relayer( 4 )
		if j == 1 then
			return format( "{\\bs0\\an5\\pos(%s,%s)\\bs0\\1c&HFAFAFA&\\p1}%s", 0.5 * xres, 0.5 * yres, shape.size( shape.rectangle, xres, yres ) )
		elseif j == 2 then
			return format( "{\\bs0\\an5\\pos(%s,%s)\\bs0\\1c&HEEEEF0&\\p1}%s", 0.5 * xres, 0.5 * yres, shap5 )
		elseif j == 3 then
			levels = abs( ceil( levels ) )
			if levels < 1 then
				levels = 1
			elseif levels > 6 then
				levels = 6
			end
			local nivel, LVL = "", 8
			if levels == 1 then
				nivel = "Very Easy"
				LVL = R( 11, 12 )
			elseif levels == 2 then
				nivel = "Easy"
				LVL = R( 9, 10 )
			elseif levels == 3 then
				nivel = "Medium"
				LVL = 8
			elseif levels == 4 then
				nivel = "Hard"
				LVL = 7
			elseif levels == 5 then
				nivel = "Very Hard"
				LVL = 6
			elseif levels == 6 then
				nivel = "Dement"
				LVL = 5
			end
			local serie = ""
			for i = 1, 11 do
				if i < 6 then
					serie = serie .. ( (R( 5 ) ~= 1 ) and 0 or R( 0, 9 ) )
				else
					serie = serie .. R( 0, 9 )
				end
			end
			return format( "{\\an7\\pos(%s,%s)\\bs0\\fnArial\\fs%s\\1c&H545459&}Sudoku %s\\NLevel: {\\b1}%s\\N{\\b0}Generated by:\\N{\\b1}KE %s",
				30 * ratio, 20 * ratio, 28 * ratio, serie, nivel, script_version .. script_update
			)
		elseif j == 4 then
			return format( "{\\an5\\pos(%s,%s)\\bs0\\1c&H545459&}", 0.5 * xres, 0.5 * yres ) .. Shap .. Shap3
		else
			count_1, count_2 = math.i( j - 4, 9 )[ "1-->A" ], math.i( j - 4, 9, 1 )[ "A,mB" ]
			if sudoku_tbl[ count_2 ][ count_1 ] ~= 0 then
				return format( "{\\an5\\pos(%s,%s)\\bs0\\1c&H545459&\\fnArial\\fs%s\\blur0.45}%s",
					0.5 * xres - 4 * siz + siz * (count_1 - 1),
					0.5 * yres - 4 * siz + siz * (count_2 - 1),
					45 * ratio,
					sudoku_tbl[ count_2 ][ count_1 ]
				)
			end
			return nil
		end
	end

	function math.shape( Shape, Length, Mode, Max_n )
		--retorna la posición y el ángulo de los objetos karaoke en la trayectoria de una shape
		local Align_Shape = nil
		local OffsetB = nil
		if type( Max_n ) == "number" then
			return math.bezier2( Shape, Mode, Align_Shape, OffsetB, { Length, Max_n } )
		end --retorna el conjunto de posiciones y rotaciones en un tabla
		return math.bezier2( Shape, Mode, Align_Shape, OffsetB, { Length } )
		--retorna los tags \pos y \fr respecto al loop ( j ) :D
	end --november 27th 2018
	
	function math.audio( Audio_wav, Loops, Scale, Offset_time, Values )
		local Wav_fil = Audio_wav or "test.wav"
		local Wav_frm = 2 * frame_dur
		local Wav_max = Loops or 12
		local Wav_scl = Scale or 1 / 86 -- = 0.0116 vertical scale
		local Wav_otm = Offset_time or 0
		effector.print_error( Wav_fil, "string", "math.audio", 1 )
		effector.print_error( Wav_max, "number", "math.audio", 2 )
		effector.print_error( Wav_scl, "number", "math.audio", 3 )
		effector.print_error( Wav_otm, "number", "math.audio", 4 )
		if Wav_scl <= 0 then
			Wav_scl = abs( Wav_scl )
		end
		if Wav_fil:match( "%.wav" ) == nil then
			Wav_fil = Wav_fil .. ".wav"
		end
		if Wav_max <= 0 then
			Wav_max = 2
		end
		local reader = Yutils.decode.create_wav_reader( Wav_fil )
		local chunk_size = reader.sample_from_ms( Wav_frm )
		local max_transfos = ceil( (linefx[ ii ].duration + 2 * Wav_otm) / Wav_frm )
		local barras = ceil( Wav_max )
		local vals_tbl, idx, ms
		local val_y_tbl = { }
		for i = 1, max_transfos do
			ms = linefx[ ii ].start_time + Wav_frm * (i - 1)
			reader.position( floor( reader.sample_from_ms( ms ) ) )
			vals_tbl = reader.samples( chunk_size )[ 1 ]
			idx = ceil( (#vals_tbl + 1) / (barras + 1) )
			val_y_tbl[ i ] = { }
			for k = 1, barras do
				val_y_tbl[ i ][ k ] = vals_tbl[ k * idx ]
			end
		end
		local transfos_vals = { }
		for i = 1, barras do
			transfos_vals[ i ] = { }
			for k = 1, max_transfos do
				transfos_vals[ i ][ k ] = floor( abs( val_y_tbl[ k ][ i ] ) * Wav_scl )
			end
		end
		local transfos_tags = { }
		for i = 1, barras do
			transfos_tags[ i ] = format( "\\fscy%s", transfos_vals[ i ][ 1 ] )
			for k = 2, max_transfos do
				transfos_tags[ i ] = transfos_tags[ i ] .. format( "\\t(%s,%s,\\fscy%s)", (k - 1) * Wav_frm, k * Wav_frm, transfos_vals[ i ][ k ] )
			end
		end
		if Values then
			return transfos_vals
		end
		return transfos_tags --december 05th 2018
		--convierte un archivo .wav en valores o transformaciones para shapes :D
	end --math.audio( )

	function math.to16( Num )
		--decimal to hexadecimal
		if type( Num ) == "function" then
			Num = Num( )
		end
		local dec_to_hex = Num
		effector.print_error( dec_to_hex, "numbertable", "math.to16", 1 )
		if type( Num ) == "number" then
			dec_to_hex = format( "%X", math.round( Num ) )
		elseif type( Num ) == "table" then
			dec_to_hex = { }
			for k, v in pairs( Num ) do
				if type( v ) == "number" then
					dec_to_hex[ k ] = format( "%X", math.round( v ) )
				else
					dec_to_hex[ k ] = v
				end
			end
		end
		return dec_to_hex --august 03rd 2019
	end --math.to16( 255 )

	function math.clamp( Num, Min, Max )
		--restringe un número entre un mínimo y un máximo
		if type( Num ) == "function" then
			Num = Num( )
		end
		if type( Min ) == "function" then
			Min = Min( )
		end
		if type( Max ) == "function" then
			Max = Max( )
		end
		if Min == nil then
			Min = 0
		end
		if Max == nil then
			Max = 1
		end
		effector.print_error( Num, "number", "math.clamp", 1 )
		effector.print_error( Min, "number", "math.clamp", 2 )
		effector.print_error( Max, "number", "math.clamp", 3 )
		local c_min = math.min( Min, Max )
		local c_max = math.max( Min, Max )
		if type( Num ) == "number" then
			if Num < c_min then
				return c_min
			elseif Num > c_max then
				return c_max
			end
		end
		return Num --august 03rd 2019
	end --math.clamp( 3, 5, 10 )
	
	function math.clamp2( Num, Min, Max )
		if type( Num ) == "function" then
			Num = Num( )
		end
		if type( Min ) == "function" then
			Min = Min( )
		end
		if type( Max ) == "function" then
			Max = Max( )
		end
		if Min == nil then
			Min = 0
		end
		if Max == nil then
			Max = 1
		end
		effector.print_error( Num, "number", "math.clamp2", 1 )
		effector.print_error( Min, "number", "math.clamp2", 2 )
		effector.print_error( Max, "number", "math.clamp2", 3 )
		local Num = math.round( Num * 10000 )
		local Min = math.round( Min * 10000 )
		local Max = math.round( Max * 10000 )
		return math.round( math.i( Num, Min, Max )[ "A-->B-->A" ] / 10000, 3 )
	end --math.clamp2( 3m, 0, 1 )

	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "tag" ------------------------------------------------------------------
	
	function tag.redefine( String )
		-- "\\[%d]*%a+(%-?[%d&#]^*[%.%dH&%x]*)" --> captura un número/color
		--▼--------------------------------------------------------
		if type( String ) == "function" then
			String = String( )
		end
		local String = String or ""
		effector.print_error( String, "string", "tag.redefine", 1 )
		--▼--------------------------------------------------------
		-- retorna los tags con sus valores en default: "\\blur~"
		String = String:gsub( "\\(%d%d+)(v?[ac]^*)%~",
			function( Coloralpha, Tag )
				local n = Coloralpha:len( )
				local newcap = ""
				for i = 1, n do
					newcap = newcap .. "\\" .. Coloralpha:sub( i, i ) .. Tag .. "~"
				end
				return newcap
			end
		) --april 14th 2018
		String = tag.default2( String ) -- april 6th 2018
		--▼--------------------------------------------------------
		-- separa los tags de los paréntesis que terminan en [-~]^*
		String = String:gsub( "(\\%w+%-?[%d&#]^*[%.%dH&%x]*)(%b()[%-%~]^*)", "%1 %2" )
		--▼--------------------------------------------------------
		-- encierra la funcción R dentro de paréntesis
		String = String:gsub( "R[%w]*%b()", "(%1)" )
		--▼--------------------------------------------------------
		-- grupo de colores, de alphas y de estilos
		String = String:gsub( "\\txt%.c", text.color ):gsub( "\\txt%.a", text.alpha )
		:gsub( "\\txt%.s",  text.style ):gsub( "\\shp%.c", shape.color )
		:gsub( "\\shp%.a", shape.alpha ):gsub( "\\shp%.s", shape.style )
		--▼--------------------------------------------------------
		-- tag.only
		String = string.cap( String, "\\(%b[])[ ]*(%b[])[ ]*", { "(%b[])" },
			function( condition, true_exit, false_exit )
				local condition = condition:sub( 2, -2 ):gsub( "\\", "\\\\" )
				local true_exit = string.toval( true_exit:sub( 2, -2 ) ):gsub( "\\", "\\\\" ):gsub( "%&", "↓" )
				--true_exit fix: may 11th 2018 --> add the string.toval function
				if false_exit then
					false_exit = string.toval( false_exit:sub( 2, -2 ) ):gsub( "\\", "\\\\" ):gsub( "%&", "↓" )
					--false_exit fix: may 11th 2018 --> add the string.toval function
				end
				local tag_only = format( "tag.only( %s, %s )", condition, "\"" .. true_exit .. "\"" )
				if false_exit then
					tag_only = format( "tag.only( %s, %s, %s )",
						condition, "\"" .. true_exit .. "\"", "\"" .. false_exit .. "\""
					) --"\\[j == 1][\\bs~]"
				end --"\\[syl.i == 1][\\1a0]"
				tag_only = string.toval( tag_only ):gsub( "↓", "%&" ) -- april 12th 2018
				return tag_only
			end --"\\[syl.i % 2 == 1][\\fr45][\\fr-45]"
		)	--"\\[syl.i == 1][\\fscy300]", "\\[syl.i > 5][\\1cR( )]", "\\[syl.i % 2 == 1][\\fr15][\\fr-15]"
		--▼--------------------------------------------------------
		-- extrae el modo de la función retime dentro del tag \\tr
		String = String:gsub( "\\tr[%w%~%-]*%b()",
			function( capture )
				if capture:match( "\\tr[%w%~%-]*%([ ]*%a+[%a%d]*," ) then
					local retime_modes = {
						[ 01 ] = "line",			[ 02 ] = "preline",			[ 03 ] = "postline",
						[ 04 ] = "word",			[ 05 ] = "preword",			[ 06 ] = "postword",
						[ 07 ] = "syl",				[ 08 ] = "presyl",			[ 09 ] = "postsyl",
						[ 10 ] = "furi",			[ 11 ] = "prefuri",			[ 12 ] = "postfuri",
						[ 13 ] = "char",			[ 14 ] = "prechar",			[ 15 ] = "postchar",
						[ 16 ] = "start2word",		[ 17 ] = "word2end",		[ 18 ] = "start2syl",
						[ 19 ] = "syl2end",			[ 20 ] = "start2furi",		[ 21 ] = "furi2end",
						[ 22 ] = "start2char",		[ 23 ] = "char2end",		[ 24 ] = "linepct",
						[ 25 ] = "wordpct",			[ 26 ] = "sylpct",			[ 27 ] = "furipct",
						[ 28 ] = "charpct",			[ 29 ] = "set",				[ 30 ] = "abs",
						[ 31 ] = "fxpretime",		[ 32 ] = "fxtime",			[ 33 ] = "fxposttime",
						[ 34 ] = "fxpct",			[ 35 ] = "startsyl2char",	[ 36 ] = "startword2syl",
						[ 37 ] = "startword2char",	[ 38 ] = "syl2endword",		[ 39 ] = "char2endsyl",
						[ 40 ] = "char2endword"
					}
					local tr_mode = capture:match( "\\tr[%w%~%-]*%([ ]*(%a+[%a%d]*)," )
					if table.inside( retime_modes, tr_mode ) then
						local capture = capture:gsub( "(\\tr[%w%~%-]*%()[ ]*%a+[%a%d]*,", "%1" )
						return format( "%s<<%s>>", capture, tr_mode )
					end
					return capture:gsub( "(\\t)r([%w%~%-]*%()[ ]*%a+[%a%d]*,", "%1%2" )
					-- para que se elimine la "r" y el modo que esté mal escrito!!
				end --"\\tr(demo,0,300,\\1cR())"
			end
		) --"\\tr(syl,0,200,0.8,\\tags)"
		--▼--------------------------------------------------------
		-- da valores a los times y accel de una transformación \\t
		-- convierte los formatos de tiempos dentro de las transfos
		String = String:gsub( "\\t[%w%~%-]*%b()", -- september 29th 2017
			function( capture )
				local capture = capture:gsub( "%d+%:%d+%:%d+%.%d+",
					function( cap_time )
						return tostring( HMS_to_ms( cap_time ) )
					end
				) --"\\tr(set,0:01:00.018,0:01:07.032,\\tags)"
				if capture:match( "\\t[%w%~%-]*%([ ]*\\" ) then
					return capture
				elseif capture:match( "\\t[%w%~%-]*%(([^\\]*)" ) then
					timest_tbl = "{" .. capture:match( "\\t[%w%~%-]*%(([^\\]*)" ):sub( 1, -2 ) .. "}"
					timest_tbl = string.toval( timest_tbl )
					if type( timest_tbl ) == "table" then
						capture = capture:gsub( "(\\t[%w%~%-]*%()([^\\]*)",
							function( Pretag, Timestag )
								if Pretag:match( "\\tr" ) == nil then
									local time_ini = timest_tbl[ 1 ] or 0
									local time_acc = timest_tbl[ 3 ] or 1
									local time_fin
									if timest_tbl[ 2 ] == nil then
										time_ini, time_fin = 0, fx.dur
										time_acc = timest_tbl[ 1 ]
									else
										time_fin = timest_tbl[ 2 ]
									end
									return format( "%s%s,%s,%s,\\", Pretag, time_ini, time_fin, time_acc )
								end
								return Pretag .. Timestag
							end
						)
						return capture
					end --"\\t(0.8,\\tags\\otros)"
				end
			end --"\\t( R( 100, 300, 10 ), 500 + line.n,\\xshadR( 4 ) )"
		)
		--▼--------------------------------------------------------
		-- combinación de la función retime y los tags \\t september 08th 2017
		String = String:gsub( "(\\tr[%w%~%-]*)(%b())%<%<(%w+)%>%>",
			function( tagt, capture, rmode )
				local function time_toval( set_time )
					if set_time:match( "\\t[%w%~%-]*%(([^\\]*)" ) then
						local times_tbl = "{" .. set_time:match( "\\t[%w%~%-]*%(([^\\]*)" ):sub( 1, -2 ) .. "}"
						times_tbl = string.toval( times_tbl )
						if type( times_tbl ) == "table" then
							local add_time_ini = times_tbl[ 1 ] or 0
							local add_time_acc = times_tbl[ 3 ] or 1
							local add_time_fin
							if times_tbl[ 2 ] == nil then
								add_time_ini, add_time_fin = 0, 0
								add_time_acc = times_tbl[ 1 ]
							else
								add_time_fin = times_tbl[ 2 ]
							end
							return add_time_ini, add_time_fin, add_time_acc
						end
					end
					return set_time
				end
				if capture:match( "\\%w+[ %S]*" ) then  -- si sí hay tags en el \\t
					local tag_trans = tagt:gsub( "r", "" ) -- retira la "r" del \\t
					local tags_in_t = capture:match( "\\%w+[ %S]*" ):sub( 1, -2 )
					local reti_mode = rmode
					local t_ini, t_fin, t_acc
					if type( time_toval( tagt .. capture ) ) ~= "string" then
						t_ini, t_fin, t_acc = time_toval( tagt .. capture )
						t_ini, t_fin = retimettag( reti_mode, t_ini, t_fin )
						return format( "%s(%s,%s,%s,%s)", tag_trans, t_ini, t_fin, t_acc, tags_in_t )
					end
					return tagt .. capture
				end
				return tagt .. capture
			end
		)
		--▼--------------------------------------------------------
		-- saca algunos tags al inicio del \\t a una transfo instantánea
		String = String:gsub( "\\t[%w%~%-]*%b()",
			function( capture )
				local capture = string.coupling( capture, "(\\[%d]*%a+)(__)(:)(__)" )
				if capture:match( "\\[%d]*%a+%b()%:%b()" ) then
					local time_ini, time_fin = 0, 0
					if capture:match( "\\t[%w%~%-]*%([ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*," ) then
						time_ini, time_fin = capture:match( "\\t[%w%~%-]*%([ ]*(%-?%d+[%.%d ]*),[ ]*(%-?%d+[%.%d ]*)," )
					end
					if capture:match( "\\te" ) then
						local time_dur = fx.dur
						if capture:match( "\\t[%w%~%-]*" ):match( "s" ) then
							time_dur = syl.end_time
						elseif capture:match( "\\t[%w%~%-]*" ):match( "c" ) then
							time_dur = char.end_time
						elseif capture:match( "\\t[%w%~%-]*" ):match( "f" ) then
							time_dur = furi.end_time
						elseif capture:match( "\\t[%w%~%-]*" ):match( "w" ) then
							time_dur = word.end_time
						end
						time_ini = time_dur - time_fin
					end -- april 12th 2018
					local tags_ini_tbl = { }
					for cap in capture:gmatch( "\\[%d]*%a+%b()%:%b()" ) do
						table.insert( tags_ini_tbl, cap:match( "(\\[%d]*%a+%b())%:%b()" ) )
					end
					---------------------------------------------------
					capture = capture:gsub( "\\[%d]*%a+(%b())%:(%b())",
						function( val_ini, val_fin )
							if string.toval( val_ini ) == string.toval( val_fin ) then
								return ""
							end
						end
					) --april 14th 2018
					---------------------------------------------------
					capture = capture:gsub( "(\\[%d]*%a+)%b()%:(%b())", "%1%2" )
					---------------------------------------------------
					if capture:match( "\\t[%w%~%-]*%(%-?%d[%.%d]*,%-?%d[%.%d]*,%-?%d[%.%d]*,\\%)" )
						or capture:match( "\\t[%w%~%-]*%(%-?%d[%.%d]*,%-?%d[%.%d]*,\\%)" ) then
						capture = "" -- para transfos vacías :)
					end --april 14th 2018
					---------------------------------------------------
					return format( "\\t(%s,%s,%s)%s", time_ini, time_ini, table.op( tags_ini_tbl, "concat" ), capture )
				end --"\\tes(0,100,\\frR( 45 ):0)"
			end --"\\tr(syl,\\fscxyr1.5:1\\1cR( ):TC1)"
		) --"\\t(300,900,0.8,\\1cR( ):&HFFFFFF&\\bs0\\blur1:3)"
		--▼--------------------------------------------------------
		-- interpolaciones entre los valores de un tag en un loop
		String = string.coupling( String, "(\\[%d]*%a+)(__)(::)(__)" )
		String = String:gsub( "(\\[%d]*%a+)(%b())(%:%:)(%b())",
			function( Tag, Val_ini, Signs, Val_fin )
				local Val_ini = Val_ini:sub( 2, -2 )
				local Val_fin = Val_fin:sub( 2, -2 )
				local line = linefx[ ii ]
				if Val_ini:match( "&H%x+&" ) then
					Val_ini = Val_ini
				elseif Val_ini ~= string.toval( Val_ini ) then
					Val_ini = string.toval( Val_ini )
				else
					return format( "%s(%s)%s%s", Tag, "Invalid Value", Signs, Val_fin )
				end --"\\blur1::5"
				if Val_fin:match( "&H%x+&" ) then
					Val_fin = Val_fin
				elseif Val_fin ~= string.toval( Val_fin ) then
					Val_fin = string.toval( Val_fin )
				else
					return format( "%s%s%s(%s)", Tag, Val_ini, Signs, "Invalid Value" )
				end
				if Tag:match( "\\%d+v?a" )
					or Tag:match( "\\alpha" ) then
					return format( "%s%s\\t(%s%s)",
						Tag, alpha.interpolate( Val_ini, Val_fin, (j - 1) / maxj ),
						Tag, alpha.interpolate( Val_ini, Val_fin, (j - 0) / maxj )
					)
				end --"\\1a0::255"
				if Tag:match( "\\%d+v?c" ) then
					return format( "%s%s\\t(%s%s)",
						Tag, color.interpolate( Val_ini, Val_fin, (j - 1) / maxj ),
						Tag, color.interpolate( Val_ini, Val_fin, (j - 0) / maxj )
					)
				end
				return format( "%s%s\\t(%s%s)",
					Tag, Val_ini + (Val_fin - Val_ini) * (j - 1) / maxj,
					Tag, Val_ini + (Val_fin - Val_ini) * (j - 0) / maxj
				)
			end
		) --"\\tag(val1)::(val2)" --> "\\tag(val1 * (j - 1) / maxj)\\t(\\tag(val2 * (j - 0) / maxj))"
		--▼--------------------------------------------------------
		-- tag.natsu
		-- el signo ">" lo hace respecto al loop ( module  )
		-- el signo "<" lo hace respecto a val_i ( module1 )
		String = string.coupling( String, "(\\[%d]*%a+)(__)([<>]^*)(__)" )
		String = String:gsub( "(\\[%d]*%a+)(%b())([%<%>]^*)(%b())",
			function( tag_natsu, ini_natsu, signo, fin_natsu )
				local sig_natsu = "-"
				local ini_natsu, fin_natsu = string.toval( ini_natsu:sub( 2, -2 ) ), string.toval( fin_natsu:sub( 2, -2 ) )
				ini_natsu, fin_natsu = tostring( ini_natsu ), tostring( fin_natsu )
				if ini_natsu:match( "&H%x+&" ) then
					ini_natsu = "\"" .. ini_natsu:sub( 2, -2 ) .. "\""
				end
				if fin_natsu:match( "&H%x+&" ) then
					fin_natsu = "\"" .. fin_natsu:sub( 2, -2 ) .. "\""
				end
				if signo == "<" then
					sig_natsu = ""
				end
				return format( "%s{%s,%s}", tag_natsu .. sig_natsu, ini_natsu, fin_natsu )
			end
		) --"\\blur1>5"
		--▼--------------------------------------------------------
		-- convierte un \\t normal en una por default \\t --> \\td
		String = String:gsub( "\\t(%b()%b())", "\\td%1" )
		--▼--------------------------------------------------------
		String = tag.natsu( String )
		--▼--------------------------------------------------------
		String = String:gsub( "(\\[%d+]*ct[cfsw]*)(%d+[%.%d]*)(d)(%(R%b()%))",
			function( cap1, cap2, cap3, cap4 )
				return cap1 .. "(" .. cap2 ..")" .. cap3 .. cap4:sub( 2, -2 )
			end
		) --"\\1ct300dR( )"
		--▼--------------------------------------------------------
		local function default_time( Stringt )
			-- pasa a un tag dentro de una transformación, luego
			-- en otra transformación le da su valor por default
			--▼ modifica momentáneamente algunos tags del VSFilterMod ---
			Stringt = Stringt:gsub( "(\\distort)(%b())", "\\disTorT%2" )	-- "\\distort(1,1,1,1)"
			:gsub( "(\\distort)(t[cdefimsw]*%b())", "\\disTorT%2" )
			:gsub( "(\\jitter)(%b())", "\\jiTTer%2" )
			:gsub( "(\\jitter)(t[cdefimsw]*%b())", "\\jiTTer%2" )
			--▼ encierra en paréntesis el valor numérico del tag \\t ----
			Stringt = Stringt:gsub( "(\\%w+)(t[cfsw]*)(%d+[f%.%d]*)(d)", "%1%2(%3)%4" )
			--▼ encierra en paréntesis el valor que se añadirá al tag ---
			Stringt = Stringt:gsub( "(\\%w+)(t[cfsw]*)(%b())(d)(&H%x+&)", "%1%2(%3)%4(%5)" )	-- ass colors and alphas
			:gsub( "(\\%w+)(t[cfsw]*)(%b())(d)([ACST]*%-?%d+[%.%d]*)", "%1%2(%3)%4(%5)" )		-- números y/o referencias de alpha/colores
			:gsub( "(\\%w+)(t[cfsw]*)(%b())(d)(R[cdemrst]*%b())", "%1%2(%3)%4(%5)" )			-- valores randoms, función random
			--▼ genera los remplazos, ingresa el tag dentro del \\t -----
			Stringt = Stringt:gsub( "(\\%w+)(t[cfsw]*)(%b())d(%b())",
				function( tag_in_time, tag_time, duration, valors )
					local duration = tostring( duration ):sub( 2, -2 )
					local time_dur = fx.dur
					if tag_time == "ts" then
						time_dur = syl.dur
					elseif tag_time == "tc" then
						time_dur = char.dur
					elseif tag_time == "tf" then
						time_dur = furi.dur
					elseif tag_time == "tw" then
						time_dur = word.dur
					end
					if type( string.toval( duration ) ) == "number" then
						duration = string.toval( duration )
						return format( "\\%s(0,%s,%s)(0,%s)", tag_time, duration, tag_in_time .. valors, time_dur - duration )
						:gsub( "\\t%(", "\\td%(" )
					end
					return tag_in_time .. "(" .. duration .. ")d" .. valors
				end --"\\frxyt300dRs( 10 )"
			) --"\\frxyzt( 7f )dRs( 60, 90 )"
			--▼ opción cuando el tag \\t no lleva tiempos ---------------
			--▼ encierra en paréntesis el valor que se añadirá al tag ---
			Stringt = Stringt:gsub( "(\\%w+t[cdefimsw]*)([ACST]*%-?%d+[f%.%d]*)", "%1(%2)" )
			:gsub( "(\\%w+t[cdefimsw]*)(R[cdemrst]*%b())", "%1(%2)" )
			:gsub( "(\\%w+t[cdefimsw]*)(&H%x+&)", "%1(%2)" )
			--▼ genera los remplazos, ingresa el tag dentro del \\t -----
			Stringt = Stringt:gsub( "(\\%w+)(t[cdefimsw]*)(%b())",
				function( tag_in, tag_t, valors )
					return format( "\\%s(%s%s)", tag_t, tag_in, valors )
				end
			) --"\\1ctR( )" -->\\t(\\1cR( ))
			--▼ tm, tmd = time mid, time mid default --------------------
			Stringt = Stringt:gsub( "(\\tm[d]*)(%b())",
				function( tag_time, tags_in_time )
					tags_in_time = tags_in_time:sub( 2, -2 )
					tags_in_time = format( "(0,%s,%s)", fx.dur / 2, tags_in_time )
					if tag_time:match( "d" ) then
						return format( "\\td%s(0,%s)", tags_in_time, fx.dur / 2 )
					end
					return "\\t" .. tags_in_time
				end --"\\fscytm180" -->\\t(0,fx.dur/2,\\fscy180)
			) --"\\fscytmd200" -->\\t(0,fx.dur/2,\\fscy200)\\t(fx.dur/2,fx.dur,\\fscy100)
			return Stringt
		end
		--▼--------------------------------------------------------
		-- tag.oscill
		String = String:gsub( "(\\[%d]*%a+)(%-?[%d&]^*[%.%d&H%x]*)(o)(%d+[%.%d]*)", "%1(%2)%3(%4)" )
		:gsub( "(\\[%d]*%a+)(%-?[%d&]^*[%.%d&H%x]*)(o)(%b())", "%1(%2)%3%4" )
		:gsub( "(\\[%d]*%a+)(%b())(o)(%d+[%.%d]*)", "%1%2%3(%4)" )
		:gsub( "(\\[%d]*%a+)(%b())(o)(%b())(%d+[%.%d]*)", "%1%2%3%4(%5)" )
		String = String:gsub( "\\([%d]*%a+)(%b())o(%b())(%b())",
			function( Tag, Val, Dur, Delay )
				local TagVal = "\\\\" .. Tag .. Val
				local Dur = Dur:sub( 2, -2 )
				local Delay = Delay:sub( 2, -2 )
				local new_oscill = format( "tag.oscill( %s, %s, \"%s\" )", Dur, Delay, TagVal )
				return string.toval( new_oscill )
			end
		) --"\\frRs( 20 )o( 320 )( 80 )"
		String = String:gsub( "\\([%d]*%a+)(%b())o(%b())",
			function( Tag, Val, Delay )
				local TagVal = "\\\\" .. Tag .. Val
				local Dur = fx.dur
				local Delay = Delay:sub( 2, -2 )
				local new_oscill = format( "tag.oscill( %s, %s, \"%s\" )", Dur, Delay, TagVal )
				return string.toval( new_oscill )
			end
		)
		--▼--------------------------------------------------------
		local function multi_alphas( String )
			local alphas = {
				[ 1 ] = "\\(%d%d+)a(%b())([%-%~]*)",
				[ 2 ] = "\\(%d%d+)a(&H%x+&)([%-%~]*)",
				[ 3 ] = "\\(%d%d+)a(%d+[%.%d]*)([%-%~]*)",
				------------------------------------------
				[ 4 ] = "\\(%d%d+)a(%b())([%-%~]^*%d+[%.%d]*)",
				[ 5 ] = "\\(%d%d+)a(&H%x+&)([%-%~]^*%d+[%.%d]*)",
				[ 6 ] = "\\(%d%d+)a(%d+[%.%d]*)([%-%~]^*%d+[%.%d]*)",
				------------------------------------------
				[ 7 ] = "\\(%d%d+)a(%b())([%-%~]^*%b())",
				[ 8 ] = "\\(%d%d+)a(&H%x+&)([%-%~]^*%b())",
				[ 9 ] = "\\(%d%d+)a(%d+[%.%d]*)([%-%~]^*%b())",
			}
			for i = 1, #alphas do
				String = String:gsub( alphas[ i ],
					function( nums, val, sign_val )
						local str_alp = ""
						local tbl_num = table.string( tostring( nums ) )
						for k = 1, #tbl_num do
							str_alp = str_alp .. format( "\\%sa%s", tbl_num[ k ], val .. sign_val )
						end
						return "@" .. str_alp .. "@"
					end		
				)
			end
			return String
		end --"\\34a200"
		--▼--------------------------------------------------------
		local function multi_colors( String )
			local String = String:gsub( "\\(%d+)([ac]^*[km]^*[^\\]*)",
				function( numbers, values )
					if numbers:len( ) > 1 then
						local coloralpha = ""
						for i = 1, numbers:len( ) do
							coloralpha = coloralpha .. "\\" .. numbers:sub( i, i ) .. values
						end
						return coloralpha
					end
				end
			) --"\\134amrR( 100, 200 )"
			local colors = {
				[ 1 ] = "\\(%d%d+)c(%b())([%-%~]*)",
				[ 2 ] = "\\(%d%d+)c(&H%x+&)([%-%~]*)",
				[ 3 ] = "\\(%d%d+)c(R%b())([%-%~]*)",
				------------------------------------------
				[ 4 ] = "\\(%d%d+)c(%b())([%-%~]^*%d+[%.%d]*)",
				[ 5 ] = "\\(%d%d+)c(&H%x+&)([%-%~]^*%d+[%.%d]*)",
				[ 6 ] = "\\(%d%d+)c(R%b())([%-%~]^*%d+[%.%d]*)",
				------------------------------------------
				[ 7 ] = "\\(%d%d+)c(%b())([%-%~]^*%b())",
				[ 8 ] = "\\(%d%d+)c(&H%x+&)([%-%~]^*%b())",
				[ 9 ] = "\\(%d%d+)c(R%b())([%-%~]^*%b())",
			}
			for i = 1, #colors do
				String = String:gsub( colors[ i ],
					function( nums, val, sign_val )
						local str_col = ""
						local tbl_num = table.string( tostring( nums ) )
						for k = 1, #tbl_num do
							str_col = str_col .. format( "\\%sc%s", tbl_num[ k ], val .. sign_val )
						end
						return "@" .. str_col .. "@"
					end		
				)
			end
			return String
		end --"\\34cR( )"
		--▼--------------------------------------------------------
		--"\\134aR( 100, 200 )mr"	-->	"\\134amrR( 100, 200 )"
		String = String:gsub( "(\\%d%d+[ac]^*)(%-?[%d&#]^*[%.%dH&%x]*)([km]^*[dr]*)", "%1%3%2" )
		String = String:gsub( "(\\%d%d+[ac]^*)(%b())([km]^*[dr]*)", "%1%3%2" ) -- april 4th 2018
		--▼--------------------------------------------------------
		String = default_time( String )
		--▼--------------------------------------------------------
		String = multi_colors( String )
		--▼--------------------------------------------------------
		String = multi_alphas( String )
		--▼--------------------------------------------------------
		String = String:gsub( "([ac]^*)%((&H%x+&)%)", "%1%2" )
		String = String:gsub( "(\\[%d]*c)([km]^*[dr]*)(%([ ]*R%b()[ ]*%))", "%1%3%2" )
		:gsub( "(\\%w+)([km]^*[dr]*)(&H%x+&)", "%1%3%2" )
		:gsub( "(\\%w+)([km]^*[dr]*)(%-?%d+[%.%d]*)", "%1%2(%3)" )
		:gsub( "(\\%w+)([km]^*[dr]*)(%b())", "%1%3%2" )
		--▼--------------------------------------------------------
		String = String:gsub( "(\\[%dv]*c)(%([ ]*R%b()[ ]*%))",
			function( Tag, Random_funct )
				local Random_funct = Random_funct:match( "R%b()" ):sub( 2, -1 )
				return format( "%s( random.color%s )", Tag, Random_funct )
			end
		) --"\\1cR( ** )" --> "\\1c .. random.color( ** )"
		--▼--------------------------------------------------------
		String = String:gsub( "\\bs(%d[fr%.%d]*)", "\\bord%1\\shad%1" )
		:gsub( "\\bss", format( "\\bord%s\\shad%s", l.outline, l.shadow ) )
		--▼--------------------------------------------------------
		-- transformación con tiempos de "ratio" o proporción (p) de cierta duración
		String = String:gsub( "\\tp([cdefisw%d%~%-]*)%((%d+[%.%d]*),(%d+[%.%d]*),",
			function( tag_mod, time_ini, time_fin )
				local time_dur = fx.dur
				if tag_mod:match( "s" ) then
					time_dur = syl.dur
				elseif tag_mod:match( "c" ) then
					time_dur = char.dur
				elseif tag_mod:match( "f" ) then
					time_dur = furi.dur
				elseif tag_mod:match( "w" ) then
					time_dur = word.dur
				end
				local time_ini = tonumber( time_ini ) * time_dur
				local time_fin = tonumber( time_fin ) * time_dur
				return format( "\\t%s(%s,%s,", tag_mod, time_ini, time_fin )
			end
		)
		--▼--------------------------------------------------------
		-- adapta una transformación para que se ejecute desde el tiempo final
		String = String:gsub( "\\te([cfsw%~%-%d]*)(%b())",
			function( time_sign, time_tags )
				local new_tag = "\\t" .. time_sign .. time_tags
				local time_ini, time_fin, time_acc, time_mark = 0, fx.dur, "", ""
				if new_tag:match( "\\t[cfsw%~%-%d]*%([ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*," ) then
					time_ini = tonumber( new_tag:match( "\\t[cfsw%~%-%d]*%([ ]*(%-?%d+[%.%d ]*),[ ]*%-?%d+[%.%d ]*," ) )
					time_fin = tonumber( new_tag:match( "\\t[cfsw%~%-%d]*%([ ]*%-?%d+[%.%d ]*,[ ]*(%-?%d+[%.%d ]*)," ) )
				end
				if new_tag:match( "\\t[cfsw%~%-%d]*%([ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*," ) then
					time_acc = new_tag:match( "\\t[cfsw%~%-%d]*%([ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*,[ ]*(%-?%d+[%.%d ]*,)" )
				elseif new_tag:match( "\\t[cfsw%~%-%d]*%([ ]*%-?%d+[%.%d ]*,[ ]*\\" ) then
					time_acc = new_tag:match( "\\t[cfsw%~%-%d]*%([ ]*(%-?%d+[%.%d ]*,)[ ]*\\" )
				end
				local tags_inside = time_tags:sub( 2, -2 ):match( "\\%S+[ %S]*" )
				---------------------------------------
				--local time_dur = math.round( fx.dur, 1 ) --fix: july 04th 2018
				local time_dur = fx.dur
				if time_sign:match( "s" ) then
					time_dur = syl.dur
				elseif time_sign:match( "c" ) then
					time_dur = char.dur
				elseif time_sign:match( "f" ) then
					time_dur = furi.dur
				elseif time_sign:match( "w" ) then
					time_dur = word.dur
				end -- april 12th 2018
				---------------------------------------
				local time_end_ini = time_dur - time_fin
				local time_end_fin = time_dur - time_ini
				--[[
				local transfo_esp = {
					[ 01 ] = "1",	[ 02 ] = "2",	[ 03 ] = "3",	[ 04 ] = "4",
					[ 05 ] = "5",	[ 06 ] = "6",	[ 07 ] = "7",	[ 08 ] = "8",
					[ 09 ] = "9",	[ 10 ] = "0",	[ 11 ] = "~",	[ 12 ] = "-",
				}
				if table.inside( transfo_esp, time_sign ) then
					time_mark = "M"
				end --no recuerdo para qué es esta marca :P
				--]]
				return format( "\\t%s(%s,%s,%s)%s", time_sign, time_end_ini, time_end_fin, time_acc .. tags_inside, time_mark )
			end --"\\te(0,300,\\frR( 45 ))" = \\t(fx.dur-300,fx.dur,\\frR( 45 ))
		) --"\\tes(0,100,\\frR( 45 ):0)"
		--▼--------------------------------------------------------
		local tag_fun = {
			-- tags funciones: todos aquellos que están seguidos de paréntesis
			[ 001 ] = "\\1vc",		[ 002 ] = "\\2vc",		[ 003 ] = "\\3vc",		[ 004 ] = "\\4vc",
			[ 005 ] = "\\1va",		[ 006 ] = "\\2va",		[ 007 ] = "\\3va",		[ 008 ] = "\\4va",
			[ 009 ] = "\\1img",		[ 010 ] = "\\2img",		[ 011 ] = "\\3img",		[ 012 ] = "\\4img",
			[ 013 ] = "\\pos",		[ 014 ] = "\\move",		[ 015 ] = "\\moves3",	[ 016 ] = "\\moves4",
			[ 017 ] = "\\mover",	[ 018 ] = "\\movevc",	[ 019 ] = "\\org",		[ 020 ] = "\\disTorT",
			[ 021 ] = "\\fad",		[ 022 ] = "\\fade",		[ 023 ] = "\\jiTTer",	[ 024 ] = "\\clip",
			[ 025 ] = "\\iclip",	[ 026 ] = "\\t",		[ 027 ] = "\\t~",		[ 028 ] = "\\t-",
			[ 029 ] = "\\tc",		[ 030 ] = "\\td",		[ 031 ] = "\\tf",		[ 032 ] = "\\ti",
			[ 033 ] = "\\ts",		[ 034 ] = "\\tw",		[ 035 ] = "\\t0",		[ 036 ] = "\\t1",
			[ 037 ] = "\\t2",		[ 038 ] = "\\t3",		[ 039 ] = "\\t4",		[ 040 ] = "\\t5",
			[ 041 ] = "\\t6",		[ 042 ] = "\\t7",		[ 043 ] = "\\t8",		[ 044 ] = "\\t9",
			[ 045 ] = "\\tc~",		[ 046 ] = "\\tf~",		[ 047 ] = "\\ts~",		[ 048 ] = "\\tw~",
			[ 049 ] = "\\tc-",		[ 050 ] = "\\tf-",		[ 051 ] = "\\ts-",		[ 052 ] = "\\tw-",
			[ 053 ] = "\\tc0",		[ 054 ] = "\\tf0",		[ 055 ] = "\\ts0",		[ 056 ] = "\\tw0",
			[ 057 ] = "\\tc1",		[ 058 ] = "\\tf1",		[ 059 ] = "\\ts1",		[ 060 ] = "\\tw1",
			[ 061 ] = "\\tc2",		[ 062 ] = "\\tf2",		[ 063 ] = "\\ts2",		[ 064 ] = "\\tw2",
			[ 065 ] = "\\tc3",		[ 066 ] = "\\tf3",		[ 067 ] = "\\ts3",		[ 068 ] = "\\tw3",
			[ 069 ] = "\\tc4",		[ 070 ] = "\\tf4",		[ 071 ] = "\\ts4",		[ 072 ] = "\\tw4",
			[ 073 ] = "\\tc5",		[ 074 ] = "\\tf5",		[ 075 ] = "\\ts5",		[ 076 ] = "\\tw5",
			[ 077 ] = "\\tc6",		[ 078 ] = "\\tf6",		[ 079 ] = "\\ts6",		[ 080 ] = "\\tw6",
			[ 081 ] = "\\tc7",		[ 082 ] = "\\tf7",		[ 083 ] = "\\ts7",		[ 084 ] = "\\tw7",
			[ 085 ] = "\\tc8",		[ 086 ] = "\\tf8",		[ 087 ] = "\\ts8",		[ 088 ] = "\\tw8",
			[ 089 ] = "\\tc9",		[ 090 ] = "\\tf9",		[ 091 ] = "\\ts9",		[ 092 ] = "\\tw9",
			[ 093 ] = "\\tp",		[ 094 ] = "\\tsx",		[ 095 ] = "\\tcx",		[ 986 ] = "\\tfx",
			[ 097 ] = "\\twx",
		}
		local tags_out = {
			-- los tags que quedan excluidos de ser remplazados en esta función, ya que de otro
			-- modo,  el valor random sería el mismo para cada uno de los tags que los componen
			[ 001 ] = "\\fscxy(R",	[ 002 ] = "\\frxy(R",	[ 003 ] = "\\frxz(R",	[ 004 ] = "\\fryz(R",
			[ 005 ] = "\\frxyz(R",	[ 006 ] = "\\faxy(R",	[ 007 ] = "\\fscxyr(R",	[ 008 ] = "\\frxyo(R",
			[ 009 ] = "\\frxzo(R",	[ 010 ] = "\\fryzo(R",	[ 011 ] = "\\frxyzo(R",	[ 012 ] = "\\xybord(R",
			[ 013 ] = "\\xyshad(R",
		}
		--▼--------------------------------------------------------
		String = String:gsub( "\\%w+%b()", -- tags seguidos de paréntesis :)
			function( capture )
				-------------------------------------------------------------------
				local line = linefx[ ii ]
				local tag_capture = tag.operation( capture:match( "(\\%w+)%b()" ) )
				local val_capture = capture:match( "\\%w+(%b())" ):sub( 2, -2 )
				-------------------------------------------------------------------
				if table.inside( tags_out, capture:match( "\\%w+%(R" ) ) == false then
					if type( table.index( tag_fun, tag_capture ) ) == "number" then
						--[ 1 ]: transformaciones
						if table.index( tag_fun, tag_capture ) >= 26 then
							val_capture = val_capture:gsub( "\\%w+%b()",
								function( time_capture )
									--------------------------------------------------------------------------
									local line = linefx[ ii ]
									local t_tag_capture = tag.operation( time_capture:match( "(\\%w+)%b()" ) )
									local t_val_capture = time_capture:match( "\\%w+(%b())" ):sub( 2, -2 )
									--------------------------------------------------------------------------
									if table.inside( tags_out, time_capture:match( "\\%w+%(R" ) ) == false then
										--[ 2 ]: tags funciones dentro de una transformación
										if type( table.index( tag_fun, t_tag_capture ) ) == "number" then
											if table.index( tag_fun, t_tag_capture ) >= 13
												and table.index( tag_fun, t_tag_capture ) <= 25 then
												if type( string.toval( "{" .. t_val_capture .. "}" ) ) == "table" then
													return format( "%s(%s)", t_tag_capture, table.op( string.toval( "{" .. t_val_capture .. "}" ), "concat", "," ) )
												end --"\\t(\\clip( line.left, line.top, line.right, line.bottom ))"
												return format( "%s(%s)", t_tag_capture, t_val_capture )
											end
										end
										--[ 3 ]: tags funciones del 1 al 12 dentro de una transformación
										if table.inside( tag_fun, t_tag_capture ) then -- tags del MOD
											return time_capture
										end
										--[ 4 ]: tags dentro de una transformación
										return t_tag_capture .. string.toval( t_val_capture )
										--"\\t(\\blur( 3 + demo ))"
									end
									return time_capture
								end
							)
							return format( "%s(%s)", tag_capture, val_capture )
						end --"\\t(0,1000,\\blurR( 8 ))"
						--[ 5 ]: tags de posición, \\org y otros tags funciones
						if table.index( tag_fun, tag_capture ) >= 13
							and table.index( tag_fun, tag_capture ) <= 25 then
							if type( string.toval( "{" .. val_capture .. "}" ) ) == "table" then
								return format( "%s(%s)", tag_capture, table.op( string.toval( "{" .. val_capture .. "}" ), "concat", "," ) )
							end --"\\org( line.left, line.middle )"
							return capture
						end
						return capture
					end
					--[ 6 ]: tags que no son funciones
					return tag_capture .. string.toval( val_capture )
					--"\\blur( 3 + 5m )"
				end
				return capture
			end
		)
		--▼--------------------------------------------------------
		-- transformaciones de movimientos de clip's
		String = String:gsub( "(\\i?clip)(%b())[ ]*(%b())",
			function( Tag, Coor, Times_moves )
				local coors = { }
				local clip_moves = ""
				for num in Coor:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( coors, tonumber( num ) )
				end
				if #coors >= 4
					and Coor:match( "m" ) == nil then
					local tmoves = { }
					local t_moves = Times_moves:sub( 2, -2 )
					if pcall( loadstring( format( "return function( meta, line, x, y ) return { %s } end", t_moves ) ) ) then
						local tmoves_func = loadstring( format( "return function( meta, line, x, y ) return { %s } end", t_moves ) )( )
						if pcall( tmoves_func ) then
							tmoves = tmoves_func( meta, line, x, y )
						end
						for i = 1, #tmoves do
							clip_moves = clip_moves .. format( "\\t(%s,%s,%s,%s(%s,%s,%s,%s))",
								tmoves[ i ][ 1 ], tmoves[ i ][ 2 ], tmoves[ i ][ 5 ] or 1, Tag,
								coors[ 1 ] + tmoves[ i ][ 3 ], coors[ 2 ] + tmoves[ i ][ 4 ],
								coors[ 3 ] + tmoves[ i ][ 3 ], coors[ 4 ] + tmoves[ i ][ 4 ]
							)
						end
						clip_moves = clip_moves:gsub( "(\\t%(%d+[%.%d]*%,%d+[%.%d]*%,)1%,", "%1" )
						return Tag .. Coor .. clip_moves
					end
				end                                          --   t1  t1   x     y	  accel*
			end --"\\clip(fx.pos_l,fx.pos_t,fx.pos_r,fx.pos_b)( { 0, 200, 120, -342, [ 0.8 ] } )
		)
		String = String:gsub( "\\\\", "\\" )
		return String
	end

	function tag.dark( Text )
		if type( Text ) == "function" then
			Text = Text( )
		end
		effector.print_error( Text, "true", "tag.dark", 1 )
		Text = tag.redefine( Text )
		------------------------------------------------------------------------------------------
		local tags_i = {
			[ 01 ] = "(\\fscxy)",			[ 02 ] = "(\\frxy)",			[ 03 ] = "(\\frxz)",
			[ 04 ] = "(\\fryz)",			[ 05 ] = "(\\frxyz)",			[ 06 ] = "(\\faxy)",
			[ 07 ] = "(\\fscxr)",			[ 08 ] = "(\\fscyr)",			[ 09 ] = "(\\fscxyi)",
			[ 10 ] = "(\\fscxy[i]*r)",		[ 11 ] = "(\\frxo)",			[ 12 ] = "(\\fryo)",
			[ 13 ] = "(\\fr[z]*o)",			[ 14 ] = "(\\frxyo)",			[ 15 ] = "(\\frxzo)",
			[ 16 ] = "(\\fryzo)",			[ 17 ] = "(\\frxyzo)",			[ 18 ] = "(\\xybord)",
			[ 19 ] = "(\\xyshad)",
		}
		------------------------------------------------------------------------------------------
		local tags_v = {
			[ 01 ] = "(%-?%d+[%.%d]*)",
			[ 02 ] = "(R[cdemrs]*%b())",
			[ 03 ] = "(%b())",
			[ 04 ] = "([%-%~kmdr]*)",
		}
		------------------------------------------------------------------------------------------
		local tags_r = {
			[ 01 ] = "\\fscx%s\\fscy%s",					[ 02 ] = "\\frx%s\\fry%s",
			[ 03 ] = "\\frx%s\\frz%s",						[ 04 ] = "\\fry%s\\frz%s",
			[ 05 ] = "\\frx%s\\fry%s\\frz%s",				[ 06 ] = "\\fax%s\\fay%s",
			[ 07 ] = "\\fscxr%s",							[ 08 ] = "\\fscyr%s",
			[ 09 ] = "\\fscx%s\\fscy%s",					[ 10 ] = "\\fscxr%s\\fscyr%s",
			[ 11 ] = "\\org(%s,%s)\\frx%s",					[ 12 ] = "\\org(%s,%s)\\fry%s",
			[ 13 ] = "\\org(%s,%s)\\frz%s",					[ 14 ] = "\\org(%s,%s)\\frx%s\\fry%s",
			[ 15 ] = "\\org(%s,%s)\\frx%s\\frz%s",			[ 16 ] = "\\org(%s,%s)\\fry%s\\frz%s",
			[ 17 ] = "\\org(%s,%s)\\frx%s\\fry%s\\frz%s",	[ 18 ] = "\\xbord%s\\ybord%s",
			[ 19 ] = "\\xshad%s\\yshad%s",
		}
		------------------------------------------------------------------------------------------
		Text = Text:gsub( "%.line", ".LINE" ) --> var.line.val
		:gsub( "meta%.res_x", "xres" ):gsub( "meta%.res_y", "yres" )
		:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_counter" )
		:gsub( "line%.", "linefx[  ii  ]." )
		:gsub( "(&H%x+&)", "\"" .. "%1" .. "\"" )
		:gsub( "%.LINE", ".line" ) --add: january 18th 2019
		------------------------------------------------------------------------------------------
		local v01, v02
		ext_funct_b, ext_funct_v = nil, ""
		for i = 1, #tags_i do
			for k = 1, 3 do
				----------------------------------------------------------------------------------------------
				if Text:match( tags_i[ i ] .. tags_v[ k ] .. "([%~%-]^*%d+[%.%d]*)" ) then
					ext_funct_b = true
					v01, v02, ext_funct_v = Text:match( tags_i[ i ] .. tags_v[ k ] .. "([%~%-]^*%d+[%.%d]*)" )
					Text = Text:gsub( tags_i[ i ] .. tags_v[ k ] .. "([%~%-]^*%d+[%.%d]*)", "%1%2" )
				elseif Text:match( tags_i[ i ] .. tags_v[ k ] .. "([%~%-]^*%b())" ) then
					ext_funct_b = true
					v01, v02, ext_funct_v = Text:match( tags_i[ i ] .. tags_v[ k ] .. "([%~%-]^*%b())" )
					Text = Text:gsub( tags_i[ i ] .. tags_v[ k ] .. "([%~%-]^*%b())", "%1%2" )
				end --"\\xyshad-6r~300"
				----------------------------------------------------------------------------------------------
				Text = Text:gsub( tags_i[ i ] .. tags_v[ k ] .. tags_v[ 4 ],
					function( tagdark, capture, add_function )
						local extra_function = add_function
						if ext_funct_b then
							extra_function = ext_funct_v
							ext_funct_b = nil
						end
						local line = linefx[ ii ]
						if pcall( loadstring( format( "return function( meta, line, x, y ) return %s end", capture ) ) ) then
							local fun_dark = loadstring( format( "return function( meta, line, x, y ) return %s end", capture ) )( )
							if pcall( fun_dark ) then
								if tags_i[ i ]:match( "\\fscxyi" )
									and fun_dark( meta, line, x, y ) then
									local size_xy = fun_dark( meta, line, x, y )
									if size_xy then
										return format( "@" .. tags_r[ i ] .. "@",
											size_xy .. extra_function,
											size_xy .. extra_function
										)
									end
								end --"\\fscxyiRmr( 100, 200 )"
								if tags_r[ i ]:match( "\\org" )
									and fun_dark( meta, line, x, y ) then
									return format( "@" .. tags_r[ i ] .. "@",
										fx.pos_x, fx.pos_y,
										fun_dark( meta, line, x, y ) .. extra_function,
										fun_dark( meta, line, x, y ) .. extra_function,
										fun_dark( meta, line, x, y ) .. extra_function
									)
								end --"\\t(100,800,\\frxyoR( 20, 77 ))"
								if fun_dark( meta, line, x, y ) then
									return format( "@" .. tags_r[ i ] .. "@",
										fun_dark( meta, line, x, y ) .. extra_function,
										fun_dark( meta, line, x, y ) .. extra_function,
										fun_dark( meta, line, x, y ) .. extra_function
									) --"\\frxyzRds( 360 )"
								end
							end
						end
						return tagdark .. capture .. extra_function
					end
				)
			end
		end
		---------------------------------------------------------------------
		Text = Text:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
		:gsub( "l_counter", "line.i" ):gsub( "maxil_counter", "line.n")
		:gsub( "linefx%[  ii  %]%.", "line." )
		:gsub( "\"(&H%x+&)\"", "%1" )
		--"\\t(100,800,\\frxyoR( 10 * line.i, 77 ))"
		-- add: january 18th 2019 -------------------------------------------
		-- convierte los tags de escala, de ratio a porcentaje
		Text = Text:gsub( "(\\fsc[xy]^*)r(%-?%d+[%.%d]*)",
			function( tag_fsc, ratioxy )
				local Scale = l.scale_x
				if tag_fsc:match( "y" ) then
					Scale = l.scale_y
				end
				return tag_fsc .. Scale * tonumber( ratioxy )
			end
		)
		--convierte el tag \\fs de ratio a pixeles
		Text = Text:gsub( "\\fsr(%-?%d+[%.%d]*)",
			function( ratiofs )
				return "\\fs" .. l.fontsize * tonumber( ratiofs )
			end
		) --april 14th 2019
		-- tiempo de la transformación por default o del valor inverso
		Text = Text:gsub( "([%~%-]^*)(%b())",
			function( tag_sig, tag_val )
				return tag_sig .. string.toval( tag_val )
			end -- "\\xshad-8r~300" = "\\xshad-8r\\t(0,300,\\xshad( l.shadow ))"
		) -- "\\yshad10r-(fx.dur - 200)" = "\\yshad10r\\t(0,fx.dur - 200,\\yshad-10r)"
		-----------------------------------------------------------------------------------------
		-- le da el valor por default o inverso a un tag y lo pone dentro de una transformación
		Text = Text:gsub( "(\\[%d]*%a+%-?[%d&]^*[%d%.&H%x]*)([%-%~]^*)(%-?%d+[%.%d]*)",
			function( tag_cap, mark_sign, time_transfo )
				local def_or_inv = tag.default
				if mark_sign == "-" then
					def_or_inv = tag.inverse
				end
				return format( "%s\\t(0,%s,%s)", tag_cap, time_transfo, def_or_inv( tag_cap ) )
			end --"\\xshad( -9 )-440"
		) --tag.oscill( fx.dur, 1000, "\\fr( 5i )\\frx( 3 - i )" )
		Text = Text:gsub( "(\\[%d]*%a+%-?[%d&]^*[%d%.&H%x]*)([%-%~]^*)",
			function( tag_cap, mark_sign )
				local def_or_inv = tag.default
				if mark_sign == "-" then
					def_or_inv = tag.inverse
				end
				return format( "%s\\t(%s)", tag_cap, def_or_inv( tag_cap ) )
			end --"\\xshad-8r~"
		) --"\\yshad10r-200"
		--------------------------------------------------------------------------
		-- reune transformaciones creadas por un tag dark, en una sola
		Text = Text:gsub( "%b@@",	
			function( capture )
				local time_capture_def = { }
				local time_capture_val = { }
				capture = capture:gsub( "\\t[cdfisw%d]*%b()",
					function( capture2 )
						if capture2:match( "\\t[cdfisw%d]*%(\\" ) then
							table.insert( time_capture_def, capture2:match( "%b()" ):sub( 2, -2 ) )
						else
							table.insert(
								time_capture_val,
							--	capture2:match( "\\t[cdfisw%d]*(%b())" ):match( "\\%w+[ %S]*" ):sub( 1, -2 )
								capture2:match( "\\t[cdfisw%d]*(%b())" ):sub( 2, -2 ):match( "\\%S+[ %S]*" )
							)
						end --"\\frxyzo-8r-1200"
						capture2 = capture2 .. "def"
						return capture2
					end
				)
				if #time_capture_def > 1 then
					local tag_time = capture:match( "(\\t[cdfisw%d]*)%b()" )
					capture = capture:gsub( "\\t[cdfisw%d]*%b()def", "", #time_capture_def - 1 )
					capture = capture:gsub( "\\t[cdfisw%d]*%b()def",
						function( capture3 )
							return format( "%s(%s)", tag_time, table.op( time_capture_def, "concat" ) )
						end
					)
				end
				if #time_capture_val > 1 then
					capture = capture:gsub( "\\t[cdfisw%d]*%b()def", "", #time_capture_val - 1 )
					capture = capture:gsub( "(\\t[cdfisw%d]*%b())def",
						function( capture3 )
							capture3 = capture3:match( "\\t[cdfisw%d]*%(%d+[%.%d]*,%d+[%.%d]*,[%.%d%,]*" )
							capture3 = capture3 .. table.op( time_capture_val, "concat" ) .. ")"
							return capture3
						end
					)
				end --"\\xyshadRds( 12 )-300"
				capture = capture:gsub( "(\\t[cdfisw%d]*%b())(def)", "%1" ):gsub( "@", "" )
				return capture
			end --"\\frxyzRds( 360 )~800"
		)
		--------------------------------------------------------------------------
		-- le da el valor por default o inverso a un grupo de tags y los pone dentro de una transformación
		Text = Text:gsub( "(%b())([%-%~]^*)(%-?%d+[%.%d]*)",
			function( tag_cap, mark_sign, time_transfo )
				local tag_cap = tag_cap:sub( 2, -2 )
				local def_or_inv = tag.default
				if tag_cap:match( "\\%w+%-?[%d&]^*[%d%.&H%x]*" ) then
					if mark_sign == "-" then
						def_or_inv = tag.inverse
					end
					return format( "%s\\t(0,%s,%s)", tag_cap, time_transfo, def_or_inv( tag_cap ) )
				end
			end --"\\bord5r(\\xyshad-4\\fr45)-360"
		)
		Text = Text:gsub( "(%b())([%-%~]^*)",
			function( tag_cap, mark_sign )
				local tag_cap = tag_cap:sub( 2, -2 )
				local def_or_inv = tag.default
				if tag_cap:match( "\\%w+%-?[%d&]^*[%d%.&H%x]*" ) then
					if mark_sign == "-" then
						def_or_inv = tag.inverse
					end
					return format( "%s\\t(%s)", tag_cap, def_or_inv( tag_cap ) )
				end --"(\\xyshad-5)~"
			end --"(\\frx300\\blur4\\3c&HFFFFFF&)~"
		) -- march 07th 2018
		Text = Text:gsub( "(\\%w+%-?[%d&#]^*[%.%dH&%x]*) [	 ]*(\\)", "%1%2" )
		-----------------------------------------------------------------------------------------
		-- genera dos o tres transformaciones con duración promedia
		-- del efecto con valores inversos o por default, de un tag
		Text = Text:gsub( "(\\[%d]*%a+)(%-?[%d&]^*[%.%dH%x&]*)([km]^*[dr]*)",
			function( tag_num, time_val, time_dec )
				local val_nor = tag_num .. time_val
				local val_def = tag.default( val_nor )
				local val_inv = tag.inverse( val_nor )
				if time_dec == "mr" then
					-- normal + inverso + normal
					return format( "%s\\t(%s,%s,%s)tmid1\\t(%s,%s,%s)tmid2",
						val_nor,
						0.00 * fx.dur, 0.50 * fx.dur, val_inv,
						0.50 * fx.dur, 1.00 * fx.dur, val_nor
					) --"\\frxzomrR( 45 )"
				elseif time_dec == "md" then
					-- normal + default + normal
					return format( "%s\\t(%s,%s,%s)tmid1\\t(%s,%s,%s)tmid2",
						val_nor,
						0.00 * fx.dur, 0.50 * fx.dur, val_def,
						0.50 * fx.dur, 1.00 * fx.dur, val_nor
					)
				elseif time_dec == "mrd"
					or time_dec == "mdr" then
					-- normal + inverso + default
					return format( "%s\\t(%s,%s,%s)tmid1\\t(%s,%s,%s)tmid2",
						val_nor,
						0.00 * fx.dur, 0.50 * fx.dur, val_inv,
						0.50 * fx.dur, 1.00 * fx.dur, val_def
					)
				elseif time_dec == "k" then
					-- normal + inverso + default
					return format( "\\t(%s,%s,%s)tter1\\t(%s,%s,%s)tter2\\t(%s,%s,%s)tter3",
						0.00 * fx.dur, 0.25 * fx.dur, val_nor,
						0.25 * fx.dur, 0.75 * fx.dur, val_inv,
						0.75 * fx.dur, 1.00 * fx.dur, val_def
					)
				elseif time_dec == "kr" then
					-- normal + inverso + normal
					return format( "\\t(%s,%s,%s)tter1\\t(%s,%s,%s)tter2\\t(%s,%s,%s)tter3",
						0.00 * fx.dur, 0.25 * fx.dur, val_nor,
						0.25 * fx.dur, 0.75 * fx.dur, val_inv,
						0.75 * fx.dur, 1.00 * fx.dur, val_nor
					)
				elseif time_dec == "kd" then
					-- normal + default + normal
					return format( "\\t(%s,%s,%s)tter1\\t(%s,%s,%s)tter2\\t(%s,%s,%s)tter3",
						0.00 * fx.dur, 0.33 * fx.dur, val_nor,
						0.33 * fx.dur, 0.66 * fx.dur, val_def,
						0.66 * fx.dur, 1.00 * fx.dur, val_nor
					)
				end -- sobran: kdr, krd, m
			end --"\\13cmrR( )"
		) --"\\frxzmrR(211)"
		-- unifica las transformaciones creadas por las letras [mk]^*[rd]*
		local function time_cap_uni( String )
			times_from_dark = {
				[ 1 ] = "(\\t[cdfisw%d]*%b())(tmid1)",
				[ 2 ] = "(\\t[cdfisw%d]*%b())(tmid2)",
				[ 3 ] = "(\\t[cdfisw%d]*%b())(tter1)",
				[ 4 ] = "(\\t[cdfisw%d]*%b())(tter2)",
				[ 5 ] = "(\\t[cdfisw%d]*%b())(tter3)",
			}
			for i = 1, #times_from_dark do
				local time_capture_uni = { }
				String = String:gsub( times_from_dark[ i ],
					function( capture, time_type )
						table.insert(
							time_capture_uni,
						--	capture:match( "\\t[cdfisw%d]*(%b())" ):match( "\\%w+[ %S]*" ):sub( 1, -2 )
							capture:match( "\\t[cdfisw%d]*(%b())" ):sub( 2, -2 ):match( "\\%S+[ %S]*" )
						)
						capture = capture .. "def"
						return capture
					end
				)
				if #time_capture_uni > 1 then
					String = String:gsub( "\\t[cdfisw%d]*%b()def", "", #time_capture_uni - 1 )
					String = String:gsub( "(\\t[cdfisw%d]*%b())def",
						function( capture2 )
							capture2 = capture2:match( "\\t[cdfisw%d]*%(%d+[%.%d]*,%d+[%.%d]*,[%.%d%,]*" )
							capture2 = capture2 .. table.op( time_capture_uni, "concat" ) .. ")"
							return capture2
						end
					)
				end
				String = String:gsub( "(\\t[cdfisw%d]*%b())(def)", "%1" )
			end --"\\frxymrRs( 86 )\\xyshadmrRrs( 2, 10 )"
			return String
		end
		Text = time_cap_uni( Text )
		-- nuevas transformaciones con valores inversos y/o por defaults
		Text = Text:gsub( "(\\t[cfsw]*)([%-%~%d]^*)(%b())",
			function( tag_transfo, indicator, time_valors )
				local new_tag = tag_transfo .. indicator .. time_valors
				local time_ini, time_fin = 0, fx.dur
				if tag_transfo:match( "ts" ) then
					time_fin = syl.dur
				elseif tag_transfo:match( "tc" ) then
					time_fin = char.dur
				elseif tag_transfo:match( "tf" ) then
					time_fin = furi.dur
				elseif tag_transfo:match( "tw" ) then
					time_fin = word.dur
				end
				if new_tag:match( "\\t[cfsw]*[%-%~%d]^*%([ ]*%d+[%.%d ]*,[ ]*%d+[%.%d ]*," ) then
					time_ini = tonumber( new_tag:match( "\\t[cfsw]*[%-%~%d]^*%([ ]*(%d+[%.%d ]*),[ ]*%d+[%.%d ]*," ) )
					time_fin = tonumber( new_tag:match( "\\t[cfsw]*[%-%~%d]^*%([ ]*%d+[%.%d ]*,[ ]*(%d+[%.%d ]*)," ) )
				end
				local time_acc = ""
				if new_tag:match( "\\t[cfsw]*[%-%~%d]^*%([ ]*%d+[%.%d ]*,[ ]*%d+[%.%d ]*,[ ]*%d+[%.%d ]*," ) then
					time_acc = new_tag:match( "\\t[cfsw]*[%-%~%d]^*%([ ]*%d+[%.%d ]*,[ ]*%d+[%.%d ]*,[ ]*(%d+[%.%d ]*,)" )
				elseif new_tag:match( "\\t[cfsw]*[%-%~%d]^*%([ ]*%d+[%.%d ]*,[ ]*\\" ) then
					time_acc = new_tag:match( "\\t[cfsw]*[%-%~%d]^*%([ ]*(%d+[%.%d ]*,)[ ]*\\" )
				end
				local time_dur = time_fin - time_ini
				local tag_time = tag_transfo:match( "\\(t[cfsw]*)" )
				local valors_def = tag.default( time_valors )
				local valors_inv = tag.inverse( time_valors )
				local valors_nor = time_valors:sub( 2, -2 ):match( "\\%S+[ %S]*" ) --> captura tags dentro de los \\t
				if indicator == "~" then
					-- normal + default
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.00 * time_dur, time_acc .. valors_nor,
						tag_time, time_ini + 0.00 * time_dur, time_ini + 1.00 * time_dur, time_acc .. valors_def
					) -- "\\t~(\\xshad-4)"
				elseif indicator == "-" then
					-- normal + inverso
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.00 * time_dur, time_acc .. valors_nor,
						tag_time, time_ini + 0.00 * time_dur, time_ini + 1.00 * time_dur, time_acc .. valors_inv
					) -- "\\t-(\\fscxyr1.5)"
				elseif indicator == "1" then
					-- normal + inverso + normal
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.00 * time_dur, time_acc .. valors_nor,
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.50 * time_dur, time_acc .. valors_inv,
						tag_time, time_ini + 0.50 * time_dur, time_ini + 1.00 * time_dur, time_acc .. valors_nor
					) -- "\\t1(1000,2000,\\xshad-4\\fscxyr1.5)"
				elseif indicator == "2" then
					-- normal + default + normal
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.00 * time_dur, time_acc .. valors_nor,
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.50 * time_dur, time_acc .. valors_def,
						tag_time, time_ini + 0.50 * time_dur, time_ini + 1.00 * time_dur, time_acc .. valors_nor
					) -- "\\t2(1000,2000,\\xshad-4\\fscxyr1.5)"
				elseif indicator == "3" then
					-- normal + inverso + default
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.00 * time_dur, time_acc .. valors_nor,
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.50 * time_dur, time_acc .. valors_inv,
						tag_time, time_ini + 0.50 * time_dur, time_ini + 1.00 * time_dur, time_acc .. valors_def
					) -- "\\t3(\\frxyzRs( 20, 60 ))"
				elseif indicator == "4" then
					-- normal + inverso + default
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.25 * time_dur, time_acc .. valors_nor,
						tag_time, time_ini + 0.25 * time_dur, time_ini + 0.75 * time_dur, time_acc .. valors_inv,
						tag_time, time_ini + 0.75 * time_dur, time_ini + 1.00 * time_dur, time_acc .. valors_def
					) -- "\\t4(\\xshad-10r\\1cR( ))"
				elseif indicator == "5" then
					-- normal + default
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.50 * time_dur, time_acc .. valors_nor,
						tag_time, time_ini + 0.50 * time_dur, time_ini + 1.00 * time_dur, time_acc .. valors_def
					) -- "\\t5(0,320,\\fscxyr1.45\\blur1.4)"
				elseif indicator == "6" then
					-- normal + inverse
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini + 0.00 * time_dur, time_ini + 0.50 * time_dur, time_acc .. valors_nor,
						tag_time, time_ini + 0.50 * time_dur, time_ini + 1.00 * time_dur, time_acc .. valors_inv
					) -- "\\t6(0,320,\\frxzRs( 60, 100 ))"
				elseif indicator == "7" then
					-- normal + defautl
					if time_dur == fx.dur then
						return format( "\\%s(%s,%s,%s)", tag_time, time_ini, time_fin, time_acc .. valors_nor )
					end
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini, time_fin, time_acc .. valors_nor,
						tag_time, time_fin, fx.dur, time_acc .. valors_def
					) -- "\\t7(0,320,\\frxzRs( 60, 100 ))"
				elseif indicator == "8" then
					-- normal + inverse
					if time_dur == fx.dur then
						return format( "\\%s(%s,%s,%s)", tag_time, time_ini, time_fin, time_acc .. valors_nor )
					end
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini, time_fin, time_acc .. valors_nor,
						tag_time, time_fin, fx.dur, time_acc .. valors_inv
					) -- "\\t8(0,320,\\frxzRs( 60, 100 ))"
				elseif indicator == "9" then
					-- normal + default + normal
					if time_dur >= fx.dur then
						return format( "\\%s(%s,%s,%s)", tag_time, time_ini, time_fin, time_acc .. valors_nor )
					end
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini, time_ini, valors_nor,
						tag_time, time_ini, time_fin, time_acc .. valors_def,
						tag_time, fx.dur - time_fin, fx.dur - time_ini, time_acc .. valors_nor
					) -- "\\t9(0,320,\\frxzRs( 60, 100 ))"
				elseif indicator == "0" then
					-- normal + default + inverse
					if time_dur >= fx.dur then
						return format( "\\%s(%s,%s,%s)", tag_time, time_ini, time_fin, time_acc .. valors_nor )
					end
					return format( "\\%s(%s,%s,%s)\\%s(%s,%s,%s)\\%s(%s,%s,%s)",
						tag_time, time_ini, time_ini, valors_nor,
						tag_time, time_ini, time_fin, time_acc .. valors_def,
						tag_time, fx.dur - time_fin, fx.dur - time_ini, time_acc .. valors_inv
					) -- "\\t0(0,320,\\frxzRs( 60, 100 ))"
				end
			end
		)
		-------------------------------------
		Text = tag.timefx( Text )
		-------------------------------------
		Text = Text:gsub( "\\org%([ ]*%)",
			function( org_cap )
				return format( "\\org(%s,%s)", fx.pos_x, fx.pos_y )
			end
		) --> may 05th 2016
		-------------------------------------
		-- extrae el tag \\org que esté dentro de una transformación
		Text = Text:gsub( "\\t[cdefiswx%d%~%-]*%b()",
			function( time_cap )
				if time_cap:match( "\\org%b()" ) then
					local org_tag = time_cap:match( "\\org%b()" )
					time_cap = org_tag .. time_cap:gsub( "\\org%b()", "" )
				end
				time_cap = time_cap:gsub( "\\t[di]^*%(", "\\t%(" )
				return time_cap
			end
		)
		-------------------------------------
		-- interpola, en el caso de "recorte", los tags dentro de las transfos
		Text = Text:gsub( "(\\t[%w%~%-]*)(%b())",
			function( tag_time, capture )
				local tcapture = tag_time .. capture
				local time_ini, time_fin, time_acc, time_dur, ipol_ini, ipol_fin
				local tags_in_t, tags_table = "", { }
				if tcapture:match( "\\t[%w%~%-]*%([ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*," ) then
					if capture:match( "\\%w+[ %S]*" ) then
						tags_in_t = capture:match( "\\%w+[ %S]*" ):sub( 1, -2 )
					end
					for tags in tags_in_t:gmatch( "\\[%d]*%a+%-?[%d&]^*[%.%dH&%#%x%(%)]*" ) do
						table.insert( tags_table, tags )
					end
					if #tags_table > 0 then
						time_ini, time_fin = tcapture:match( "\\t[%w%~%-]*%([ ]*(%-?%d+[%.%d ]*),[ ]*(%-?%d+[%.%d ]*)," )
						time_ini, time_fin = math.round( time_ini, 1 ), math.round( time_fin, 1 )
						time_dur = time_fin - time_ini
						time_acc = 1
						if tcapture:match( "\\t[%w%~%-]*%([ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*," ) then
							time_acc = tcapture:match( "\\t[%w%~%-]*%([ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*,[ ]*(%-?%d+[%.%d ]*)," )
						end
						ipol_ini = abs( time_ini ) / time_dur
						ipol_fin = ( -1 * time_ini + math.round( fx.dur, 1 )) / time_dur --fix: july 04th 2018
						local tags_default_tags = {
							[ 01 ] = "\\1v?c",			[ 02 ] = "\\2v?c",			[ 03 ] = "\\3v?c",
							[ 04 ] = "\\4v?c",			[ 05 ] = "(\\c)&H",			[ 06 ] = "\\1v?a",
							[ 07 ] = "\\2v?a",			[ 08 ] = "\\3v?a",			[ 09 ] = "\\4v?a",
							[ 10 ] = "\\alpha",			[ 11 ] = "\\fsp",			[ 12 ] = "\\fsvp",
							[ 13 ] = "\\blur",			[ 14 ] = "\\fe",			[ 15 ] = "\\be",
							[ 16 ] = "\\rnd[xyz]*",		[ 17 ] = "\\frs",			[ 18 ] = "\\[xy]*bord",
							[ 19 ] = "\\fn",			[ 20 ] = "\\z",				[ 21 ] = "\\[xy]*shad",
							[ 22 ] = "\\fsc",			[ 23 ] = "\\fs",			[ 24 ] = "\\fa[xy]^*",
							[ 25 ] = "\\fr[xy]^*",		[ 26 ] = "\\fr[z]*",		[ 27 ] = "\\fscx",
							[ 28 ] = "\\fscy",
						}
						local tags_deafult_vals = {
							[ 01 ] = text.color1,		[ 02 ] = text.color2,		[ 03 ] = text.color3,
							[ 04 ] = text.color4,		[ 05 ] = text.color1,		[ 06 ] = text.alpha1,
							[ 07 ] = text.alpha2,		[ 08 ] = text.alpha3,		[ 09 ] = text.alpha4,
							[ 10 ] = "&H00&",			[ 11 ] = l.spacing,			[ 12 ] = 0,
							[ 13 ] = 0,					[ 14 ] = 0,					[ 15 ] = 0,
							[ 16 ] = 0,					[ 17 ] = 0,					[ 18 ] = l.outline,
							[ 19 ] = l.fontname,		[ 20 ] = 0,					[ 21 ] = l.shadow,
							[ 22 ] = l.scale_x,			[ 23 ] = l.fontsize,		[ 24 ] = 0,
							[ 25 ] = 0,					[ 26 ] = l.angle,			[ 27 ] = l.scale_x,
							[ 28 ] = l.scale_y,
						}
						local tags_ipol_ini, tags_ipol_fin = "", ""
						local tag_idx, tag_nam, tag_val = 0
						for i = 1, #tags_table do
							tag_nam, tag_val = tags_table[ i ]:match( "(\\[%d]*%a+)(%-?[%d&]^*[%.%dHh&%#%x%(%)]*)" )
							if type( tonumber( tag_val ) ) == "number" then -- %-?[%d&]^*[%.%dH&%#%x%(%)]*
								tag_val = tonumber( tag_val )
							end
							for k = 1, #tags_default_tags do
								if tag_nam:match( tags_default_tags[ k ] ) then
									tag_idx = k
								end
							end
							if tag_idx > 0 then
								tags_ipol_ini = tags_ipol_ini .. tag_nam .. tostring( tag.ipol( ipol_ini, tags_deafult_vals[ tag_idx ], tag_val ) )
								tags_ipol_fin = tags_ipol_fin .. tag_nam .. tostring( tag.ipol( ipol_fin, tags_deafult_vals[ tag_idx ], tag_val ) )
							end
						end
						if time_fin <= 0 then
							return tags_in_t
							--"\\t(-800,-200,\\blur4\\1cR( ))"
						elseif time_ini >= fx.dur then
							return ""
						elseif time_ini < 0
							and time_fin < fx.dur then
							return format( "%s%s(0,%s,%s,%s)", tags_ipol_ini, tag_time, time_fin, time_acc, tags_in_t )
							--"\\t(-800,1200,\\blur4\\xshad6)"
						elseif time_ini < 0
							and time_fin >= fx.dur then
							return format( "%s%s(%s,%s)", tags_ipol_ini, tag_time, time_acc, tags_ipol_fin )
							--"\\t(-600,13000,\\blur4\\xshad6)"
						elseif time_ini > 0
							and time_fin >= fx.dur then
							return format( "%s(%s,%s,%s,%s)", tag_time, time_ini, fx.dur, time_acc, tags_ipol_fin )
						end --"\\t(800,13000,\\blur4\\xshad6)"
					end
				end
				return tcapture
			end
		)
		-------------------------------------
		Text = Text:gsub( "(\\t[cdefirswx%~%-%d]*)(%b())",
			function( Tag, Capture )
				if Capture:sub( 2, -2 ):sub( 1, 4 ) == "0,0," then
					return Capture:sub( 2, -2 ):match( "\\%S+[ %S]*" )
				end
				return Tag .. Capture:gsub( ", [ 	]*\\", ",\\" )
				:gsub( "([%d&]^*) [ 	]*%)", "%1)" )
			end --:sub( 2, -2 ):match( "\\%S+[ %S]*" ) <- captura todos los tags dentro de una \\t
		) --february 08th 2017 si hay una \\t(0,0, solo retorna los tags que hay dentro
		-------------------------------------
		Text = Text:gsub( "(\\t[cdefirswx%~%-%d]*%()[ ]*1[ ]*,[ ]*(\\)", "%1%2" )
		-- elimina la aceleración de las transfos \\t(1,\\tags) september 18th 2017
		-------------------------------------
		Text = Text:gsub( "\\(i?clip)%([ ]*(%-?%d+[%.%d ]*),[ ]*(%-?%d+[%.%d ]*),[ ]*(%-?%d+[%.%d ]*),[ ]*(%-?%d+[%.%d ]*)",
			function( clip_tag, clip_x1, clip_y1, clip_x2, clip_y2 )
				local clip_x1, clip_y1 = tonumber( clip_x1 ), tonumber( clip_y1 )
				local clip_x2, clip_y2 = tonumber( clip_x2 ), tonumber( clip_y2 )
				clip_x1, clip_x2 = math.min( clip_x1, clip_x2 ), math.max( clip_x1, clip_x2 )
				clip_y1, clip_y2 = math.min( clip_y1, clip_y2 ), math.max( clip_y1, clip_y2 )
				return format( "\\%s(%s,%s,%s,%s", clip_tag, clip_x1, clip_y1, clip_x2, clip_y2 )
			end --organiza de menor a mayor los valores de un i?clip rectangular "\\clip(200,300,1000,100)"
		) --add: september 29th 2018
		-------------------------------------
		Text = tag.redefine( Text )
		Text = tag.do_alpha( Text )
		Text = tag.modify( Text )
		-------------------------------------
		Text = Text:gsub( "'(&H%x+&)'", "%1" )
		-------------------------------------
		-- elimina transformaciones vacías
		Text = Text:gsub( "\\t[cdefirswx]*%(%d+[%.%d ]*,%d+[%.%d ]*,[%.%d%, ]*%)", "" )
		:gsub( "\\t[cdefirswx]*%(%d+[%.%d ]*,%)", "" )
		:gsub( "\\t[cdefirswx%d%~%-]*%([ ]*%)", "" )
		:gsub( "(\\t[cdefirswx%d%~%-]*%(%d+[%.%d ]*,%d+[%.%d ]*,)1.0[ ]*,", "%1" )
		:gsub( "(\\t[cdefirswx%d%~%-]*%(%d+[%.%d ]*,%d+[%.%d ]*,)1[ ]*,", "%1" )
		:gsub( "(\\t[cdefirswx%d%~%-]*%()[ ]*0[ ]*,[ ]*(%d+[%.%d ]*),",
			function( time_tag, time_fin )
				if math.round( tonumber( time_fin ), 1 ) == math.round( fx.dur, 1 ) then
					return time_tag
				end
			end
		)
		:gsub( "disTorT", "distort" )
		:gsub( "jiTTer",  "jitter"  )
		:gsub( "@", "" ) --february 08th 2017 quedaba dentro de los \\t
		:gsub( "%)M", "%)" ) --january 19th 2018 marca M de los \\t
		-------------------------------------
		local function tag_round( TagString )
			-- redondea los valores numéricos de los tags
			local dec_round = 3 --> por default
			if tag_round --> modificado desde "Variables [fx]:"
				and type( tag_round ) == "number" then
				dec_round = ceil( abs( tag_round ) )
			end
			TagString = TagString:gsub( "(%-?%d+%.%d+)",
				function( number )
					return math.round( tonumber( number ), dec_round )
				end
			)
			return TagString
		end
		-------------------------------------
		-- gsub( "\\[^\\{}]*" ) captura los tags, todos
		return tag_round( string.change( Text, "\\org%b()", 1 ) ) --april 20th 2018
	end --tag.dark
	
	function tag.timefx( String )
		if type( String ) == "function" then
			String = String( )
		end
		effector.print_error( String, "numberstring", "tag.timefx", 1 )
		local tag_timesfx = { "\\ts", "\\tc", "\\tf", "\\tw", "\\td", "\\ti" }
		--> td = transformations default tags
		--> ti = transformations inverse tags
		local times_start, times_durat, times_tag
		local function selectx( time_fx )
			if time_fx == "\\ts" then
				return syl.syl_start, syl.dur
			elseif time_fx == "\\tc" then
				return char.syl_start, char.dur
			elseif time_fx == "\\tf" then
				return furi.syl_start, furi.dur
			end
			return word.word_start, word.dur
		end
		-------------------------------------------------------------------------
		String = String:gsub( "%.line", ".LINE" ) --> var.line.val
		:gsub( "meta%.res_x", "xres" ):gsub( "meta%.res_y", "yres" )
		:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_counter" )
		:gsub( "line%.", "linefx[  ii  ]." ) --"\\td(0,500,\\frRs( meta.res_x ))( 100 * line.i )"
		:gsub( "(&H%x+&)", "\"" .. "%1" .. "\"" )
		:gsub( "%.LINE", ".line" ) --add: january 18th 2019
		-------------------------------------------------------------------------
		for i = 1, #tag_timesfx do
			times_tag = tag_timesfx[ i ]
			if String:match( times_tag )
				and times_tag ~= "\\td"
				and times_tag ~= "\\ti" then
				times_start, times_durat = selectx( times_tag )
				if String:match( times_tag .. "%b()%b()[%-]*" ) then
					String = String:gsub( "(" .. times_tag .. "%b())(%b())([%-]*)",
						function( time_tag, time_off, sign )
							local line = linefx[ ii ]
							local default_after = 0
							local default_durat = 0
							local default_accel = ""
							if pcall( loadstring(
									format( "return function( meta, line, x, y ) return { %s } end", time_off:sub( 2, -2 ) ) )
								) then
								local time_function = loadstring(
									format( "return function( meta, line, x, y ) return { %s } end", time_off:sub( 2, -2 ) )
								)( )
								time_function = time_function( meta, line, x, y )
								default_after = time_function[ 1 ] or 0
								default_durat = time_function[ 2 ] or 0
								default_accel = time_function[ 3 ] or ""
							end
							local time_def_i, time_def_f = 0, 0
							if time_tag:match( times_tag .. "%([ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*," ) then
								time_tag = time_tag:gsub( times_tag .. "%(([ ]*%-?%d+[%.%d ]*),([ ]*%-?%d+[%.%d ]*),",
									function( timei, timef )
										time_def_i = tonumber( timei ) + times_start
										time_def_f = tonumber( timef ) + times_start
										return format( "%s(%s,%s,",
											times_tag, tonumber( timei ) + times_start, tonumber( timef ) + times_start
										)
									end
								)
							elseif time_tag:match( times_tag .. "%([ ]*%-?%d+[%.%d ]*," ) then
								time_tag = time_tag:gsub( times_tag .. "%(([ ]*%-?%d+[%.%d ]*),",
									function( accel )
										time_def_i, time_def_f = times_start, times_start + times_durat
										return format( "%s(%s,%s,%s,",
											times_tag, times_start, times_start + times_durat, accel
										)
									end
								)
							else
								time_def_i, time_def_f = times_start, times_start + times_durat
								time_tag = time_tag:gsub( times_tag .. "%(",
									format( "%s(%s,%s,", times_tag, times_start, times_start + times_durat )
								)
							end
							local trans_def = format( "%s(%s,%s,%s,%s)",
								times_tag, time_def_f + default_after,
								time_def_f + default_after + default_durat,
								default_accel, sign == "-" and tag.inverse( time_tag ) or tag.default( time_tag )
							)
							trans_def = trans_def:gsub( ",,", "," )
							return time_tag .. trans_def
						end
					)
				elseif String:match( times_tag .. "%b()[km]^*[dr]*" ) then
					String = String:gsub( "(" .. times_tag .. "%b())([km]^*[dr]*)",
						function( time_tag, time_type )
							local time_i = times_start
							local time_f = times_start + times_durat
							local time_d = time_f - time_i
							local time_a = ","
							if time_tag:match( times_tag .. "%(%-?%d+[%.%d]*,%-?%d+[%.%d]*,[%.%d%,]*" ) then
								time_tag = time_tag:gsub( times_tag .. "%((%-?%d+[%.%d]*),(%-?%d+[%.%d]*),([%.%d%,]*)",
									function(  timei, timef , timea )
										time_i = tonumber( timei ) + times_start
										time_f = tonumber( timef ) + times_start
										time_d = time_f - time_i
										time_a = timea
									end
								)
							elseif time_tag:match( times_tag .. "%(%-?%d+[%.%d]*," ) then
								time_tag = time_tag:gsub( times_tag .. "%((%-?%d+[%.%d]*,)",	
									function( timea )
										time_a = timea
									end
								)
							end
							local time_tags_nor = time_tag:match( "%b()" ):match( "\\%w+[ %S]*" ):sub( 1, -2 )
							local time_tags_inv = tag.inverse( time_tags_nor )
							local time_tags_def = tag.default( time_tags_nor )
							if time_type == "m"
								or time_type == "md" then
								return format( "%sx(%s,%s,%s)%sx(%s,%s,%s)",
									times_tag, time_i + 0.00 * time_d, time_i + 0.50 * time_d, time_a .. time_tags_nor,
									times_tag, time_i + 0.50 * time_d, time_i + 1.00 * time_d, time_a .. time_tags_def
								):gsub( ",,", "," ) --"\\ts(0,syl.dur + 300,0.8,\\frxyzRs(40))m"
							elseif time_type == "mrd"
								or time_type == "mdr" then
								return format( "%sx(%s,%s,%s)%sx(%s,%s,%s)%sx(%s,%s,%s)",
									times_tag, time_i + 0.00 * time_d, time_i + 0.00 * time_d, time_a .. time_tags_nor,
									times_tag, time_i + 0.00 * time_d, time_i + 0.50 * time_d, time_a .. time_tags_inv,
									times_tag, time_i + 0.50 * time_d, time_i + 1.00 * time_d, time_a .. time_tags_def
								):gsub( ",,", "," ) --"\\ts(0,syl.dur + 300,0.8,\\frxyzRs(40))mrd"
							end
							return format( "%sx(%s,%s,%s)%sx(%s,%s,%s)%sx(%s,%s,%s)",
								times_tag, time_i + 0.00 * time_d, time_i + 0.25 * time_d, time_a .. time_tags_nor,
								times_tag, time_i + 0.25 * time_d, time_i + 0.75 * time_d, time_a .. time_tags_inv,
								times_tag, time_i + 0.75 * time_d, time_i + 1.00 * time_d, time_a .. time_tags_def
							):gsub( ",,", "," ) --"\\ts(0,syl.dur + 300,0.8,\\frxyzRs(40))k"
						end
					)
				else
					if String:match( times_tag .. "%([ ]*%-?%d+[%.%d ]*,[ ]*%-?%d+[%.%d ]*," ) then
						String = String:gsub( times_tag .. "%(([ ]*%-?%d+[%.%d ]*),([ ]*%-?%d+[%.%d ]*),",
							function( timei, timef )
								return format( "%s(%s,%s,",
									times_tag, tonumber( timei ) + times_start, tonumber( timef ) + times_start
								)
							end
						)
					elseif String:match( times_tag .. "%([ ]*%-?%d+[%.%d ]*," ) then
						String = String:gsub( times_tag .. "%(([ ]*%-?%d+[%.%d ]*),",
							function( accel )
								return format( "%s(%s,%s,%s,",
									times_tag, times_start, times_start + times_durat, accel
								)
							end
						)
					else
						String = String:gsub( times_tag .. "%(",
							format( "%s(%s,%s,", times_tag, times_start, times_start + times_durat )
						)
					end
				end
			else
				if times_tag == "\\td" then
					if String:match( "\\td%([ ]*%d+[%.%d ]*,[ ]*%d+[%.%d ]*," )
						and String:match( "%-%)" ) == nil then
						local line = linefx[ ii ]
						local default_after = 0
						local default_durat = 0
						local default_accel = ""
						if String:match( "\\td%b()%b()" ) then
							if pcall( loadstring(
									format( "return function( meta, line, x, y ) return { %s } end",
										String:match( "\\td%b()(%b())" ):sub( 2, -2 )
									) )
								) then
								local time_function = loadstring(
									format( "return function( meta, line, x, y ) return { %s } end",
										String:match( "\\td%b()(%b())" ):sub( 2, -2 )
									)
								)( )
								time_function = time_function( meta, line, x, y )
								default_after = time_function[ 1 ] or 0
								default_durat = time_function[ 2 ] or 0
								default_accel = time_function[ 3 ] or ""
							end
							String = String:gsub( "(\\td%b())%b()", "%1" )
						end --"\\td(0,1000,\\1cR( ))(800,300,1.5)"
						String = String:gsub( "\\td%b()",
							function( capture )
								if capture:match( "\\td%([ ]*%d+[%.%d ]*,([ ]*%d+[%.%d ]*)," ) then
									local timef = capture:match( "\\td%([ ]*%d+[%.%d ]*,([ ]*%d+[%.%d ]*)," )
									local trans_d = format( "\\td(%s,%s,%s,%s-)",
										timef + default_after, timef + default_after + default_durat,
										default_accel, tag.default( capture )
									)
									trans_d = trans_d:gsub( ",,", "," )
									capture = capture:sub( 1, -2 ) .. "-)"
									return capture .. trans_d
								end
								return capture
							end -- "\\td(0,1000,\\1cR( ))"
						)
					end
				else
					if String:match( "\\ti%([ ]*%d+[%.%d ]*,[ ]*%d+[%.%d ]*," )
						and String:match( "%-%)" ) == nil then
						local line = linefx[ ii ]
						local default_after = 0
						local default_durat = 0
						local default_accel = ""
						if String:match( "\\ti%b()%b()" ) then
							if pcall( loadstring(
									format( "return function( meta, line, x, y ) return { %s } end",
										String:match( "\\ti%b()(%b())" ):sub( 2, -2 )
									) )
								) then
								local time_function = loadstring(
									format( "return function( meta, line, x, y ) return { %s } end",
										String:match( "\\ti%b()(%b())" ):sub( 2, -2 )
									)
								)( )
								time_function = time_function( meta, line, x, y )
								default_after = time_function[ 1 ] or 0
								default_durat = time_function[ 2 ] or 0
								default_accel = time_function[ 3 ] or ""
							end
							String = String:gsub( "(\\ti%b())%b()", "%1" )
						end --"\\ti(0,1000,\\1cR( ))(800,300,1.5)"
						String = String:gsub( "\\ti%b()",
							function( capture )
								if capture:match( "\\ti%([ ]*%d+[%.%d ]*,([ ]*%d+[%.%d ]*)," ) then
									local timef = capture:match( "\\ti%([ ]*%d+[%.%d ]*,([ ]*%d+[%.%d ]*)," )
									local trans_i = format( "\\ti(%s,%s,%s,%s-)",
										timef + default_after, timef + default_after + default_durat,
										default_accel, tag.inverse( capture )
									)
									trans_i = trans_i:gsub( ",,", "," )
									capture = capture:sub( 1, -2 ) .. "-)"
									return capture .. trans_i
								end
								return capture
							end -- "\\ti(0,1000,\\xyshadRs( 5, 10 ))"
						)
					end
				end
			end
		end
		String = String:gsub( "%-%)", "%)" )
		-------------------------------------------------------------------------
		String = String:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
		:gsub( "l_counter", "line.i" ):gsub( "maxil_counter", "line.n" )
		:gsub( "linefx%[  ii  %]%.", "line." )
		:gsub( "\"(&H%x+&)\"", "%1" ) --add: january 18th 2019
		-------------------------------------------------------------------------
		return String
	end
	
	function tag.modify( String )
		if type( String ) == "function" then
			String = String( )
		end
		local String = String or ""
		effector.print_error( String, "numberstring", "tag.modify", 1 )
		String = String:gsub( "(\\i?clip)(%b())",
			function( Tag, capture )
 				if capture:match( "m %-?%d+[%.%d]* %-?%d+[%.%d]*" )
					and capture:match( "%," ) then
					--▼ captura la shape que esté dentro del i?clip
					local shape_modify = capture:match( "m %-?%d+[%.%d]* %-?%d+[%.%-%dblm ]*" ) --> captura shapes completas ^_^
					if capture:match( "pos" ) then
						--"\\clip(shape.circle, 'pos')"
						shape_modify = shape.centerpos( shape_modify, fx.move_x1, fx.move_y1 )
					elseif capture:match( "%,[%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*" ) then
						--"\\clip(shape.circle, 1, 120, -86)" relativo a la posición x, y
						local pos_clip_x, pos_clip_y = capture:match( "%,[%d ]*%,[ ]*(%-?%d+[%.%d ]*)%,[ ]*(%-?%d+[%.%d ]*)" )
						shape_modify = shape.centerpos(
							shape_modify,
							fx.pos_x + tonumber( pos_clip_x ),
							fx.pos_y + tonumber( pos_clip_y )
						)
					elseif capture:match( "%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*" ) then
						--"\\clip(shape.circle, 120, -86)" relativo al 0, 0
						local pos_clip_x, pos_clip_y = capture:match( "%,[ ]*(%-?%d+[%.%d ]*)%,[ ]*(%-?%d+[%.%d ]*)" )
						shape_modify = shape.centerpos( shape_modify, tonumber( pos_clip_x ), tonumber( pos_clip_y ) )
					else
						--"\\clip(shape.circle, true)"
						shape_modify = shape.centerpos( shape_modify, fx.pos_x, fx.pos_y )
						--shape_modify = shape.centerpos( shape_modify, fx.move_x1, fx.move_y1 ) --fix: august 04th 2018
					end
					return format( "%s(%s)", Tag, shape_modify )
				elseif type( string.toval( "{" .. capture:sub( 2, -2 ) .. "}" ) ) == "table" then --add: march 08th 2017
					--para i?clips rectangulares y dos valores extras para moverlos
					local Coor = string.toval( "{" .. capture:sub( 2, -2 ) .. "}" )
					if #Coor > 4 then
						local Px1, Py1, Px2, Py2, Mx, My = Coor[ 1 ], Coor[ 2 ], Coor[ 3 ], Coor[ 4 ], Coor[ 5 ], Coor[ 6 ] or 0
						capture = format( "(%s,%s,%s,%s)", Px1 + Mx, Py1 + My, Px2 + Mx, Py2 + My )
					end
				end
				return Tag .. capture
			end
		)
		--------------------------------------------------------------
		String = string.cap( String, "\\(i?clip)(%b())", { "(%b())" },
			function( tag_clip, vals_clip, offset_clip )
				local vals_clipx = vals_clip:sub( 2, -2 ):gsub( " ", "" )
				local offsets = { 0, 0 }
				if offset_clip then
					offsets = string.toval( "{" .. offset_clip:sub( 2, -2 ) .. "}" )
				end
				if vals_clipx == "*"
					or vals_clipx == "" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_l + offsets[ 1 ], fx.pos_t + offsets[ 2 ], fx.pos_r + offsets[ 1 ], fx.pos_b + offsets[ 2 ]
					)
				elseif vals_clipx == "*>"
					or vals_clipx == ">*" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_r + offsets[ 1 ], fx.pos_t + offsets[ 2 ], fx.pos_r + offsets[ 1 ] + val_width, fx.pos_b + offsets[ 2 ]
					)
				elseif vals_clipx == "*v"
					or vals_clipx == "v*" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_l + offsets[ 1 ], fx.pos_b + offsets[ 2 ], fx.pos_r + offsets[ 1 ], fx.pos_b + offsets[ 2 ] + val_height
					)
				elseif vals_clipx == "*<"
					or vals_clipx == "<*" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_l + offsets[ 1 ] - val_width, fx.pos_t + offsets[ 2 ], fx.pos_l + offsets[ 1 ], fx.pos_b + offsets[ 2 ]
					)
				elseif vals_clipx == "*^"
					or vals_clipx == "^*" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_l + offsets[ 1 ], fx.pos_t + offsets[ 2 ] - val_height, fx.pos_r + offsets[ 1 ], fx.pos_t + offsets[ 2 ]
					)
				elseif vals_clipx == ">" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_r + offsets[ 1 ], fx.pos_t + offsets[ 2 ], fx.pos_r + offsets[ 1 ], fx.pos_b + offsets[ 2 ]
					)
				elseif vals_clipx == "v" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_l + offsets[ 1 ], fx.pos_b + offsets[ 2 ], fx.pos_r + offsets[ 1 ], fx.pos_b + offsets[ 2 ]
					)
				elseif vals_clipx == "<" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_l + offsets[ 1 ], fx.pos_t + offsets[ 2 ], fx.pos_l + offsets[ 1 ], fx.pos_b + offsets[ 2 ]
					)
				elseif vals_clipx == "^" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_l + offsets[ 1 ], fx.pos_t + offsets[ 2 ], fx.pos_r + offsets[ 1 ], fx.pos_t + offsets[ 2 ]
					)
				elseif vals_clipx == "-" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_l + offsets[ 1 ], fx.pos_y + offsets[ 2 ], fx.pos_r + offsets[ 1 ], fx.pos_y + offsets[ 2 ]
					)
				elseif vals_clipx == "|" then
					return format( "\\%s(%s,%s,%s,%s)", tag_clip,
						fx.pos_x + offsets[ 1 ], fx.pos_t + offsets[ 2 ], fx.pos_x + offsets[ 1 ], fx.pos_b + offsets[ 2 ]
					)
				end
				return format( "\\%s%s", tag_clip, vals_clip )
			end --add: january 12th 2019
		)
		--------------------------------------------------------------
		return String
	end --"\\clip(shape.circle, 1)"

	function tag.default( String )
		local tags_default = ""
		local Str_def = String or ""
		effector.print_error( Str_def, "string", "tag.default", 1 )
		local tags_default_tags = {
			[ 01 ] = "\\1v?c",						[ 02 ] = "\\2v?c",						[ 03 ] = "\\3v?c",
			[ 04 ] = "\\4v?c",						[ 05 ] = "\\c&H",						[ 06 ] = "\\1v?a",
			[ 07 ] = "\\2v?a",						[ 08 ] = "\\3v?a",						[ 09 ] = "\\4v?a",
			[ 10 ] = "\\alpha",						[ 11 ] = "\\fsp",						[ 12 ] = "\\fsvp",
			[ 13 ] = "\\blur",						[ 14 ] = "\\fe",						[ 15 ] = "\\be",
			[ 16 ] = "\\rndx",						[ 17 ] = "\\rndy",						[ 18 ] = "\\rndz",
			[ 19 ] = "\\frs",						[ 20 ] = "\\xbord",						[ 21 ] = "\\ybord",
			[ 22 ] = "\\bord",						[ 23 ] = "\\fn",						[ 24 ] = "\\z",
			[ 25 ] = "\\xshad",						[ 26 ] = "\\yshad",						[ 27 ] = "\\shad",
			[ 28 ] = "\\fs%d+[%.%d]*",				[ 29 ] = "\\fs%(",						[ 30 ] = "\\fsR",
			[ 31 ] = "\\fsc%d+[%.%d]*",				[ 32 ] = "\\fsc%(",						[ 33 ] = "\\fscR",
			[ 34 ] = "\\rnd%-?%d+[%.%d]*",			[ 35 ] = "\\rnd%(",						[ 36 ] = "\\rndR",
			[ 37 ] = "\\fax%-?%d+[%.%d]*",			[ 38 ] = "\\fax%(",						[ 39 ] = "\\faxR",
			[ 40 ] = "\\fay%-?%d+[%.%d]*",			[ 41 ] = "\\fay%(",						[ 42 ] = "\\fayR",
			[ 43 ] = "\\frx[o]*%-?%d+[%.%d]*",		[ 44 ] = "\\frx[o]*%(",					[ 45 ] = "\\frx[o]*R",
			[ 46 ] = "\\fry[o]*%-?%d+[%.%d]*",		[ 47 ] = "\\fry[o]*%(",					[ 48 ] = "\\fry[o]*R",
			[ 49 ] = "\\fr[zo]*%-?%d+[%.%d]*",		[ 50 ] = "\\fr[zo]*%(",					[ 51 ] = "\\fr[zo]*R",
			[ 52 ] = "\\fscx[r]*%d+[%.%d]*",		[ 53 ] = "\\fscx[r]*%(",				[ 54 ] = "\\fscx[r]*R",
			[ 55 ] = "\\fscy[r]*%d+[%.%d]*",		[ 56 ] = "\\fscy[r]*%(",				[ 57 ] = "\\fscy[r]*R",
			[ 58 ] = "\\frxy[o]*%-?%d+[%.%d]*",		[ 59 ] = "\\frxy[o]*%(",				[ 60 ] = "\\frxy[o]*R",
			[ 61 ] = "\\frxz[o]*%-?%d+[%.%d]*",		[ 62 ] = "\\frxz[o]*%(",				[ 63 ] = "\\frxz[o]*R",
			[ 64 ] = "\\fryz[o]*%-?%d+[%.%d]*",		[ 65 ] = "\\fryz[o]*%(",				[ 66 ] = "\\fryz[o]*R",
			[ 67 ] = "\\faxy",						[ 68 ] = "\\frxyz",						[ 69 ] = "\\fscxy",
			[ 70 ] = "\\xyshad",					[ 71 ] = "\\xybord",
		}
		local tags_deafult_vals = {
			[ 01 ] = "\\1c" .. text.color1,			[ 02 ] = "\\2c" .. text.color2,			[ 03 ] = "\\3c" .. text.color3,
			[ 04 ] = "\\4c" .. text.color4,			[ 05 ] = "\\c" .. text.color1,			[ 06 ] = "\\1a" .. text.alpha1,
			[ 07 ] = "\\2a" .. text.alpha2,			[ 08 ] = "\\3a" .. text.alpha3,			[ 09 ] = "\\4a" .. text.alpha4,
			[ 10 ] = "\\alpha&H00&",				[ 11 ] = "\\fsp" .. l.spacing,			[ 12 ] = "\\fsvp0",
			[ 13 ] = "\\blur0",						[ 14 ] = "\\fe0",						[ 15 ] = "\\be0",
			[ 16 ] = "\\rndx0",						[ 17 ] = "\\rndy0",						[ 18 ] = "\\rndz0",
			[ 19 ] = "\\frs0",						[ 20 ] = "\\xbord" .. l.outline,		[ 21 ] = "\\ybord" .. l.outline,
			[ 22 ] = "\\bord" .. l.outline,			[ 23 ] = "\\fn" .. l.fontname,			[ 24 ] = "\\z0",
			[ 25 ] = "\\xshad" .. l.shadow,			[ 26 ] = "\\yshad" .. l.shadow,			[ 27 ] = "\\shad" .. l.shadow,
			[ 28 ] = "\\fs" .. l.fontsize,			[ 29 ] = "\\fs" .. l.fontsize,			[ 30 ] = "\\fs" .. l.fontsize,
			[ 31 ] = "\\fsc" .. l.scale_x,			[ 32 ] = "\\fsc" .. l.scale_x,			[ 33 ] = "\\fsc" .. l.scale_x,
			[ 34 ] = "\\rnd0",						[ 35 ] = "\\rnd0",						[ 36 ] = "\\rnd0",
			[ 37 ] = "\\fax0",						[ 38 ] = "\\fax0",						[ 39 ] = "\\fax0",
			[ 40 ] = "\\fay0",						[ 41 ] = "\\fay0",						[ 42 ] = "\\fay0",
			[ 43 ] = "\\frx0",						[ 44 ] = "\\frx0",						[ 45 ] = "\\frx0",
			[ 46 ] = "\\fry0",						[ 47 ] = "\\fry0",						[ 48 ] = "\\fry0",
			[ 49 ] = "\\frz" .. l.angle,			[ 50 ] = "\\frz" .. l.angle,			[ 51 ] = "\\frz" .. l.angle,
			[ 52 ] = "\\fscx" .. l.scale_x,			[ 53 ] = "\\fscx" .. l.scale_x,			[ 54 ] = "\\fscx" .. l.scale_x,
			[ 55 ] = "\\fscy" .. l.scale_y,			[ 56 ] = "\\fscy" .. l.scale_y,			[ 57 ] = "\\fscy" .. l.scale_y,
			[ 58 ] = "\\frx0\\fry0",				[ 59 ] = "\\frx0\\fry0",				[ 60 ] = "\\frx0\\fry0",
			[ 61 ] = "\\frx0\\frz" .. l.angle,		[ 62 ] = "\\frx0\\frz" .. l.angle,		[ 63 ] = "\\frx0\\frz" .. l.angle,
			[ 64 ] = "\\fry0\\frz" .. l.angle,		[ 65 ] = "\\fry0\\frz" .. l.angle,		[ 66 ] = "\\fry0\\frz" .. l.angle,
			[ 67 ] = "\\fax0\\fay0",				[ 68 ] = "\\frx0\\fry0\\frz" .. l.angle,
			[ 69 ] = format( "\\fscx%s\\fscy%s", l.scale_x, l.scale_y ),
			[ 70 ] = format( "\\xshad%s\\yshad%s", l.shadow, l.shadow ),
			[ 71 ] = format( "\\xbord%s\\ybord%s", l.outline, l.outline ),
		}
		local tabs_def = { }
		for i = 1, #tags_default_tags do
			Str_def = Str_def:gsub( tags_default_tags[ i ],
				function( tags )
					return "@" .. tags_deafult_vals[ i ] .. "@"
				end
			)
		end
		Str_def = Str_def:gsub( "%b@@",
			function( capture )
				table.insert( tabs_def, capture:sub( 2, -2 ) )
			end
		)
		if #tabs_def > 0 then
			tags_default = table.op( tabs_def, "concat" )
		end
		local function delete_repeat_tag( String )
			local tags_unrepeat_vals = {
				[ 01 ] = "\\1c" .. text.color1,		[ 02 ] = "\\2c" .. text.color2,		[ 03 ] = "\\3c" .. text.color3,
				[ 04 ] = "\\4c" .. text.color4,		[ 05 ] = "\\c" .. text.color1,		[ 06 ] = "\\1a" .. text.alpha1,
				[ 07 ] = "\\2a" .. text.alpha2,		[ 08 ] = "\\3a" .. text.alpha3,		[ 09 ] = "\\4a" .. text.alpha4,
				[ 10 ] = "\\alpha&H00&",			[ 11 ] = "\\fsp" .. l.spacing,		[ 12 ] = "\\xbord" .. l.outline,
				[ 13 ] = "\\ybord" .. l.outline,	[ 14 ] = "\\bord" .. l.outline,		[ 15 ] = "\\fn" .. l.fontname,
				[ 16 ] = "\\z0",					[ 17 ] = "\\xshad" .. l.shadow,		[ 18 ] = "\\yshad" .. l.shadow,
				[ 19 ] = "\\shad" .. l.shadow,		[ 20 ] = "\\fsc" .. l.scale_x,		[ 21 ] = "\\fscx" .. l.scale_x,
				[ 22 ] = "\\fscy" .. l.scale_y,		[ 23 ] = "\\fs" .. l.fontsize,		[ 24 ] = "\\frx0",
				[ 25 ] = "\\fry0",					[ 26 ] = "\\frz" .. l.angle,		[ 27 ] = "\\fsvp0",
				[ 28 ] = "\\blur0",					[ 29 ] = "\\fe0",					[ 30 ] = "\\be0",
				[ 31 ] = "\\rndx0",					[ 32 ] = "\\rndy0",					[ 33 ] = "\\rndz0",
				[ 34 ] = "\\frs0",					[ 35 ] = "\\fay0",					[ 36 ] = "\\rnd0",
				[ 37 ] = "\\fax0",
			}
			local nm = 0
			for i = 1, #tags_unrepeat_vals do
				String, nm = String:gsub( tags_unrepeat_vals[ i ], "%1" )
				String = String:gsub( tags_unrepeat_vals[ i ], "", nm - 1 )
			end
			return String
		end
		return delete_repeat_tag( tags_default )
	end
	
	function tag.default2( String )
		if type( String ) == "function" then
			String = String( )
		end
		local String = String or ""
		effector.print_error( String, "string", "tag.redefine2", 1 )
		local tags_default_tags = {
			[ 01 ] = "\\1v?c[tcfswmd]*%~",			[ 02 ] = "\\2v?c[tcfswmd]*%~",			[ 03 ] = "\\3v?c[tcfswmd]*%~",
			[ 04 ] = "\\4v?c[tcfswmd]*%~",			[ 05 ] = "\\c[tcfswmd]*%~",				[ 06 ] = "\\1v?a[tcfswmd]*%~",
			[ 07 ] = "\\2v?a[tcfswmd]*%~",			[ 08 ] = "\\3v?a[tcfswmd]*%~",			[ 09 ] = "\\4v?a[tcfswmd]*%~",
			[ 10 ] = "\\alpha[tcfswmd]*%~",			[ 11 ] = "\\fsp[tcfswmd]*%~",			[ 12 ] = "\\fsvp[tcfswmd]*%~",
			[ 13 ] = "\\blur[tcfswmd]*%~",			[ 14 ] = "\\fe[tcfswmd]*%~",			[ 15 ] = "\\be[tcfswmd]*%~",
			[ 16 ] = "\\rndx[tcfswmd]*%~",			[ 17 ] = "\\rndy[tcfswmd]*%~",			[ 18 ] = "\\rndz[tcfswmd]*%~",
			[ 19 ] = "\\rnd[tcfswmd]*%~",			[ 20 ] = "\\frs[tcfswmd]*%~",			[ 21 ] = "\\fn[tcfswmd]*%~",
			[ 22 ] = "\\fs[tcfswmd]*%~",			[ 23 ] = "\\fsc[tcfswmd]*%~",			[ 24 ] = "\\z[tcfswmd]*%~",
			[ 25 ] = "\\bord[tcfswmd]*%~",			[ 26 ] = "\\xbord[tcfswmd]*%~",			[ 27 ] = "\\ybord[tcfswmd]*%~",
			[ 28 ] = "\\shad[tcfswmd]*%~",			[ 29 ] = "\\xshad[tcfswmd]*%~",			[ 30 ] = "\\yshad[tcfswmd]*%~",
			[ 31 ] = "\\fax[tcfswmd]*%~",			[ 32 ] = "\\fay[tcfswmd]*%~",			[ 33 ] = "\\faxy[tcfswmd]*%~",
			[ 34 ] = "\\frx[tcfswmd]*%~",			[ 35 ] = "\\fry[tcfswmd]*%~",			[ 36 ] = "\\fr[z]*[tcfswmd]*%~",
			[ 37 ] = "\\frxy[tcfswmd]*%~",			[ 38 ] = "\\frxz[tcfswmd]*%~",			[ 39 ] = "\\fryz[tcfswmd]*%~",
			[ 40 ] = "\\fscx[tcfswmd]*%~",			[ 41 ] = "\\fscy[tcfswmd]*%~",			[ 42 ] = "\\frxyz[tcfswmd]*%~",
			[ 43 ] = "\\fscxy[tcfswmd]*%~",			[ 44 ] = "\\xyshad[tcfswmd]*%~",		[ 45 ] = "\\xybord[tcfswmd]*%~",
			[ 46 ] = "\\bs[tcfswmd]*%~",
		}
		local tags_deafult_vals = {
			[ 01 ] = "\\1c%s" .. text.color1,		[ 02 ] = "\\2c%s" .. text.color2,			[ 03 ] = "\\3c%s" .. text.color3,
			[ 04 ] = "\\4c%s" .. text.color4,		[ 05 ] = "\\c%s" .. text.color1,			[ 06 ] = "\\1a%s" .. text.alpha1,
			[ 07 ] = "\\2a%s" .. text.alpha2,		[ 08 ] = "\\3a%s" .. text.alpha3,			[ 09 ] = "\\4a%s" .. text.alpha4,
			[ 10 ] = "\\alpha%s&H00&",				[ 11 ] = "\\fsp%s" .. l.spacing,			[ 12 ] = "\\fsvp%s0",
			[ 13 ] = "\\blur%s0",					[ 14 ] = "\\fe%s0",							[ 15 ] = "\\be%s0",
			[ 16 ] = "\\rndx%s0",					[ 17 ] = "\\rndy%s0",						[ 18 ] = "\\rndz%s0",
			[ 19 ] = "\\rnd%s0",					[ 20 ] = "\\frs%s0",						[ 21 ] = "\\fn%s" .. l.fontname,
			[ 22 ] = "\\fs%s" .. l.fontsize,		[ 23 ] = "\\fsc%s" .. l.scale_x,			[ 24 ] = "\\z%s0",
			[ 25 ] = "\\bord%s" .. l.outline,		[ 26 ] = "\\xbord%s" .. l.outline,			[ 27 ] = "\\ybord%s" .. l.outline,
			[ 28 ] = "\\shad%s" .. l.shadow,		[ 29 ] = "\\xshad%s" .. l.shadow,			[ 30 ] = "\\yshad%s" .. l.shadow,
			[ 31 ] = "\\fax%s0",					[ 32 ] = "\\fay%s0",						[ 33 ] = "\\fax%s0\\fay%s0",
			[ 34 ] = "\\frx%s0",					[ 35 ] = "\\fry%s0",						[ 36 ] = "\\frz%s" .. l.angle,
			[ 37 ] = "\\frx%s0\\\\fry%s0",			[ 38 ] = "\\frx%s0\\\\frz%s" .. l.angle,	[ 39 ] = "\\fry%s0\\\\frz%s" .. l.angle,
			[ 40 ] = "\\fscx%s" .. l.scale_x,		[ 41 ] = "\\fscy%s" .. l.scale_y,			[ 42 ] = "\\frx%s0\\\\fry%s0\\\\frz%s" .. l.angle,
			[ 43 ] = "\\fscx%s" .. l.scale_x .. "\\\\fscy%s" .. l.scale_y,
			[ 44 ] = "\\xshad%s" .. l.shadow .. "\\\\yshad%s" .. l.shadow,
			[ 45 ] = "\\xbord%s" .. l.outline .. "\\\\ybord%s" .. l.outline,
			[ 46 ] = "\\bord%s" .. l.outline .. "\\\\shad%s" .. l.shadow,
		}
		for i = 1, #tags_default_tags do
			String = String:gsub( tags_default_tags[ i ],
				function( capture_def )
					local cap = capture_def:gsub( "(\\%w+)(t[cfswmd]*)(%~)",
						function( Tag, Add_t, Sign )
							return format( tags_deafult_vals[ i ], Add_t, Add_t, Add_t )
						end
					)
					if cap ~= capture_def then
						return cap
					end
					local Add_t = ""
					return format( tags_deafult_vals[ i ], Add_t, Add_t, Add_t )
				end
			)
		end
		return String
	end
	
	function tag.inverse( String )
		local String = String or ""
		local table_inverse = { }
		local tags_inverses = {
			[ 01 ] = "(\\[xy]*bord)(%-?%d+[%.%d]*)",	[ 02 ] = "(\\[xy]*shad)(%-?%d+[%.%d]*)",
			[ 03 ] = "(\\blur)(%-?%d+[%.%d]*)",			[ 04 ] = "(\\[%d]*c)(&H%x+&)",
			[ 05 ] = "(\\%da)(&H%x+&)",					[ 06 ] = "(\\alpha)(&H%x+&)",
			[ 07 ] = "(\\%da)(%d+[%.%d]*)",				[ 08 ] = "(\\alpha)(%d+[%.%d]*)",
			[ 09 ] = "(\\fsc[xy]*)(%-?%d+[%.%d]*)",		[ 10 ] = "(\\fr[sxyz]*)(%-?%d+[%.%d]*)",
			[ 11 ] = "(\\fa[xy]^*)(%-?%d+[%.%d]*)",		[ 13 ] = "(\\fs[v]*p)(%-?%d+[%.%d]*)",
			[ 13 ] = "(\\be)(%-?%d+[%.%d]*)",			[ 14 ] = "(\\z)(%-?%d+[%.%d]*)",
			[ 15 ] = "(\\rnd[xyz]*)(%-?%d+[%.%d]*)",
		}
		for i = 1, #tags_inverses do
			String = String:gsub( tags_inverses[ i ],
				function( tag_rev, val_rev )
					local tag_inv = tag_rev .. val_rev
					if tag_inv:match( "\\[%d]*c&H%x+&" ) then
						--[[
						local num_color = tag_inv:match( "\\([%d]*)" )
						if num_color == "" then
							num_color = "1"
						end
						return "<" .. tag_rev .. loadstring( "return text.color" .. num_color )( ) .. ">"
						--]]
						local r_nor, g_nor, b_nor = tag_inv:match( "(%x%x)(%x%x)(%x%x)" )
						local r_inv, g_inv, b_inv = 255 - tonumber( r_nor, 16 ), 255 - tonumber( g_nor, 16 ), 255 - tonumber( b_nor, 16 )
						return "<" .. tag_rev .. color.val2ass( b_inv, g_inv, r_inv ) .. ">"
						-- "\\t4(\\1cR( ))\\td(0,2f,\\fscxyr1.5\\frRs( 15, 40 ))( 0, fx.dur - 2f )"
					elseif tag_inv:match( "\\%da&H%x+&" )
						or tag_inv:match( "\\%da%d+[%.%d]*" ) then
						local num_alpha = tag_inv:match( "\\(%d)" )
						return "<" .. tag_rev .. loadstring( "return text.alpha" .. num_alpha )( ) .. ">"
					elseif tag_inv:match( "\\alpha&H%x+&" )
						or tag_inv:match( "\\alpha%d+[%.%d]*" ) then
						return "<" .. tag_rev .. "&H00&>"
					elseif tag_inv:match( "\\blur%-?%d+[%.%d]*" )
						or tag_inv:match( "\\[xy]*bord%-?%d+[%.%d]*" ) then
						return "<" .. tag_rev .. "0>"
					elseif tag_inv:match( "\\fsc[xy]^*%-?%d+[%.%d]*" ) then
						local scale_axis = tag_inv:match( "\\fsc([xy]^*)%-?%d+[%.%d]*" )
						if scale_axis == "x" then
							return "<" .. tag_rev .. tostring( l.scale_y ) .. ">"
						end
						return "<" .. tag_rev .. tostring( l.scale_x ) .. ">"
					elseif tag_inv:match( "\\fsc%-?%d+[%.%d]*" ) then
						return "<" .. tag_rev .. tostring( l.scale_x ) .. ">"
					else
						local val_inv = val_rev:gsub( "%-", "" )
						if val_rev:match( "%-" ) == nil then
							val_inv = "-" .. val_rev
						end
						return "<" .. tag_rev .. val_inv .. ">"
					end
				end
			)
		end
		String = String:gsub( "%b<>",
			function( capture )
				table.insert( table_inverse, capture:sub( 2, -2 ) )
			end
		)
		local tags_inverse_str, nm = "", 0
		if #table_inverse > 0 then
			tags_inverse_str = table.op( table_inverse, "concat" )
		end
		local tags_inverses2 = {
			[ 01 ] = "(\\[x]*bord)(%-?%d+[%.%d]*)",		[ 02 ] = "(\\ybord)(%-?%d+[%.%d]*)",
			[ 03 ] = "(\\[x]*shad)(%-?%d+[%.%d]*)",		[ 04 ] = "(\\yshad)(%-?%d+[%.%d]*)",
			[ 05 ] = "(\\blur)(%-?%d+[%.%d]*)",			[ 06 ] = "(\\[1]*c)(&H%x+&)",
			[ 07 ] = "(\\2c)(&H%x+&)",					[ 08 ] = "(\\3c)(&H%x+&)",
			[ 09 ] = "(\\4c)(&H%x+&)",					[ 10 ] = "(\\1a)(&H%x+&)",
			[ 11 ] = "(\\2a)(&H%x+&)",					[ 12 ] = "(\\3a)(&H%x+&)",
			[ 13 ] = "(\\4a)(&H%x+&)",					[ 14 ] = "(\\1a)(%d+[%.%d]*)",
			[ 15 ] = "(\\2a)(%d+[%.%d]*)",				[ 16 ] = "(\\3a)(%d+[%.%d]*)",
			[ 17 ] = "(\\4a)(%d+[%.%d]*)",				[ 18 ] = "(\\alpha)(&H%x+&)",
			[ 19 ] = "(\\alpha)(%d+[%.%d]*)",			[ 20 ] = "(\\fsc[x]*)(%-?%d+[%.%d]*)",
			[ 21 ] = "(\\fscy)(%-?%d+[%.%d]*)",			[ 22 ] = "(\\frs)(%-?%d+[%.%d]*)",
			[ 23 ] = "(\\frx)(%-?%d+[%.%d]*)",			[ 24 ] = "(\\fry)(%-?%d+[%.%d]*)",
			[ 25 ] = "(\\fr[z]*)(%-?%d+[%.%d]*)",		[ 26 ] = "(\\fax)(%-?%d+[%.%d]*)",
			[ 27 ] = "(\\fay)(%-?%d+[%.%d]*)",			[ 28 ] = "(\\fsp)(%-?%d+[%.%d]*)",
			[ 29 ] = "(\\fsvp)(%-?%d+[%.%d]*)",			[ 30 ] = "(\\be)(%-?%d+[%.%d]*)",
			[ 31 ] = "(\\z)(%-?%d+[%.%d]*)",			[ 32 ] = "(\\rnd)(%-?%d+[%.%d]*)",
			[ 33 ] = "(\\rndx)(%-?%d+[%.%d]*)",			[ 34 ] = "(\\rndy)(%-?%d+[%.%d]*)",
			[ 35 ] = "(\\rndz)(%-?%d+[%.%d]*)",
		}
		for i = 1, #tags_inverses2 do
			tags_inverse_str, nm = tags_inverse_str:gsub( tags_inverses2[ i ], "%1%2" )
			tags_inverse_str = tags_inverse_str:gsub( tags_inverses2[ i ], "", nm - 1 )
		end --"\\t4(\\frx56\\frz-89\\fry7)"
		return tags_inverse_str
	end
	
	function tag.natsu( String )
		if type( String ) == "function" then
			String = String( )
		end
		effector.print_error( String, "true", "tag.natsu", 1 )
		local tags_color = {
			[ 1 ] = "\\c",		[ 2 ] = "\\1c",		[ 3 ] = "\\2c",
			[ 4 ] = "\\3c",		[ 5 ] = "\\4c",		[ 6 ] = "\\1vc",
			[ 7 ] = "\\2vc",	[ 8 ] = "\\3vc",	[ 9 ] = "\\4vc",
		}
		local tags_alpha = {
			[ 1 ] = "\\alpha",	[ 2 ] = "\\1a",		[ 3 ] = "\\2a",
			[ 4 ] = "\\3a",		[ 5 ] = "\\4a",		[ 6 ] = "\\1va",
			[ 7 ] = "\\2va",	[ 8 ] = "\\3va",	[ 9 ] = "\\4va",
		}
		---------------------------------
		local function tag_xipol1( values )
			if #values == 1 then
				values[ 2 ] = values[ 1 ]
			end
			local vals_xipol1 = recall.ipolx1
			local max_loop = maxj - 1
			local ipol_i, ipol_f, pct_ip
			if maxj == 1 then
				return values[ 1 ]
			end
			if j == 1 then
				vals_xipol1 = remember( "ipolx1", { } )
				for i = 1, max_loop do
					ipol_i = values[ floor( (i - 1) / (max_loop / (#values - 1)) ) + 1 ]
					ipol_f = values[ floor( (i - 1) / (max_loop / (#values - 1)) ) + 2 ]
					pct_ip = floor( (i - 1) % (max_loop / (#values - 1)) ) / (max_loop / (#values - 1))
					vals_xipol1[ i ] = ipol_i + (ipol_f - ipol_i) * pct_ip
				end
				vals_xipol1[ #vals_xipol1 + 1 ] = values[ #values ]
			end
			return vals_xipol1[ j ]
		end
		---------------------------------
		local function tag_xipol2( values )
			if #values == 1 then
				values[ 2 ] = values[ 1 ]
			end
			local vals_xipol2 = recall.ipolx2
			local max_loop = val_n - 1
			local ipol_i, ipol_f, pct_ip
			if val_n == 1 then
				return values[ 1 ]
			end
			if val_i == 1 then
				vals_xipol2 = remember( "ipolx2", { } )
				for i = 1, max_loop do
					ipol_i = values[ floor( (i - 1) / (max_loop / (#values - 1)) ) + 1 ]
					ipol_f = values[ floor( (i - 1) / (max_loop / (#values - 1)) ) + 2 ]
					pct_ip = floor( (i - 1) % (max_loop / (#values - 1)) ) / (max_loop / (#values - 1))
					vals_xipol2[ i ] = ipol_i + (ipol_f - ipol_i) * pct_ip
				end
				vals_xipol2[ #vals_xipol2 + 1 ] = values[ #values ]
			end
			return vals_xipol2[ val_i ]
		end
		-------------------------------------------------------------------------
		String = String:gsub( "%.line", ".LINE" ) --> var.line.val
		:gsub( "meta%.res_x", "xres" ):gsub( "meta%.res_y", "yres" )
		:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_counter" )
		:gsub( "line%.", "linefx[  ii  ]." )
		:gsub( "(&H%x+&)", "\"" .. "%1" .. "\"" )
		:gsub( "%.LINE", ".line" ) --add: january 18th 2019
		-------------------------------------------------------------------------
		String = String:gsub( "(\\%w+%-?%b{})",
			function( capture )
				if capture:match( "(\\%w+)%-?%b{}" ) ~= "\\N" then
					local line = linefx[ ii ]
					local tags_capture = tag.operation( capture:match( "(\\%w+)%-?%b{}" ) )
					local vals_capture = capture:match( "\\%w+%-?(%b{})" ):sub( 2, -2 )
					if pcall( loadstring( format( "return function( meta, line, x, y ) return { %s } end", vals_capture ) ) ) then
						local fun_ipol = loadstring( format( "return function( meta, line, x, y ) return { %s } end", vals_capture ) )( )
						if pcall( fun_ipol ) then
							local tbl_ipol = fun_ipol( meta, line, x, y )
							if tbl_ipol then
								if capture:match( "(\\%w+%-)%b{}" ) then
									if table.inside( tags_color, tags_capture ) then
										return format( "%s%s", tags_capture, color.loop( tbl_ipol ) )
									elseif table.inside( tags_alpha, tags_capture ) then
										return format( "%s%s", tags_capture, alpha.loop( tbl_ipol ) )
									end
									if #tbl_ipol < 3 then
										table.insert( tbl_ipol, 1, tags_capture )
										return tag.module( tbl_ipol )
									end
									return format( "%s%s", tags_capture, tag_xipol1( tbl_ipol ) )
								end
								if table.inside( tags_color, tags_capture ) then
									return format( "%s%s", tags_capture, color.ipol( tbl_ipol ) )
								elseif table.inside( tags_alpha, tags_capture ) then
									return format( "%s%s", tags_capture, alpha.ipol( tbl_ipol ) )
								end
								if #tbl_ipol < 3 then
									table.insert( tbl_ipol, 1, tags_capture )
									return tag.module1( tbl_ipol )
								end
								return format( "%s%s", tags_capture, tag_xipol2( tbl_ipol ) )
							end
						end
					end
					return capture
				end
				return capture
			end
		)
		-------------------------------------------------------------------------
		String = String:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
		:gsub( "l_counter", "line.i" ):gsub( "maxil_counter", "line.n" )
		:gsub( "linefx%[  ii  %]%.", "line." )
		:gsub( "\"(&H%x+&)\"", "%1" ) --add: january 18th 2019
		-------------------------------------------------------------------------
		return String
	end
	
	function tag.do_alpha( String )
		if type( String ) == "function" then
			String = String( )
		end
		effector.print_error( String, "true", "tag.do_alpha", 1 )
		local tag_alpha = {
			[ 1 ] = "\\alpha(%d+[%.%d]*)",
			[ 2 ] = "\\1a(%d+[%.%d]*)",
			[ 3 ] = "\\2a(%d+[%.%d]*)",
			[ 4 ] = "\\3a(%d+[%.%d]*)",
			[ 5 ] = "\\4a(%d+[%.%d]*)",
			[ 6 ] = "\\1va%([ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)[ ]*%)",
			[ 7 ] = "\\2va%([ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)[ ]*%)",
			[ 8 ] = "\\3va%([ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)[ ]*%)",
			[ 9 ] = "\\4va%([ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)%,[ ]*(%d+[%.%d ]*)[ ]*%)",
		}
		local tag_replace = {
			[ 1 ] = "\\alpha%s",
			[ 2 ] = "\\1a%s",
			[ 3 ] = "\\2a%s",
			[ 4 ] = "\\3a%s",
			[ 5 ] = "\\4a%s",
			[ 6 ] = "\\1va(%s,%s,%s,%s)",
			[ 7 ] = "\\2va(%s,%s,%s,%s)",
			[ 8 ] = "\\3va(%s,%s,%s,%s)",
			[ 9 ] = "\\4va(%s,%s,%s,%s)",
		}
		for i = 1, 5 do
			String = String:gsub( tag_alpha[ i ],
				function( num )
					return format( tag_replace[ i ], alpha.val2ass( num ) )
				end
			)
		end
		for i = 6, 9 do
			String = String:gsub( tag_alpha[ i ],
				function( num1, num2, num3, num4 )
					return format( tag_replace[ i ],
						alpha.val2ass( num1 ), alpha.val2ass( num2 ),
						alpha.val2ass( num3 ), alpha.val2ass( num4 )
					)
				end
			)
		end
		-- abreviaturas de colores y alphas por default
		String = String:gsub( "([ST]^*[AC]^*)(%d)",
			function( ColorAlpha, Num )
				local ColorAlpha = ColorAlpha
				:gsub( "SA", "shape.alpha" ):gsub( "TA", "text.alpha" )
				:gsub( "SC", "shape.color" ):gsub( "TC", "text.color" )
				ColorAlpha = format( "%s%s", ColorAlpha, math.i( tonumber( Num ), 4 )[ "1-->A" ] )
				ColorAlpha = loadstring( "return " .. ColorAlpha )( )
				return ColorAlpha
			end
		)
		-- adapta las abreviaturas de colores y alphas para tag.natsu
		String = String:gsub( "(\\%w+%-?)(%b{})",
			function( tag_natsu, capture ) --fix: june 14th 2018
				capture = capture:gsub( "&H%x+&", "'%1'" ):gsub( "''", "'" )
				return tag_natsu .. capture
			end
		)
		return String
	end
	
	function tag.HTML_to_ass( String )
		local String = String or ""
		if type( String ) == "function" then
			String = String( )
		end
		effector.print_error( String, "numberstring", "tag.HTML_to_ass", 1 )
		String = tostring( String ):gsub( "%#%x%x%x%x%x%x",
			function( HTML_color )
				return color.ass( HTML_color )
			end
		)
		String = tostring( String ):gsub( "%#(%x%x)",
			function( HTML_alpha )
				return "&H" .. HTML_alpha:reverse( ) .. "&"
			end
		)
		--▼--------------------------------------------------------
		-- adapta las funciones tag para aplicarle el tag.filter
		String = String:gsub( "(%w+[%_%.%w]*%b())%:filter(%b())",
			function( tag_function, setting_filter )
				local setting_filter = setting_filter:sub( 2, -2 )
				return format( "tag.filter(%s,%s)", tag_function, setting_filter )
			end
		) --april 23rd 2018
		--▼--------------------------------------------------------
		-- retorna los tags con sus valores en default: "\\blur~"
		String = tag.default2( String ) -- april 16th 2018
		-----------------------------------------------------------
		String = tag.tonumber( String )	-- corvierte algunas convenciones en número
		-- Adapta a Return[fx] para aplicarle funciones de la librería text --
		String = String:gsub( "(%w+[%_%.%w]*)(%:%w+[%_%w]*)(%b())", "(%1)%2%3" )
		:gsub( "(%w+[%_%.%w]*%b[])(%:%w+[%_%w]*)(%b())", "(%1)%2%3" )
		:gsub( "(%w+[%_%.%w]*%b())(%:%w+[%_%w]*)(%b())", "(%1)%2%3" )
		String = String:gsub( "(%b())(%:%w+[%_%w]*)(%b())",
			function( TextS, FunctionT, Arguments )
				local functions_str = {
					[ 01 ] = ":upper",				[ 02 ] = ":lower",				[ 03 ] = ":tag",
					[ 04 ] = ":rand",				[ 05 ] = ":infx",				[ 06 ] = ":outfx",
					[ 07 ] = ":romaji",				[ 08 ] = ":hiragana",			[ 09 ] = ":katakana",
					[ 10 ] = ":kara",				[ 11 ] = ":stripped",			[ 12 ] = ":inclip",
					[ 13 ] = ":outclip",			[ 14 ] = ":deformed",			[ 15 ] = ":deformed2",
					[ 16 ] = ":do_shape",			[ 17 ] = ":to_shape",			[ 18 ] = ":bord_to_shape",
					[ 19 ] = ":to_pixels",			[ 20 ] = ":to_clip",			[ 21 ] = ":bord_to_pixels",
				}
				local functions_fun = {
					[ 01 ] = "text.upper",			[ 02 ] = "text.lower",			[ 03 ] = "text.tag",
					[ 04 ] = "text.rand",			[ 05 ] = "text.infx",			[ 06 ] = "text.outfx",
					[ 07 ] = "text.kana2romaji",	[ 08 ] = "text.syl2hiragana",	[ 09 ] = "text.syl2katakana",
					[ 10 ] = "text.to_kara",		[ 11 ] = "text.text2stripped",	[ 12 ] = "text.inclip",
					[ 13 ] = "text.outclip",		[ 14 ] = "text.deformed",		[ 15 ] = "text.deformed2",
					[ 16 ] = "text.do_shape",		[ 17 ] = "text.to_shape",		[ 18 ] = "text.bord_to_shape",
					[ 19 ] = "text.to_pixels",		[ 20 ] = "text.to_clip",		[ 21 ] = "text.bord_to_pixels",
				}
				local TextS = TextS:sub( 2, -2 )
				if table.inside( functions_str, FunctionT ) then
					local Arguments = Arguments:sub( 2, -2 )
					if Arguments:gsub( " ", "" ):gsub( "	", "" ) ~= "" then
						Arguments = ",".. Arguments
					end
					local Index = table.index( functions_str, FunctionT )
					return format( "%s(%s%s)", functions_fun[ Index ], TextS, Arguments )
				end --fix: september 02nd 2018
				return TextS .. FunctionT .. Arguments
			end
		) --add: febraury 16th 2017
		----------------------------------------------------------------------
		String = tag.do_alpha( String )	-- identifica a los alphas con base decimal
		return String --se aplica al texto antes de ejecutar cualquier otra función
	end
	
	function tag.tonumber( String )
		local String = String or ""
		local String_out = {
			[ 1 ] = "math%.bezier2move%b()",
			[ 2 ] = "text%.kana2romaji%b()",
			[ 3 ] = "%-?%d+[%.%d]*rnd[xyz]*",
			[ 4 ] = "%-?%d+[%.%d]*fr[sxyz]*",
			[ 5 ] = "%-?%d+[%.%d]*fs[cpvxy]*",
			[ 6 ] = "%-?%d+[%.%d]*f[ae]^*[xy]*",
		}
		local String_out_tbl = { }
		for i = 1, #String_out do
			-- protege segmentos del String de remplazos
			String = String:gsub( String_out[ i ],
				function( capture )
					table.insert( String_out_tbl, capture )
					return "▲"
				end
			)
		end
		-- acoplamiento para las funciones time_li/lo y time_mid1/2
		String = String:gsub( "(%-?%d+[%.%d]*)(l[io]^*)([sw]*)", "(%1)%2(%3)" )
		String = String:gsub( "(%-?%d+[%.%d]*)(mid[12]^*)", "(%1)%2" )
		-- multiplica una constante por el ratio o por frame_dur
		String = String:gsub( "(%-?%d+[%.%d]*)([rf]^*)",
			function( capture, variable )
				local varx = ratio
				if variable == "f" then
					varx = frame_dur
				end
				return tonumber( capture ) * varx
			end
		)
		-- multiplica una constante por alguno de los módulos
		String = String:gsub( "(%-?%d+[%.%d]*)(m[crsw123]*)",
			function( Num, Module )
				local modules = {
					[ "mc3s" ] = modulec3s,
					[ "mc3w" ] = modulec3w,
					[ "ms3w" ] = modules3w,
					[ "m2" ] = module2,
					[ "m1" ] = module1,
					[ "mr" ] = moduler,
					[ "m"  ] = module,
				}
				if modules[ Module ] then
					return tonumber( Num ) * modules[ Module ]
				end
				return tonumber( Num )
			end
		)
		for i = 1, #String_out_tbl do
			String = String:gsub( "▲", String_out_tbl[ i ], 1 )
		end
		-------------------------------------------------------------------------
		String = String:gsub( "%.line", ".LINE" ) --> var.line.val
		:gsub( "meta%.res_x", "xres" ):gsub( "meta%.res_y", "yres" )
		:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_counter" )
		:gsub( "line%.", "linefx[  ii  ]." )
		:gsub( "(&H%x+&)", "\"" .. "%1" .. "\"" )
		:gsub( "%.LINE", ".line" ) --add: january 18th 2019
		-------------------------------------------------------------------------
		-- valores interpolados
		String = String:gsub( "(%w+[%_%.%w]*)(%:[%+%-]^*)", "(%1)%2" )
		:gsub( "(%w+[%_%.%w]*%b[])(%:[%+%-]^*)", "(%1)%2" )
		:gsub( "(%w+[%_%.%w]*%b())(%:[%+%-]^*)", "(%1)%2" )
		:gsub( "(%-?%d+[%.%d]*)(%:[%+%-]^*)", "(%1)%2" )
		String = String:gsub( "(%b())(%:[%+%-]^*)",
			function( Value, Signs )
				local Value = Value:sub( 2, -2 )
				local line = linefx[ ii ]
				if tonumber( Value ) then
					Value = tonumber( Value )
				else
					if pcall( loadstring( format( "return function( meta, line, x, y ) return %s end", Value ) ) ) then
						local str_to_val = loadstring(
							format( "return function( meta, line, x, y ) return %s end", Value )
						)( )
						if pcall( str_to_val ) then
							Value = str_to_val( meta, line, x, y )
							if Value == nil then
								return "Invalid Value"
							end
						end
					else
						return "Invalid Value"
					end
				end
				if type( Value ) == "number" then
					if Signs:match( "%+" ) then
						return Value * j / maxj
					end
					return Value * (j - 1) / maxj
				end
				return format( "(%s)%s", Value, Signs )
			end
		)
		-- abreviaciones de time_li, time_lo, time_mid1 y time_mid2
		String = String:gsub( "(%b())(l[io]^*)(%b())",
			function( Value, Signs, Modex )
				local Value = Value:sub( 2, -2 )
				local Modex = Modex:sub( 2, -2 )
				local line = linefx[ ii ]
				if tonumber( Value ) then
					Value = tonumber( Value )
				else
					if pcall( loadstring( format( "return function( meta, line, x, y ) return %s end", Value ) ) ) then
						local str_to_val = loadstring(
							format( "return function( meta, line, x, y ) return %s end", Value )
						)( )
						if pcall( str_to_val ) then
							Value = str_to_val( meta, line, x, y )
							if Value == nil then
								return format( "(Invalid Value)%s", Signs .. Modex )
							end
						end
					else
						return format( "(Invalid Value)%s", Signs .. Modex )
					end
				end
				------------------------------
				local Mode = ""
				if Modex:match( "w" ) then
					Mode = "word"
				elseif Modex:match( "s" ) then
					Mode = "syl"
				end --april 14th 2018
				------------------------------
				if Signs:match( "li" ) then
					return time_li( Value, Mode )
				end
				return time_lo( Value, Mode )
			end
		)
		String = String:gsub( "(%b())(mid[12]^*)",
			function( Value, Signs )
				local Value = Value:sub( 2, -2 )
				local line = linefx[ ii ]
				if tonumber( Value ) then
					Value = tonumber( Value )
				else
					if pcall( loadstring( format( "return function( meta, line, x, y ) return %s end", Value ) ) ) then
						local str_to_val = loadstring(
							format( "return function( meta, line, x, y ) return %s end", Value )
						)( )
						if pcall( str_to_val ) then
							Value = str_to_val( meta, line, x, y )
							if Value == nil then
								return format( "(Invalid Value)%s", Signs )
							end
						end
					else
						return format( "(Invalid Value)%s", Signs )
					end
				end
				if Signs:match( "1" ) then
					return time_mid1( Value )
				end
				return time_mid2( Value )
			end
		)
		-- abreviatura de la función math.polar
		local polar_tag = {
			[ 1 ] = "(p[xy]^*)(%-?%d+[%.%d]*)d(%-?%d+[%.%d]*)",
			[ 2 ] = "(p[xy]^*)(%-?%d+[%.%d]*)d(%b())",
			[ 3 ] = "(p[xy]^*)(%b())d(%-?%d+[%.%d]*)",
			[ 4 ] = "(p[xy]^*)(%b())d(%b())",
		}
		for i = 1, #polar_tag do
			String = String:gsub( polar_tag[ i ],
				function( Pxy, Angle, Distance )
					local Return = "x"
					if Pxy:match( "py" ) then
						Return = "y"
					end
					local topolar = format( "math.polar( %s, %s, \"%s\" )", Angle, Distance, Return )
					local line = linefx[ ii ]
					if pcall( loadstring( format( "return function( meta, line, x, y ) return %s end", topolar ) ) ) then
						local fun_polar = loadstring( format( "return function( meta, line, x, y ) return %s end", topolar ) )( )
						if pcall( fun_polar ) then
							return fun_polar( meta, line, x, y )
						end
					end
					return Pxy .. Angle .. "d" .. Distance
				end
			)
		end --px45d100 = math.polar( 45, 100, "x" )
		-------------------------------------------------------------------------
		String = String:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
		:gsub( "l_counter", "line.i" ):gsub( "maxil_counter", "line.n" )
		:gsub( "linefx%[  ii  %]%.", "line." )
		:gsub( "\"(&H%x+&)\"", "%1" ) --add: january 18th 2019
		-------------------------------------------------------------------------
		return String
	end
	
	function tag.tonumber_variable( String )
		local String = String or ""
		local String_out = {
			[ 1 ] = "math%.bezier2move%b()",
			[ 2 ] = "%-?%d+[%.%d]*mid[12]^*"
		}
		local String_out_tbl = { }
		for i = 1, #String_out do
			String = String:gsub( String_out[ i ],
				function( capture )
					table.insert( String_out_tbl, capture )
					return "▲"
				end
			)
		end
		String = String:gsub( "(%-?%d+[%.%d]*)m([123crsw]*)", "( %1" .. " * module%2 )" )
		for i = 1, #String_out_tbl do
			String = String:gsub( "▲", String_out_tbl[ i ], 1 )
		end
		return String
	end -- April 11th 2018
	
	function tag.set( times_set, events_set )
		if type( times_set ) == "table" then
			times_set = times_set
		else
			times_set = { times_set }
		end
		if type( events_set ) == "table" then
			events_set = events_set
		else
			events_set = { events_set }
		end
		effector.print_error( times_set, "table", "tag.set", 1 )
		effector.print_error( events_set, "table", "tag.set", 2 )
		local t_set = table.complete( times_set, fx.start_time, fx.end_time )
		local t_st2 = table.duplicate( t_set )
		local iSt, iEt = table.index( t_set, fx.start_time ), table.index( t_set, fx.end_time )
		events_set[ 0 ] = ""
		local i = iSt + 1
		local Tag_fx = events_set[ i - 2 ]
		for k = 1, #t_set do
			if type( t_set[ k ] ) == "table" then
				t_set[ k ] = t_set[ k ][ 1 ]
			end
		end
		if iSt + 1 ~= iEt then
			while t_set[ i ] < fx.end_time do
				offset_t = 1
				if type( t_st2[ i ] ) == "table" then
					offset_t = t_st2[ i ][ 2 ]
				end
				t1 = t_set[ i ] - fx.start_time - frame_dur / 2
				if t1 < 0 then
					t1 = 0
				end
				t2 = t1 + offset_t
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)", t1, t2, events_set[ i - 1 ] )
				i = i + 1
			end
		end
		return Tag_fx
	end

	function tag.movevc( Shape, posx, posy, Dx, Dy, time_vci, time_vcf )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( posx ) == "function" then
			posx = posx( )
		end
		if type( posy ) == "function" then
			posy = posy( )
		end
		if type( Dx ) == "function" then
			Dx = Dx( )
		end
		if type( Dy ) == "function" then
			Dy = Dy( )
		end
		if type( time_vci ) == "function" then
			time_vci = time_vci( )
		end
		if type( time_vcf ) == "function" then
			time_vcf = time_vcf( )
		end
		local ti = time_vci or fx.movet_i
		local tf = time_vcf or fx.movet_f
		local DX = Dx or fx.move_x2 - fx.move_x1
		local DY = Dy or fx.move_y2 - fx.move_y1
		local PX = posx or fx.move_x1
		local PY = posy or fx.move_y1
		local Shape = shape.origin( shape.ASSDraw3( Shape ) )
		effector.print_error( Shape, "shape", "tag.movevc", 1 )
		effector.print_error( ti, "number", "tag.movevc", 2 )
		effector.print_error( tf, "number", "tag.movevc", 3 )
		effector.print_error( DX, "number", "tag.movevc", 4 )
		effector.print_error( DY, "number", "tag.movevc", 5 )
		effector.print_error( PX, "number", "tag.movevc", 6 )
		effector.print_error( PY, "number", "tag.movevc", 7 )
		shape.info( Shape )
		local Tag_fx = format( "\\clip(%s)\\movevc(%s,%s,%s,%s,%s,%s)", Shape,
			math.round( PX - w_shape / 2, 2 ), math.round( PY - h_shape / 2, 2 ),
			math.round( PX - w_shape / 2 + DX, 2 ), math.round( PY - h_shape / 2 + DY, 2 ),
			math.round( ti, 2 ), math.round( tf, 2 )
		)
		return Tag_fx
	end
	
	function tag.movevci( Shape, posx, posy, Dx, Dy, time_vci, time_vcf )
		local  Tag_movevci = tag.movevc( Shape, posx, posy, Dx, Dy, time_vci, time_vcf ):gsub( "clip", "iclip" )
		return Tag_movevci
	end

	function tag.only( condition, s_true, s_false )
		if condition then
			return s_true
		end
		return s_false or ( (type( s_true ) == "number") and 0 or "" )
	end
	
	function tag.only2( Conditions, ... )
		local TrueExits = { ... }
		if type( ... ) == "table" then
			TrueExits = ...
		end
		for i = 1, #Conditions do
			if Conditions[ i ] then
				return TrueExits[ i ]
			end
		end
		return ( type( TrueExits[ #TrueExits ] ) == "number" ) and 0 or ""
	end

	function tag.oscill( DurTotal, DurDelay, ... )
		--DurDelay = DurDelay, or: DurDelay = { DurDelay, accel }, or: DurDelay = function
		--DurDelay = { DurDelay, accel, dilatation }, or: DurDelay = { { DurDelay, Dur_trans }, accel, dilatation }
		--DurDelay = { { DurDelay, Dur_trans }, accel, dilatation, offset_time }
		effector.print_error( DurTotal, "numbertablefunction", "tag.oscill", 1 )
		effector.print_error( DurDelay, "numbertablefunction", "tag.oscill", 2 )
		local time_ini, index_ii, time_tot, dur_tag1 = 0, 0, DurTotal, DurDelay
		local accel, dilat, offset_t, time_off, Tags = 1, 0, 0, 0, { ... }
		if type( DurTotal ) == "table" then
			time_ini =  DurTotal[ 1 ] or 0
			time_tot = (DurTotal[ 2 ] or fx.dur) - time_ini
			index_ii = (DurTotal[ 3 ] or 1) - 1
		elseif type( DurTotal ) == "function" then
			time_ini =  DurTotal( )[ 1 ] or 0
			time_tot = (DurTotal( )[ 2 ] or fx.dur) - time_ini
			index_ii = (DurTotal( )[ 3 ] or 1) - 1
		end
		----------------------------------------------------------
		local time_fin
		if retime_mode then
			time_ini, time_fin = retimettag( retime_mode, time_ini, time_tot )
			time_tot = time_fin - time_ini
		end --september 09th 2017
		----------------------------------------------------------
		local time_tot2 = time_tot
		if type( DurDelay ) == "table" then
			dur_tag1 = DurDelay[ 1 ]
			if type( DurDelay[ 1 ] ) == "table" then
				dur_tag1 = DurDelay[ 1 ][ 1 ]
			end
			if DurDelay[ 2 ] then
				accel = DurDelay[ 2 ]
			end
			if DurDelay[ 3 ] then
				dilat = DurDelay[ 3 ] / 2
			end
			if DurDelay[ 4 ] then
				offset_t = DurDelay[ 4 ]
				--tiempo que hay entre cada conjunto de tags oscills :D
			end --august 22nd 2016
		end
		---------------------------------
		if type( ... ) == "function" then
			Tags = Tags[ 1 ]( )
		end
		-- add: july 24th 2018 ----------
		if type( ... ) == "table" then
			Tags = ...
		end
		local time_i, time_f, tags_fx = 0, 1, ""
		local indicator, tag_osc = 1, ""
		if type( DurDelay ) == "number" then
			dur_tag1 = dur_tag1 - dilat
		elseif type( DurDelay ) == "function" then
			dur_tag1 = 0
		end
		local dur_func, dur_tag2 = 0, 0
		i = 0
		while time_tot > 0 do
			if type( DurDelay ) == "function" then
				dur_func = DurDelay( i )
				time_i = math.round( dur_tag2 + time_ini + time_off, 2 )
				time_f = math.round( time_i + dur_func, 2 )
			else
				time_i = math.round( dur_tag1 * i + time_ini + time_off, 2 )
				if type( DurDelay ) == "table" and
					type( DurDelay[ 1 ] ) == "table" then
					time_f = time_i + DurDelay[ 1 ][ 2 ]
				else
					time_f = math.round( (dur_tag1 + dilat) * (i + 1) + time_ini + time_off, 2 )
				end
			end
			indicator = #Tags - #Tags * ceil( (i + 1 + index_ii) / #Tags ) + i + 1 + index_ii
			if type( Tags[ indicator ] ) == "function" then
				tag_osc = Tags[ indicator ]( i )
			else
				if Tags[ indicator ]:gsub( "%b[]", "" ) == "" then
					Tags[ indicator ] = Tags[ indicator ]:sub( 2, -2 )
					local line = linefx[ ii ]
					func_oscll = loadstring(
						format( "return function( meta, line, x, y ) return %s end", Tags[ indicator ] )
					)( )
					Tags[ indicator ] = func_oscll( meta, line, x, y )
				end
				tag_osc = Tags[ indicator ]
			end
			---------------------------------------------------------------------------------
			if oscill_default
				and time_tot - dur_tag1 <= 0 then
				--hace que los tags de la última transfo retornen a sus valores por default
				tag_osc = tag.default( tag_osc )
			end
			-- oscill_default = true <-- en la celda variables
			-- tag.oscill( { 0, 400 }, 80, "\\fscxyrRc( 0.75, 1.25 )" )
			---------------------------------------------------------------------------------
			if time_tot - dur_tag1 <= 0 then
				time_f = time_ini + time_tot2
				--hace que la última transfo termine en su tiempo exacto
			end --add: august 05th 2018
			---------------------------------------------------------------------------------
			tags_fx = tags_fx .. format( "\\t(%s,%s,%s,%s)", time_i, time_f, accel, tag_osc )
			tags_fx = tags_fx:gsub( "\\t%(%d+[%.%d]*%,%d+[%.%d]*%,[%d%.%,]*%)", "" )
			if type( DurDelay ) == "function" then
				dur_tag2 = dur_tag2 + dur_func
				dur_tag1 = dur_func
			else
				dur_tag1 = dur_tag1 + dilat
			end
			if (i + 1) % #Tags == 0 then
				if type( offset_t ) == "number" then
					time_off = time_off + offset_t
				elseif type( offset_t ) == "function" then
					time_off = time_off + offset_t( i )
				end
				--tag.oscill( { R( 800 ), fx.dur }, { { 100, 0 }, 1, 0, mydur }, "\\alpha255", "\\alpha0" )
				--mydur = function( ) return R( 500, 2000, 20 ) end
			end --august 22nd 2016
			time_tot = math.round( time_tot - dur_tag1, 2 ) -- april 13th 2018
			i = i + 1
		end
		tags_fx = tags_fx:gsub( "\\t%b()",
			function( capture )
				if type( tonumber( capture:match( "\\t%((%d+[%.%d]*)" ) ) ) == "number"
					and tonumber( capture:match( "\\t%((%d+[%.%d]*)" ) ) > time_ini + time_tot2 then
					return ""
				end
				return capture
			end
		) --august 22nd 2016
		tags_fx = tags_fx:gsub( "(\\t%(%d+[%.%d]*%,%d+[%.%d]*%,)1%,", "%1" )
		tags_fx = string.i( tags_fx )
		return tags_fx
	end

	function tag.oscill2( Times, ... )
		local tags_oscll2 = ...
		if tags_oscll2 == nil then
			local comb_ini = {
				[ 01 ] = "\\xyshadRdrs( 20 )\\4cR( nil, { 60, 86 } )",
				[ 02 ] = "\\xybordRdr( 3, 12 )\\3cR( nil, { 60, 86 } )",
				[ 03 ] = "\\frRds( 10 )\\frxyRds( 40 )",
				[ 04 ] = "\\faxyRcs( 0.25 )",
				[ 05 ] = "\\fscxyrRc( 0.75, 1.25 )",
			}
			local comb_fin = {
				[ 01 ] = "\\xyshadRdrs( 20 )\\4cR( nil, { 60, 86 } )",
				[ 02 ] = "\\xshadRdrs( 20 )",
				[ 03 ] = "\\yshadRdrs( 20 )",
				[ 04 ] = "\\4cR( nil, { 60, 86 } )",
				[ 05 ] = "\\xybordRdr( 3, 12 )\\3cR( nil, { 60, 86 } )",
				[ 06 ] = "\\xbordRdr( 3, 12 )",
				[ 07 ] = "\\ybordRdr( 3, 12 )",
				[ 08 ] = "\\3cR( nil, { 60, 86 } )",
				[ 09 ] = "\\frRds( 10 )\\frxyRds( 40 )",
				[ 10 ] = "\\frRds( 10 )",
				[ 11 ] = "\\frxRds( 40 )",
				[ 12 ] = "\\fryRds( 40 )",
				[ 13 ] = "\\faxyRcs( 0.25 )",
				[ 14 ] = "\\faxRcs( 0.25 )",
				[ 15 ] = "\\fayRcs( 0.25 )",
				[ 16 ] = ( R( 2 ) == 1 ) and "\\faxRcs( 0.25 )\\frRds( 10 )" or "\\fayRcs( 0.25 )\\fspRrs( 4 )",
				[ 17 ] = "\\fscxyrRc( 0.75, 1.25 )",
				[ 18 ] = "\\fscxrRc( 0.75, 1.25 )",
				[ 19 ] = "\\fscyrRc( 0.75, 1.25 )",
				[ 20 ] = ( R( 2 ) == 1 ) and "\\fscxrRc( 0.75, 1.25 )\\fspRrs( 4 )" or "\\fscyrRc( 0.75, 1.25 )\\fspRrs( 10 )",
				[ 21 ] = "\\blurRd( 0, 6 )",
				[ 22 ] = "\\fspRrs( 8 )",
				[ 23 ] = "\\1cR( nil, { 60, 86 } )",
				[ 24 ] = "\\1cR( nil, { 60, 86 } )\\blurRd( 0, 6 )",
			}
			local comb_r1 = R( 5 )
			local comb_r1 = R( 5 )
			local comb_r2 = R( 24 )
			local comb_r3 = R( 24 )
			while comb_r2 >= comb_r1 * 4 - 3
				and comb_r2 <= comb_r1 * 4 do
				comb_r2 = R( 24 )
			end
			while comb_r3 >= comb_r1 * 4 - 3
				and comb_r3 <= comb_r1 * 4 do
				comb_r3 = R( 24 )
			end
			local comb_d1 = (R( 5 ) ~= 1) and comb_ini[ comb_r1 ] or ""
			local comb_d2 = comb_fin[ comb_r2 ]
			local comb_d3 = (R( 2 ) == 1) and comb_fin[ comb_r3 ] or ""
			if R( 5 ) == 1
				and comb_d1 == "" then
				comb_d3 = comb_fin[ R( 24 ) ] .. comb_fin[ R( 24 ) ] .. comb_fin[ R( 24 ) ]
			elseif comb_d1 == "" then
				comb_d3 = comb_fin[ R( 24 ) ] .. comb_fin[ R( 24 ) ]
			end
			tags_oscll2 = comb_d1 .. comb_d2 .. comb_d3
		end
		local Tags = { tags_oscll2 }
		if type( tags_oscll2 ) == "table" then
			Tags = tags_oscll2
		end
		local tags_os2 = ""
		local time_ini, time_fin, tags_dft
		if Times[ 1 ] == "random" then
			local dur_oscill2 = Times[ 2 ] or 6.4 * frame_dur
			local dur_transfo = Times[ 3 ] or 1.6 * frame_dur
			local times_total = Rrd( 1, 86 ) * 10
			local Randi = Times[ 4 ] or 520
			local Randf = Times[ 5 ] or 1560
			local i = 1
			Times = { }
			while times_total + dur_oscill2 <= fx.dur do
				Times[ i ] = { }
				Times[ i ][ 1 ] = times_total
				Times[ i ][ 2 ] = times_total + dur_oscill2
				Times[ i ][ 3 ] = dur_transfo
				times_total = times_total + Rrd( Randi, Randf, 10, 3 * i )
				i = i + 1
			end
		end
		if type( Times[ 1 ] ) == "number" then
			if type( Tags[ 1 ] ) == "function" then
				Tags[ 1 ] = Tags[ 1 ]( i )
			end
			time_ini, time_fin = Times[ 1 ], Times[ 2 ]
			tags_dft = format( "\\t(%s,%s,%s)", time_fin, time_fin, tag.default( Tags[ 1 ] ) )
			if Times[ 4 ] then
				tags_dft = ""
			end
			tags_os2 = tag.oscill( { time_ini, time_fin }, Times[ 3 ], Tags[ 1 ] ) .. tags_dft
		elseif type( Times[ 1 ] ) == "table" then
			time_ini, time_fin, tags_dft = { }, { }, { }
			for i = 1, #Times do
				time_ini[ i ], time_fin[ i ] = Times[ i ][ 1 ], Times[ i ][ 2 ]
				if type( Tags[ (i - 1) % #Tags + 1 ] ) == "function" then
					Tags[ (i - 1) % #Tags + 1 ] = Tags[ (i - 1) % #Tags + 1 ]( i )
				end
				tags_dft[ i ] = format( "\\t(%s,%s,%s)",
					time_fin[ i ], time_fin[ i ], tag.default( Tags[ (i - 1) % #Tags + 1 ] )
				)
				if Times[ i ][ 4 ] then
					tags_dft[ i ] = ""
				end
			end
			for i = 1, #Times do
				tags_os2 = tags_os2 .. tag.oscill(
					{ time_ini[ i ], time_fin[ i ] },
					Times[ i ][ 3 ],
					Tags[ (i - 1) % #Tags + 1 ]
				) .. tags_dft[ i ]
			end
		end
		tags_os2 = tags_os2:gsub( "(\\t%(%d+[%.%d]*%,%d+[%.%d]*%,)1%,", "%1" )
		return tags_os2
		--tag.oscill2( { 0, 6f, 1.5f }, "\\frRcs( 7 )\\faxyRcs( 0.2 )" )
		--tag.oscill2( { 0, 4f, 1f }, "\\fscxyr( 1 + 0.25 * (-1) ^ (i + 1) )\\frRs( 10 )" )
		--tag.oscill2( { { 0, 6f, { { 1.5f, 1 } } }, { fx.dur - 8f, fx.dur - 2f, 1.5f } }, "\\frRcs( 7 )" )
		--tag.oscill2( { "random" }, "\\frRcs( 30 )\\frxyRcs( 70 )" )
	end

	function tag.glitter( DurTotal, ExtraTags_i, ExtraTags_f )
		local time_ini, t, t1, t2, t3, t4, Tag_fx = 0, 0, 0, 0, 0, 0, "\\shad0"
		local GT_i, GT_f
		local time_fin = DurTotal or fx.dur
		if type( DurTotal ) == "table" then
			time_ini = DurTotal[ 1 ] or 0
			time_fin = DurTotal[ 2 ] or fx.dur
		elseif type( DurTotal ) == "function" then
			time_ini = DurTotal( )[ 1 ] or 0
			time_fin = DurTotal( )[ 2 ] or fx.dur
		end
		effector.print_error( time_ini, "numbertable", "tag.glitter", 1 )
		effector.print_error( time_fin, "numbertable", "tag.glitter", 1 )
		----------------------------------------------------------------------
		if retime_mode then
			time_ini, time_fin = retimettag( retime_mode, time_ini, time_fin )
		end --september 09th 2017
		----------------------------------------------------------------------
		local time_tot = time_fin - time_ini
		i = 0
		while time_tot > t do
			t1 = t + Rrd( 1, time_tot / 2, 1, 2 * i )
			t2 = t1 + 1
			t3 = t2 + frame_dur
			t4 = t3 + 2.5 * frame_dur
			size1 = Rrd( 1.5 * fx.sizex, 2.5 * fx.sizex, 1, i )
			size2 = Rrd( 0.5 * fx.sizex, 1.5 * fx.sizex, 1, -pi * i )
			GT_i = ExtraTags_i or ""
			if type( ExtraTags_i ) == "function" then
				GT_i = ExtraTags_i( i )
			end
			GT_f = ExtraTags_f or ""
			if type( ExtraTags_f ) == "function" then
				GT_f = ExtraTags_f( i )
			end
			---------------------
			if t4 > time_tot then
				t4 = time_tot
			end
			-- march 12th 2018 --
			Tag_fx = Tag_fx .. format( "\\t(%d,%d,%s\\fscx%d\\fscy%d)\\t(%d,%d,%s\\fscx%d\\fscy%d)",
				time_ini + t1, time_ini + t2, GT_i, size1, size1,
				time_ini + t3, time_ini + t4, GT_f, size2, size2
			)
			t = t4
			i = i + 1
		end
		Tag_fx = string.i( Tag_fx )
		return Tag_fx 
	end
	
	function tag.glitterx( DurTotal, ExtraTags_i, ExtraTags_f )
		local  tag_glitterx = tag.delete( tag.glitter( DurTotal, ExtraTags_i, ExtraTags_f ), "\\fscy" )
		return tag_glitterx
	end
	
	function tag.glittery( DurTotal, ExtraTags_i, ExtraTags_f )
		local  tag_glittery = tag.delete( tag.glitter( DurTotal, ExtraTags_i, ExtraTags_f ), "\\fscx" )
		return tag_glittery
	end
	
	function tag.clip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move )
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "numberstringtable", "tag.clip", 1 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.clip", 2 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.clip", 3 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.clip", 4 )
		end
		if Mode then
			if type( Mode ) == "function" then
				Mode = Mode( )
			end
			effector.print_error( Mode, "true", "tag.clip", 5 )
		end
		if clip_move then
			if type( clip_move ) == "function" then
				clip_move = clip_move( )
			end
			effector.print_error( clip_move, "stringtable", "tag.clip", 6 )
		end
		local left_x, top_y, clip_W, clip_H, size_W, size_H, mode
		local loop_W, loop_H = fx.loop_h, fx.loop_v
		local offset = l.outline + l.shadow
		if type( left_cx ) == "string" then
			clip_move = left_cx
			left_x, top_y  = fx.move_l1 - offset, fx.move_t1 - offset
			clip_W, clip_H = val_width + 2 * offset, val_height + 2 * offset
			mode = 79
		else
			left_x = (left_cx or fx.move_l1) - offset
			top_y = (top_cy or fx.move_t1) - offset
			clip_W, clip_H = (width_clip or val_width) + 2 * offset, (height_clip or val_height) + 2 * offset
			mode = Mode or 79
		end
		size_W, size_H = clip_W / loop_W, clip_H / loop_H
		local cx1, cx2, cy1, cy2
		if table.inside( { 13, 17, 31, 39, 71, 79, 93, 97 }, mode ) == false then
			mode = 79
		end
		if mode == 17
			or mode == 71 then
			cx1 = left_x + (ceil( j / loop_H ) - 1) * size_W
			cx2 = left_x + (ceil( j / loop_H ) - 0) * size_W
		elseif mode == 13
			or mode == 79 then
			cx1 = left_x + ((j - 1) % loop_W + 0) * size_W
			cx2 = left_x + ((j - 1) % loop_W + 1) * size_W
		elseif mode == 39
			or mode == 93 then
			cx1 = left_x + clip_W - (ceil( j / loop_H ) - 0) * size_W
			cx2 = left_x + clip_W - (ceil( j / loop_H ) - 1) * size_W
		elseif mode == 31
			or mode == 97 then
			cx1 = left_x + clip_W - ((j - 1) % loop_W + 1) * size_W
			cx2 = left_x + clip_W - ((j - 1) % loop_W + 0) * size_W
		end
		if mode == 79 or
			mode == 97 then
			cy1 = top_y + (ceil( j / loop_W ) - 1) * size_H
			cy2 = top_y + (ceil( j / loop_W ) - 0) * size_H
		elseif mode == 71
			or mode == 93 then
			cy1 = top_y + ((j - 1) % loop_H + 0) * size_H
			cy2 = top_y + ((j - 1) % loop_H + 1) * size_H
		elseif mode == 13
			or mode == 31 then
			cy1 = top_y + clip_H - (ceil( j / loop_W ) - 0) * size_H
			cy2 = top_y + clip_H - (ceil( j / loop_W ) - 1) * size_H
		elseif mode == 17
			or mode == 39 then
			cy1 = top_y + clip_H - ((j - 1) % loop_H + 1) * size_H
			cy2 = top_y + clip_H - ((j - 1) % loop_H + 0) * size_H
		end
		local func_moves, tags_moves, tags_trans, clip_trans
		local tags_shpmv, tags_txtmv = nil, nil
		local table_moves = clip_move or nil
		local time_i, time_f, time_dur
		local clips_tag = ""
		if table_moves then
			if type( table_moves ) == "table" then
				if #table_moves % 2 == 1 then
					time_i = table_moves[ #table_moves ][ 1 ]
					time_f = table_moves[ #table_moves ][ 2 ]
					table.remove( table_moves, #table_moves )
				else
					time_i = 0
					time_f = fx.dur
				end
				time_dur = time_f - time_i
				clips_tag = clips_tag .. format( "\\clip(%s,%s,%s,%s)",
					math.round( cx1 + table_moves[ 1 ], 2 ),
					math.round( cy1 + table_moves[ 2 ], 2 ),
					math.round( cx2 + table_moves[ 1 ], 2 ),
					math.round( cy2 + table_moves[ 2 ], 2 )
				)
				for i = 2, #table_moves / 2 do
					clips_tag = clips_tag .. format( "\\t(%s,%s,\\clip(%s,%s,%s,%s))",
						math.round( time_i + (i - 2) * time_dur / tag.only( #table_moves / 2 == 1, 1, #table_moves / 2 - 1 ), 2 ),
						math.round( time_i + (i - 1) * time_dur / tag.only( #table_moves / 2 == 1, 1, #table_moves / 2 - 1 ), 2 ),
						math.round( cx1 + table_moves[ 2 * i - 1 ], 2 ),
						math.round( cy1 + table_moves[ 2 * i - 0 ], 2 ),
						math.round( cx2 + table_moves[ 2 * i - 1 ], 2 ),
						math.round( cy2 + table_moves[ 2 * i - 0 ], 2 )
					)
				end
			elseif type( table_moves ) == "string" then
				local line = linefx[ ii ]
				if table_moves:match( "-shape" ) then
					tags_shpmv = true
					table_moves = table_moves:gsub( "-shape", "shape" )
				end
				func_moves = loadstring( format( "return function( meta, line, x, y ) return %s end", table_moves ) )( )
				tags_moves = func_moves( meta, line, x, y )
				tags_trans = { }
				for tr in tags_moves:gmatch( "\\t%(%d+[%.%d]*%,%d+[%.%d]*%,[%d%.%,]*\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*%)" ) do
					tr = tr:gsub( "\\fscx(%d+[%.%d]*)\\fscy(%d+[%.%d]*)", 
						function( x, y )
							return format( "\\clip(%s,%s,%s,%s)",
								math.round( x + cx1 - left_x, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y, 2 ),
								math.round( x + cx1 - left_x + size_W, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y + size_H, 2 )
							)
						end
					)
					table.insert( tags_trans, tr )
				end
				clip_trans = table.op( tags_trans, "concat" )
				if tags_moves:match( "\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*\\t" ) then
					clips_tag = tags_moves:match( "\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*\\t" )
					clips_tag = clips_tag:gsub( "\\fscx(%d+[%.%d]*)\\fscy(%d+[%.%d]*)\\t", 
						function( x, y )
							return format( "\\clip(%s,%s,%s,%s)",
								math.round( x + cx1 - left_x, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y, 2 ),
								math.round( x + cx1 - left_x + size_W, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y + size_H, 2 )
							)
						end
					)
				else
					clips_tag = format( "\\clip(%s,%s,%s,%s)",
						math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 )
					)
				end
				if tags_shpmv then
					tags_moves = ""
				end
				clips_tag = tags_moves .. clips_tag .. clip_trans
			end
		else
			clips_tag = format( "\\clip(%s,%s,%s,%s)",
				math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 )
			)
		end
		return clips_tag
	end --tag.clip( syl.left, syl.top, syl.width, syl.height, 79, "shape.Rmove( 0.4 * line.height )" )

	function tag.clip2( left_cx, top_cy, width_clip, height_clip, clip_move )
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "numberstringtable", "tag.clip2", 1 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.clip2", 2 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.clip2", 3 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.clip2", 4 )
		end
		if clip_move then
			if type( clip_move ) == "function" then
				clip_move = clip_move( )
			end
			effector.print_error( clip_move, "stringtable", "tag.clip2", 5 )
		end
		local left_x, top_y, clip_W, clip_H
		local offset = l.outline + l.shadow
		if type( left_cx ) == "string" then
			clip_move = left_cx
			left_x, top_y  = fx.move_l1 - offset, fx.move_t1 - offset
			clip_W, clip_H = val_width + 2 * offset, val_height + 2 * offset
		else
			left_x = (left_cx or fx.move_l1) - offset
			top_y  = (top_cy or fx.move_t1) - offset
			clip_W = (width_clip or val_width) + 2 * offset
			clip_H = (height_clip or val_height) + 2 * offset
		end
		local cx1, cx2, cy1, cy2 = left_x, left_x + clip_W, top_y, top_y + clip_H
		local func_moves, tags_moves, tags_trans, clip_trans
		local tags_shpmv, tags_txtmv = nil, nil
		local table_moves = clip_move or nil
		local time_i, time_f, time_dur
		local clips_tag = ""
		if table_moves then
			if type( table_moves ) == "table" then
				if #table_moves % 2 == 1 then
					time_i = table_moves[ #table_moves ][ 1 ]
					time_f = table_moves[ #table_moves ][ 2 ]
					table.remove( table_moves, #table_moves )
				else
					time_i = 0
					time_f = fx.dur
				end
				time_dur = time_f - time_i
				clips_tag = clips_tag .. format( "\\clip(%s,%s,%s,%s)",
					math.round( cx1 + table_moves[ 1 ], 2 ),
					math.round( cy1 + table_moves[ 2 ], 2 ),
					math.round( cx2 + table_moves[ 1 ], 2 ),
					math.round( cy2 + table_moves[ 2 ], 2 )
				)
				for i = 2, #table_moves / 2 do
					clips_tag = clips_tag .. format( "\\t(%s,%s,\\clip(%s,%s,%s,%s))",
						math.round( time_i + (i - 2) * time_dur / tag.only( #table_moves / 2 == 1, 1, #table_moves / 2 - 1 ), 2 ),
						math.round( time_i + (i - 1) * time_dur / tag.only( #table_moves / 2 == 1, 1, #table_moves / 2 - 1 ), 2 ),
						math.round( cx1 + table_moves[ 2 * i - 1 ], 2 ),
						math.round( cy1 + table_moves[ 2 * i - 0 ], 2 ),
						math.round( cx2 + table_moves[ 2 * i - 1 ], 2 ),
						math.round( cy2 + table_moves[ 2 * i - 0 ], 2 )
					)
				end
			elseif type( table_moves ) == "string" then
				local line = linefx[ ii ]
				if table_moves:match( "-shape" ) then
					tags_shpmv = true
					table_moves = table_moves:gsub( "-shape", "shape" )
				end
				func_moves = loadstring( format( "return function( meta, line, x, y ) return %s end", table_moves ) )( )
				tags_moves = func_moves( meta, line, x, y )
				tags_trans = { }
				for tr in tags_moves:gmatch( "\\t%(%d+[%.%d]*%,%d+[%.%d]*%,[%d%.%,]*\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*%)" ) do
					tr = tr:gsub( "\\fscx(%d+[%.%d]*)\\fscy(%d+[%.%d]*)", 
						function( x, y )
							return format( "\\clip(%s,%s,%s,%s)",
								math.round( x + cx1 - left_x, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y, 2 ),
								math.round( x + cx1 - left_x + clip_W, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y + clip_H, 2 )
							)
						end
					)
					table.insert( tags_trans, tr )
				end
				clip_trans = table.op( tags_trans, "concat" )
				if tags_moves:match( "\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*\\t" ) then
					clips_tag = tags_moves:match( "\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*\\t" )
					clips_tag = clips_tag:gsub( "\\fscx(%d+[%.%d]*)\\fscy(%d+[%.%d]*)\\t", 
						function( x, y )
							return format( "\\clip(%s,%s,%s,%s)",
								math.round( x + cx1 - left_x, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y, 2 ),
								math.round( x + cx1 - left_x + clip_W, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y + clip_H, 2 )
							)
						end
					)
				else
					clips_tag = format( "\\clip(%s,%s,%s,%s)",
						math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 )
					)
				end
				if tags_shpmv then
					tags_moves = ""
				end
				clips_tag = tags_moves .. clips_tag .. clip_trans
			end
		else
			clips_tag = format( "\\clip(%s,%s,%s,%s)",
				math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 )
			)
		end
		return clips_tag
	end --tag.clip2( syl.left, syl.top, syl.width, syl.height, "shape.Rmove( 0.4 * line.height)" )
	
	function tag.iclip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move )
		if left_cx then
			effector.print_error( left_cx, "numberstringtable", "tag.iclip", 1 )
		end
		if top_cy then
			effector.print_error( top_cy, "number", "tag.iclip", 2 )
		end
		if width_clip then
			effector.print_error( width_clip, "number", "tag.iclip", 3 )
		end
		if height_clip then
			effector.print_error( height_clip, "number", "tag.iclip", 4 )
		end
		if Mode then
			effector.print_error( Mode, "true", "tag.iclip", 5 )
		end
		if clip_move then
			effector.print_error( clip_move, "stringtable", "tag.iclip", 6 )
		end
		local  Tag_iclip = tag.clip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move ):gsub( "clip", "iclip" )
		return Tag_iclip
	end
	
	function tag.iclip2( left_cx, top_cy, width_clip, height_clip, clip_move )
		if left_cx then
			effector.print_error( left_cx, "numberstringtable", "tag.iclip2", 1 )
		end
		if top_cy then
			effector.print_error( top_cy, "number", "tag.iclip2", 2 )
		end
		if width_clip then
			effector.print_error( width_clip, "number", "tag.iclip2", 3 )
		end
		if height_clip then
			effector.print_error( height_clip, "number", "tag.iclip2", 4 )
		end
		if clip_move then
			effector.print_error( clip_move, "stringtable", "tag.iclip2", 5 )
		end
		local  Tag_clip2 = tag.clip2( left_cx, top_cy, width_clip, height_clip, clip_move ):gsub( "clip", "iclip" )
		return Tag_clip2
	end
	
	function tag.moveclip( left_cx, top_cy, width_clip, height_clip, Mode )
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "numberstringtable", "tag.moveclip", 1 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.moveclip", 2 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.moveclip", 3 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.moveclip", 4 )
		end
		if Mode then
			if type( Mode ) == "function" then
				Mode = Mode( )
			end
			effector.print_error( Mode, "true", "tag.moveclip", 5 )
		end
		local left_x = left_cx or fx.move_l1
		local top_y  = top_cy or fx.move_t1
		local TmCdx, TmCdy = fx.move_l2 - fx.move_l1, fx.move_t2 - fx.move_t1
		local TmCc1 = tag.clip( left_x, top_y, width_clip, height_clip, Mode )
		local TmCc2 = tag.clip( left_x + TmCdx, top_y + TmCdy, width_clip, height_clip, Mode )
		return format( "%s\\t(%s,%s,%s)", TmCc1, fx.movet_i, fx.movet_f, TmCc2 )
	end
	
	function tag.moveiclip( left_cx, top_cy, width_clip, height_clip, Mode )
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "numberstringtable", "tag.moveiclip", 1 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.moveiclip", 2 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.moveiclip", 3 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.moveiclip", 4 )
		end
		if Mode then
			if type( Mode ) == "function" then
				Mode = Mode( )
			end
			effector.print_error( Mode, "true", "tag.moveiclip", 5 )
		end
		local  Tag_moveiclip = tag.moveclip( left_cx, top_cy, width_clip, height_clip, Mode ):gsub( "clip", "iclip" )
		return Tag_moveiclip
	end
	
	function tag.moveclip2( left_cx, top_cy, width_clip, height_clip )
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "numberstringtable", "tag.moveclip2", 1 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.moveclip2", 2 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.moveclip2", 3 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.moveclip2", 4 )
		end
		local left_x = left_cx or fx.move_l1
		local top_y  = top_cy or fx.move_t1
		local TmC2dx, TmC2dy = fx.move_l2 - fx.move_l1, fx.move_t2 - fx.move_t1
		local TmC2c1 = tag.clip2( left_x, top_y, width_clip, height_clip )
		local TmC2c2 = tag.clip2( left_x + TmC2dx, top_y + TmC2dy, width_clip, height_clip )
		return format( "%s\\t(%s,%s,%s)", TmC2c1, fx.movet_i, fx.movet_f, TmC2c2 )
	end
	
	function tag.moveiclip2( left_cx, top_cy, width_clip, height_clip )
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "numberstringtable", "tag.moveiclip2", 1 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.moveiclip2", 2 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.moveiclip2", 3 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.moveiclip2", 4 )
		end
		local  Tag_moveiclip2 = tag.moveclip2( left_cx, top_cy, width_clip, height_clip ):gsub( "clip", "iclip" )
		return Tag_moveiclip2
	end
	
	function tag.Rclip( left_cx, top_cy, width_clip, height_clip, Mode )
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "numberstringtable", "tag.Rclip", 1 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.Rclip", 2 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.Rclip", 3 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.Rclip", 4 )
		end
		if Mode then
			if type( Mode ) == "function" then
				Mode = Mode( )
			end
			effector.print_error( Mode, "true", "tag.Rclip", 5 )
		end
		local offset = l.outline + l.shadow
		local mode = Mode or 79
		local left_x = (left_cx or fx.move_l1) - offset
		local top_y = (top_cy or fx.move_t1) - offset
		local clip_W, clip_H = (width_clip or val_width) + 2 * offset, (height_clip or val_height) + 2 * offset
		local loop_W, loop_H = fx.loop_h, fx.loop_v
		local pixelW, pixelH = recall.pixx, recall.pixy
		if j == 1 then
			pixelW = remember( "pixx", { } )
			pixelH = remember( "pixy", { } )
			pixelW[ -1 ] = 0
			pixelH[ -1 ] = 0
			for i = 0, loop_W - 1 do
				pixelW[ i ] = pixelW[ i - 1 ] + clip_W / loop_W + R( -clip_W / (2 * loop_W), clip_W / (2 * loop_W) )
			end
			for i = 0, loop_H - 1 do
				pixelH[ i ] = pixelH[ i - 1 ] + clip_H / loop_H + R( -clip_H / (2 * loop_H), clip_H / (2 * loop_H) )
			end
			pixelW[ loop_W - 1 ] = clip_W
			pixelH[ loop_H - 1 ] = clip_H
		end
		local cx1, cx2, cy1, cy2
		if table.inside( { 13, 17, 31, 39, 71, 79, 93, 97 }, mode ) == false then
			mode = 79
		end
		if mode == 17
			or mode == 71 then
			cx1 = left_x + pixelW[ ceil( j / loop_H ) - 2 ]
			cx2 = left_x + pixelW[ ceil( j / loop_H ) - 1 ]
		elseif mode == 13
			or mode == 79 then
			cx1 = left_x + pixelW[ (j - 1) % loop_W - 1 ]
			cx2 = left_x + pixelW[ (j - 1) % loop_W - 0 ]
		elseif mode == 39
			or mode == 93 then
			cx1 = left_x + clip_W - pixelW[ ceil( j / loop_H ) - 1 ]
			cx2 = left_x + clip_W - pixelW[ ceil( j / loop_H ) - 2 ]
		elseif mode == 31
			or mode == 97 then
			cx1 = left_x + clip_W - pixelW[ (j - 1) % loop_W - 0 ]
			cx2 = left_x + clip_W - pixelW[ (j - 1) % loop_W - 1 ]
		end
		if mode == 79
			or mode == 97 then
			cy1 = top_y + pixelH[ ceil( j / loop_W ) - 2 ]
			cy2 = top_y + pixelH[ ceil( j / loop_W ) - 1 ]
		elseif mode == 71
			or mode == 93 then
			cy1 = top_y + pixelH[ (j - 1) % loop_H - 1 ]
			cy2 = top_y + pixelH[ (j - 1) % loop_H - 0 ]
		elseif mode == 13
			or mode == 31 then
			cy1 = top_y + clip_H - pixelH[ ceil( j / loop_W ) - 1 ]
			cy2 = top_y + clip_H - pixelH[ ceil( j / loop_W ) - 2 ]
		elseif mode == 17
			or mode == 39 then
			cy1 = top_y + clip_H - pixelH[ (j - 1) % loop_H - 0 ]
			cy2 = top_y + clip_H - pixelH[ (j - 1) % loop_H - 1 ]
		end
		return format( "\\clip(%s,%s,%s,%s)",
			math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 )
		)
	end

	function tag.Riclip( left_cx, top_cy, width_clip, height_clip, Mode )
		if left_cx then
			effector.print_error( left_cx, "numberstringtable", "tag.Riclip", 1 )
		end
		if top_cy then
			effector.print_error( top_cy, "number", "tag.Riclip", 2 )
		end
		if width_clip then
			effector.print_error( width_clip, "number", "tag.Riclip", 3 )
		end
		if height_clip then
			effector.print_error( height_clip, "number", "tag.Riclip", 4 )
		end
		if Mode then
			effector.print_error( Mode, "true", "tag.Riclip", 5 )
		end
		local  Tag_Riclip = tag.Rclip( left_cx, top_cy, width_clip, height_clip, Mode ):gsub( "clip", "iclip" )
		return Tag_Riclip
	end
	
	function tag.moveRclip( left_cx, top_cy, width_clip, height_clip, Mode )
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "numberstringtable", "tag.moveRclip", 1 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.moveRclip", 2 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.moveRclip", 3 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.moveRclip", 4 )
		end
		if Mode then
			if type( Mode ) == "function" then
				Mode = Mode( )
			end
			effector.print_error( Mode, "true", "tag.moveRclip", 5 )
		end
		local left_x = left_cx or fx.move_l1
		local top_y  = top_cy or fx.move_t1
		local TmRCdx, TmRCdy = fx.move_l2 - fx.move_l1, fx.move_t2 - fx.move_t1
		local TmRCc1 = tag.Rclip( left_x, top_y, width_clip, height_clip, Mode )
		local TmRCc2 = tag.Rclip( left_x + TmRCdx, top_y + TmRCdy, width_clip, height_clip, Mode )
		return format( "%s\\t(%s,%s,%s)", TmRCc1, fx.movet_i, fx.movet_f, TmRCc2 )
	end

	function tag.moveRiclip( left_cx, top_cy, width_clip, height_clip, Mode )
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "numberstringtable", "tag.moveRiclip", 1 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.moveRiclip", 2 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.moveRiclip", 3 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.moveRiclip", 4 )
		end
		if Mode then
			if type( Mode ) == "function" then
				Mode = Mode( )
			end
			effector.print_error( Mode, "true", "tag.moveRiclip", 5 )
		end
		local  Tag_moveRiclip = tag.moveRclip( left_cx, top_cy, width_clip, height_clip, Mode ):gsub( "clip", "iclip" )
		return Tag_moveRiclip
	end
	
	function tag.Pclip( size_clip, left_cx, top_cy, width_clip, height_clip ) --Rectangular Perimeter Clip
		if size_clip then
			if type( size_clip ) == "function" then
				size_clip = size_clip( )
			end
			effector.print_error( size_clip, "table", "tag.Pclip", 1 )
		end
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "number", "tag.Pclip", 2 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.Pclip", 3 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.Pclip", 4 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.Pclip", 5 )
		end
		local offset = l.outline + l.shadow
		local left_x = (left_cx or fx.move_l1) - offset
		local top_y  = (top_cy or fx.move_t1) - offset
		local size_W = (width_clip or val_width) + 2 * offset
		local size_H = (height_clip or val_height) + 2 * offset
		local size_C = size_clip or { size_W, size_H }
		if type( size_C ) == "number" then
			size_C = { size_C, size_C }
		end
		local loop_x, loop_y, loop_p = ceil( size_W / size_C[ 1 ] ), ceil( size_H / size_C[ 2 ] ), 1
		fx.loop_h, fx.loop_v = loop_x, loop_y
		if 2 * (loop_x + loop_y - 2) ~= 0 then
			loop_p = 2 * (loop_x + loop_y - 2)
		end
		maxloop( loop_p )
		if loop_x == 1
			or loop_y == 1 then
			return tag.clip( left_x, top_y, width_clip, height_clip )
		end
		left_x = left_x + (size_W - loop_x * size_C[ 1 ]) / 2
		top_y = top_y + (size_H - loop_y * size_C[ 2 ]) / 2
		local cx1, cx2, cy1, cy2 = 0, 0, 0, 0
		if j <= loop_x then
			cx1 = left_x + (j - 1) * size_C[ 1 ]
			cx2 = left_x + (j - 0) * size_C[ 1 ]
			cy1 = top_y
			cy2 = top_y + size_C[ 2 ]
		elseif j > loop_x
			and j <= loop_x + (maxj - 2 * loop_x) / 2 then
			cx1 = left_x
			cx2 = left_x + size_C[ 1 ]
			cy1 = top_y + ((j - loop_x - 1) % ((maxj - 2 * loop_x) / 2) + 1) * size_C[ 2 ]
			cy2 = top_y + ((j - loop_x - 1) % ((maxj - 2 * loop_x) / 2) + 2) * size_C[ 2 ]
		elseif j > loop_x + (maxj - 2 * loop_x)/2
			and j <= maxj - loop_x then
			cx1 = left_x + (loop_x - 1) * size_C[ 1 ]
			cx2 = left_x + (loop_x - 0) * size_C[ 1 ]
			cy1 = top_y + ((j - loop_x + (maxj - 2 * loop_x) / 2 - 1) % ((maxj - 2 * loop_x) / 2) + 1) * size_C[ 2 ]
			cy2 = top_y + ((j - loop_x + (maxj - 2 * loop_x) / 2 - 1) % ((maxj - 2 * loop_x) / 2) + 2) * size_C[ 2 ]
		else
			cx1 = left_x + ((maxj - loop_x + j - 1) % loop_x + 0) * size_C[ 1 ]
			cx2 = left_x + ((maxj - loop_x + j - 1) % loop_x + 1) * size_C[ 1 ]
			cy1 = top_y + (loop_y - 1) * size_C[ 2 ]
			cy2 = top_y + (loop_y - 0) * size_C[ 2 ]
		end
		return format( "\\clip(%s,%s,%s,%s)",
			math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 )
		)
	end --tag.Pclip( { syl.width/6, syl.height/4 }, syl.left, syl.top, syl.width, syl.height )

	function tag.Piclip( size_clip, left_cx, top_cy, width_clip, height_clip )
		if size_clip then
			effector.print_error( size_clip, "table", "tag.Piclip", 1 )
		end
		if left_cx then
			effector.print_error( left_cx, "number", "tag.Piclip", 2 )
		end
		if top_cy then
			effector.print_error( top_cy, "number", "tag.Piclip", 3 )
		end
		if width_clip then
			effector.print_error( width_clip, "number", "tag.Piclip", 4 )
		end
		if height_clip then
			effector.print_error( height_clip, "number", "tag.Piclip", 5 )
		end
		local  Tag_Piclip = tag.Pclip( size_clip, left_cx, top_cy, width_clip, height_clip ):gsub( "clip", "iclip" )
		return Tag_Piclip
	end
	
	function tag.movePclip( size_clip, left_cx, top_cy, width_clip, height_clip )
		if size_clip then
			if type( size_clip ) == "function" then
				size_clip = size_clip( )
			end
			effector.print_error( size_clip, "table", "tag.movePclip", 1 )
		end
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "number", "tag.movePclip", 2 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.movePclip", 3 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.movePclip", 4 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.movePclip", 5 )
		end
		local left_x = left_cx or fx.move_l1
		local top_y  = top_cy or fx.move_t1
		local TmPCdx, TmPCdy = fx.move_l2 - fx.move_l1, fx.move_t2 - fx.move_t1
		local TmPCc1 = tag.Pclip( size_clip, left_x, top_y, width_clip, height_clip )
		local TmPCc2 = tag.Pclip( size_clip, left_x + TmPCdx, top_y + TmPCdy, width_clip, height_clip )
		return format( "%s\\t(%s,%s,%s)", TmPCc1, fx.movet_i, fx.movet_f, TmPCc2 )
	end

	function tag.movePiclip( size_clip, left_x, top_y, width_clip, height_clip )
		if size_clip then
			if type( size_clip ) == "function" then
				size_clip = size_clip( )
			end
			effector.print_error( size_clip, "table", "tag.movePiclip", 1 )
		end
		if left_cx then
			if type( left_cx ) == "function" then
				left_cx = left_cx( )
			end
			effector.print_error( left_cx, "number", "tag.movePiclip", 2 )
		end
		if top_cy then
			if type( top_cy ) == "function" then
				top_cy = top_cy( )
			end
			effector.print_error( top_cy, "number", "tag.movePiclip", 3 )
		end
		if width_clip then
			if type( width_clip ) == "function" then
				width_clip = width_clip( )
			end
			effector.print_error( width_clip, "number", "tag.movePiclip", 4 )
		end
		if height_clip then
			if type( height_clip ) == "function" then
				height_clip = height_clip( )
			end
			effector.print_error( height_clip, "number", "tag.movePiclip", 5 )
		end
		local  Tag_movePiclip = tag.movePclip( size_clip, left_x, top_y, width_clip, height_clip ):gsub( "clip", "iclip" )
		return Tag_movePiclip
	end
	
	function tag.clip_shape( Shapes, Center_x, Center_y )
		if type( Shapes ) == "function" then
			Shapes = Shapes( )
		end
		if type( Center_x ) == "function" then
			Center_x = Center_x( )
		end
		if type( Shapes ) == "function" then
			Center_y = Center_y( )
		end
		local Center_x = Center_x or 0
		local Center_y = Center_y or 0
		effector.print_error( Shapes, "shape", "tag.clip_shape", 1 )
		effector.print_error( Center_x, "number", "tag.clip_shape", 2 )
		effector.print_error( Center_y, "number", "tag.clip_shape", 3 )
		local Shp_tbl = recall.shpx
		if j == 1 then
			Shp_tbl = remember( "shpx", shape.divide( shape.centerpos( Shapes, fx.pos_x + Center_x, fx.pos_y + Center_y ) ) )
		end
		return format( "\\clip(%s)", Shp_tbl[ (j - 1) % #Shp_tbl + 1 ] )
	end --Add: august 04th 2018

	function tag.iclip_shape( Shapes, Center_x, Center_y )
		if type( Shapes ) == "function" then
			Shapes = Shapes( )
		end
		if type( Center_x ) == "function" then
			Center_x = Center_x( )
		end
		if type( Shapes ) == "function" then
			Center_y = Center_y( )
		end
		local Center_x = Center_x or 0
		local Center_y = Center_y or 0
		effector.print_error( Shapes, "shape", "tag.iclip_shape", 1 )
		effector.print_error( Center_x, "number", "tag.iclip_shape", 2 )
		effector.print_error( Center_y, "number", "tag.iclip_shape", 3 )
		local Shp_tbl = recall.shpx
		if j == 1 then
			Shp_tbl = remember( "shpx", shape.divide( shape.centerpos( Shapes, fx.pos_x + Center_x, fx.pos_y + Center_y ) ) )
		end
		return format( "\\iclip(%s)", Shp_tbl[ (j - 1) % #Shp_tbl + 1 ] )
	end --Add: august 04th 2018
	
	function tag.do_tag( String )
		if type( String ) == "function" then
			String = String( )
		end
		effector.print_error( String, "string", "tag.do_tag", 1 )
		local func_tag = {
			[ 001 ] = "\\tag.set%b()",			[ 002 ] = "\\tag.movevc%b()",		[ 003 ] = "\\tag.movevci%b()",
			[ 004 ] = "\\tag.only%b()",			[ 005 ] = "\\tag.only2%b()",		[ 006 ] = "\\tag.oscill%b()",
			[ 007 ] = "\\tag.oscill2%b()",		[ 008 ] = "\\tag.glitter%b()",		[ 009 ] = "\\tag.glitterx%b()",
			[ 010 ] = "\\tag.glittery%b()",		[ 011 ] = "\\tag.clip%b()",			[ 012 ] = "\\tag.clip2%b()",
			[ 013 ] = "\\tag.iclip%b()",		[ 014 ] = "\\tag.iclip2%b()",		[ 015 ] = "\\tag.moveclip%b()",
			[ 016 ] = "\\tag.moveiclip%b()",	[ 017 ] = "\\tag.moveclip2%b()",	[ 018 ] = "\\tag.moveiclip2%b()",
			[ 019 ] = "\\tag.Rclip%b()",		[ 020 ] = "\\tag.Riclip%b()",		[ 021 ] = "\\tag.moveRclip%b()",
			[ 022 ] = "\\tag.moveRiclip%b()",	[ 023 ] = "\\tag.Pclip%b()",		[ 024 ] = "\\tag.Piclip%b()",
			[ 025 ] = "\\tag.movePclip%b()",	[ 026 ] = "\\tag.movePiclip%b()",	[ 027 ] = "\\tag.colorchange%b()",
			[ 028 ] = "\\tag.colorchange1%b()",	[ 029 ] = "\\tag.colorchange2%b()",	[ 030 ] = "\\tag.colorchange3%b()",
			[ 031 ] = "\\tag.colorchange4%b()",	[ 032 ] = "\\tag.cyclic%b()",		[ 033 ] = "\\tag.sec%b()",
			[ 034 ] = "\\shape.Lmove%b()",		[ 035 ] = "\\shape.Lmove2%b()",		[ 036 ] = "\\shape.Pmove%b()",
			[ 037 ] = "\\shape.Smove%b()",		[ 038 ] = "\\shape.Rmove%b()",		[ 039 ] = "\\shape.Rmove2%b()",
			[ 040 ] = "\\shape.Rmove3%b()",		[ 041 ] = "\\shape.Rmove4%b()",		[ 042 ] = "\\shape.Omove%b()",
			[ 043 ] = "\\shape.movevc%b()",		[ 044 ] = "\\shape.movevci%b()",
		}
		local func_rep = {
			[ 001 ] = tag.set,					[ 002 ] = tag.movevc,				[ 003 ] = tag.movevci,
			[ 004 ] = tag.only,					[ 005 ] = tag.only2,				[ 006 ] = tag.oscill,
			[ 007 ] = tag.oscill2,				[ 008 ] = tag.glitter,				[ 009 ] = tag.glitterx,
			[ 010 ] = tag.glittery,				[ 011 ] = tag.clip,					[ 012 ] = tag.clip2,
			[ 013 ] = tag.iclip,				[ 014 ] = tag.iclip2,				[ 015 ] = tag.moveclip,
			[ 016 ] = tag.moveiclip,			[ 017 ] = tag.moveclip2,			[ 018 ] = tag.moveiclip2,
			[ 019 ] = tag.Rclip,				[ 020 ] = tag.Riclip,				[ 021 ] = tag.moveRclip,
			[ 022 ] = tag.moveRiclip,			[ 023 ] = tag.Pclip,				[ 024 ] = tag.Piclip,
			[ 025 ] = tag.movePclip,			[ 026 ] = tag.movePiclip,			[ 027 ] = tag.colorchange,
			[ 028 ] = tag.colorchange1,			[ 029 ] = tag.colorchange2,			[ 030 ] = tag.colorchange3,
			[ 031 ] = tag.colorchange4,			[ 032 ] = tag.cyclic,				[ 033 ] = tag.sec,
			[ 034 ] = shape.Lmove,				[ 035 ] = shape.Lmove2,				[ 036 ] = shape.Pmove,
			[ 037 ] = shape.Smove,				[ 038 ] = shape.Rmove,				[ 039 ] = shape.Rmove2,
			[ 040 ] = shape.Rmove3,				[ 041 ] = shape.Rmove4,				[ 042 ] = shape.Omove,
			[ 043 ] = shape.movevc,				[ 044 ] = shape.movevci,
		}
		for i = 1, #func_tag do
			String = String:gsub( func_tag[ i ],
				function( capture )
					local line = linefx[ ii ]
					local val_dotag = capture:match( "\\%w+[%.%w+]*(%b())" ):sub( 2, -2 )
					if fx__.language == "Lua" then
						val_dotag = val_dotag:gsub( "\\", "\\\\" ) -- tag.operation?!!
					end
					if pcall( loadstring( format( "return function( meta, line, x, y ) return { %s } end", val_dotag ) ) ) then
						local fun_dotag = loadstring( format( "return function( meta, line, x, y ) return { %s } end", val_dotag ) )( )
						if pcall( fun_dotag ) then
							local tbl_dotag = fun_dotag( meta, line, x, y )
							if tbl_dotag then
								return func_rep[ i ]( unpack( tbl_dotag ) )
							end
						end
					end
				end
			)
		end
		return String
	end

	function tag.to_Auto4( String )
		local String = tag.v_dollar( String )
		String = String:gsub( "%b!!",
			function( capture )
				local capture = capture:gsub( "%!", "" )
				if capture ~= string.toval( capture ) then
					return string.toval( capture )
				end
				return "!" .. capture .. "!"
			end
		)
		String = String:gsub( "(%b{})([%w%W]*)",
			function( capture1, capture2 )
				if capture2:match( "%b{}" ) then
					return capture1 .. capture2
				elseif capture2 == "" then
					return capture1:sub( 2, -2 ) .. capture2
				end
				return capture1:sub( 2, -2 ) .. "[[" .. capture2 .. "]]"
			end
		)
		if String:match( "%[%[[%w%W]*%]%]" ) then
			local new_returnfx = String:match( "%[%[[%w%W]*%]%]" ):sub( 3, -3 )
			returnfx = { [ 1 ] = new_returnfx }
			String = String:gsub( "%[%[[%w%W]*%]%]", "" )
		end
		--!tag.oscill( 500, {{100, 1 }}, "\\1cR( )" )!
		return String
	end
	
	function tag.to_temp( String )
		--le da valor a las operaciones entre signos de admiración (!!)
		--local String = tag.do_tag( String ) --!tag.oscill( 500, {{100, 1 }}, "\\1cR( )" )!
		local String = tag.temp2( String )
		String = String:gsub( "%b!!",
			function( capture )
				local capture = capture:gsub( "%!", "" )
				if capture ~= string.toval( capture ) then
					return string.toval( capture )
				end
				return "!" .. capture .. "!"
			end
		)
		return String
	end
	
	function tag.v_dollar( String )
		--asigna el valor correspondiente a cada una de las variables dólar ($var)
		local var_dollar = {
			[ 001 ] = "$layer",			[ 002 ] = "$style",			[ 003 ] = "$actor",			[ 004 ] = "$margin_l",
			[ 005 ] = "$margin_r",		[ 006 ] = "$margin_v",		[ 007 ] = "$margin_t",		[ 008 ] = "$margin_b",
			[ 009 ] = "$lstart",		[ 010 ] = "$lend",			[ 011 ] = "$lmid",			[ 012 ] = "$ldur",
			[ 013 ] = "$li",			[ 014 ] = "$linen",			[ 015 ] = "$lleft",			[ 016 ] = "$lcenter",
			[ 017 ] = "$lright",		[ 018 ] = "$lbottom",		[ 019 ] = "$lmiddle",		[ 020 ] = "$ltop",
			[ 021 ] = "$lwidth",		[ 022 ] = "$lheight",		[ 023 ] = "$lx",			[ 024 ] = "$ly",
			[ 025 ] = "$lkdur",			--▲ variables de estilo y de línea
			[ 026 ] = "$sstart",		[ 027 ] = "$send",			[ 028 ] = "$smid",			[ 029 ] = "$sdur",
			[ 030 ] = "$si",			[ 031 ] = "$syln",			[ 032 ] = "$sleft",			[ 033 ] = "$scenter",
			[ 034 ] = "$sright",		[ 035 ] = "$sbottom",		[ 036 ] = "$smiddle",		[ 037 ] = "$stop",
			[ 038 ] = "$swidth",		[ 039 ] = "$sheight",		[ 040 ] = "$sx",			[ 041 ] = "$sy",
			[ 042 ] = "$skdur",			--▲ variables de sílaba
			[ 043 ] = "$fstart",		[ 044 ] = "$fend",			[ 045 ] = "$fmid",			[ 046 ] = "$fdur",
			[ 047 ] = "$fi",			[ 048 ] = "$furin",			[ 049 ] = "$fleft",			[ 050 ] = "$fcenter",
			[ 051 ] = "$fright",		[ 052 ] = "$fbottom",		[ 053 ] = "$fmiddle",		[ 054 ] = "$ftop",
			[ 055 ] = "$fwidth",		[ 056 ] = "$fheight",		[ 057 ] = "$fx",			[ 058 ] = "$fy",
			[ 059 ] = "$fkdur",			--▲ variables de furigana
			[ 060 ] = "$cstart",		[ 061 ] = "$cend",			[ 062 ] = "$cmid",			[ 063 ] = "$cdur",
			[ 064 ] = "$ci",			[ 065 ] = "$charn",			[ 066 ] = "$cleft",			[ 067 ] = "$ccenter",
			[ 068 ] = "$cright",		[ 069 ] = "$cbottom",		[ 070 ] = "$cmiddle",		[ 071 ] = "$ctop",
			[ 072 ] = "$cwidth",		[ 073 ] = "$cheight",		[ 074 ] = "$cx",			[ 075 ] = "$cy",
			[ 076 ] = "$ckdur",			--▲ variables de caracter
			[ 077 ] = "$wstart",		[ 078 ] = "$wend",			[ 079 ] = "$wmid",			[ 080 ] = "$wdur",
			[ 081 ] = "$wi",			[ 082 ] = "$wordn",			[ 083 ] = "$wleft",			[ 084 ] = "$wcenter",
			[ 085 ] = "$wright",		[ 086 ] = "$wbottom",		[ 087 ] = "$wmiddle",		[ 088 ] = "$wtop",
			[ 089 ] = "$wwidth",		[ 090 ] = "$wheight",		[ 091 ] = "$wx",			[ 092 ] = "$wy",
			[ 093 ] = "$wkdur",			--▲ variables de palabra
			[ 094 ] = "$fxstart",		[ 095 ] = "$fxend",			[ 096 ] = "$fxmid",			[ 097 ] = "$fxdur",
			[ 098 ] = "$fxi",			[ 099 ] = "$fxn",			[ 100 ] = "$fxleft",		[ 101 ] = "$fxcenter",
			[ 102 ] = "$fxright",		[ 103 ] = "$fxbottom",		[ 104 ] = "$fxmiddle",		[ 105 ] = "$fxtop",
			[ 106 ] = "$fxwidth",		[ 107 ] = "$fxheight",		[ 108 ] = "$fxx",			[ 109 ] = "$fxy",
			[ 110 ] = "$fxkdur",		--▲ variables de efecto
			[ 111 ] = "$start",			[ 112 ] = "$end",			[ 113 ] = "$mid",			[ 114 ] = "$dur",
			[ 115 ] = "$i",				[ 116 ] = "$n",				[ 117 ] = "$left",			[ 118 ] = "$center",
			[ 119 ] = "$right",			[ 120 ] = "$bottom",		[ 121 ] = "$middle",		[ 122 ] = "$top",
			[ 123 ] = "$width",			[ 124 ] = "$height",		[ 125 ] = "$x",				[ 126 ] = "$y",
			[ 127 ] = "$kdur",			--▲ variables generales
			[ 128 ] = "$scale_x",		[ 129 ] = "$scale_y",		[ 130 ] = "$angle",			[ 131 ] = "$outline",
			[ 132 ] = "$shadow",		[ 133 ] = "$fontsize",		[ 134 ] = "$fontname",		[ 135 ] = "$spacing",
			[ 136 ] = "$color1",		[ 137 ] = "$color2",		[ 138 ] = "$color3",		[ 139 ] = "$color4",
			[ 140 ] = "$alpha1",		[ 141 ] = "$alpha2",		[ 142 ] = "$alpha3",		[ 143 ] = "$alpha4",
			[ 144 ] = "$align"			--▲ variables extra de estilo
		}
		local var_kefx = {
			[ 001 ] = l_layer,			[ 002 ] = l_style,			[ 003 ] = l_actor,			[ 004 ] = l_ml,
			[ 005 ] = l_mr,				[ 006 ] = l_mv,				[ 007 ] = l_mt,				[ 008 ] = l_mb,
			[ 009 ] = l_start,			[ 010 ] = l_end,			[ 011 ] = l_mid,			[ 012 ] = l_dur,
			[ 013 ] = l_i,				[ 014 ] = l_n,				[ 015 ] = l_left,			[ 016 ] = l_center,
			[ 017 ] = l_right,			[ 018 ] = l_bottom,			[ 019 ] = l_middle,			[ 020 ] = l_top,
			[ 021 ] = l_width,			[ 022 ] = l_height,			[ 023 ] = l_x,				[ 024 ] = l_y,
			[ 025 ] = l_dur / 10,		--▲ variables de estilo y de línea
			[ 026 ] = syl_start,		[ 027 ] = syl_end,			[ 028 ] = syl_mid,			[ 029 ] = syl_dur,
			[ 030 ] = syl_i,			[ 031 ] = syl_n,			[ 032 ] = syl_left,			[ 033 ] = syl_center,
			[ 034 ] = syl_right,		[ 035 ] = syl_bottom,		[ 036 ] = syl_middle,		[ 037 ] = syl_top,
			[ 038 ] = syl_width,		[ 039 ] = syl_height,		[ 040 ] = syl_center,		[ 041 ] = syl_middle,
			[ 042 ] = syl_dur / 10,		--▲ variables de sílaba
			[ 043 ] = furi_start,		[ 044 ] = furi_end,			[ 045 ] = furi_mid,			[ 046 ] = furi_dur,
			[ 047 ] = furi_i,			[ 048 ] = furi_n,			[ 049 ] = furi_left,		[ 050 ] = furi_center,
			[ 051 ] = furi_right,		[ 052 ] = furi_bottom,		[ 053 ] = furi_middle,		[ 054 ] = furi_top,
			[ 055 ] = furi_width,		[ 056 ] = furi_height,		[ 057 ] = furi_center,		[ 058 ] = furi_middle,
			[ 059 ] = furi_dur / 10,	--▲ variables de furigana
			[ 060 ] = char_start,		[ 061 ] = char_end,			[ 062 ] = char_mid,			[ 063 ] = char_dur,
			[ 064 ] = char_i,			[ 065 ] = char_n,			[ 066 ] = char_left,		[ 067 ] = char_center,
			[ 068 ] = char_right,		[ 069 ] = char_bottom,		[ 070 ] = char_middle,		[ 071 ] = char_top,
			[ 072 ] = char_width,		[ 073 ] = char_height,		[ 074 ] = char_center,		[ 075 ] = char_middle,
			[ 076 ] = char_dur / 10,	--▲ variables de caracter
			[ 077 ] = word_start,		[ 078 ] = word_end,			[ 079 ] = word_mid,			[ 080 ] = word_dur,
			[ 081 ] = word_i,			[ 082 ] = word_n,			[ 083 ] = word_left,		[ 084 ] = word_center,
			[ 085 ] = word_right,		[ 086 ] = word_bottom,		[ 087 ] = word_middle,		[ 088 ] = word_top,
			[ 089 ] = word_width,		[ 090 ] = word_height,		[ 091 ] = word_center,		[ 092 ] = word_middle,
			[ 093 ] = word_dur / 10,	--▲ variables de palabra
			[ 094 ] = fx_start,			[ 095 ] = fx_end,			[ 096 ] = fx_mid,			[ 097 ] = fx_dur,
			[ 098 ] = fx_i,				[ 099 ] = fx_n,				[ 100 ] = fx_left,			[ 101 ] = fx_center,
			[ 102 ] = fx_right,			[ 103 ] = fx_bottom,		[ 104 ] = fx_middle,		[ 105 ] = fx_top,
			[ 106 ] = fx_width,			[ 107 ] = fx_height,		[ 108 ] = fx_x,				[ 109 ] = fx_y,
			[ 110 ] = fx_dur / 10,		--▲ variables de efecto
			[ 111 ] = val_start,		[ 112 ] = val_end,			[ 113 ] = val_mid,			[ 114 ] = val_dur,
			[ 115 ] = val_i,			[ 116 ] = val_n,			[ 117 ] = val_left,			[ 118 ] = val_center,
			[ 119 ] = val_right,		[ 120 ] = val_bottom,		[ 121 ] = val_middle,		[ 122 ] = val_top,
			[ 123 ] = val_width,		[ 124 ] = val_height,		[ 125 ] = val_center,		[ 126 ] = val_middle,
			[ 127 ] = val_dur / 10,		--▲ variables generales
			[ 128 ] = l_scale_x,		[ 129 ] = l_scale_y,		[ 130 ] = l_angle,			[ 131 ] = l_outline,
			[ 132 ] = l_shadow,			[ 133 ] = l_fsize,			[ 134 ] = l_fname,			[ 135 ] = l_spacing,
			[ 136 ] = l_color1,			[ 137 ] = l_color2,			[ 138 ] = l_color3,			[ 139 ] = l_color4,
			[ 140 ] = l_alpha1,			[ 141 ] = l_alpha2,			[ 142 ] = l_alpha3,			[ 143 ] = l_alpha4,
			[ 144 ] = l_align			--▲ variables extra de estilo
		}
		var_kefx = math.round( var_kefx, 2 )
		String = String:gsub( "%$%w+[_%w]*",
			function( capture )
				return var_kefx[ table.index( var_dollar, capture ) ]
			end
		)
		return String
	end
	
	function tag.coupling( String )
		local tag2_unrpt = { }
		local tags_unrepeat = { 
			[ 1 ] = "\\an?%d",			[ 2 ] = "\\org%b()",		[ 3 ] = "\\pos%b()",
			[ 4 ] = "\\move%b()",		[ 5 ] = "\\moves3%b()",		[ 6 ] = "\\moves4%b()",
			[ 7 ] = "\\mover%b()",		[ 8 ] = "\\movevc%b()",
		}
		local tag2_unrepeat = {
			[ 1 ] = "\\pos%b()",		[ 2 ] = "\\move%b()",		[ 3 ] = "\\moves3%b()",
			[ 4 ] = "\\moves4%b()",		[ 5 ] = "\\mover%b()",
		}
		local function tag_coupling2( String2, tag_cap )
			local tags_unrpt = { }
			for c_cou in String2:gmatch( tag_cap ) do
				table.insert( tags_unrpt, c_cou )
			end
			if #tags_unrpt > 1 then
				String2 = String2:gsub( tag_cap, "", #tags_unrpt - 1 )
			end
			return String2
		end
		for i = 1, #tags_unrepeat do
			String = tag_coupling2( String, tags_unrepeat[ i ] )
		end
		for i = 1, #tag2_unrepeat do
			for c_cou2 in String:gmatch( tag2_unrepeat[ i ] ) do
				table.insert( tag2_unrpt, c_cou2 )
			end
		end
		if #tag2_unrpt > 1 then
			for i = 1, #tag2_unrpt - 1 do
				String = String:gsub( tag.operation( tag2_unrpt[ i ] ), "" )
			end
		end
		return String
	end
	
	function tag.operation( String )
		local String = String
		:gsub( "%%","%%%%" ):gsub( "%*", "%%*" ):gsub( "%+", "%%+" ):gsub( "%-", "%%-" )
		:gsub( "%(", "%%(" ):gsub( "%)", "%%)" ):gsub( "%[", "%%[" ):gsub( "%]", "%%]" )
		return String
	end

	function tag.to_err( String )
		local error_tags_vsf = {
			[ 1 ] = "(\\[%d]*c)(%b())",
			[ 2 ] = "(\\%da)(%b())",
			[ 3 ] = "(\\alpha)(%b())",
		}
		local error_tags_mod = {
			[ 1 ] = "(\\%dvc)(%&[Hh]^*%x+%&)",
			[ 2 ] = "(\\%dva)(%&[Hh]^*%x+%&)",
		}
		local error_func_vsf = {
			[ 1 ] = color.vc_to_c,
			[ 2 ] = alpha.va_to_a,
			[ 3 ] = alpha.va_to_a,
		}
		local error_func_mod = {
			[ 1 ] = color.c_to_vc,
			[ 2 ] = alpha.a_to_va,
		}
		for i = 1, #error_tags_vsf do
			String = String:gsub( error_tags_vsf[ i ],
				function( Tag, Capture )
					local num = 0
					Capture, num = Capture:gsub( "(%&[Hh]^*%x+%&)", "%1" )
					if num == 4 then
						Capture = Capture:sub( 2, -2 )
						return Tag .. error_func_vsf[ i ]( Capture )
					end
					return Tag .. Capture
				end
			)
		end
		for i = 1, #error_tags_mod do
			String = String:gsub( error_tags_mod[ i ],
				function( Tag, Capture )
					return Tag .. error_func_mod[ i ]( Capture )
				end
			)
		end
		return String
	end
	
	function tag.to_vsf( String, Is_Table )
		local String = tag.to_err( String )
		String = String:gsub( "(\\%dv[ac]^*)(%b())",
			function( tag_mod, coloralpha_mod )
				if coloralpha_mod:match( "%([&Hh ]*%x+[& ]*,[&Hh ]*%x+[& ]*,[&Hh ]*%x+[& ]*,[&Hh ]*%x+[& ]*%)" ) then
					local coloralphas = { }
					for c in coloralpha_mod:gmatch( "[&Hh ]*%x+[& ]*" ) do
						table.insert( coloralphas, c )
					end
					local col_alp1, col_alp2, colalpvf
					if coloralphas[ 1 ]:len( ) >= 6
						and #coloralphas == 4 then
						col_alp1 = color.ipolfx( 0.5, coloralphas[ 1 ], coloralphas[ 4 ] )
						col_alp2 = color.ipolfx( 0.5, coloralphas[ 2 ], coloralphas[ 3 ] )
						colalpvf = color.ipolfx( 0.5, col_alp1, col_alp2 )
					elseif  #coloralphas == 4 then
						col_alp1 = alpha.ipolfx( 0.5, coloralphas[ 1 ], coloralphas[ 4 ] )
						col_alp2 = alpha.ipolfx( 0.5, coloralphas[ 2 ], coloralphas[ 3 ] )
						colalpvf = alpha.ipolfx( 0.5, col_alp1, col_alp2 )
					end
					tag_mod = tag_mod:gsub( "v", "" )
					coloralpha_mod = colalpvf
				end
				return tag_mod .. coloralpha_mod
			end
		)
		-------------------------------------------------------------
		if Is_Table == nil then --April 26th 2019
			--evita que las llaves sean eliminadas cuando se retorna una tabla ^^'
			String = String:gsub( "%b{}",
				function( capture )
					local in_capture = capture:sub( 2, -2 )
					in_capture = in_capture:gsub( "%b{}",
						function( capture2 )
							return capture2:sub( 2, -2 )
						end
					)
					return "{" .. in_capture .. "}"
				end
			)
			:gsub( "%b{}",
				function( capture )
					local in_capture = capture:sub( 2, -2 )
					in_capture = in_capture:gsub( "{", "" ):gsub( "}", "" )
					return "{" .. in_capture .. "}"
				end
			)
		end
		-------------------------------------------------------------
		String = String:gsub( "}{", ""  ):gsub( "{}", "" ):gsub( "{{", "{" )
		:gsub( "}}", "}" ):gsub( "}|{", "}{" ):gsub( "\\\\", "\\" )
		:gsub( "%-?%d+%.%d+e%-?[0]*%d+", 0 ) --add: december 08th 2018
		--:gsub( "8%.882e%-018", "0.01" ) --Rc( -0.07, 0.07 )
		:gsub( "\"(&H%x+&)\"", "%1" ):gsub( "'(&H%x+&)'", "%1" )
		-- cambia el \\tag-0 por \\tag0 -----------------------------
		if String:match( "\\[%d]*%a+%-0[%.%d]*" )
			and String:match( "\\[%d]*%a+(%-0[%.%d]*)" ) == "-0" then
			String = String:gsub( "(\\[%d]*%a+)(%-0[%.%d]*)",
				function( Tag, Zero )
					if Zero == "-0" then
						return Tag .. "0"
					end
				end
			)
		end --add: january 23rd 2019
		-------------------------------------------------------------
		return tag.coupling( String )
	end
	
	function tag.to_mod( String, Is_Table )
		local String = tag.to_err( String )
		String = String:gsub( "(\\[%d]*[ac]^*)([&H]*%x+[&]*)",
			function( tag_vsf, coloralpha_vsf )
				tag_vsf = tag_vsf:gsub( "(\\[%d]*)([ac]^*)",
					function( tag_num, tag_ac )
						return tag_num .. "v" .. tag_ac
					end
				)
				return tag_vsf .. math.format( "(%s,%s,%s,%s)", coloralpha_vsf )
			end
		)
		String = String:gsub( "\\alpha([&H]*%x+[&]*)",
			function( alpha_vsf )
				local alpha1 = math.format( "\\1va(%s,%s,%s,%s)", alpha_vsf )
				local alpha3 = math.format( "\\3va(%s,%s,%s,%s)", alpha_vsf )
				local alpha4 = math.format( "\\4va(%s,%s,%s,%s)", alpha_vsf )
				return alpha1 .. alpha3 .. alpha4
			end
		)
		if Is_Table == nil then
			String = String:gsub( "%b{}",
				function( capture )
					local in_capture = capture:sub( 2, -2 )
					in_capture = in_capture:gsub( "%b{}",
						function( capture2 )
							return capture2:sub( 2, -2 )
						end
					)
					return "{" .. in_capture .. "}"
				end
			)
			:gsub( "%b{}",
				function( capture )
					local in_capture = capture:sub( 2, -2 )
					in_capture = in_capture:gsub( "{", "" ):gsub( "}", "" )
					return "{" .. in_capture .. "}"
				end
			)
		end
		String = String:gsub( "\\vc", "\\1vc" ):gsub( "}{", "" ):gsub( "{}", "" )
		:gsub( "{{", "{" ):gsub( "}}", "}" ):gsub( "}|{", "}{" )
		:gsub( "m %-?%d+[%.%d]* %-?%d+[%.%-%dlb ]*",
			function( cap_shape )
				cap_shape = cap_shape:gsub( "%-?%d+[%.%d]*",
					function( cap_number )
						cap_number = math.round( tonumber( cap_number ) )
						return cap_number
					end
				)
				return cap_shape
			end --shape.size( shape.circle, 77.3 )
		)
		:gsub( "\\t[cdefimrswx%d%-%~]*%(", "\\t%(" )
		:gsub( "\\\\", "\\" )
		:gsub( "%-?%d+%.%d+e%-?[0]*%d+", 0 ) --add: december 08th 2018
		--:gsub( "8%.882e%-018", "0.01" ) --Rc( -0.07, 0.07 )
		:gsub( "\"(&H%x+&)\"", "%1" ):gsub( "'(&H%x+&)'", "%1" )
		-- cambia el \\tag-0 por \\tag0 -----------------------------
		if String:match( "\\[%d]*%a+%-0[%.%d]*" )
			and String:match( "\\[%d]*%a+(%-0[%.%d]*)" ) == "-0" then
			String = String:gsub( "(\\[%d]*%a+)(%-0[%.%d]*)",
				function( Tag, Zero )
					if Zero == "-0" then
						return Tag .. "0"
					end
				end
			)
		end --add: january 23rd 2019
		-------------------------------------------------------------
		return tag.coupling( String )
	end
	
	function tag.colorchange( Color_or_Table, dur )
		local colors = { Color_or_Table }
		if type( Color_or_Table ) == "table" then
			colors = Color_or_Table
		end
		colors = color.from_error( colors )
		local t1, tc = 0, "\\1c"
		local t2 = dur or fx.dur
		if type( dur ) == "table" then
			t1 = dur[ 1 ]
			t2 = dur[ 2 ]
		end
		local i, tagfx, durt = 1, "", math.round( (t2 - t1) / #colors, 2 )
		while i <= #colors do
			if color.assF( colors[ i ] ):len( ) >= 15 then
				tc = "\\1vc"
			end
			tagfx = tagfx .. format( "\\t(%s,%s,%s)",
				t1 + durt * (i - 1), t1 + durt * i, tc .. color.assF( colors[ i ] )
			)
			i = i + 1
		end
		return tagfx
	end
	
	function tag.colorchange1( Color_or_Table, dur )
		return tag.colorchange( Color_or_Table, dur )
	end
	
	function tag.colorchange2( Color_or_Table, dur )
		local  color_chng2 = tag.colorchange( Color_or_Table, dur ):gsub( "\\1", "\\2" )
		return color_chng2
	end
	
	function tag.colorchange3( Color_or_Table, dur )
		local  color_chng3 = tag.colorchange( Color_or_Table, dur ):gsub( "\\1", "\\3" )
		return color_chng3
	end
	
	function tag.colorchange4( Color_or_Table, dur )
		local  color_chng4 = tag.colorchange( Color_or_Table, dur ):gsub( "\\1", "\\4" )
		return color_chng4
	end
	
	function tag.ipol2( Ipol_1, Ipol_2, Ipol_i )
		local Val_1, Val_2, v1, v2 = { }, { }, "", ""
		if Ipol_i == nil then
			Ipol_i = 0.5
		elseif Ipol_i <= 0 then
			Ipol_i = 0
		elseif Ipol_i >= 1 then
			Ipol_i = 1
		end
		if type( Ipol_1 ) == "number"
			and type( Ipol_2 ) == "number" then
			return Ipol_1 + Ipol_i * (Ipol_2 - Ipol_1)
		elseif type( Ipol_1 ) == "string"
			and type( Ipol_2 ) == "string" then
			Ipol_1 = color.from_error( Ipol_1 )
			Ipol_2 = color.from_error( Ipol_2 )
			for c in Ipol_1:gmatch( "&.-&" ) do
				table.insert( Val_1, c )
			end
			for c in Ipol_2:gmatch( "&.-&" ) do
				table.insert( Val_2, c )
			end
			if #Val_1 == 0 or #Val_2 == 0 then
				return Ipol_1, Ipol_2
			end
			v1, v2 = Val_1[ 1 ], Val_2[ 1 ]
			if #Val_1 == 4 then
				v1 = format( "(%s,%s,%s,%s)", Val_1[ 1 ], Val_1[ 2 ], Val_1[ 3 ], Val_1[ 4 ] )
			end
			if #Val_2 == 4 then
				v2 = format( "(%s,%s,%s,%s)", Val_2[ 1 ], Val_2[ 2 ], Val_2[ 3 ], Val_2[ 4 ] )
			end
			if v1:len( ) > 25 then
				v1 = color.vc_to_c( v1 )
			end
			if v2:len( ) > 25 then
				v2 = color.vc_to_c( v2 )
			end
			if v1:len( ) == 25 then
				v1 = alpha.va_to_a( v1 )
			end
			if v2:len( ) == 25 then
				v2 = alpha.va_to_a( v2 )
			end
			if v1:len( ) == 5
				and v2:len( ) == 5 then
				return alpha.ipolfx( Ipol_i, v1, v2 )
			end
			return color.ipolfx( Ipol_i, v1, v2 )
		end
		return Ipol_1, Ipol_2
	end
	
	tag.ipol = function( Ipol_i, ... )
		local valors = { ... }
		if type( ... ) == "table" then
			valors = ...
		end
		---------------------------------------------
		-- interpola el valor de dos números
		local function ipol_number( val_1, val_2, pct_ipol )
			return val_1 + (val_2 - val_1) * pct_ipol
		end
		---------------------------------------------
		-- interpola el valor de dos shapes o dos clips
		local function ipol_shpclip( val_1, val_2, pct_ipol )
			local tbl_1, tbl_2, k = { }, { }, 1
			for c in val_1:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( tbl_1, tonumber( c ) )
			end
			for c in val_2:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( tbl_2, tonumber( c ) )
			end
			local val_ipol = val_1:gsub( "%-?%d+[%.%d]*", 
				function( val )
					local val = tbl_1[ k ] + ( tbl_2[ (k - 1) % #tbl_2 + 1 ] - tbl_1[ k ]) * pct_ipol
					k = k + 1
					return math.round( val, 3 )
				end
			)
			return val_ipol
		end
		---------------------------------------------
		-- busca un string dentro de la tabla
		local function string_in_tbl( str_in_tbl )
			for i = 1, #str_in_tbl do
				if type( str_in_tbl[ i ] ) == "string" then
					return true, str_in_tbl[ i ]
				end
			end
			return false
		end
		---------------------------------------------
		-- determina si los elementos son clip's o shapes
		local function type_table( Table )
			if type( Table[ 1 ] ) == "string" then
				if Table[ 1 ]:match( "%([ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%)" ) then
					for i = 1, #Table do
						if type( Table[ i ] ) ~= "string"
							or not Table[ i ]:match( "%([ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%)" ) then
							return nil
						end
					end
					return true
				elseif Table[ 1 ]:match( "m %-?%d+[%.%d]* %-?%d+[%.%-%dblm ]*" ) then
					for i = 1, #Table do
						if type( Table[ i ] ) ~= "string"
							or not Table[ i ]:match( "m %-?%d+[%.%d]* %-?%d+[%.%-%dblm ]*" ) then
							return nil
						end
					end
					return true
				end
			end
			return nil
		end
		-------------------------------------------------------------
		-- decide cuál de las 4 interpolaciones se usará
		local ipol_function = ipol_number
		local Shp_or_Clip = type_table( valors )
		if Shp_or_Clip then
			ipol_function = ipol_shpclip
		end
		if string_in_tbl( valors ) then
			local True, Val_str = string_in_tbl( valors )
			if Val_str:match( "[&Hh%#]^*%x%x%x%x%x%x[&]*" ) then
				ipol_function = color.interpolate
			elseif Val_str:match( "[&Hh%#]^*%x%x[&]*" ) then
				ipol_function = alpha.interpolate
			end
		end
		---------------------------------------------
		local Ipol_i = Ipol_i or 0.5
		effector.print_error( Ipol_i, "number", "tag.ipol", 1 )
		Ipol_i = math.clamp( Ipol_i ) * (#valors - 1)
		local valor_i = valors[ floor( Ipol_i ) + 1 ]
		local valor_f = valors[ floor( Ipol_i ) + 2 ] or valors[ floor( Ipol_i ) + 1 ]
		return ipol_function( valor_i, valor_f, Ipol_i - floor( Ipol_i ) )
	end
	
	function tag.temp2( my_temp )
		local my_temp_bar, my_temp_Tbar = "", { }
		--local my_temp = tag.do_tag( my_temp ) --!tag.oscill( 500, {{100, 1 }}, "\\1cR( )" )!
		if my_temp:match( "%b||" ) then
			for c in my_temp:gmatch( "%b||" ) do
				table.insert( my_temp_Tbar, c )
			end
			my_temp_bar = table.op( my_temp_Tbar, "concat" )
			my_temp = my_temp:gsub( "%b||", "" )
		end
		local var_temp_D = {
			[ 001 ] = "$layer",			[ 002 ] = "$style",			[ 003 ] = "$actor",			[ 004 ] = "$margin_l",
			[ 005 ] = "$margin_r",		[ 006 ] = "$margin_v",		[ 007 ] = "$margin_t",		[ 008 ] = "$margin_b",
			[ 009 ] = "$scale_x",		[ 010 ] = "$scale_y",		[ 011 ] = "$angle",			[ 012 ] = "$outline",
			[ 013 ] = "$shadow",		[ 014 ] = "$fontsize",		[ 015 ] = "$fontname",		[ 016 ] = "$spacing",
			[ 017 ] = "$color1",		[ 018 ] = "$color2",		[ 019 ] = "$color3",		[ 020 ] = "$color4",
			[ 021 ] = "$alpha1",		[ 022 ] = "$alpha2",		[ 023 ] = "$alpha3",		[ 024 ] = "$alpha4",
			[ 025 ] = "$align",			[ 026 ] = "$lstart",		[ 027 ] = "$lend",			[ 028 ] = "$lmid",
			[ 029 ] = "$ldur",			[ 030 ] = "$li",			[ 031 ] = "$linen",			[ 032 ] = "$lleft",
			[ 033 ] = "$lcenter",		[ 034 ] = "$lright",		[ 035 ] = "$lbottom",		[ 036 ] = "$lmiddle",
			[ 037 ] = "$ltop",			[ 038 ] = "$lwidth",		[ 039 ] = "$lheight",		[ 040 ] = "$lx",
			[ 041 ] = "$ly",			[ 042 ] = "$lkdur",			[ 043 ] = "$lpretime",		[ 044 ] = "$lposttime",
			[ 045 ] = "$ldescent",		[ 046 ] = "$lextlead",		[ 047 ] = "$sbottom",		[ 048 ] = "$smiddle",
			[ 049 ] = "$stop",			[ 050 ] = "$sheight",		[ 051 ] = "$cbottom",		[ 052 ] = "$cmiddle",
			[ 053 ] = "$ctop",			[ 054 ] = "$cheight",		[ 055 ] = "$wbottom",		[ 056 ] = "$wmiddle",
			[ 057 ] = "$wtop",			[ 058 ] = "$wheight",		[ 059 ] = "$fxbottom",		[ 060 ] = "$fxmiddle",
			[ 061 ] = "$fxtop",			[ 062 ] = "$fxheight",		[ 063 ] = "$bottom",		[ 064 ] = "$middle",
			[ 065 ] = "$top",			[ 066 ] = "$height",		[ 067 ] = "$sy",			[ 068 ] = "$cy",
			[ 069 ] = "$wy",			[ 070 ] = "$fxy",			[ 071 ] = "$y",				[ 072 ] = "$sstart",
			[ 073 ] = "$send",			[ 074 ] = "$smid",			[ 075 ] = "$sdur",			[ 076 ] = "$sleft",
			[ 077 ] = "$scenter",		[ 078 ] = "$sright",		[ 079 ] = "$swidth",		[ 080 ] = "$sx",
			[ 081 ] = "$skdur",			[ 082 ] = "$cstart",		[ 083 ] = "$cend",			[ 084 ] = "$cmid",
			[ 085 ] = "$cdur",			[ 086 ] = "$cleft",			[ 087 ] = "$ccenter",		[ 088 ] = "$cright",
			[ 089 ] = "$cwidth",		[ 090 ] = "$cx",			[ 091 ] = "$ckdur",			[ 092 ] = "$wstart",
			[ 093 ] = "$wend",			[ 094 ] = "$wmid",			[ 095 ] = "$wdur",			[ 096 ] = "$wleft",
			[ 097 ] = "$wcenter",		[ 098 ] = "$wright",		[ 099 ] = "$wwidth",		[ 100 ] = "$wx",
			[ 101 ] = "$wkdur",			[ 102 ] = "$fxstart",		[ 103 ] = "$fxend",			[ 104 ] = "$fxmid",
			[ 105 ] = "$fxdur",			[ 106 ] = "$fxleft",		[ 107 ] = "$fxcenter",		[ 108 ] = "$fxright",
			[ 109 ] = "$fxwidth",		[ 110 ] = "$fxx",			[ 111 ] = "$fxkdur",		[ 112 ] = "$start",
			[ 113 ] = "$end",			[ 114 ] = "$mid",			[ 115 ] = "$dur",			[ 116 ] = "$left",
			[ 117 ] = "$center",		[ 118 ] = "$right",			[ 119 ] = "$width",			[ 120 ] = "$x",
			[ 121 ] = "$kdur",			[ 122 ] = "$si",			[ 123 ] = "$syln",			[ 124 ] = "$ci",
			[ 125 ] = "$charn",			[ 126 ] = "$wi",			[ 127 ] = "$wordn",			[ 128 ] = "$fxi",
			[ 129 ] = "$fxn",			[ 130 ] = "$i",				[ 131 ] = "$n",
		}
		local Tl, Ts, Tc, Tw = linefx[ ii ], linefx[ ii ].syl, linefx[ ii ].char, linefx[ ii ].word
		local var_temp_L = {
			[ 001 ] = Tl.layer,			[ 002 ] = Tl.style,			[ 003 ] = Tl.actor,			[ 004 ] = Tl.margin_l,
			[ 005 ] = Tl.margin_r,		[ 006 ] = Tl.margin_v,		[ 007 ] = Tl.margin_t,		[ 008 ] = Tl.margin_b,
			[ 009 ] = Tl.scale_x,		[ 010 ] = Tl.scale_y,		[ 011 ] = Tl.angle,			[ 012 ] = Tl.outline,
			[ 013 ] = Tl.shadow,		[ 014 ] = Tl.fontsize,		[ 015 ] = Tl.fontname,		[ 016 ] = Tl.spacing,
			[ 017 ] = Tl.color1,		[ 018 ] = Tl.color2,		[ 019 ] = Tl.color3,		[ 020 ] = Tl.color4,
			[ 021 ] = Tl.alpha1, 		[ 022 ] = Tl.alpha2,		[ 023 ] = Tl.alpha3,		[ 024 ] = Tl.alpha4,
			[ 025 ] = Tl.align,			[ 026 ] = Tl.start_time,	[ 027 ] = Tl.end_time,		[ 028 ] = Tl.mid_time,
			[ 029 ] = Tl.duration,		[ 030 ] = l_i,				[ 031 ] = l_n,				[ 032 ] = Tl.left,
			[ 033 ] = Tl.center,  		[ 034 ] = Tl.right,			[ 035 ] = Tl.bottom,		[ 036 ] = Tl.middle,
			[ 037 ] = Tl.top,			[ 038 ] = Tl.width,	 		[ 039 ] = Tl.height, 		[ 040 ] = Tl.center,
			[ 041 ] = Tl.middle,		[ 042 ] = Tl.duration / 10,	[ 043 ] = Tl.pretime,		[ 044 ] = Tl.posttime,
			[ 045 ] = Tl.descent,		[ 046 ] = Tl.extlead,		[ 047 ] = Tl.bottom,		[ 048 ] = Tl.middle,
			[ 049 ] = Tl.top,	 		[ 050 ] = Tl.height,		[ 051 ] = Tl.bottom, 		[ 052 ] = Tl.middle,
			[ 053 ] = Tl.top,			[ 054 ] = Tl.height,		[ 055 ] = Tl.bottom,		[ 056 ] = Tl.middle,
			[ 057 ] = Tl.top,	 		[ 058 ] = Tl.height,		[ 059 ] = Tl.bottom,		[ 060 ] = Tl.middle,
			[ 061 ] = Tl.top,			[ 062 ] = Tl.height,    	[ 063 ] = Tl.bottom, 		[ 064 ] = Tl.middle,
			[ 065 ] = Tl.top,			[ 066 ] = Tl.height,		[ 067 ] = Tl.middle,		[ 068 ] = Tl.middle,
			[ 069 ] = Tl.middle, 		[ 070 ] = Tl.middle,		[ 071 ] = Tl.middle,		[ 072 ] = { },
			[ 073 ] = { },				[ 074 ] = { },				[ 075 ] = { },				[ 076 ] = { },
			[ 077 ] = { },				[ 078 ] = { },				[ 079 ] = { },				[ 080 ] = { },
			[ 081 ] = { },				[ 082 ] = { },				[ 083 ] = { },				[ 084 ] = { },
			[ 085 ] = { },				[ 086 ] = { },				[ 087 ] = { },				[ 088 ] = { },
			[ 089 ] = { },				[ 090 ] = { },				[ 091 ] = { },				[ 092 ] = { },
			[ 093 ] = { },				[ 094 ] = { },				[ 095 ] = { },				[ 096 ] = { },
			[ 097 ] = { },				[ 098 ] = { },				[ 099 ] = { },				[ 100 ] = { },
			[ 101 ] = { },				[ 102 ] = { },				[ 103 ] = { },				[ 104 ] = { },
			[ 105 ] = { },				[ 106 ] = { },				[ 107 ] = { },				[ 108 ] = { },
			[ 109 ] = { },				[ 110 ] = { },				[ 111 ] = { },				[ 112 ] = { },
			[ 113 ] = { },				[ 114 ] = { },				[ 115 ] = { },				[ 116 ] = { },
			[ 117 ] = { },				[ 118 ] = { },				[ 119 ] = { },				[ 120 ] = { },
			[ 121 ] = { },				[ 122 ] = { },				[ 123 ] = { },				[ 124 ] = { },
			[ 125 ] = { },				[ 126 ] = { },				[ 127 ] = { },				[ 128 ] = { },
			[ 129 ] = { },				[ 130 ] = { },				[ 131 ] = { },
		}
		local Tfx, T2x = { [ 1 ] = Ts, [ 2 ] = Tc, [ 3 ] = Tw }, { }
		if fx__.t_type == "Template Line [Word]" then
			T2x = Tw
		elseif fx__.t_type == "Template Line [Syl]" then
			T2x = Ts
		elseif fx__.t_type == "Template Line [Char]" then
			T2x = Tc
		end
		for i = 1, 71 do
			var_temp_L[ i ] = table.replay( T2x.n, var_temp_L[ i ] )
		end
		for k = 1, 3 do
			for i = 1, Tfx[ k ].n do
				var_temp_L[ 72 + (k - 1) * 10 ][ i ] = Tfx[ k ][ i ].start_time
				var_temp_L[ 73 + (k - 1) * 10 ][ i ] = Tfx[ k ][ i ].end_time
				var_temp_L[ 74 + (k - 1) * 10 ][ i ] = Tfx[ k ][ i ].mid_time
				var_temp_L[ 75 + (k - 1) * 10 ][ i ] = Tfx[ k ][ i ].duration
				var_temp_L[ 76 + (k - 1) * 10 ][ i ] = Tfx[ k ][ i ].left
				var_temp_L[ 77 + (k - 1) * 10 ][ i ] = Tfx[ k ][ i ].center
				var_temp_L[ 78 + (k - 1) * 10 ][ i ] = Tfx[ k ][ i ].right
				var_temp_L[ 79 + (k - 1) * 10 ][ i ] = Tfx[ k ][ i ].width
				var_temp_L[ 80 + (k - 1) * 10 ][ i ] = Tfx[ k ][ i ].center
				var_temp_L[ 81 + (k - 1) * 10 ][ i ] = Tfx[ k ][ i ].duration / 10
			end
		end
		for k = 1, 2 do
			for i = 1, T2x.n do
				var_temp_L[ 102 + (k - 1) * 10 ][ i ] = T2x[ i ].start_time
				var_temp_L[ 103 + (k - 1) * 10 ][ i ] = T2x[ i ].end_time
				var_temp_L[ 104 + (k - 1) * 10 ][ i ] = T2x[ i ].mid_time
				var_temp_L[ 105 + (k - 1) * 10 ][ i ] = T2x[ i ].duration
				var_temp_L[ 106 + (k - 1) * 10 ][ i ] = T2x[ i ].left
				var_temp_L[ 107 + (k - 1) * 10 ][ i ] = T2x[ i ].center
				var_temp_L[ 108 + (k - 1) * 10 ][ i ] = T2x[ i ].right
				var_temp_L[ 109 + (k - 1) * 10 ][ i ] = T2x[ i ].width
				var_temp_L[ 110 + (k - 1) * 10 ][ i ] = T2x[ i ].center
				var_temp_L[ 111 + (k - 1) * 10 ][ i ] = T2x[ i ].duration / 10
			end
		end
		for i = 1, T2x.n do
			var_temp_L[ 122 ][ i ] = i
			var_temp_L[ 123 ][ i ] = T2x.n
			var_temp_L[ 124 ][ i ] = i
			var_temp_L[ 125 ][ i ] = T2x.n
			var_temp_L[ 126 ][ i ] = i
			var_temp_L[ 127 ][ i ] = T2x.n
			var_temp_L[ 128 ][ i ] = i
			var_temp_L[ 129 ][ i ] = T2x.n
			var_temp_L[ 130 ][ i ] = i
			var_temp_L[ 131 ][ i ] = T2x.n
		end
		--my_temp = my_temp:gsub( "{", "" ):gsub( "}", "" )
		--fix: january 24th 2019
		--salva las llaves "{}" que estén dentro de signos de admiración
		my_temp = string.change( my_temp, { "{", "}" }, nil, "%b!!" )
		local function dollar2val( d_string, d_index )
			local dollar_T, dll_val = { }, { }
			for c in d_string:gmatch( "%$%w+[_%w]*" ) do
				table.insert( dollar_T, c )
			end
			for i = 1, #dollar_T do
				if type( table.index( var_temp_D, dollar_T[ i ] ) ) == "number" then 
					dll_val = var_temp_L[ table.index( var_temp_D, dollar_T[ i ] ) ][ d_index ]
				else
					dll_val = dollar_T[ i ]
				end
				d_string = d_string:gsub( dollar_T[ i ], dll_val, 1 )
			end
			return d_string
		end
		local temp_line, temp_text, dollar_to_val = "", "", ""
		for i = 1, T2x.n do
			temp_text = T2x[ i ].text1
			:gsub( "\\k%d+", "" ):gsub( "\\K%d+", "" )
			:gsub( "\\kf%d+", "" ):gsub( "\\ko%d+", "" ):gsub( "KEfx", "" )
			--dollar_to_val = dollar2val( my_temp, i ):gsub( "\\r", "" )
			--temp_line = temp_line .. format( "{\\r%s%s}%s", tags_style, dollar_to_val, temp_text )
			dollar_to_val = dollar2val( my_temp, i ) --fix: january 24th 2019
			temp_line = temp_line .. format( "{%s%s}%s", tags_style, dollar_to_val, temp_text )
		end
		if my_temp_bar ~= "" then
			return format( "{%s}%s", tag.inbar( my_temp_bar ), temp_line )
		end
		return temp_line
	end

	function tag.inbar( String )
		local String = tag.v_dollar( String )
		String = String:gsub( "%b||",
			function( capture )
				local capture = capture:gsub( "%|", "" )
				if capture ~= string.toval( capture ) then
					return string.toval( capture )
				end
				return "|" .. capture .. "|"
			end
		)
		return String
	end

	function tag.adjust( t_adjust, adj_accel )
		local adj_cap1, adj_cap2, adj_cap3, adj_cap4 = { }, { }, { }, { }
		for c in t_adjust:gmatch( "\\t%(%d+[%.%d]*%,%d+[%.%d]*" ) do
			table.insert( adj_cap1, c )
		end
		for i = 1, #adj_cap1 do
			for c in adj_cap1[ i ]:gmatch( "%d+[%.%d]*" ) do
				table.insert( adj_cap2, c )
			end
		end
		local max_time = adj_cap2[ #adj_cap2 ]
		table.remove( adj_cap2, #adj_cap2 )
		local adj_accel = adj_accel or 1
		for i = 1, (#adj_cap2 + 1) / 2 do
			adj_cap3[ i ] = adj_cap2[ 2 * i - 1 ]
		end
		table.insert( adj_cap3, max_time )
		if #adj_cap3 > 1 then
			adj_k = 1
			for i = 1, #adj_cap3 do
				adj_cap4[ i ] = adj_cap3[ 1 ] + (adj_cap3[ #adj_cap3 ] - adj_cap3[ 1 ]) * ((i - 1) / (#adj_cap3 - 1)) ^ adj_accel
			end
			t_adjust = t_adjust:gsub( "\\t%((%d+[%.%d]*)%,(%d+[%.%d]*)", 
				function( A, B )
					local adj_tag = format( "\\t(%s,%s",
						math.round( adj_cap4[ adj_k ], 2 ), math.round( adj_cap4[ adj_k + 1 ], 2 )
					)
					adj_k = adj_k + 1
					return adj_tag
				end
			)
		end
		return t_adjust
	end
	
	function tag.val( val_tags )
		tags_vals = {
			---------------------------------------------------------------------------------------------------------------------
			[ 01 ] = "\\i(%d+)",					[ 02 ] = "\\xshad(%-?%d+[%.%d]*)",		[ 03 ] = "\\fsp(%-?%d+[%.%d]*)",
			[ 04 ] = "\\p(%d+)",					[ 05 ] = "\\b(%d+)",					[ 06 ] = "\\yshad(%-?%d+[%.%d]*)",
			[ 07 ] = "\\fr(%-?%d+[%.%d]*)",			[ 08 ] = "\\an(%d+)",					[ 09 ] = "\\u(%d+)",
			[ 10 ] = "\\be(%d+[%.%d]*)",			[ 11 ] = "\\frx(%-?%d+[%.%d]*)",		[ 12 ] = "\\a(%d+)",
			[ 13 ] = "\\s(%d+)",					[ 14 ] = "\\blur(%d+[%.%d]*)",	 		[ 15 ] = "\\fry(%-?%d+[%.%d]*)",
			[ 16 ] = "\\k(%d+)",					[ 17 ] = "\\bord(%d+[%.%d]*)",			[ 18 ] = "\\frz(%-?%d+[%.%d]*)",
			[ 19 ] = "\\fax(%-?%d+[%.%d]*)",		[ 20 ] = "\\K(%d+)",					[ 21 ] = "\\xbord(%d+[%.%d]*)",
			[ 22 ] = "\\fs(%d+[%.%d]*)",			[ 23 ] = "\\fay(%-?%d+[%.%d]*)",		[ 24 ] = "\\kf(%d+)",
			[ 25 ] = "\\ybord(%d+[%.%d]*)",			[ 26 ] = "\\fscx(%d+[%.%d]*)",			[ 27 ] = "\\fe(%d+[%.%d]*)",
			[ 28 ] = "\\ko(%d+)",					[ 29 ] = "\\shad(%-?%d+[%.%d]*)",		[ 30 ] = "\\fscy(%d+[%.%d]*)",
			[ 31 ] = "\\q(%d+)",					[ 32 ] = "\\fsc(%d+[%.%d]*)",			[ 33 ] = "\\fsvp(%-?%d+[%.%d]*)",
			[ 34 ] = "\\frs(%-?%d+[%.%d]*)",		[ 35 ] = "\\rnd(%-?%d+[%.%d]*)",		[ 36 ] = "\\rndx(%-?%d+[%.%d]*)",
			[ 37 ] = "\\rndy(%-?%d+[%.%d]*)",		[ 38 ] = "\\rndz(%-?%d+[%.%d]*)",		[ 39 ] = "\\z(%-?%d+[%.%d]*)",
			---------------------------------------------------------------------------------------------------------------------
			[ 40 ] = "\\fn(%S+[ %S+]*)",			[ 41 ] = "\\r",							[ 42 ] = "\\n",
			[ 43 ] = "\\N",							[ 44 ] = "\\c(&H[%x]*&?)",				[ 45 ] = "\\alpha(&H[%x]*&?)",
			[ 46 ] = "\\1c(&H[%x]*&?)",				[ 47 ] = "\\1a(&H[%x]*&?)",				[ 48 ] = "\\1vc%b()",
			[ 49 ] = "\\1va%b()",					[ 50 ] = "\\2c(&H[%x]*&?)",				[ 51 ] = "\\2a(&H[%x]*&?)",
			[ 52 ] = "\\2vc%b()",					[ 53 ] = "\\2va%b()",					[ 54 ] = "\\3c(&H[%x]*&?)",
			[ 55 ] = "\\3a(&H[%x]*&?)",				[ 56 ] = "\\3vc%b()",					[ 57 ] = "\\3va%b()",
			[ 58 ] = "\\4c(&H[%x]*&?)",				[ 59 ] = "\\4a(&H[%x]*&?)",				[ 60 ] = "\\4vc%b()",
			[ 61 ] = "\\4va%b()",					[ 62 ] = "\\1img%b()",					[ 63 ] = "\\2img%b()",
			[ 64 ] = "\\3img%b()",					[ 65 ] = "\\4img%b()",
			---------------------------------------------------------------------------------------------------------------------
			[ 66 ] = "\\pos%b()",					[ 67 ] = "\\move%b()",					[ 68 ] = "\\moves3%b()",
			[ 69 ] = "\\moves4%b()",				[ 70 ] = "\\jitter%b()",				[ 71 ] = "\\mover%b()",
			[ 72 ] = "\\org%b()",					[ 73 ] = "\\distort%b()",				[ 74 ] = "\\fad%b()",
			[ 75 ] = "\\fade%b()",					[ 76 ] = "\\movevc%b()",				[ 77 ] = "\\clip%b()",
			[ 78 ] = "\\iclip%b()",					[ 79 ] = "\\t%b()",
			---------------------------------------------------------------------------------------------------------------------
		}
		tags_tags = {
			---------------------------------------------------------------------------------------------------------------------
			[ 01 ] = "i",		[ 02 ] = "xshad",	[ 03 ] = "fsp",		[ 04 ] = "p",		[ 05 ] = "b",		[ 06 ] = "yshad",
			[ 07 ] = "fr",		[ 08 ] = "an",		[ 09 ] = "u",		[ 10 ] = "be",		[ 11 ] = "frx",		[ 12 ] = "a",
			[ 13 ] = "s",		[ 14 ] = "blur",	[ 15 ] = "fry",		[ 16 ] = "k",		[ 17 ] = "bord",	[ 18 ] = "frz",
			[ 19 ] = "fax",		[ 20 ] = "K",		[ 21 ] = "xbord",	[ 22 ] = "fs",		[ 23 ] = "fay",		[ 24 ] = "kf",
			[ 25 ] = "ybord",	[ 26 ] = "fscx",	[ 27 ] = "fe",		[ 28 ] = "ko",		[ 29 ] = "shad",	[ 30 ] = "fscy",
			[ 31 ] = "q",		[ 32 ] = "fsc",		[ 33 ] = "fsvp",	[ 34 ] = "frs",		[ 35 ] = "rnd",		[ 36 ] = "rndx",
			[ 37 ] = "rndy",	[ 38 ] = "rndz",	[ 39 ] = "z",
			---------------------------------------------------------------------------------------------------------------------
			[ 40 ] = "fn",		[ 41 ] = "r",		[ 42 ] = "n",		[ 43 ] = "N",		[ 44 ] = "c",		[ 45 ] = "alpha",
			[ 46 ] = "1c",		[ 47 ] = "1a",		[ 48 ] = "1vc",		[ 49 ] = "1va",		[ 50 ] = "2c",		[ 51 ] = "2a",
			[ 52 ] = "2vc",		[ 53 ] = "2va",		[ 54 ] = "3c",		[ 55 ] = "3a",		[ 56 ] = "3vc",		[ 57 ] = "3va",
			[ 58 ] = "4c",		[ 59 ] = "4a",		[ 60 ] = "4vc",		[ 61 ] = "4va",		[ 62 ] = "1img",	[ 63 ] = "2img",
			[ 64 ] = "3img",	[ 65 ] = "4img",
			---------------------------------------------------------------------------------------------------------------------
			[ 66 ] = "pos",		[ 67 ] = "move",	[ 68 ] = "moves3",	[ 69 ] = "moves4",	[ 70 ] = "jitter",	[ 71 ] = "mover",
			[ 72 ] = "org",		[ 73 ] = "distort",	[ 74 ] = "fad",		[ 75 ] = "fade",	[ 76 ] = "movevc",	[ 77 ] = "clip",
			[ 78 ] = "iclip",	[ 79 ] = "t",
			---------------------------------------------------------------------------------------------------------------------
		}
		cap = { }
		for i = 1, #tags_vals do
			cap[ i ] = { }
			for c in val_tags:gmatch( tags_vals[ i ] ) do
				if c:match( "%-?%d+[%.%d]*" )
					and c:gsub( "%-?%d+[%.%d]*", "" ) == "" then
					c = tonumber( c )
				end
				table.insert( cap[ i ], c )
			end
		end
		cap2 = table.duplicate( cap )
		tag2 = { }
		for k, v in ipairs( cap2 ) do
			new_k = tags_tags[ k ]
			tag2[ new_k ] = v
		end
		for i = 1, 65 do
			new_i = tags_tags[ i ]
			tag2[ new_i ] = tag2[ new_i ][ 1 ]
		end
		for i = 66, 76 do
			new_i = tags_tags[ i ]
			tag2[ new_i ] = { }
			if cap2[ i ][ 1 ] then
				for c in cap2[ i ][ 1 ]:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( tag2[ new_i ], tonumber( c ) )
				end
			end
		end
		-- \pos(x,y) -------------------------
		tag2.pos.x = tag2.pos[ 1 ] or fx.move_x1
		tag2.pos.y = tag2.pos[ 2 ] or fx.move_y1
		-- \move(x1,y1,x2,y2,t1,t2) -------------
		tag2.move.x1 = tag2.move[ 1 ] or fx.move_x1
		tag2.move.x2 = tag2.move[ 3 ] or fx.move_x2
		tag2.move.y1 = tag2.move[ 2 ] or fx.move_y1
		tag2.move.y2 = tag2.move[ 4 ] or fx.move_y2
		tag2.move.t1 = tag2.move[ 5 ] or fx.movet_i
		tag2.move.t2 = tag2.move[ 6 ] or fx.movet_f
		-- \moves3(x1,y1,x2,y2,x3,y3,t1,t2) ---------
		tag2.moves3.x1 = tag2.moves3[ 1 ] or fx.move_x1
		tag2.moves3.x2 = tag2.moves3[ 3 ] or fx.move_x2
		tag2.moves3.x3 = tag2.moves3[ 5 ] or fx.move_x3
		tag2.moves3.y1 = tag2.moves3[ 2 ] or fx.move_y1
		tag2.moves3.y2 = tag2.moves3[ 4 ] or fx.move_y2
		tag2.moves3.y3 = tag2.moves3[ 6 ] or fx.move_y3
		tag2.moves3.t1 = tag2.moves3[ 7 ] or fx.movet_i
		tag2.moves3.t2 = tag2.moves3[ 8 ] or fx.movet_f
		-- \moves4(x1,y1,x2,y2,x3,y3,x4,y4,t1,t2) ---
		tag2.moves4.x1 = tag2.moves4[ 1 ] or fx.move_x1
		tag2.moves4.x2 = tag2.moves4[ 3 ] or fx.move_x2
		tag2.moves4.x3 = tag2.moves4[ 5 ] or fx.move_x3
		tag2.moves4.x4 = tag2.moves4[ 7 ] or fx.move_x4
		tag2.moves4.y1 = tag2.moves4[ 2 ] or fx.move_y1
		tag2.moves4.y2 = tag2.moves4[ 4 ] or fx.move_y2
		tag2.moves4.y3 = tag2.moves4[ 6 ] or fx.move_y3
		tag2.moves4.y4 = tag2.moves4[ 8 ] or fx.move_y4
		tag2.moves4.t1 = tag2.moves4[ 9 ] or fx.movet_i
		tag2.moves4.t2 = tag2.moves4[ 10 ] or fx.movet_f
		-- \jitter(x1,y1,x2,y2,x3,y3,t1,t2) ---------
		tag2.jitter.x1 = tag2.jitter[ 1 ] or 0
		tag2.jitter.x2 = tag2.jitter[ 3 ] or 0
		tag2.jitter.y1 = tag2.jitter[ 2 ] or 0
		tag2.jitter.y2 = tag2.jitter[ 4 ] or 0
		tag2.jitter.t1 = tag2.jitter[ 5 ] or 0
		tag2.jitter.t2 = tag2.jitter[ 6 ] or 0
		-- \mover(x1,y1,x2,y2,a1,a2,r1,r2,t1,t2) --
		tag2.mover.x1 = tag2.mover[ 1 ] or fx.move_x1
		tag2.mover.x2 = tag2.mover[ 3 ] or fx.move_x2
		tag2.mover.y1 = tag2.mover[ 2 ] or fx.move_y1
		tag2.mover.y2 = tag2.mover[ 4 ] or fx.move_y2
		tag2.mover.a1 = tag2.mover[ 5 ] or fx.angle1
		tag2.mover.a2 = tag2.mover[ 6 ] or fx.angle2
		tag2.mover.r1 = tag2.mover[ 7 ] or fx.radius1
		tag2.mover.r2 = tag2.mover[ 8 ] or fx.radius1
		tag2.mover.t1 = tag2.mover[ 9 ] or fx.movet_i
		tag2.mover.t2 = tag2.mover[ 10 ] or fx.movet_f
		-- \org(x,y) -------------------------------
		tag2.org.x = tag2.org[ 1 ] or fx.move_x1
		tag2.org.y = tag2.org[ 2 ] or fx.move_y1
		-- \distort(x1,y1,x2,y2,x3,y3) -------
		tag2.distort.x1 = tag2.distort[ 1 ] or 0
		tag2.distort.x2 = tag2.distort[ 3 ] or 0
		tag2.distort.x3 = tag2.distort[ 5 ] or 0
		tag2.distort.y1 = tag2.distort[ 2 ] or 0
		tag2.distort.y2 = tag2.distort[ 4 ] or 0
		tag2.distort.y3 = tag2.distort[ 6 ] or 0
		-- \fad(a1,a2) -----------------------
		tag2.fad.a1 = tag2.fad[ 1 ] or 0
		tag2.fad.a2 = tag2.fad[ 2 ] or 0
		-- \fade(a1,a2,a3,t1,t2,t3,t4) --
		tag2.fade.a1 = tag2.fade[ 1 ] or 0
		tag2.fade.a2 = tag2.fade[ 2 ] or 0
		tag2.fade.a3 = tag2.fade[ 3 ] or 0
		tag2.fade.t1 = tag2.fade[ 4 ] or 0
		tag2.fade.t2 = tag2.fade[ 5 ] or 0
		tag2.fade.t3 = tag2.fade[ 6 ] or 0
		tag2.fade.t4 = tag2.fade[ 7 ] or 0
		-- \movevc(x1,y1,x2,y2,t1,t2) ---------------
		tag2.movevc.x1 = tag2.movevc[ 1 ] or fx.move_x1
		tag2.movevc.x2 = tag2.movevc[ 3 ] or fx.move_x2
		tag2.movevc.y1 = tag2.movevc[ 2 ] or fx.move_y1
		tag2.movevc.y2 = tag2.movevc[ 4 ] or fx.move_y2
		tag2.movevc.t1 = tag2.movevc[ 5 ] or fx.movet_i
		tag2.movevc.t2 = tag2.movevc[ 6 ] or fx.movet_f
		-- \clip(x1,y1,x2,y2) or \clip( shape ) -----
		if cap2[ 77 ][ 1 ] then
			tag2.clip = { }
			if cap2[ 77 ][ 1 ]:match( "m %-?%d+[%.%d]*" ) then
				tag2.clip.shape = cap2[ 77 ][ 1 ]:match( "[mlb]* %-?%d+[%.%d]* [%-%.%d mlb]*" )
				tag2.clip.x1 = fx.move_x1
				tag2.clip.x2 = fx.move_x2
				tag2.clip.y1 = fx.move_y1
				tag2.clip.y2 = fx.move_y2
			else
				tag2.clip.shape = ""
				clip_parameters = { }
				for c in cap2[ 77 ][ 1 ]:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( clip_parameters, c )
				end
				tag2.clip.x1 = clip_parameters[ 1 ]
				tag2.clip.x2 = clip_parameters[ 3 ]
				tag2.clip.y1 = clip_parameters[ 2 ]
				tag2.clip.y2 = clip_parameters[ 4 ]
			end
		else
			tag2.clip.x1 = fx.move_x1
			tag2.clip.x2 = fx.move_x2
			tag2.clip.y1 = fx.move_y1
			tag2.clip.y2 = fx.move_y2
		end
		-- \iclip(x1,y1,x2,y2) or \iclip( shape ) -----
		if cap2[ 78 ][ 1 ] then
			tag2.iclip = { }
			if cap2[ 78 ][ 1 ]:match( "m %-?%d+[%.%d]*" ) then
				tag2.iclip.shape = cap2[ 77 ][ 1 ]:match( "[mlb]* %-?%d+[%.%d]* [%-%.%d mlb]*" )
				tag2.iclip.x1 = fx.move_x1
				tag2.iclip.x2 = fx.move_x2
				tag2.iclip.y1 = fx.move_y1
				tag2.iclip.y2 = fx.move_y2
			else
				tag2.iclip.shape = shape.ASSDraw3( cap2[ 78 ][ 1 ] )
				iclip_parameters = { }
				for c in cap2[ 77 ][ 1 ]:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( iclip_parameters, c )
				end
				tag2.iclip.x1 = iclip_parameters[ 1 ]
				tag2.iclip.x2 = iclip_parameters[ 3 ]
				tag2.iclip.y1 = iclip_parameters[ 2 ]
				tag2.iclip.y2 = iclip_parameters[ 4 ]
			end
		else
			tag2.iclip.x1 = fx.move_x1
			tag2.iclip.x2 = fx.move_x2
			tag2.iclip.y1 = fx.move_y1
			tag2.iclip.y2 = fx.move_y2
		end
		-- \t(\tags) or \t(a,\tags) or \t(t1,t2,a,\tags)--
		if cap2[ 79 ][ 1 ] then
			if cap2[ 79 ][ 1 ]:match( "%b(\\" ) then
				t_parameters = { }
				for c in cap2[ 79 ][ 1 ]:match( "%b(\\" ):gmatch( "%-?%d+[%.%d]" ) do
					table.insert( t_parameters, c )
				end
				if #t_parameters == 1 then
					tag2.t.t1 = fx.movet_i
					tag2.t.t2 = fx.movet_f
					tag2.t.a  = t_parameters[ 1 ]
				else
					tag2.t.t1 = t_parameters[ 1 ]
					tag2.t.t2 = t_parameters[ 2 ]
					tag2.t.a  = t_parameters[ 3 ] or 1
				end
			end
		else
			tag2.t.t1 = fx.movet_i
			tag2.t.t2 = fx.movet_f
			tag2.t.a  = 1
		end
		return val_tags
	end
	
	function tag.num( string_values, special_tag )
		local tagnum_val = { }
		local tagnum_str = string_values or ""
		local tagnum_stg = special_tag or ""
		for c in tagnum_str:gmatch( tagnum_stg .. "%-?%d+[%.%d]*" ) do
			table.insert( tagnum_val, tonumber( c ) )
		end
		return tagnum_val
	end
	
	function tag.module( ... )
		local txt_tag, txt_2tg, txt_str, txt_val = { ... }, { }, "", ""
		for i = 1, #txt_tag do
			if type( txt_tag[ i ] ) == "table" then
				txt_val = math.round( tag.ipol( module, txt_tag[ i ][ 2 ], txt_tag[ i ][ 3 ] ), 3 )
				txt_2tg[ i ] = format( "%s%s", txt_tag[ i ][ 1 ], txt_val )
			else
				txt_2tg[ i ] = txt_tag[ i ]
			end
		end
		for i = 1, #txt_2tg do
			txt_str = txt_str .. txt_2tg[ i ]
		end
		return txt_str
	end

	function tag.module1( ... )
		local txt_tag, txt_2tg, txt_str, txt_val = { ... }, { }, "", ""
		for i = 1, #txt_tag do
			if type( txt_tag[ i ] ) == "table" then
				txt_val = math.round( tag.ipol( module1, txt_tag[ i ][ 2 ], txt_tag[ i ][ 3 ] ), 3 )
				txt_2tg[ i ] = format( "%s%s", txt_tag[ i ][ 1 ], txt_val )
			else
				txt_2tg[ i ] = txt_tag[ i ]
			end
		end
		for i = 1, #txt_2tg do
			txt_str = txt_str .. txt_2tg[ i ]
		end
		return txt_str
	end

	function tag.module2( ... )
		local txt_tag, txt_2tg, txt_str, txt_val = { ... }, { }, "", ""
		for i = 1, #txt_tag do
			if type( txt_tag[ i ] ) == "table" then
				txt_val = math.round( tag.ipol( module2, txt_tag[ i ][ 2 ], txt_tag[ i ][ 3 ] ), 3 )
				txt_2tg[ i ] = format( "%s%s", txt_tag[ i ][ 1 ], txt_val )
			else
				txt_2tg[ i ] = txt_tag[ i ]
			end
		end
		for i = 1, #txt_2tg do
			txt_str = txt_str .. txt_2tg[ i ]
		end
		return txt_str
	end
	
	function tag.moduler( ... )
		local txt_tag, txt_2tg, txt_str, txt_val = { ... }, { }, "", ""
		for i = 1, #txt_tag do
			if type( txt_tag[ i ] ) == "table" then
				txt_val = math.round( tag.ipol( moduler, txt_tag[ i ][ 2 ], txt_tag[ i ][ 3 ] ), 3 )
				txt_2tg[ i ] = format( "%s%s", txt_tag[ i ][ 1 ], txt_val )
			else
				txt_2tg[ i ] = txt_tag[ i ]
			end
		end
		for i = 1, #txt_2tg do
			txt_str = txt_str .. txt_2tg[ i ]
		end
		return txt_str
	end
	
	function tag.delete( String, ... )
		local str_delete = ""
		local tag_delete = ...
		local tbl_delete = { tag_delete }
		if tag_delete == nil then
			str_delete = String:gsub( "%b{}", "" )
			return str_delete
		end
		if type( tag_delete ) == "table" then
			tbl_delete = tag_delete
		end
		local tags_name = {
			---------------------------------------------------------------------------------------------
			[ 01 ] = "\\i",			[ 02 ] = "\\xshad",		[ 03 ] = "\\fsp",		[ 04 ] = "\\p",
			[ 05 ] = "\\b",			[ 06 ] = "\\yshad",		[ 07 ] = "\\fr",		[ 08 ] = "\\an",
			[ 09 ] = "\\u",			[ 10 ] = "\\be",		[ 11 ] = "\\frx",		[ 12 ] = "\\a",
			[ 13 ] = "\\s",			[ 14 ] = "\\blur",		[ 15 ] = "\\fry",		[ 16 ] = "\\k",
			[ 17 ] = "\\bord",		[ 18 ] = "\\frz",		[ 19 ] = "\\fax",		[ 20 ] = "\\K",
			[ 21 ] = "\\xbord",		[ 22 ] = "\\fs",		[ 23 ] = "\\fay",		[ 24 ] = "\\kf",
			[ 25 ] = "\\ybord",		[ 26 ] = "\\fscx",		[ 27 ] = "\\fe",		[ 28 ] = "\\ko",
			[ 29 ] = "\\shad",		[ 30 ] = "\\fscy",		[ 31 ] = "\\q",			[ 32 ] = "\\fsc",
			[ 33 ] = "\\fsvp",		[ 34 ] = "\\frs",		[ 35 ] = "\\rnd",		[ 36 ] = "\\rndx",
			[ 37 ] = "\\rndy",		[ 38 ] = "\\rndz",		[ 39 ] = "\\z",
			---------------------------------------------------------------------------------------------
			[ 40 ] = "\\fn",		[ 41 ] = "\\r",			[ 42 ] = "\\n",			[ 43 ] = "\\N",
			[ 44 ] = "\\c",			[ 45 ] = "\\alpha",
			[ 46 ] = "\\1c",		[ 47 ] = "\\1a",		[ 48 ] = "\\1vc",		[ 49 ] = "\\1va",
			[ 50 ] = "\\2c",		[ 51 ] = "\\2a",		[ 52 ] = "\\2vc",		[ 53 ] = "\\2va",
			[ 54 ] = "\\3c",		[ 55 ] = "\\3a",		[ 56 ] = "\\3vc",		[ 57 ] = "\\3va",
			[ 58 ] = "\\4c",		[ 59 ] = "\\4a",		[ 60 ] = "\\4vc",		[ 61 ] = "\\4va",
			[ 62 ] = "\\1img",		[ 63 ] = "\\2img",		[ 64 ] = "\\3img",		[ 65 ] = "\\4img",
			---------------------------------------------------------------------------------------------
			[ 66 ] = "\\pos",		[ 67 ] = "\\move",		[ 68 ] = "\\moves",		[ 69 ] = "\\moves4",
			[ 70 ] = "\\jitter",	[ 71 ] = "\\mover",		[ 72 ] = "\\org",		[ 73 ] = "\\distort",
			[ 74 ] = "\\fad",		[ 75 ] = "\\fade",		[ 76 ] = "\\movevc",	[ 77 ] = "\\clip",
			[ 78 ] = "\\iclip",		[ 79 ] = "\\t"
			---------------------------------------------------------------------------------------------
		}
		local tags_vals = {
			--------------------------------------------------------------------------------------------------------
			[ 01 ] = "\\i%d+",					[ 02 ] = "\\xshad%-?%d+[%.%d]*",	[ 03 ] = "\\fsp%-?%d+[%.%d]*",
			[ 04 ] = "\\p%d+",					[ 05 ] = "\\b%d+",					[ 06 ] = "\\yshad%-?%d+[%.%d]*",
			[ 07 ] = "\\fr%-?%d+[%.%d]*",		[ 08 ] = "\\an%d+",					[ 09 ] = "\\u%d+",
			[ 10 ] = "\\be%d+[%.%d]*",			[ 11 ] = "\\frx%-?%d+[%.%d]*",		[ 12 ] = "\\a%d+",
			[ 13 ] = "\\s%d+",					[ 14 ] = "\\blur%d+[%.%d]*",		[ 15 ] = "\\fry%-?%d+[%.%d]*",
			[ 16 ] = "\\k%d+",					[ 17 ] = "\\bord%d+[%.%d]*",		[ 18 ] = "\\frz%-?%d+[%.%d]*",
			[ 19 ] = "\\fax%-?%d+[%.%d]*",		[ 20 ] = "\\K%d+",					[ 21 ] = "\\xbord%d+[%.%d]*",
			[ 22 ] = "\\fs%d+[%.%d]*",			[ 23 ] = "\\fay%-?%d+[%.%d]*",		[ 24 ] = "\\kf%d+",
			[ 25 ] = "\\ybord%d+[%.%d]*",		[ 26 ] = "\\fscx%d+[%.%d]*",		[ 27 ] = "\\fe%d+[%.%d]*",
			[ 28 ] = "\\ko%d+",					[ 29 ] = "\\shad%-?%d+[%.%d]*",		[ 30 ] = "\\fscy%d+[%.%d]*",
			[ 31 ] = "\\q%d+",					[ 32 ] = "\\fsc%d+[%.%d]*",			[ 33 ] = "\\fsvp%-?%d+[%.%d]*",
			[ 34 ] = "\\frs%-?%d+[%.%d]*",		[ 35 ] = "\\rnd%-?%d+[%.%d]*",		[ 36 ] = "\\rndx%-?%d+[%.%d]*",
			[ 37 ] = "\\rndy%-?%d+[%.%d]*",		[ 38 ] = "\\rndz%-?%d+[%.%d]*",		[ 39 ] = "\\z%-?%d+[%.%d]*",
			--------------------------------------------------------------------------------------------------------
			[ 40 ] = "\\fn%w+[ %w+]*",			[ 41 ] = "\\r",						[ 42 ] = "\\n",
			[ 43 ] = "\\N",						[ 44 ] = "\\c[&H%x%#]*",			[ 45 ] = "\\alpha[&H%x%#]*",
			[ 46 ] = "\\1c[&H%x%#]*",			[ 47 ] = "\\1a[&H%x%#]*",			[ 48 ] = "\\1vc%b()",
			[ 49 ] = "\\1va%b()",				[ 50 ] = "\\2c[&H%x%#]*",			[ 51 ] = "\\2a[&H%x%#]*",
			[ 52 ] = "\\2vc%b()",				[ 53 ] = "\\2va%b()",				[ 54 ] = "\\3c[&H%x%#]*",
			[ 55 ] = "\\3a[&H%x%#]*",			[ 56 ] = "\\3vc%b()",				[ 57 ] = "\\3va%b()",
			[ 58 ] = "\\4c[&H%x%#]*",			[ 59 ] = "\\4a[&H%x%#]*",			[ 60 ] = "\\4vc%b()",
			[ 61 ] = "\\4va%b()",				[ 62 ] = "\\1img%b()",				[ 63 ] = "\\2img%b()",
			[ 64 ] = "\\3img%b()",				[ 65 ] = "\\4img%b()",
			--------------------------------------------------------------------------------------------------------
			[ 66 ] = "\\pos%b()",				[ 67 ] = "\\move%b()",				[ 68 ] = "\\moves3%b()",
			[ 69 ] = "\\moves4%b()",			[ 70 ] = "\\jitter%b()",			[ 71 ] = "\\mover%b()",
			[ 72 ] = "\\org%b()",				[ 73 ] = "\\distort%b()",			[ 74 ] = "\\fad%b()",
			[ 75 ] = "\\fade%b()",				[ 76 ] = "\\movevc%b()",			[ 77 ] = "\\clip%b()",
			[ 78 ] = "\\iclip%b()",				[ 79 ] = "\\t%b()"
			--------------------------------------------------------------------------------------------------------
		}
		local n
		for i = 1, #tbl_delete do
			if table.inside( tags_name, tbl_delete[ i ] ) then
				n = table.index( tags_name, tbl_delete[ i ] )
				String = String:gsub( tags_vals[ n ], "" )
			end
		end
		return String
	end
	
	function tag.delete_in_return( return_fx )
		local return_kefx = return_fx or ""
		local delete_tags = { --si algunos de estos tags se colocan en Return[fx]
			--y también están en Add Tags, se eliminan de Return[fx] para evitar conflictos ^^'
			[ 01 ] = "\\[xy]*bord%-?%d+[%.%d]*",	[ 02 ] = "\\[xy]*shad%-?%d+[%.%d]*",
			[ 03 ] = "\\[%d]*c%&H[%x]*%&",			[ 04 ] = "\\%da%&H[%x]*%&",
			[ 05 ] = "\\alpha%&H[%x]*%&",			[ 06 ] = "\\blur%d+[%.%d]*",
			[ 07 ] = "\\be%d+[%.%d]*",		--		[ 08 ] = "\\p%d+",
		}
		for i = 1, #delete_tags do
			if fx.add_tags:match( delete_tags[ i ] ) then
				--return_kefx = return_kefx:gsub( delete_tags[ i ], "" )
				return_kefx = string.change( return_kefx, delete_tags[ i ], nil,
					{ "%b{}[ ]*m%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*[%-?%d%.mlb ]*", "\\t[cdefirswx%~%-%d]*%b()" }
				)
				--mod: april 26th 2019
				--esta modificación protege los tags que estén dentro de las transfos \\t[cdefirswx%~%-%d]*
				--y a las shapes que ya tienen tags agregados
			end
		end
		return return_kefx
	end
	
	function tag.cyclic( Dur, Dur_tr, Delay, Fad_i, Fad_f, tags_ini, tags_fin )
		if type( Dur ) == "function" then
			Dur = Dur( )
		end
		if type( Dur_tr ) == "function" then
			Dur_tr = Dur_tr( )
		end
		if type( Delay ) == "function" then
			Delay = Delay( )
		end
		if type( Fad_i ) == "function" then
			Fad_i = Fad_i( )
		end
		if type( Fad_f ) == "function" then
			Fad_f = Fad_f( )
		end
		local tag_dur = Dur or fx.dur
		local dur_tra = Dur_tr or 2 * frame_dur
		local tra_del = Delay or 0
		local fad_ini = Fad_i or 1
		local fad_fin = Fad_f or dur_tra / 2
		local ext_ini = tags_ini or ""
		local ext_fin = tags_fin or ""
		effector.print_error( tag_dur, "numbertable", "tag.cyclic", 1 )
		effector.print_error( dur_tra, "numbertable", "tag.cyclic", 2 )
		effector.print_error( tra_del, "number", "tag.cyclic", 3 )
		effector.print_error( fad_ini, "number", "tag.cyclic", 4 )
		effector.print_error( fad_fin, "number", "tag.cyclic", 5 )
		local tag_ini = 0
		local tag_fin = tag_dur
		local tag_acc = 1
		if type( tag_dur ) == "table" then
			tag_ini = tag_dur[ 1 ]
			tag_fin = tag_dur[ 2 ]
		end
		tag_dur = tag_fin - tag_ini
		if type( dur_tra ) == "table" then
			tag_acc = dur_tra[ 2 ]
			dur_tra = dur_tra[ 1 ]
		end
		local times_tra = { }
		local durat_ini = tag_dur
		local k, i = 0, 0
		while durat_ini > 0 do
			times_tra[ k + 1 ] = {
				[ 1 ] = tag_ini + k * dur_tra,
				[ 2 ] = tag_ini + k * dur_tra + fad_ini,
				[ 3 ] = tag_ini + (k + 1) * dur_tra + tra_del - fad_fin,
				[ 4 ] = tag_ini + (k + 1) * dur_tra + tra_del
			}
			durat_ini = durat_ini - dur_tra
			k = k + 1
		end
		local tag_cyclic = "\\alpha&HFF&"
		while times_tra[ j + i * maxj ] do
			if type( ext_ini ) == "function" then
				ext_ini = ext_ini( i )
			end
			if type( ext_fin ) == "function" then
				ext_fin = ext_fin( i )
			end
			tag_cyclic = tag_cyclic .. format( "\\t(%s,%s,%s,%s\\alpha&H00&)\\t(%s,%s,%s,%s\\alpha&HFF&)",
				times_tra[ j + i * maxj ][ 1 ], times_tra[ j + i * maxj ][ 2 ], tag_acc, ext_ini,
				times_tra[ j + i * maxj ][ 3 ], times_tra[ j + i * maxj ][ 4 ], tag_acc, ext_fin
			)
			i = i + 1
		end
		return tag_cyclic
	end --tag.cyclic( fx.dur, 60, 240, 60, 60 )
	
	function tag.sec( Dur, Dur_tr, tags_ini, tags_fin )
		if type( Dur ) == "function" then
			Dur = Dur( )
		end
		if type( Dur_tr ) == "function" then
			Dur_tr = Dur_tr( )
		end
		local tag_dur = Dur or fx.dur
		local dur_tra = Dur_tr or 4 * frame_dur
		local ext_ini = tags_ini or ""
		local ext_fin = tags_fin or ""
		effector.print_error( tag_dur, "numbertable", "tag.sec", 1 )
		effector.print_error( dur_tra, "numbertable", "tag.sec", 2 )
		local tag_ini = 0
		local tag_fin = tag_dur
		if type( tag_dur ) == "table" then
			tag_ini = tag_dur[ 1 ]
			tag_fin = tag_dur[ 2 ]
		end
		tag_dur = tag_fin - tag_ini
		local dur_off = dur_tra
		local dur_int = 0
		if type( dur_tra ) == "table" then
			dur_int = dur_tra[ 3 ] or 0
			dur_off = dur_tra[ 2 ] or 0
			dur_tra = dur_tra[ 1 ]
		end
		local times_tra = { }
		local durat_ini = tag_dur
		local dur_tra_i, dur_tra_f = dur_tra, dur_tra
		if type( dur_tra ) == "table" then
			dur_tra_i = dur_tra[ 1 ]
			dur_tra_f = dur_tra[ 2 ]
		end
		local k, i = 0, 0
		while durat_ini > 0 do
			times_tra[ k + 1 ] = {
				[ 1 ] = tag_ini + k * dur_off,
				[ 2 ] = tag_ini + k * dur_off + dur_tra_i,
				[ 3 ] = tag_ini + k * dur_off + dur_tra_i + dur_int,
				[ 4 ] = tag_ini + k * dur_off + dur_tra_i + dur_int + dur_tra_f
			}
			durat_ini = durat_ini - dur_off
			k = k + 1
		end
		local tag_cyclic = ""
		local tags_tr_ini, tags_tr_fin
		while times_tra[ j + i * maxj ] do
			if type( ext_ini ) == "function" then
				ext_ini = ext_ini( i )
			end
			if type( ext_fin ) == "function" then
				ext_fin = ext_fin( i )
			end
			tags_tr_ini, tags_tr_fin = ext_ini, ext_fin
			if type( ext_ini ) == "table" then
				tags_tr_ini = ext_ini[ i % #ext_ini + 1 ]
			end
			if type( ext_fin ) == "table" then
				tags_tr_fin = ext_fin[ i % #ext_fin + 1 ]
			end
			tag_cyclic = tag_cyclic .. format( "\\t(%s,%s,%s)\\t(%s,%s,%s)",
				times_tra[ j + i * maxj ][ 1 ], times_tra[ j + i * maxj ][ 2 ], tags_tr_ini,
				times_tra[ j + i * maxj ][ 3 ], times_tra[ j + i * maxj ][ 4 ], tags_tr_fin
			)
			i = i + 1
		end
		return tag_cyclic
	end --tag.sec( fx.dur, { { 100, 200 }, 40 }, "\\1c&H0000FF&", "\\1c&HFFFFFF&" )
	
	function tag.setclip( Clips, Tags, Index )
		local Index = Index or { ii }
		if type( Clips ) == "function" then
			Clips = Clips( )
		end
		if type( Tags ) == "function" then
			Tags = Tags( )
		end
		if type( Index ) == "function" then
			Index = Index( )
		end
		effector.print_error( Clips, "table", "tag.setclip", 1 )
		effector.print_error( Tags,  "table", "tag.setclip", 2 )
		effector.print_error( Index, "table", "tag.setclip", 3 )
		return shape.setclip( Clips, Tags, Index )
	end --tag.setclip( { "\\clip(m 180 618 l 216 664 602 664 536 620)", "\\clip(812,660,1020,698)" }, { "\\1c&H0000FF&", "\\1c&FF0000&" } )
	
	function tag.filter( String, Tag, Filter )
		effector.print_error( String, "string", "tag.filter", 1 )
		effector.print_error( Tag, "string", "tag.filter", 2 )
		effector.print_error( Filter, "function", "tag.filter", 3 )
		local tags_tbl = {
			[ 01 ] = "\\bord",		[ 02 ] = "\\xbord",		[ 03 ] = "\\ybord",
			[ 04 ] = "\\shad",		[ 05 ] = "\\xshad",		[ 06 ] = "\\yshad",
			[ 07 ] = "\\blur",		[ 08 ] = "\\fscx",		[ 09 ] = "\\fscy",
			[ 10 ] = "\\be",		[ 11 ] = "\\fax",		[ 12 ] = "\\fay",
			[ 13 ] = "\\frx",		[ 14 ] = "\\fry",		[ 15 ] = "\\frz",
			[ 16 ] = "\\fr",		[ 17 ] = "\\fsp",		[ 18 ] = "\\fs",
			[ 19 ] = "\\an",		[ 20 ] = "\\c",			[ 21 ] = "\\alpha",
			[ 22 ] = "\\1a",		[ 23 ] = "\\3a",		[ 24 ] = "\\4a",
			[ 25 ] = "\\1c",		[ 26 ] = "\\3c",		[ 27 ] = "\\4c",
			[ 28 ] = "\\pos",		[ 29 ] = "\\org",		[ 30 ] = "\\fad",
			[ 31 ] = "\\move",		[ 32 ] = "\\clip",		[ 33 ] = "\\iclip",
			[ 34 ] = "\\t",
		}
		local String = String
		if table.inside( tags_tbl, Tag ) then
			if table.index(  tags_tbl, Tag ) <= 27 then
				String = String:gsub( Tag .. "(%-?[%d&]^*[%.%d&H%x]*)",
					function( v )
						return Tag .. Filter( v )
					end
				)
			elseif table.index(  tags_tbl, Tag ) <= 30 then
				String = String:gsub( Tag .. "%([ ]*(%-?%d+[%.%d]*),[ ]*(%-?%d+[%.%d]*)",
					function( x, y )
						return Tag .. "(" .. format( "%s,%s", Filter( x, y ) )
					end
				)
			elseif table.index(  tags_tbl, Tag ) <= 33 then
				String = String:gsub( Tag .. "%([ ]*(%-?%d+[%.%d]*),[ ]*(%-?%d+[%.%d]*),[ ]*(%-?%d+[%.%d]*),[ ]*(%-?%d+[%.%d]*)",
					function( x1, y1, x2, y2 )
						return Tag .. "(" .. format( "%s,%s,%s,%s", Filter( x1, y1, x2, y2 ) )
					end
				)
			else
				String = String:gsub( Tag .. "%([ ]*(%-?%d+[%.%d]*),[ ]*(%-?%d+[%.%d]*)",
					function( t1, t2 )
						return Tag .. "(" .. format( "%s,%s", Filter( t1, t2 ) )
					end
				)
			end
		else --add: january 12th 2019
			String = String:gsub( Tag, Filter )
			-- :filter = :gsub
		end
		return String
	end
	
	--------------------------------------------------------------------------------------------------
	-- Librería de funciones "color" -----------------------------------------------------------------
	function color.ass( html_color )
		if type( html_color ) == "function" then
			html_color = html_color( )
		end
		local html_color = html_color or "#FFFFFF"
		effector.print_error( html_color, "color", "color.ass", 1 )
		local r_ass, g_ass, b_ass = html_color:match( "(%x%x)(%x%x)(%x%x)" )
		return color.val2ass( tonumber( r_ass, 16 ), tonumber( g_ass, 16 ), tonumber( b_ass, 16 ) )
	end
	
	function color.ass2( Rnum, Gnum, Bnum )
		if type( Rnum ) == "function" then
			Rnum = Rnum( )
		end
		if type( Gnum ) == "function" then
			Gnum = Gnum( )
		end
		if type( Bnum ) == "function" then
			Bnum = Bnum( )
		end
		local Rnum = Rnum or 255
		local Gnum = Gnum or 255
		local Bnum = Bnum or 255
		if type( Rnum ) == "table" then
			Bnum = Rnum[ 3 ]
			Gnum = Rnum[ 2 ]
			Rnum = Rnum[ 1 ]
		end
		effector.print_error( Rnum, "number", "color.ass2", 1 )
		effector.print_error( Gnum, "number", "color.ass2", 2 )		
		effector.print_error( Bnum, "number", "color.ass2", 3 )
		Rnum = math.i( Rnum, 0, 255 )[ "A-->B-->A" ]
		Gnum = math.i( Gnum, 0, 255 )[ "A-->B-->A" ]
		Bnum = math.i( Bnum, 0, 255 )[ "A-->B-->A" ]
		return color.val2ass( Rnum, Gnum, Bnum )
	end --"\\c" .. color.ass2( 255, 0, 0 )
	
	function color.ass3( Hnum, Snum, Vnum )
		if type( Hnum ) == "function" then
			Hnum = Hnum( )
		end
		if type( Snum ) == "function" then
			Snum = Snum( )
		end
		if type( Vnum ) == "function" then
			Vnum = Vnum( )
		end
		local Hnum = Hnum or 360
		local Snum = Snum or 1
		local Vnum = Vnum or 1
		if type( Hnum ) == "table" then
			Vnum = Hnum[ 3 ]
			Snum = Hnum[ 2 ]
			Hnum = Hnum[ 1 ]
		end
		effector.print_error( Hnum, "number", "color.ass3", 1 )
		effector.print_error( Snum, "number", "color.ass3", 2 )		
		effector.print_error( Vnum, "number", "color.ass3", 3 )
		Hnum = Hnum % 361
		Snum = (100 * Snum) % 101
		Vnum = (100 * Vnum) % 101
		return color.HSV_to_RGB( Hnum, Snum / 100, Vnum / 100 )
	end --"\\c" .. color.ass3( 15 * val_i, 1, 1 )
	
	function color.rgb( Color_or_table, Matrix13, Multi )
		if type( Color_or_table ) == "function" then
			Color_or_table = Color_or_table( )
		end
		if type( Matrix13 ) == "function" then
			Matrix13 = Matrix13( )
		end
		local colorass = Color_or_table or text.color1
		local matrixsm = Matrix13 or { 0, 0, 0 }
		effector.print_error( colorass, "color", "color.rgb", 1 )
		effector.print_error( matrixsm, "table", "color.rgb", 2 )
		if type( colorass ) == "table" then
			local rgb_tables, rgb_colors = { }, { }
			local rgb_r, rgb_g, rgb_b
			for i = 1, #colorass do
				rgb_tables[ i ] = color.to_RGB( colorass[ i ] )
				rgb_colors[ i ] = color.ass2( unpack( math.matrix_sum( rgb_tables[ i ], Matrix13 ) ) )
				if Multi then
					rgb_r = rgb_tables[ i ][ 1 ] * matrixsm[ 1 ]
					rgb_g = rgb_tables[ i ][ 2 ] * matrixsm[ 2 ]
					rgb_b = rgb_tables[ i ][ 3 ] * matrixsm[ 3 ]
					rgb_colors[ i ] = color.ass2( rgb_r, rgb_g, rgb_b )
				end
			end
			return rgb_colors
		end
		local rgb_table = color.to_RGB( colorass )
		if Multi then
			return color.ass2( rgb_table[ 1 ] * matrixsm[ 1 ], rgb_table[ 2 ] * matrixsm[ 2 ], rgb_table[ 3 ] * matrixsm[ 3 ] )
		end
		return color.ass2( unpack( math.matrix_sum( rgb_table, Matrix13 ) ) )
	end --"\\c" .. color.rgb( nil, { 0, 50 * syl.i, 23 * syl.i } )
	
	function color.hsv( Color_or_table, Matrix13, Multi )
		if type( Color_or_table ) == "function" then
			Color_or_table = Color_or_table( )
		end
		if type( Matrix13 ) == "function" then
			Matrix13 = Matrix13( )
		end
		local colorass = Color_or_table or text.color1
		local matrixsm = Matrix13 or { 0, 0, 0 }
		effector.print_error( colorass, "color", "color.hsv", 1 )
		effector.print_error( matrixsm, "table", "color.hsv", 2 )
		if type( colorass ) == "table" then
			local hsv_tables, hsv_colors = { }, { }
			local hsv_h, hsv_s, hsv_v
			for i = 1, #colorass do
				hsv_tables[ i ] = color.to_HSV( colorass[ i ] )
				hsv_colors[ i ] = color.ass3( unpack( math.matrix_sum( hsv_tables[ i ], Matrix13 ) ) )
				if Multi then
					hsv_h = hsv_tables[ i ][ 1 ] * matrixsm[ 1 ]
					hsv_s = hsv_tables[ i ][ 2 ] * matrixsm[ 2 ]
					hsv_v = hsv_tables[ i ][ 3 ] * matrixsm[ 3 ]
					hsv_colors[ i ] = color.ass3( hsv_h, hsv_s, hsv_v )
				end
			end
			return hsv_colors
		end
		local hsv_table = color.to_HSV( colorass )
		if Multi then
			return color.ass3( hsv_table[ 1 ] * matrixsm[ 1 ], hsv_table[ 2 ] * matrixsm[ 2 ], hsv_table[ 3 ] * matrixsm[ 3 ] )
		end
		return color.ass3( unpack( math.matrix_sum( hsv_table, Matrix13 ) ) )
	end --"\\c" .. color.hsv( nil, { 17 * val_i, 1, 0 } )
	
	function color.assF( color_or_table )
		if type( color_or_table ) == "function" then
			color_or_table = color_or_table( )
		end
		local color_or_table = color_or_table or text.color1
		effector.print_error( color_or_table, "color", "color.assF", 1 )
		local cF, tcF = { color_or_table }, { }
		if type( color_or_table ) == "table" then
			cF = color_or_table
		end
		for i = 1, #cF do
			if cF[ i ]:len( ) < 15 then
				cF[ i ] = cF[ i ]:match( "%x+" )
				cF[ i ] = "&H" .. cF[ i ]:upper( ) .. "&"
			else
				for c in cF[ i ]:gmatch( "[%&Hh]*%x%x%x%x%x%x[%&]*" ) do
					c = c:match( "%x+" )
					c = format( "&H%s&", c:upper( ) )
					table.insert( tcF, c )
				end
				cF[ i ] = format( "(%s,%s,%s,%s)", tcF[ 1 ], tcF[ 2 ], tcF[ 3 ], tcF[ 4 ] )
			end
		end
		if #cF == 1 then
			return cF[ 1 ]
		end
		return cF
	end
	
	function color.to_RGB( color_or_table )
		if type( color_or_table ) == "function" then
			color_or_table = color_or_table( )
		end
		local color_or_table = color.from_error( color_or_table or text.color1 )
		effector.print_error( color_or_table, "color", "color.to_RGB", 1 )
		local C_ass, RGB_table, _c = { color_or_table }, { }, color.vc_to_c
		if type( color_or_table ) == "table" then
			C_ass = color_or_table
		end
		for i = 1, #C_ass do
			local b_RGB, g_RGB, r_RGB = _c( C_ass[ i ] ):match( "(%x%x)(%x%x)(%x%x)" )
			RGB_table[ i ] = { tonumber( r_RGB, 16 ), tonumber( g_RGB, 16 ), tonumber( b_RGB, 16 ) }
		end
		if #C_ass == 1 then
			return RGB_table[ 1 ]
		end
		return RGB_table
	end
	
	function color.to_HSV( color_or_table )
		if type( color_or_table ) == "function" then
			color_or_table = color_or_table( )
		end
		local color_or_table = color.from_error( color_or_table or text.color1 )
		effector.print_error( color_or_table, "color", "color.to_HSV", 1 )
		local c_ass, HSV_table, H, S, V, Cmin, Cmax, Dt = { color_or_table }, { }, 0, 0, 0, 0, 1, 1
		if type( color_or_table ) == "table" then
			c_ass = color_or_table
		end
		for i = 1, #c_ass do
			local Red, Green, Blue = unpack( color.to_RGB( c_ass[ i ] ) )
			local Rcol, Gcol, Bcol = Red / 255 + 0.000001, Green / 255, Blue / 255
			Cmax = math.max( Rcol, Gcol, Bcol )
			Cmin = math.min( Rcol, Gcol, Bcol )
			Dt = Cmax - Cmin
			H = math.round( 60 * (((Rcol - Gcol) / Dt) + 4), 3 )
			if Cmax == Rcol then
				H = math.round( 60 * (((Gcol - Bcol) / Dt) % 6), 3 )
			elseif Cmax == Gcol then
				H = math.round( 60 * (((Bcol - Rcol) / Dt) + 2), 3 )
			end
			S = math.round( Dt / Cmax, 3 )
			V = math.round( Cmax, 3 )
			HSV_table[ i ] = { H, S, V }
		end
		if #c_ass == 1 then
			return HSV_table[ 1 ]
		end
		return HSV_table
	end
	
	function color.vc( color_or_table )
		if type( color_or_table ) == "function" then
			color_or_table = color_or_table( )
		end
		local color_or_table = color.from_error( color_or_table or text.color1 )
		effector.print_error( color_or_table, "color", "color.vc", 1 )
		local vc, cvc_t = { color_or_table }, { }
		if type( color_or_table ) == "table" then
			vc = color_or_table
		end
		for i = 1, #vc do
			if vc[ i ]:len( ) < 15 then
				cvc_t[ i ] = math.format( "(%s,%s,%s,%s)", color.assF( vc[ i ] ) )
			else
				cvc_t[ i ] = color.assF( vc[ i ] )
			end
		end
		if #cvc_t == 1 then
			return cvc_t[ 1 ]
		end
		return cvc_t
	end
	
	function color.r( )
		return color.HSV_to_RGB( Rc( 360 ), Rc( 0, 1 ), Rc( 0, 1 ) )
	end

	function color.rc( colorRC, ... )
		if type( colorRC ) == "function" then
			colorRC = colorRC( )
		end
		local colorRC = color.from_error( colorRC or text.color1 )
		effector.print_error( colorRC, "color", "color.rc", 1 )
		local RCtable, i_c, _c = { }, color.ipolfx, color.vc_to_c
		local RCcolor = { colorRC }
		local RCmask = color.from_error( ... or { "&H6E6E6E&", "&H000000&" } )
		if type( colorRC ) == "table" then
			RCcolor = colorRC
		end
		if type( RCmask ) ~= "table" then
			RCmask = { RCmask }
		end
		if #RCmask == 1 then
			RCmask[ 2 ] = RCmask[ 1 ]
		end
		for i = 1, #RCcolor do
			RCmask = table.disorder( RCmask )
			RCtable[ i ] = i_c( Rc( 0.25, 1 ), i_c( R( 2 ) - 1, RCmask[ 1 ], RCmask[ 2 ] ), _c( RCcolor[ i ] ) )
		end
		if #RCcolor == 1 then
			return RCtable[ 1 ]
		end
		return RCtable
	end
	
	function color.rvc( colorRVC, ... )
		if type( colorRVC ) == "function" then
			colorRVC = colorRVC( )
		end
		local colorRVC = color.from_error( colorRVC or text.color1 )
		effector.print_error( colorRVC, "color", "color.rvc", 1 )
		local RVCtable, RVCcolor = { }, { colorRVC }
		if type( colorRVC ) == "table" then
			RVCcolor = colorRVC
		end
		for i = 1, #RVCcolor do
			RVCtable[ i ] = format( "(%s,%s,%s,%s)",
				color.rc( RVCcolor[ i ], ... ), color.rc( RVCcolor[ i ], ... ),
				color.rc( RVCcolor[ i ], ... ), color.rc( RVCcolor[ i ], ... )
			)
		end
		if #RVCcolor == 1 then
			return RVCtable[ 1 ]
		end
		return RVCtable
	end
	
	function color.gradientv( ColorTop_or_table, ColorBottom_or_table )
		if type( ColorTop_or_table ) == "function" then
			ColorTop_or_table = ColorTop_or_table( )
		end
		if type( ColorBottom_or_table ) == "function" then
			ColorBottom_or_table = ColorBottom_or_table( )
		end
		local ColorBottom_or_table = color.from_error( ColorBottom_or_table or text.color2 )
		local ColorTop_or_table = color.from_error( ColorTop_or_table or text.color1 )
		effector.print_error( ColorTop_or_table, "color", "color.gradientv", 1 )
		effector.print_error( ColorBottom_or_table, "color", "color.gradientv", 2 )
		local Cv_table, _c = { }, color.vc_to_c
		local CT, CB = { ColorTop_or_table }, { ColorBottom_or_table }
		if type( ColorTop_or_table ) == "table" then
			CT = ColorTop_or_table
		end
		if type( ColorBottom_or_table ) == "table" then
			CB = ColorBottom_or_table
		end
		for i = 1, #CT do
			for k = 1, #CB do
				table.insert( Cv_table,
					format( "(%s,%s,%s,%s)",
						_c( CT[ i ] ), _c( CT[ i ] ), _c( CB[ k ] ), _c( CB[ k ] )
					)
				)
			end
		end
		if #Cv_table == 1 then
			return Cv_table[ 1 ]
		end
		return Cv_table
	end
	
	function color.gradienth( ColorLeft_or_table, ColorRight_or_table, algorithm )
		if type( ColorLeft_or_table ) == "function" then
			ColorLeft_or_table = ColorLeft_or_table( )
		end
		if type( ColorRight_or_table ) == "function" then
			ColorRight_or_table = ColorRight_or_table( )
		end
		if type( algorithm ) == "function" then
			algorithm = algorithm( )
		end
		--example algorithm: "1 - abs(2*%s - 1)"
		local Al = algorithm or "%s"
		local ColorRight_or_table = color.from_error( ColorRight_or_table or text.color2 )
		local ColorLeft_or_table = color.from_error( ColorLeft_or_table or text.color1 )
		effector.print_error( ColorLeft_or_table, "color", "color.gradienth", 1 )
		effector.print_error( ColorRight_or_table, "color", "color.gradienth", 2 )
		effector.print_error( Al, "string", "color.gradienth", 3 )
		local Ch_table, _c, i_c = { }, color.vc_to_c, color.ipolfx
		local CL, CR = { ColorLeft_or_table }, { ColorRight_or_table }
		local v1 = math.format( Al, 2 * (val_i - 1) / (2 * val_n - 1) )
		local v2 = math.format( Al, (2 * val_i - 1) / (2 * val_n - 1) )
		if type( ColorLeft_or_table ) == "table" then
			CL = ColorLeft_or_table
		end
		if type( ColorRight_or_table ) == "table" then
			CR = ColorRight_or_table
		end
		for i = 1, #CL do
			for k = 1, #CR do
				Cx1 = i_c( v1, _c( CL[ i ] ), _c( CR[ k ] ) )
				Cx2 = i_c( v2, _c( CL[ i ] ), _c( CR[ k ] ) )
				table.insert( Ch_table, format( "(%s,%s,%s,%s)", Cx1, Cx2, Cx1, Cx2 ) )
			end
		end
		if #Ch_table == 1 then
			return Ch_table[ 1 ]
		end
		return Ch_table
	end
	
	function color.vc_to_c( colorvc_or_table )
		if type( colorvc_or_table ) == "function" then
			colorvc_or_table = colorvc_or_table( )
		end
		local colorvc_or_table = color.from_error( colorvc_or_table or text.color1 )
		effector.print_error( colorvc_or_table, "color", "color.vc_to_c", 1 )
		local colorvc, VC2Ccolors, i_c = { colorvc_or_table }, { }, color.ipolfx
		if type( colorvc_or_table ) == "table" then
			colorvc = colorvc_or_table
		end
		for k = 1, #colorvc do
			VC2Ccolors = { }
			if colorvc[ k ]:len( ) < 15 then
				colorvc[ k ] = color.assF( colorvc[ k ] )
			else
				for c in colorvc[ k ]:gmatch( "[%&Hh]*%x%x%x%x%x%x[%&]*" ) do
					table.insert( VC2Ccolors, color.assF( c ) )
				end
				colorvc[ k ] = i_c( 0.5, i_c( 0.5, VC2Ccolors[ 1 ], VC2Ccolors[ 4 ] ), i_c( 0.5, VC2Ccolors[ 2 ], VC2Ccolors[ 3 ] ) )
			end 
		end
		if #colorvc == 1 then
			return colorvc[ 1 ]
		end
		return colorvc
	end
	
	function color.c_to_vc( colorc_or_table )
		if type( colorc_or_table ) == "function" then
			colorc_or_table = colorc_or_table( )
		end
		local colorc_or_table = color.from_error( colorc_or_table or text.color1 )
		effector.print_error( colorc_or_table, "color", "color.c_to_vc", 1 )
		return color.vc( colorc_or_table )
	end
	
	function color.interpolate( color1_or_table, color2_or_table, Index_Ipol )
		if type( color1_or_table ) == "function" then
			color1_or_table = color1_or_table( )
		end
		if type( color2_or_table ) == "function" then
			color2_or_table = color2_or_table( )
		end
		if type( Index_Ipol ) == "function" then
			Index_Ipol = Index_Ipol( )
		end
		local II = Index_Ipol or 0.5
		local color1_or_table = color.from_error( color1_or_table or text.color1 )
		local color2_or_table = color.from_error( color2_or_table or text.color2 )
		effector.print_error( color1_or_table, "color", "color.interpolate", 1 )
		effector.print_error( color2_or_table, "color", "color.interpolate", 2 )
		effector.print_error( II, "number", "color.interpolate", 3 )
		local Ci_table, _c, i_c = { }, color.vc_to_c, color.ipolfx
		local C1, C2 = { color1_or_table }, { color2_or_table }
		if type( color1_or_table ) == "table" then
			C1 = color1_or_table
		end
		if type( color2_or_table ) == "table" then
			C2 = color2_or_table
		end
		local color1_vc, color2_vc
		for i = 1, #C1 do
			for k = 1, #C2 do
				color1_vc, color2_vc = { }, { }
				for c in C1[ i ]:gmatch( "%x%x%x%x%x%x" ) do
					table.insert( color1_vc, c )
				end
				for c in C2[ k ]:gmatch( "%x%x%x%x%x%x" ) do
					table.insert( color2_vc, c )
				end
				if #color1_vc == 1
					or #color2_vc == 1 then
					table.insert( Ci_table, i_c( II, _c( C1[ i ] ), _c( C2[ k ] ) ) )
				elseif #color1_vc == 4
					and #color2_vc == 4 then
					table.insert( Ci_table, format( "(%s,%s,%s,%s)",
							i_c( II, color1_vc[ 1 ], color2_vc[ 1 ] ),
							i_c( II, color1_vc[ 2 ], color2_vc[ 2 ] ),
							i_c( II, color1_vc[ 3 ], color2_vc[ 3 ] ),
							i_c( II, color1_vc[ 4 ], color2_vc[ 4 ] )
						)
					) --add: august 03rd 2019
				end
			end
		end
		if #Ci_table == 1 then
			return Ci_table[ 1 ]
		end
		return Ci_table
	end
	
	function color.vector( color1, color2 )
		if type( color1 ) == "function" then
			color1 = color1( )
		end
		if type( color2 ) == "function" then
			color2 = color2( )
		end
		local color2 = color.from_error( color2 or text.color2 )
		local color1 = color.from_error( color1 or text.color1 )
		effector.print_error( color1, "color", "color.vector", 1 )
		effector.print_error( color2, "color", "color.vector", 2 )
		local cv_index, C1, C2 = table.disorder( 4 ), color.vc_to_c( color1 ), color.vc_to_c( color2 )
		local Cfx = {
			[ 1 ] = { C1, C1, C2, C1 },
			[ 2 ] = { C2, C1, C1, C1 },
			[ 3 ] = { C1, C1, C1, C2 },
			[ 4 ] = { C1, C2, C1, C1 }
		}
		local cv_table = {
			[ 0 ] = { C1, C1, C1, C1 },
			[ 1 ] = Cfx[ cv_index[ 1 ] ],
			[ 2 ] = Cfx[ cv_index[ 2 ] ],
			[ 3 ] = Cfx[ cv_index[ 3 ] ],
			[ 4 ] = { C2, C2, C2, C2 },
		}
		for i = 1, 4 do
			if cv_table[ 1 ][ i ] == cv_table[ 2 ][ i ] then
				cv_table[ 2 ][ i ] = C1
			else
				cv_table[ 2 ][ i ] = C2
			end
		end
		for i = 1, 4 do
			if cv_table[ 2 ][ i ] == cv_table[ 3 ][ i ] then
				cv_table[ 3 ][ i ] = C1
			else
				cv_table[ 3 ][ i ] = C2
			end
		end
		for i = 1, 4 do
			cv_table[ i ] = format( "(%s)", table.show( cv_table[ i ] ) )
		end
		return cv_table
	end
	
	function color.delay( time_i, delay, color_i, color_f, ... )
		if type( time_i ) == "function" then
			time_i = time_i( )
		end
		if type( delay ) == "function" then
			delay = delay( )
		end
		if type( color_i ) == "function" then
			color_i = color_i( )
		end
		if type( color_f ) == "function" then
			color_f = color_f( )
		end
		local color_f = color.from_error( color_f or text.color2 )
		local color_i = color.from_error( color_i or text.color1 )
		local delay = delay or 800
		local time_i = time_i or 0
		effector.print_error( time_i, "number", "color.delay", 1 )
		effector.print_error( delay, "number", "color.delay", 2 )
		effector.print_error( color_i, "color", "color.delay", 3 )
		effector.print_error( color_f, "color", "color.delay", 4 )
		local e_concat, ti, cd_index, _c = { ... }, time_i, table.disorder( 4 ), color.vc_to_c
		local vcl, Ci, Cf, Tag_fx, Ax, event = { }, _c( color_i ), _c( color_f ), "", "", ""
		local Cfx = {
			[ 1 ] = { Ci, Ci, Cf, Ci },
			[ 2 ] = { Cf, Ci, Ci, Ci },
			[ 3 ] = { Ci, Ci, Ci, Cf },
			[ 4 ] = { Ci, Cf, Ci, Ci },
		}
		local X = {
			[ 0 ] = { Ci, Ci, Ci, Ci },
			[ 1 ] = Cfx[ cd_index[ 1 ] ],
			[ 2 ] = Cfx[ cd_index[ 2 ] ],
			[ 3 ] = Cfx[ cd_index[ 3 ] ],
			[ 4 ] = { Cf, Cf, Cf, Cf },
		}
		for i = 1, 4 do
			if X[ 1 ][ i ] == X[ 2 ][ i ] then
				X[ 2 ][ i ] = Ci
			else
				X[ 2 ][ i ] = Cf
			end
		end
		for i = 1, 4 do
			if X[ 2 ][ i ] == X[ 3 ][ i ] then
				X[ 3 ][ i ] = Ci
			else
				X[ 3 ][ i ] = Cf
			end
		end
		if #e_concat == 0
			or e_concat == nil then
			Tag_fx = format( "\\1vc(%s)\\3vc(%s)\\4vc(%s)",
				table.show( X[ 0 ] ), table.show( X[ 0 ] ), table.show( X[ 0 ] )
			)
			for i = 1, 4 do
				Ax = table.show( X[ i ] )
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\1vc(%s)\\3vc(%s)\\4vc(%s))",
					ti + delay * (i - 1) / 4, ti + delay * i / 4, Ax, Ax, Ax
				)
			end
		else
			for i = 1, #e_concat do
				vcl[ i ] = e_concat[ i ]
			end
			for i = 1, #e_concat do
				Tag_fx = Tag_fx .. format( "%s(%s)", vcl[ i ], table.show( X[ 0 ] ) )
			end
			for i = 1, 4 do
				Ax = table.show( X[ i ] )
				event = ""
				for k = 1, #e_concat do
					event = event .. format( "%s(%s)", vcl[ k ], Ax )
				end
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)",
					ti + delay * (i - 1) / 4, ti + delay  *  i / 4, event
				)
			end
		end
		return Tag_fx
	end
	
	function color.movedelay( dur, delay, mode, ... )
		if type( dur ) == "function" then
			dur = dur( )
		end
		if type( delay ) == "function" then
			delay = delay( )
		end
		if type( mode ) == "function" then
			mode = mode( )
		end
		local colors = color.from_error( ... or text.color2 )
		local mode = mode or 1
		local delay = delay or 360
		local dur = dur or fx.dur
		effector.print_error( dur, "number", "color.movedelay", 1 )
		effector.print_error( delay, "number", "color.movedelay", 2 )
		effector.print_error( mode, "numberstring", "color.movedelay", 3 )
		local CFX, CdFX, N, Tag_fx, dt, _c = { colors }, { }, { }, "", delay, color.vc_to_c
		local V, I, Ind = 1, 1, 1
		if type( colors ) == "table" then
			CFX = colors
		end
		if #CFX == 1 then
			CFX[ 2 ] = text.color1
		end
		for i = 1, #CFX - 1 do
			table.inserttable( CdFX, color.vector( _c( CFX[ i ] ), _c( CFX[ i + 1 ] ) ) )
		end
		for c_mov in tostring( mode ):gmatch( "%d" ) do
			table.insert( N, c_mov )
		end
		if #N == 0 then
			N = { [ 1 ] = 1 }
		end
		for i = 1, #N do
			N[ i ] = format( "\\%svc", N[ i ] )
		end
		CdFX = table.concat2( CdFX, N )
		local i = 0
		while dur > 0 do
			V = #CdFX - 1
			I = i + 1
			Ind = (V - V * ceil( I / V ) + I) * (-1) ^ (ceil( I / V ) + 1) + (V + 2) * (1 + (-1) ^ ceil( I / V )) / 2
			Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)",
				math.round( dt * i , 2 ), math.round( dt * (i + 1), 2 ), CdFX[ Ind ]
			)
			i = i + 1
			dur = dur - dt
		end
		return Tag_fx
	end

	function color.set( Cset_times, Cset_colors, ... )
		-- ... = \\1vc, \\3vc, \\4vc, \\1c, \\3c or \\4c
		if type( Cset_times ) == "function" then
			Cset_times = Cset_times( )
		end
		if type( Cset_colors ) == "function" then
			Cset_colors = Cset_colors( )
		end
		local e_concat = { ... }
		local Cset_colors = color.from_error( Cset_colors or { text.color2 } )
		local Cset_times = Cset_times or { linefx[ ii ].start_time + linefx[ ii ].duration / 2 }
		effector.print_error( Cset_times, "table", "color.set", 1 )
		effector.print_error( Cset_colors, "table", "color.set", 2 )
		local Cset_c = Cset_colors
		Cset_times = table.complete( Cset_times, fx.start_time, fx.end_time )
		local iSt, iEt = table.index( Cset_times, fx.start_time ), table.index( Cset_times, fx.end_time )
		local t_t = table.duplicate( Cset_times )
		if #Cset_c >= #Cset_times - 1 then
			Cset_c[ 0 ] = Cset_c[ #Cset_times - 1 ]
		else
			Cset_c[ 0 ] = text.color1
		end
		local i = iSt + 1
		local Tag_fx, event, t1, t2, offset_t, c_set = "", "", 0, 1, 1, table.duplicate( Cset_c )
		for i = 0, #c_set do
			if type( c_set[ i ] ) == "table" then
				Cset_c[ i ] = c_set[ i ][ (val_i - 1) % #Cset_c[ i ] + 1 ]
			elseif type( c_set[ i ] ) == "function" then
				Cset_c[ i ] = c_set[ i ]( )
			end
		end
		if #e_concat == 0 then
			Tag_fx = "\\1c" .. Cset_c[ i - 2 ]
		else
			for k = 1, #e_concat do
				if i - 2 == 0 then
					if e_concat[ k ] == "\\1c"
						or e_concat[ k ] == "\\1vc" then
						Cset_c[ 0 ] = text.color1
						if #Cset_c >= #Cset_times - 1 then
							Cset_c[ 0 ] = Cset_c[ #Cset_times - 1 ]
						end
					elseif e_concat[ k ] == "\\3c"
						or e_concat[ k ] == "\\3vc" then
						Cset_c[ 0 ] = text.color3
						if #Cset_c >= #Cset_times - 1 then
							Cset_c[ 0 ] = Cset_c[ #Cset_times - 1 ]
						end
					elseif e_concat[ k ] == "\\4c"
						or e_concat[ k ] == "\\4vc" then
						Cset_c[ 0 ] = text.color4
						if #Cset_c >= #Cset_times - 1 then
							Cset_c[ 0 ] = Cset_c[ #Cset_times - 1 ]
						end
					end
				end
				Tag_fx = Tag_fx .. e_concat[ k ] .. Cset_c[ i - 2 ]
			end
		end
		for i = 1, #Cset_times do
			if type( Cset_times[ i ] ) == "table" then
				Cset_times[ i ] = Cset_times[ i ][ 1 ]
			end
		end
		if iSt + 1 ~= iEt then
			while Cset_times[ i ] < fx.end_time do
				if type( t_t[ i ] ) == "table" then
					offset_t = t_t[ i ][ 2 ]
				end
				t1 = Cset_times[ i ] - fx.start_time - frame_dur / 2
				if t1 < 0 then
					t1 = 0
				end
				t2 = t1 + offset_t
				if #e_concat == 0 then
					Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\1vc%s)", t1, t2, Cset_c[ i - 1 ] )
				else
					event = ""
					for k = 1, #e_concat do
						event = event .. e_concat[ k ] .. Cset_c[ i - 1 ]
					end
					Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)", t1, t2, event )
				end
				i = i + 1
			end
		end
		return Tag_fx
	end

	function color.mask( Mode, Color, Mask )
		if type( Mode ) == "function" then
			Mode = Mode( )
		end
		if type( Color ) == "function" then
			Color = Color( )
		end
		if type( Mask ) == "function" then
			Mask = Mask( )
		end
		return table.mask( Color, Mask, Mode )
		--se puede usar: color.mask( mode, table, mask )[ valor ]
	end
	
	function color.movemask( Dur, Delay, Mode, Color, Mask )
		--Example: color.movemask( fx.dur, 220, "\\1c", table.make( "color", syl.n, 15, 90 )[ syl.i ], "&H000000&" )
		if type( Dur ) == "function" then
			Dur = Dur( )
		end
		if type( Delay ) == "function" then
			Delay = Delay( )
		end
		if type( Mode ) == "function" then
			Mode = Mode( )
		end
		if type( Color ) == "function" then
			Color = Color( )
		end
		if type( Mask ) == "function" then
			Mask = Mask( )
		end
		if type( Dur ) == "table" then
			table.insert( Dur, val_i + 1 )
		else
			Dur = { 0, Dur, val_i + 1 }
		end
		local CmMtb = table.mask( Color, Mask, Mode, true )
		return CmMtb[ val_i ] .. tag.oscill( Dur, Delay, CmMtb )
	end --color.movemask( fx.dur, 300, "\\1c", "&H0000FF&" )

	function color.setmovemask( delay, mode, t, colors, Mask )
		--mode: "\\1c", "\\3c", "\\4c", "\\1vc", "\\3vc" or "\\4vc"
		if type( delay ) == "function" then
			delay = delay( )
		end
		if type( mode ) == "function" then
			mode = mode( )
		end
		if type( t ) == "function" then
			t = t( )
		end
		if type( colors ) == "function" then
			colors = colors( )
		end
		local colors = color.from_error( colors or { text.color2 } )
		local t = t or { linefx[ ii ].start_time + linefx[ ii ].duration / 2 }
		local mode = mode or "\\1vc"
		local delay = delay or 420
		t = table.complete( t, fx.start_time, fx.end_time )
		if #colors >= #t - 1 then
			table.insert( colors, 1, colors[ #t - 1 ] )
		else
			table.insert( colors, 1, text.color1 )
		end
		function color.masktable2( color_table )
			local TT_cmask = recall.Tmsk
			if val_i == 1 then
				TT_cmask = remember( "Tmsk", { } )
				local Ct, ton2, T_cmask = color_table, { }, { }
				for i = 1, #Ct do
					ton2[ i ], T_cmask[ i ] = { }, { }
					for k = 1, 2 * (val_n + 1) do
						ton2[ i ][ k ] = color.rc( Ct[ i ], Mask )
					end
					ton2[ i ][ 1 ] = ton2[ i ][ 2 * (val_n + 1) - 2 ]
					ton2[ i ][ 3 ] = ton2[ i ][ 2 * (val_n + 1) - 0 ]
					for h = 1, val_n do
						T_cmask[ i ][ h ] = format( "(%s,%s,%s,%s)",
							ton2[ i ][ 2 * h - 1 ], ton2[ i ][ 2 * h + 1 ],
							ton2[ i ][ 2 * h - 0 ], ton2[ i ][ 2 * h + 2 ]
						)
					end
				end
				for i = 1, #Ct do
					TT_cmask[ i ] = T_cmask[ i ]
				end
			end
			return TT_cmask
		end
		colors = color.masktable2( colors )
		local Ind2, Tag2, t_set = table.index( t, fx.start_time ), "", { }
		for i = table.index( t, fx.start_time ), table.index( t, fx.end_time ) do
			t_set[ #t_set + 1 ] = t[ i ] - fx.start_time - frame_dur / 2
		end
		for i = 1, #t_set - 1 do
			if t_set[ i ] < 0 then
				t_set[ i ] = 0
			end
			Tag2 = Tag2 .. format( "\\t(%s,%s,%s)",
				t_set[ i ], t_set[ i ] + 1, mode .. colors[ Ind2 + i - 1 ][ (val_i - 2) % val_n + 1 ]
			)
			Tag2 = Tag2 .. tag.oscill( { t_set[ i ], t_set[ i + 1 ], val_i }, delay, table.concat1( colors[ Ind2 + i - 1 ], mode ) )
		end
		return Tag2
	end
	
	function color.movemaskv( Dur, Delay, Mode, Color, Mask )
		if type( Dur ) == "function" then
			Dur = Dur( )
		end
		if type( Delay ) == "function" then
			Delay = Delay( )
		end
		if type( Mode ) == "function" then
			Mode = Mode( )
		end
		if type( Color ) == "function" then
			Color = Color( )
		end
		if type( Mask ) == "function" then
			Mask = Mask( )
		end
		if type( Dur ) == "table" then
			table.insert( Dur, val_i + 1 )
		else
			Dur = { 0, Dur, 2 }
		end
		local CmMvTB, CmMvtb = table.mask( Color, Mask, Mode, true ), { }
		for i = 1, 12 do
			CmMvtb[ i ] = CmMvTB[ val_i + (i - 1) * val_n ]
		end
		return CmMvtb[ 1 ] .. tag.oscill( Dur, Delay, CmMvtb )
	end

	function color.masktable( color_or_table, Size )
		if type( color_or_table ) == "function" then
			color_or_table = color_or_table( )
		end
		if type( Size ) == "function" then
			Size = Size( )
		end
		local color_or_table = color.from_error( color_or_table or text.color1 )
		local Ct, tone, TT_cmask
		local T_cmask = recall.cmaskt
		local Size = Size or val_n
		if val_i == 1 then
			Ct = color_or_table
			T_cmask = remember( "cmaskt", { } )
			tone, TT_cmask = { }, { }
			if type( Ct ) ~= "table" then
				for i = 1, 2 * (Size + 1) do
					tone[ i ] = color.interpolate( Ct, "&H000000&", Rc( 0, 0.8 ) )
				end
				for k = 1, Size do
					T_cmask[ k ] = format( "(%s,%s,%s,%s)",
						tone[ 2 * k - 1 ], tone[ 2 * k + 1 ],
						tone[ 2 * k - 0 ], tone[ 2 * k + 2 ]
					)
				end
			else
				for i = 1, #Ct do
					tone[ i ], T_cmask[i] = { }, { }
					for k = 1, 2 * (Size + 1) do
						tone[ i ][ k ] = color.interpolate( Ct[ i ], "&H000000&", Rc( 0, 0.8 ) )
					end
					for h = 1, Size do
						T_cmask[ i ][ h ] = format( "(%s,%s,%s,%s)",
							tone[ i ][ 2 * h - 1 ], tone[ i ][ 2 * h + 1 ],
							tone[ i ][ 2 * h - 0 ], tone[ i ][ 2 * h + 2 ]
						)
					end
				end
				for i = 1, #Ct do
					TT_cmask[ i ] = T_cmask[ i ]
				end
				T_cmask = TT_cmask
			end
		end
		return T_cmask
	end
	
	function color.module( color1_or_table, color2_or_table )
		return color.interpolate( color1_or_table, color2_or_table, module )
	end

	function color.module1( color1_or_table, color2_or_table )
		return color.interpolate( color1_or_table, color2_or_table, module1 )
	end

	function color.module2( color1_or_table, color2_or_table )
		return color.interpolate( color1_or_table, color2_or_table, module2 )
	end
	
	function color.moduler( color1_or_table, color2_or_table )
		return color.interpolate( color1_or_table, color2_or_table, moduler )
	end
	
	function color.ipol( ... )
		local colors_tbl = { ... }
		if type( ... ) == "table" then
			colors_tbl = ... 
		end
		if #colors_tbl == 1 then
			colors_tbl[ 2 ] = text.color1
		end
		local color_ipol = recall.c_ipol
		local max_ipol = val_n - 1
		local ipol_i, ipol_f, pct_ip
		if val_n == 1 then
			return colors_tbl[ 1 ]
		end
		if fx.filter == "mod" then
			max_ipol = val_n
		end
		if val_i == 1 then
			color_ipol = remember( "c_ipol", { } )
			for i = 1, max_ipol do
				ipol_i = colors_tbl[ floor( (i - 1) / (max_ipol / (#colors_tbl - 1)) ) + 1 ]
				ipol_f = colors_tbl[ floor( (i - 1) / (max_ipol / (#colors_tbl - 1)) ) + 2 ]
				pct_ip = floor( (i - 1) % (max_ipol / (#colors_tbl - 1)) ) / (max_ipol / (#colors_tbl - 1))
				color_ipol[ i ] = color.interpolate( ipol_i, ipol_f, pct_ip )
			end
			color_ipol[ #color_ipol + 1 ] = colors_tbl[ #colors_tbl ]
		end
		if fx.filter == "mod" then
			if fx__.v_kanji == false then
				return format( "(%s,%s,%s,%s)", color_ipol[ val_i ], color_ipol[ val_i + 1 ], color_ipol[ val_i ], color_ipol[ val_i + 1 ] )
			end
			return format( "(%s,%s,%s,%s)", color_ipol[ val_i ], color_ipol[ val_i ], color_ipol[ val_i + 1 ], color_ipol[ val_i + 1 ] )
		end
		return color_ipol[ val_i ] --rewrite: october 11th 2018
	end --color.ipol( "&H00FF00&", "&HFF0000&", "&H0000FF&" )

	function color.loop( ... )
		local colors_tbl = { ... }
		if type( ... ) == "table" then
			colors_tbl = ... 
		end
		if #colors_tbl == 1 then
			colors_tbl[ 2 ] = text.color1
		end
		local color_loop = recall.c_loop
		local max_loop = maxj - 1
		local ipol_i, ipol_f, pct_ip
		if maxj == 1 then
			return colors_tbl[ 1 ]
		end
		if fx.filter == "mod" then
			max_loop = maxj
		end
		if j == 1 then
			color_loop = remember( "c_loop", { } )
			for i = 1, max_loop do
				ipol_i = colors_tbl[ floor( (i - 1) / (max_loop / (#colors_tbl - 1)) ) + 1 ]
				ipol_f = colors_tbl[ floor( (i - 1) / (max_loop / (#colors_tbl - 1)) ) + 2 ]
				pct_ip = floor( (i - 1) % (max_loop / (#colors_tbl - 1)) ) / (max_loop / (#colors_tbl - 1))
				color_loop[ i ] = color.interpolate( ipol_i, ipol_f, pct_ip )
			end
			color_loop[ #color_loop + 1 ] = colors_tbl[ #colors_tbl ]
		end
		if fx.filter == "mod" then
			if fx__.v_kanji == false then
				return format( "(%s,%s,%s,%s)", color_loop[ j ], color_loop[ j + 1 ], color_loop[ j ], color_loop[ j + 1 ] )
			end
			return format( "(%s,%s,%s,%s)", color_loop[ j ], color_loop[ j ], color_loop[ j + 1 ], color_loop[ j + 1 ] )
		end
		return color_loop[ j ] --rewrite: october 11th 2018
	end --color.loop( "&H00FF00&", "&HFF0000&", "&H0000FF&" )

	function color.bigradient( Color_or_Table1, Color_or_Table2, Size_Table )
		local  CbGgt = table.bigradient( Color_or_Table1, Color_or_Table2, Size_Table )
		return CbGgt[ (val_i - 1) % #CbGgt + 1 ]
	end
	
	function color.distance( CD_center, ... )
		--CD_center = {center_x, center_y[, radius_min[, radius_max[, center_ref_x, center_ref_y]]]}
		local CD_max_dis, CD_radius_min, CD_radius_max, CD_radius_dis, CD_gradient
		local dtc_col = recall.CD_col
		if val_i == 1
			and j == 1 then
			CD_max_dis = {
				[ 1 ] = math.distance( CD_center[ 1 ], CD_center[ 2 ], 0, 0 ),
				[ 2 ] = math.distance( CD_center[ 1 ], CD_center[ 2 ], xres, 0 ),
				[ 3 ] = math.distance( CD_center[ 1 ], CD_center[ 2 ], 0, yres ),
				[ 4 ] = math.distance( CD_center[ 1 ], CD_center[ 2 ], xres, yres )
			}
			CD_radius_min = CD_center[ 3 ] or 0
			CD_radius_max = CD_center[ 4 ] or math.max( unpack( CD_max_dis ) )
			CD_radius_dis = CD_radius_max - CD_radius_min
			CD_gradient = table.gradient( 360, ... )
			dtc_col = remember( "CD_col",
				function( AdD_x, AdD_y )
					local dc_dis = math.distance( CD_center[ 1 ], CD_center[ 2 ], AdD_x, AdD_y ) - CD_radius_min
					if ceil( dc_dis ) <= 0 then
						return color.vc_to_c( CD_gradient[ 1 ] )
					elseif ceil( dc_dis ) >= CD_radius_dis then
						return color.vc_to_c( CD_gradient[ 360 ] )
					end
					return color.vc_to_c( CD_gradient[ ceil( 360 * dc_dis / CD_radius_dis ) ] )
				end
			)
		end
		if CD_center[ 7 ] then
			return format( "(%s,%s,%s,%s)",
				dtc_col( CD_center[ 5 ] - val_width / 2, CD_center[ 6 ] - val_height / 2 ), 
				dtc_col( CD_center[ 5 ] + val_width / 2, CD_center[ 6 ] - val_height / 2 ),
				dtc_col( CD_center[ 5 ] - val_width / 2, CD_center[ 6 ] + val_height / 2 ), 
				dtc_col( CD_center[ 5 ] + val_width / 2, CD_center[ 6 ] + val_height / 2 )
			)
		elseif CD_center[ 6 ] then
			return format( "(%s,%s,%s,%s)",
				dtc_col( CD_center[ 5 ], CD_center[ 6 ] ), dtc_col( CD_center[ 5 ], CD_center[ 6 ] ),
				dtc_col( CD_center[ 5 ], CD_center[ 6 ] ), dtc_col( CD_center[ 5 ], CD_center[ 6 ] )
			)
		end
		return format( "(%s,%s,%s,%s)",
			dtc_col( val_left, val_top ), dtc_col( val_right, val_top ),
			dtc_col( val_left, val_bottom ), dtc_col( val_right, val_bottom )
		)
	end

	function color.angle( CA_origin, ... )
		--CA_origin = { origin_x, origin_y[, pos_ref_x, pos_ref_y] }
		local ang_col, CA_gradient = recall.c_ang
		if val_i == 1
			and j == 1 then
			CA_gradient = table.gradient( 360, ... )
			ang_col = remember( "c_ang",
				function( adD_x, adD_y )
					local ca_ang = math.angle( CA_origin[ 1 ], CA_origin[ 2 ], adD_x, adD_y ) % 361
					return color.vc_to_c( CA_gradient[ ceil( ca_ang ) ] )
				end
			)
		end 
		if CA_origin[ 5 ] then
			return format( "(%s,%s,%s,%s)",
				ang_col( CA_origin[ 3 ] - val_width / 2, CA_origin[ 4 ] - val_height / 2 ),
				ang_col( CA_origin[ 3 ] + val_width / 2, CA_origin[ 4 ] - val_height / 2 ),
				ang_col( CA_origin[ 3 ] - val_width / 2, CA_origin[ 4 ] + val_height / 2 ),
				ang_col( CA_origin[ 3 ] + val_width / 2, CA_origin[ 4 ] + val_height / 2 )
			)
		elseif CA_origin[ 4 ] then
			return format( "(%s,%s,%s,%s)",
				ang_col( CA_origin[ 3 ], CA_origin[ 4 ] ), ang_col( CA_origin[ 3 ], CA_origin[ 4 ] ),
				ang_col( CA_origin[ 3 ], CA_origin[ 4 ] ), ang_col( CA_origin[ 3 ], CA_origin[ 4 ] )
			)
		end
		return format( "(%s,%s,%s,%s)",
			ang_col( val_left, val_top ), ang_col( val_right, val_top ),
			ang_col( val_left, val_bottom ), ang_col( val_right, val_bottom )
		)
	end
	
	function color.from_error( color_or_table )
		if type( color_or_table ) == "string" then
			if color_or_table:match( "#%x%x%x%x%x%x" ) then
				color_or_table = color_or_table:gsub( "#%x%x%x%x%x%x",
					function( HTML_color )
						return color.ass( HTML_color )
					end
				)
			else
				color_or_table = color_or_table:gsub( "[%&Hh]*(%x%x%x%x%x%x)[%&]*",
					function( ASS_color )
						return format( "&H%s&", ASS_color )
					end
				)
			end
		elseif type( color_or_table ) == "table" then
			for k, valor in pairs( color_or_table ) do
				if type( valor ) == "string" then
					if valor:match( "#%x%x%x%x%x%x" ) then
						color_or_table[ k ] = valor:gsub( "#%x%x%x%x%x%x",
							function( HTML_color )
								return color.ass( HTML_color )
							end
						)
					else
						color_or_table[ k ] = valor:gsub( "[%&Hh]*(%x%x%x%x%x%x)[%&]*",
							function( ASS_color )
								return format( "&H%s&", ASS_color )
							end
						)
					end
				end
			end
		end
		return color_or_table
	end
	
	function color.to_HTML( ASScolor )
		if type( ASScolor ) == "function" then
			ASScolor = ASScolor( )
		end
		local ASScolor = color.vc_to_c( ASScolor or "&HFFFFFF&" )
		local Bhtml, Ghtml, Rhtml = ASScolor:match( "(%x%x)(%x%x)(%x%x)" )
		return format( "#%s%s%s", Rhtml, Ghtml, Bhtml )
	end

	function color.matrix( Color_or_table, ... )
		if type( Color_or_table ) == "function" then
			Color_or_table = Color_or_table( )
		end
		local Colorx = Color_or_table or text.color1
		effector.print_error( Colorx, "color", "color.matrix", 1 )
		local Matrixes = { ... }
		if #Matrixes == 0 then
			Matrixes[ 1 ] = {
				1,	0,	0,
				0,	1,	0,
				0,	0,	1
			}
		end
		for i = 1, #Matrixes do
			if #Matrixes[ i ] ~= 9 then
				error( "<<Error: color.matrix>> Cada matriz debe ser de tamaño 3x3\n3x3 matrix expected", 2 )
			end
			for _, v in ipairs( Matrixes[ i ] ) do
				if type( v ) ~= "number" then
					error( "<<Error: color.matrix>> Cada matriz solo debe contener números\nmatrix must contain only numbers", 2 )
				end
			end
		end
		if type( Colorx ) == "table" then
			local RGB_tables, Col_matrix = { }, { }
			for i = 1, #Colorx do
				RGB_tables[ i ] = color.to_RGB( Colorx[ i ] )
				Col_matrix[ i ] = color.ass2( math.matrix_mul( RGB_tables[ i ], math.matrix_mul2( unpack( Matrixes ) ) ) )
			end
			return Col_matrix
		end
		local RGB_table = color.to_RGB( Colorx )
		local Mtx_multi = math.matrix_mul2( unpack( Matrixes ) )
		return color.ass2( math.matrix_mul( RGB_table, Mtx_multi ) )
	end
	
	function color.fromstyle( ColorAlpha )
		--color from style
		if type( ColorAlpha ) == "function" then
			ColorAlpha = ColorAlpha( )
		end
		effector.print_error( ColorAlpha, "color", "color.fromstyle", 1 )
		local toColor = ""
		if ColorAlpha:match( "%x%x%x%x%x%x%x%x" ) then
			toColor = "&H" .. ColorAlpha:match( "%x%x(%x%x%x%x%x%x)" ) .. "&"
		elseif ColorAlpha:match( "%x%x%x%x%x%x" ) then
			toColor = ColorAlpha
		end
		return toColor --august 04th 2019
	end --color.fromstyle( line.styleref.color2 )
	
	function color.val2ass( val_R, val_G, val_B )
		--ass_color
		if type( val_R ) == "function" then
			val_R = val_R( )
		end
		if type( val_G ) == "function" then
			val_G = val_G( )
		end
		if type( val_B ) == "function" then
			val_B = val_B( )
		end
		local val_R = val_R or 255
		local val_G = val_G or 255
		local val_B = val_B or 255
		effector.print_error( val_R, "number", "color.val2ass", 1 )
		effector.print_error( val_G, "number", "color.val2ass", 2 )
		effector.print_error( val_B, "number", "color.val2ass", 3 )
		local col_R = math.to16( math.round( val_R ) )
		local col_G = math.to16( math.round( val_G ) )
		local col_B = math.to16( math.round( val_B ) )
		if col_R:len( ) == 1 then
			col_R = "0" .. col_R
		end
		if col_G:len( ) == 1 then
			col_G = "0" .. col_G
		end
		if col_B:len( ) == 1 then
			col_B = "0" .. col_B
		end
		return "&H" .. col_B .. col_G .. col_R .. "&" --august 04th 2019
	end --color.val2ass( 255, 0, 0 )

	function color.ipolfx( Ipol, Color1, Color2 )
		--interpolate_color
		if type( Ipol ) == "function" then
			Ipol = Ipol( )
		end
		if type( Color1 ) == "function" then
			Color1 = Color1( )
		end
		if type( Color2 ) == "function" then
			Color2 = Color2( )
		end
		local Ipol = Ipol or 0.5
		local Color1 = Color1 or text.color1
		local Color2 = Color2 or text.color2
		effector.print_error( Ipol, "number", "color.ipolfx", 1 )
		effector.print_error( Color1, "color", "color.ipolfx", 2 )
		effector.print_error( Color2, "color", "color.ipolfx", 3 )
		if Color1:match( "%x%x%x%x%x%x%x%x" ) then
			Color1 = Color1:match( "%x%x(%x%x%x%x%x%x)" )
		end
		local col_R1 = tonumber( Color1:match( "%x%x%x%x(%x%x)" ), 16 )
		local col_G1 = tonumber( Color1:match( "%x%x(%x%x)%x%x" ), 16 )
		local col_B1 = tonumber( Color1:match( "(%x%x)%x%x%x%x" ), 16 )
		if Color2:match( "%x%x%x%x%x%x%x%x" ) then
			Color2 = Color2:match( "%x%x(%x%x%x%x%x%x)" )
		end
		local col_R2 = tonumber( Color2:match( "%x%x%x%x(%x%x)" ), 16 )
		local col_G2 = tonumber( Color2:match( "%x%x(%x%x)%x%x" ), 16 )
		local col_B2 = tonumber( Color2:match( "(%x%x)%x%x%x%x" ), 16 )
		Ipol = math.clamp( Ipol )
		local ipol_R = math.round( col_R1 + (col_R2 - col_R1) * Ipol )
		local ipol_G = math.round( col_G1 + (col_G2 - col_G1) * Ipol )
		local ipol_B = math.round( col_B1 + (col_B2 - col_B1) * Ipol )
		return color.val2ass( ipol_R, ipol_G, ipol_B ) --august 04th 2019
	end --color.ipolfx( 0.5, "&HFFFFFF&", "&H0000FF&" )
	
	function color.HSV_to_RGB( Hue, Saturation, Value )
		--HSV to ass color format :D HSV2ass
		if type( Hue ) == "function" then
			Hue = Hue( )
		end
		if type( Saturation ) == "function" then
			Saturation = Saturation( )
		end
		if type( Value ) == "function" then
			Value = Value( )
		end
		local Hue = Hue or 0
		local Saturation = Saturation or 1
		local Value = Value or 1
		effector.print_error( Hue, "number", "color.HSV_to_RGB", 1 )
		effector.print_error( Saturation, "number", "color.HSV_to_RGB", 2 )
		effector.print_error( Value, "number", "color.HSV_to_RGB", 3 )
		local H = ((Hue - 1) % 360 + 1) / 360 * 6
		local S = math.clamp( Saturation )
		local V = math.clamp( Value )
		if S == 0 then
			return "&HFFFFFF&"
		end
		if V == 0 then
			return "&H000000&"
		end
		local C = V * S
		local M = V - C
		local X = C * (1 - abs( (H % 2) - 1 ))
		local Rx, Gx ,Bx = 0, 0, 0
		if H < 1 then
			Rx, Gx ,Bx  = C, X, 0
		elseif H < 2 then
			Rx, Gx ,Bx  = X, C, 0
		elseif H < 3 then
			Rx, Gx ,Bx  = 0, C, X
		elseif H < 4 then
			Rx, Gx ,Bx  = 0, X, C
		elseif H < 5 then
			Rx, Gx ,Bx  = X, 0, C
		else
			Rx, Gx ,Bx  = C, 0, X
		end --august 04th 2019
		return color.val2ass( 255 * (Rx + M), 255 * (Gx + M), 255 * (Bx + M) )
	end --color.HSV_to_RGB( 0, 1, 1 )

	--------------------------------------------------------------------------------------------------
	--Librería de las Funciones alpha ----------------------------------------------------------------
	function alpha.assF( alpha_or_table )
		if type( alpha_or_table ) == "function" then
			alpha_or_table = alpha_or_table( )
		end
		local alpha_or_table = alpha_or_table or text.alpha1
		local aF, taF = { alpha_or_table }, { }
		effector.print_error( alpha_or_table, "alpha", "alpha.assF", 1 )
		if type( alpha_or_table ) == "table" then
			aF = alpha_or_table
		end
		for i = 1, #aF do
			taF = { }
			if type( aF[ i ] ) == "number" then
				aF[ i ] = alpha.val2ass( aF[ i ] % 256 )
			else
				if aF[ i ]:len( ) < 7 then
					aF[ i ] = aF[ i ]:match( "%x+" )
					aF[ i ] = format( "&H%s&", aF[ i ]:upper( ) )
				else
					for cF in aF[ i ]:gmatch( "[%&Hh]*%x%x[%&]*" ) do
						cF = cF:match( "%x+" )
						cF = format( "&H%s&", cF:upper( ) )
						table.insert( taF, cF )
					end
					aF[ i ] = format( "(%s,%s,%s,%s)", taF[ 1 ], taF[ 2 ], taF[ 3 ], taF[ 4 ] )
				end
			end
		end
		if #aF == 1 then
			return aF[ 1 ]
		end
		return aF
	end
	
	function alpha.va( alpha_or_table )
		if type( alpha_or_table ) == "function" then
			alpha_or_table = alpha_or_table( )
		end
		local alpha_or_table = alpha.from_error( alpha_or_table or text.alpha1 )
		effector.print_error( alpha_or_table, "alpha", "alpha.va", 1 )
		local vA, ava_t = { alpha_or_table }, { }
		if type( alpha_or_table ) == "table" then
			vA = alpha_or_table
		end
		for i = 1, #vA do
			if type( vA[ i ] ) == "number"
				or vA[ i ]:len( ) < 7 then
				ava_t[ i ] = math.format( "(%s,%s,%s,%s)", alpha.assF( vA[ i ] ) )
			else
				ava_t[ i ] = alpha.assF( vA[ i ] )
			end
		end
		if #ava_t == 1 then
			return ava_t[ 1 ]
		end
		return ava_t
	end

	function alpha.r( )
		return alpha.val2ass( R( 0, 255 ) )
	end
	
	function alpha.ra( ArA_alpha, ... )
		if type( ArA_alpha ) == "function" then
			ArA_alpha = ArA_alpha( )
		end
		local ArA_alpha = alpha.from_error( ArA_alpha or text.alpha1 )
		local ArAmsk = alpha.from_error( ... or { "&HFF&", "&H00&" } )
		effector.print_error( ArA_alpha, "alpha", "alpha.ra", 1 )
		effector.print_error( ArAmsk, "alpha", "alpha.ra", 2 )
		local ArAalp, ArAtbl, i_a, _a = { ArA_alpha }, { }, alpha.ipolfx, alpha.va_to_a
		if type( ArA_alpha ) == "table" then
			ArAalp = ArA_alpha
		end
		if type( ArAmsk ) ~= "table" then
			ArAmsk = { ArAmsk }
		end
		if #ArAmsk == 1 then
			ArAmsk[ 2 ] = ArAmsk[ 1 ]
		end
		for i = 1, #ArAalp do
			ArAmsk = table.disorder( ArAmsk )
			ArAtbl[ i ] = i_a( Rc( 0.2, 1 ), i_a( R( 2 ) - 1, ArAmsk[ 1 ], ArAmsk[ 2 ] ), _a( ArAalp[ i ] ) )
		end
		if #ArAalp == 1 then
			return ArAtbl[ 1 ]
		end
		return ArAtbl
	end
	
	function alpha.rva( ArCA_alpha, ... )
		if type( ArCA_alpha ) == "function" then
			ArCA_alpha = ArCA_alpha( )
		end
		local ArCA_alpha = alpha.from_error( ArCA_alpha or text.alpha1 )
		effector.print_error( ArCA_alpha, "alpha", "alpha.rva", 1 )
		local ArCAalp, ArCAtbl = { ArCA_alpha }, { }
		if type( ArCA_alpha ) == "table" then
			ArCAalp = ArCA_alpha
		end
		for i = 1, #ArCAalp do
			ArCAtbl[ i ] = format( "(%s,%s,%s,%s)",
				alpha.ra( ArCAalp[ i ], ... ), alpha.ra( ArCAalp[ i ], ... ),
				alpha.ra( ArCAalp[ i ], ... ), alpha.ra( ArCAalp[ i ], ... )
			)
		end
		if #ArCAalp == 1 then
			return ArCAtbl[ 1 ]
		end
		return ArCAtbl
	end
	
	function alpha.gradientv( AlphaTop_or_table, AlphaBottom_or_table )
		if type( AlphaTop_or_table ) == "function" then
			AlphaTop_or_table = AlphaTop_or_table( )
		end
		if type( AlphaBottom_or_table ) == "function" then
			AlphaBottom_or_table = AlphaBottom_or_table( )
		end
		local AlphaTop_or_table = alpha.from_error( AlphaTop_or_table or text.alpha1 )
		local AlphaBottom_or_table = alpha.from_error( AlphaBottom_or_table or "&HFF&" )
		effector.print_error( AlphaTop_or_table, "alpha", "alpha.gradientv", 1 )
		effector.print_error( AlphaBottom_or_table, "alpha", "alpha.gradientv", 2 )
		local Av_table, _a = { }, alpha.va_to_a
		local AT, AB = { AlphaTop_or_table }, { AlphaBottom_or_table }
		if type( AlphaTop_or_table ) == "table" then
			AT = AlphaTop_or_table
		end
		if type( AlphaBottom_or_table ) == "table" then
			AB = AlphaBottom_or_table
		end
		for i = 1, #AT do
			for k = 1, #AB do
				table.insert( Av_table, format( "(%s,%s,%s,%s)",
					_a( AT[ i ] ), _a( AT[ i ] ), _a( AB[ k ] ), _a( AB[ k ] ) )
				)
			end
		end
		if #Av_table == 1 then
			return Av_table[ 1 ]
		end
		return Av_table
	end
	
	function alpha.gradienth( AlphaLeft_or_table, AlphaRight_or_table, algorithm )
		--example algorithm: "1 - abs(2 * %s - 1)"
		if type( AlphaLeft_or_table ) == "function" then
			AlphaLeft_or_table = AlphaLeft_or_table( )
		end
		if type( AlphaRight_or_table ) == "function" then
			AlphaRight_or_table = AlphaRight_or_table( )
		end
		if type( algorithm ) == "function" then
			algorithm = algorithm( )
		end
		local AlphaLeft_or_table = alpha.from_error( AlphaLeft_or_table or text.alpha1 )
		local AlphaRight_or_table = alpha.from_error( AlphaRight_or_table or "&HFF&" )
		local algorithm = algorithm or "%s"
		effector.print_error( AlphaLeft_or_table, "alpha", "alpha.gradienth", 1 )
		effector.print_error( AlphaRight_or_table, "alpha", "alpha.gradienth", 2 )
		effector.print_error( algorithm, "string", "alpha.gradienth", 3 )
		local Ah_table, _a, i_a = { }, alpha.va_to_a, alpha.ipolfx
		local AL, AR = { AlphaLeft_or_table }, { AlphaRight_or_table }
		local v1 = math.format( algorithm, 2 * (val_i - 1) / (2 * val_n - 1) )
		local v2 = math.format( algorithm, (2 * val_i - 1) / (2 * val_n - 1) )
		if type( AlphaLeft_or_table ) == "table" then
			AL = AlphaLeft_or_table
		end
		if type( AlphaRight_or_table ) == "table" then
			AR = AlphaRight_or_table
		end
		for i = 1, #AL do
			for k = 1, #AR do
				Ax1 = i_a( v1, _a( AL[ i ] ), _a( AR[ k ] ) )
				Ax2 = i_a( v2, _a( AL[ i ] ), _a( AR[ k ] ) )
				table.insert( Ah_table, format( "(%s,%s,%s,%s)", Ax1, Ax2, Ax1, Ax2 ) )
			end
		end
		if #Ah_table == 1 then
			return Ah_table[ 1 ]
		end
		return Ah_table
	end
	
	function alpha.va_to_a( alphava_or_table )
		if type( alphava_or_table ) == "function" then
			alphava_or_table = alphava_or_table( )
		end
		local alphava_or_table = alpha.from_error( alphava_or_table or text.alpha1 )
		effector.print_error( alphava_or_table, "alpha", "alpha.va_to_a", 1 )
		local alphava, alphas, i_a = alphava_or_table, { }, alpha.ipolfx
		if type( alphava_or_table ) ~= "table" then
			alphava = { alphava_or_table }
		end
		for k = 1, #alphava do
			if type( alphava[ k ] ) == "string"
				and alphava[ k ]:len( ) >= 13 then
				alphas = { }
				for c_va in alphava[ k ]:gmatch( "[%&Hh]*%x%x[%&]*" ) do
					table.insert( alphas, alpha.assF( c_va ) )
				end
				alphava[ k ] = i_a( 0.5, i_a( 0.5, alphas[ 1 ], alphas[ 4 ] ), i_a( 0.5, alphas[ 2 ], alphas[ 3 ] ) )
			elseif type( alphava[ k ] ) == "number" then
				alphava[ k ] = alpha.assF( alphava[ k ] )
			end 
		end
		if #alphava == 1 then
			return alphava[ 1 ]
		end
		return alphava
	end
	
	function alpha.a_to_va( alphaa )
		if type( alphaa ) == "function" then
			alphaa = alphaa( )
		end
		local alphaa = alpha.from_error( alphaa or text.alpha1 )
		effector.print_error( alphaa, "alpha", "alpha.a_to_va", 1 )
		return alpha.va( alphaa )
	end
	
	function alpha.interpolate( alpha1_or_table, alpha2_or_table, Index_Ipol )
		if type( alpha1_or_table ) == "function" then
			alpha1_or_table = alpha1_or_table( )
		end
		if type( alpha2_or_table ) == "function" then
			alpha2_or_table = alpha2_or_table( )
		end
		if type( Index_Ipol ) == "function" then
			Index_Ipol = Index_Ipol( )
		end
		local II = Index_Ipol or 0.5
		local alpha1_or_table = alpha.from_error( alpha1_or_table or "&HFF&" )
		local alpha2_or_table = alpha.from_error( alpha2_or_table or text.alpha1 )
		effector.print_error( alpha1_or_table, "alpha", "alpha.interpolate", 1 )
		effector.print_error( alpha2_or_table, "alpha", "alpha.interpolate", 2 )
		effector.print_error( II, "number", "alpha.interpolate", 3 )
		local Ai_table, _a, i_a = { }, alpha.va_to_a, alpha.ipolfx
		local A1, A2 = { alpha1_or_table }, { alpha2_or_table }
		if type( alpha1_or_table ) == "table" then
			A1 = alpha1_or_table
		end
		if type( alpha2_or_table ) == "table" then
			A2 = alpha2_or_table
		end
		local alpha1_va, alpha2_va
		for i = 1, #A1 do
			for k = 1, #A2 do
				alpha1_va, alpha2_va = { }, { }
				if type( A1[ i ] ) == "number" then
					A1[ i ] = alpha.val2ass( A1[ i ] )
				end
				if type( A2[ k ] ) == "number" then
					A2[ k ] = alpha.val2ass( A2[ k ] )
				end
				for c in A1[ i ]:gmatch( "%x%x" ) do
					table.insert( alpha1_va, c )
				end
				for c in A2[ k ]:gmatch( "%x%x" ) do
					table.insert( alpha2_va, c )
				end
				if #alpha1_va == 1
					or #alpha2_va == 1 then
					table.insert( Ai_table, i_a( II, _a( A1[ i ] ), _a( A2[ k ] ) ) )
				elseif #alpha1_va == 4
					and #alpha2_va == 4 then
					table.insert( Ai_table, format( "(%s,%s,%s,%s)",
							i_a( II, alpha1_va[ 1 ], alpha2_va[ 1 ] ),
							i_a( II, alpha1_va[ 2 ], alpha2_va[ 2 ] ),
							i_a( II, alpha1_va[ 3 ], alpha2_va[ 3 ] ),
							i_a( II, alpha1_va[ 4 ], alpha2_va[ 4 ] )
						)
					)--add: august 03rd 2019
				end
			end
		end
		if #Ai_table == 1 then
			return Ai_table[ 1 ]
		end
		return Ai_table
	end
	
	function alpha.delay( time_i, delay, alpha_i, alpha_f, ... )
		if type( time_i ) == "function" then
			time_i = time_i( )
		end
		if type( delay ) == "function" then
			delay = delay( )
		end
		if type( alpha_i ) == "function" then
			alpha_i = alpha_i( )
		end
		if type( alpha_f ) == "function" then
			alpha_f = alpha_f( )
		end
		local time_i = time_i or 0
		local delay = delay or 640
		local alpha_i = alpha.from_error( alpha_i or "&HFF&" )
		local alpha_f = alpha.from_error( alpha_f or text.alpha1 )
		effector.print_error( time_i, "number", "alpha.delay", 1 )
		effector.print_error( delay, "number", "alpha.delay", 2 )
		effector.print_error( alpha_i, "alpha", "alpha.delay", 3 )
		effector.print_error( alpha_f, "alpha", "alpha.delay", 4 )
		local e_concat, Tag_fx, event, ti, AD_val, index = { ... }, "", "", time_i, { }, table.disorder( 4 )
		local Ai, Af = alpha.assF( alpha_i ), alpha.assF( alpha_f )
		local Afx = {
			[ 1 ] = { Ai, Ai, Af, Ai },
			[ 2 ] = { Af, Ai, Ai, Ai },
			[ 3 ] = { Ai, Ai, Ai, Af },
			[ 4 ] = { Ai, Af, Ai, Ai },
		}
		local X = {
			[ 0 ] = { Ai, Ai, Ai, Ai },
			[ 1 ] = Afx[ index[ 1 ] ],
			[ 2 ] = Afx[ index[ 2 ] ],
			[ 3 ] = Afx[ index[ 3 ] ],
			[ 4 ] = { Af, Af, Af, Af },
		}
		for i = 1, 4 do
			if X[ 1 ][ i ] == X[ 2 ][ i ] then
				X[ 2 ][ i ] = Ai
			else
				X[ 2 ][ i ] = Af
			end
		end
		for i = 1, 4 do
			if X[ 2 ][ i ] == X[ 3 ][ i ] then
				X[ 3 ][ i ] = Ai
			else
				X[ 3 ][ i ] = Af
			end
		end
		local Ax
		if #e_concat == 0
			or e_concat == nil then
			Tag_fx = format( "\\1va(%s)\\3va(%s)\\4va(%s)",
				table.show( X[ 0 ] ), table.show( X[ 0 ] ), table.show( X[ 0 ] )
			)
			for i = 1, 4 do
				Ax = table.show( X[ i ] )
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\1va(%s)\\3va(%s)\\4va(%s))",
					ti + delay * (i - 1) / 4, ti + delay * i / 4, Ax, Ax, Ax
				)
			end
		else
			for i = 1, #e_concat do
				AD_val[ i ] = e_concat[ i ]
			end
			for i = 1, #e_concat do
				Tag_fx = Tag_fx .. format( "%s(%s)", AD_val[ i ], table.show( X[ 0 ] ) )
			end
			for i = 1, 4 do
				Ax = table.show( X[ i ] )
				event = ""
				for k = 1, #e_concat do
					event = event .. format( "%s(%s)", AD_val[ k ], Ax )
				end
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)",
					ti + delay * (i - 1) / 4, ti + delay * i / 4, event
				)
			end
		end
		return Tag_fx
	end
	
	function alpha.set( Aset_times, Aset_alphas, ... ) --... = \\1va, \\3va, \\4va, \\1a, \\3a or \\4a
		if type( Aset_times ) == "function" then
			Aset_times = Aset_times( )
		end
		if type( Aset_alphas ) == "function" then
			Aset_alphas = Aset_alphas( )
		end
		local Aset_times = Aset_times or { linefx[ ii ].start_time + linefx[ ii ].duration / 2 }
		local Aset_alphas = alpha.from_error( Aset_alphas or { "&H86&" } )
		local e_concat = { ... }
		effector.print_error( Aset_times, "table", "alpha.set", 1 )
		effector.print_error( Aset_alphas, "table", "alpha.set", 2 )
		local Aset_a = Aset_alphas
		Aset_times = table.complete( Aset_times, fx.start_time, fx.end_time )
		local iSt, iEt = table.index( Aset_times, fx.start_time ), table.index( Aset_times, fx.end_time )
		local t_t = table.duplicate( Aset_times )
		if #Aset_a >= #Aset_times - 1 then
			Aset_a[ 0 ] = Aset_a[ #Aset_times - 1 ]
		else
			Aset_a[ 0 ] = text.alpha1
		end
		local i = iSt + 1
		local Tag_fx, event, t1, t2, offset_t, c_set = "", "", 0, 1, 1, table.duplicate( Aset_a )
		for i = 0, #c_set do
			if type( c_set[ i ] ) == "table" then
				Aset_a[ i ] = c_set[ i ][ (val_i - 1) % #Aset_a[ i ] + 1 ]
			end
		end
		if #e_concat == 0 then
			Tag_fx = "\\1a" .. Aset_a[ i - 2 ]
		else
			for k = 1, #e_concat do
				if i - 2 == 0 then
					if e_concat[ k ] == "\\1a"
						or e_concat[ k ] == "\\1va" then
						Aset_a[ 0 ] = text.alpha1
						if #Aset_a >= #Aset_times - 1 then
							Aset_a[ 0 ] = Aset_a[ #Aset_times - 1 ]
						end
					elseif e_concat[ k ] == "\\3a"
						or e_concat[ k ] == "\\3va" then
						Aset_a[ 0 ] = text.alpha3
						if #Aset_a >= #Aset_times - 1 then
							Aset_a[ 0 ] = Aset_a[ #Aset_times - 1 ]
						end
					elseif e_concat[ k ] == "\\4a"
						or e_concat[ k ] == "\\4va" then
						Aset_a[ 0 ] = text.alpha4
						if #Aset_a >= #Aset_times - 1 then
							Aset_a[ 0 ] = Aset_a[ #Aset_times - 1 ]
						end
					end
				end
				Tag_fx = Tag_fx .. e_concat[ k ] .. Aset_a[ i - 2 ]
			end
		end
		for i = 1, #Aset_times do
			if type( Aset_times[ i ] ) == "table" then
				Aset_times[ i ] = Aset_times[ i ][ 1 ]
			end
		end
		if iSt + 1 ~= iEt then
			while Aset_times[ i ] < fx.end_time do
				if type( t_t[ i ] ) == "table" then
					offset_t = t_t[ i ][ 2 ]
				end
				t1 = Aset_times[ i ] - fx.start_time - frame_dur / 2
				if t1 < 0 then
					t1 = 0
				end
				t2 = t1 + offset_t
				if #e_concat == 0 then
					Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\1va%s)", t1, t2, Aset_a[ i - 1 ] )
				else
					event = ""
					for k = 1, #e_concat do
						event = event .. e_concat[ k ] .. Aset_a[ i - 1 ]
					end
					Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)", t1, t2, event )
				end
				i = i + 1
			end
		end
		return Tag_fx
	end
	
	function alpha.mask( Mode, Alpha, Mask )
		return table.mask( Alpha, Mask, Mode )
	end
	
	function alpha.movemask( Dur, Delay, Mode, Alpha, Mask )
		if type( Dur ) == "table" then
			table.insert( Dur, val_i + 1 )
		else
			Dur = { 0, Dur, val_i + 1 }
		end
		local  AmMtb = table.mask( Alpha, Mask, Mode, true )
		return AmMtb[ val_i ] .. tag.oscill( Dur, Delay, AmMtb )
	end
	
	function alpha.movemaskv( Dur, Delay, Mode, Alpha, Mask )
		if type( Dur ) == "table" then
			table.insert( Dur, val_i + 1 )
		else
			Dur = { 0, Dur, 2 }
		end
		local AmMvTB, AmMvtb = table.mask( Alpha, Mask, Mode, true ), { }
		for i = 1, 12 do
			AmMvtb[ i ] = AmMvTB[ val_i + (i - 1) * val_n ]
		end
		return AmMvtb[ 1 ] .. tag.oscill( Dur, Delay, AmMvtb )
	end
	
	function alpha.masktable( alpha_or_table, Size )
		local alpha_or_table = alpha.from_error( alpha_or_table or text.alpha1 )
		local At, tone_a, TT_amask
		local T_amask = recall.amaskt
		local Size = Size or val_n
		if val_i == 1 then
			At = alpha_or_table
			T_amask = remember( "amaskt", { } )
			tone_a, TT_amask = { }, { }
			if type( At ) ~= "table" then
				for i = 1, 2 * (Size + 1) do
					tone_a[ i ] = alpha.ra( At )
				end
				for k = 1, Size do
					T_amask[ k ] = format( "(%s,%s,%s,%s)",
						tone_a[ 2 * k - 1 ], tone_a[ 2 * k + 1 ],
						tone_a[ 2 * k - 0 ], tone_a[ 2 * k + 2 ]
					)
				end
			else
				for i = 1, #At do
					tone_a[ i ] = { }
					T_amask[ i ] = { }
					for k = 1, 2 * (Size + 1) do
						tone_a[ i ][ k ] = alpha.ra( At[ i ] )
					end
					for h = 1, Size do
						T_amask[ i ][ h ] = format( "(%s,%s,%s,%s)",
							tone_a[ i ][ 2 * h - 1 ], tone_a[ i ][ 2 * h + 1 ],
							tone_a[ i ][ 2 * h - 0 ], tone_a[ i ][ 2 * h + 2 ]
						)
					end
				end
				for i = 1, #At do
					TT_amask[ i ] = T_amask[ i ]
				end
				T_amask = TT_amask
			end
		end
		return T_amask
	end
	
	function alpha.module( alpha1_or_table, alpha2_or_table )
		return alpha.interpolate( alpha1_or_table, alpha2_or_table, module )
	end

	function alpha.module1( alpha1_or_table, alpha2_or_table )
		return alpha.interpolate( alpha1_or_table, alpha2_or_table, module1 )
	end

	function alpha.module2( alpha1_or_table, alpha2_or_table )
		return alpha.interpolate( alpha1_or_table, alpha2_or_table, module2 )
	end
	
	function alpha.moduler( alpha1_or_table, alpha2_or_table )
		return alpha.interpolate( alpha1_or_table, alpha2_or_table, moduler )
	end
	
	function alpha.ipol( ... )
		local alphas_tbl = { ... }
		if type( ... ) == "table" then
			alphas_tbl = ... 
		end
		if #alphas_tbl == 1 then
			alphas_tbl[ 2 ] = text.alpha1
		end
		local alpha_ipol = recall.a_ipol
		local max_ipol = val_n - 1
		local ipol_i, ipol_f, pct_ip
		if val_n == 1 then
			return alphas_tbl[ 1 ]
		end
		if fx.filter == "mod" then
			max_ipol = val_n
		end
		if val_i == 1 then
			alpha_ipol = remember( "a_ipol", { } )
			for i = 1, max_ipol do
				ipol_i = alphas_tbl[ floor( (i - 1) / (max_ipol / (#alphas_tbl - 1)) ) + 1 ]
				ipol_f = alphas_tbl[ floor( (i - 1) / (max_ipol / (#alphas_tbl - 1)) ) + 2 ]
				pct_ip = floor( (i - 1) % (max_ipol / (#alphas_tbl - 1)) ) / (max_ipol / (#alphas_tbl - 1))
				alpha_ipol[ i ] = alpha.interpolate( ipol_i, ipol_f, pct_ip )
			end
			alpha_ipol[ #alpha_ipol + 1 ] = alphas_tbl[ #alphas_tbl ]
		end
		if fx.filter == "mod" then
			if fx__.v_kanji == false then
				return format( "(%s,%s,%s,%s)", alpha_ipol[ val_i ], alpha_ipol[ val_i + 1 ], alpha_ipol[ val_i ], alpha_ipol[ val_i + 1 ] )
			end
			return format( "(%s,%s,%s,%s)", alpha_ipol[ val_i ], alpha_ipol[ val_i ], alpha_ipol[ val_i + 1 ], alpha_ipol[ val_i + 1 ] )
		end
		return alpha_ipol[ val_i ] --rewrite: october 11th 2018
	end --alpha.ipol( "&HFF&", "&H88&", "&H00&" )

	function alpha.loop( ... )
		local alphas_tbl = { ... }
		if type( ... ) == "table" then
			alphas_tbl = ... 
		end
		if #alphas_tbl == 1 then
			alphas_tbl[ 2 ] = text.alpha1
		end
		local alpha_loop = recall.a_loop
		local max_loop = maxj - 1
		local ipol_i, ipol_f, pct_ip
		if maxj == 1 then
			return alphas_tbl[ 1 ]
		end
		if fx.filter == "mod" then
			max_loop = maxj
		end
		if j == 1 then
			alpha_loop = remember( "a_loop", { } )
			for i = 1, max_loop do
				ipol_i = alphas_tbl[ floor( (i - 1) / (max_loop / (#alphas_tbl - 1)) ) + 1 ]
				ipol_f = alphas_tbl[ floor( (i - 1) / (max_loop / (#alphas_tbl - 1)) ) + 2 ]
				pct_ip = floor( (i - 1) % (max_loop / (#alphas_tbl - 1)) ) / (max_loop / (#alphas_tbl - 1))
				alpha_loop[ i ] = alpha.interpolate( ipol_i, ipol_f, pct_ip )
			end
			alpha_loop[ #alpha_loop + 1 ] = alphas_tbl[ #alphas_tbl ]
		end
		if fx.filter == "mod" then
			if fx__.v_kanji == false then
				return format( "(%s,%s,%s,%s)", alpha_loop[ j ], alpha_loop[ j + 1 ], alpha_loop[ j ], alpha_loop[ j + 1 ] )
			end
			return format( "(%s,%s,%s,%s)", alpha_loop[ j ], alpha_loop[ j ], alpha_loop[ j + 1 ], alpha_loop[ j + 1 ] )
		end
		return alpha_loop[ j ] --rewrite: october 11th 2018
	end --alpha.loop( "&HFF&", "&H88&", "&H00&" )

	function alpha.bigradient( Alpha_or_Table1, Alpha_or_Table2, Size_Table )
		local Alpha1 = alpha.from_error( Alpha_or_Table1 or text.alpha1 )
		local Alpha2 = alpha.from_error( Alpha_or_Table2 or text.alpha2 )
		local bigrad = table.bigradient( Alpha1, Alpha2, Size_Table )
		return bigrad[ (val_i - 1) % #bigrad + 1 ]
	end
	
	function alpha.distance( AD_center, ... )
		--AD_center = {center_x, center_y[, radius_min[, radius_max[, center_ref_x, center_ref_y]]]}
		local AD_max_dis, AD_radius_min, AD_radius_max, AD_radius_dis, AD_gradient
		local dtc_alp = recall.AC_alp
		if val_i == 1
			and j == 1 then
			AD_max_dis = {
				[ 1 ] = math.distance( AD_center[ 1 ], AD_center[ 2 ], 0, 0 ),
				[ 2 ] = math.distance( AD_center[ 1 ], AD_center[ 2 ], xres, 0 ),
				[ 3 ] = math.distance( AD_center[ 1 ], AD_center[ 2 ], 0, yres ),
				[ 4 ] = math.distance( AD_center[ 1 ], AD_center[ 2 ], xres, yres )
			}
			AD_radius_min = AD_center[ 3 ] or 0
			AD_radius_max = AD_center[ 4 ] or math.max( unpack( AD_max_dis ) )
			AD_radius_dis = AD_radius_max - AD_radius_min
			AD_gradient = table.gradient( 86, ... )
			dtc_alp = remember( "AC_alp",
				function( AdD_x, AdD_y )
					local ad_dis = math.distance( AD_center[ 1 ], AD_center[ 2 ], AdD_x, AdD_y ) - AD_radius_min
					if ceil( ad_dis ) <= 0 then
						return alpha.va_to_a( AD_gradient[ 1 ] )
					elseif ceil( ad_dis ) >= AD_radius_dis then
						return alpha.va_to_a( AD_gradient[ 86 ] )
					end
					return alpha.va_to_a( AD_gradient[ ceil( 86 * ad_dis / AD_radius_dis ) ] )
				end
			)
		end
		if AD_center[ 5 ] then
			return format( "(%s,%s,%s,%s)",
				dtc_alp( AD_center[ 5 ], AD_center[ 6 ] ), dtc_alp( AD_center[ 5 ], AD_center[ 6 ] ),
				dtc_alp( AD_center[ 5 ], AD_center[ 6 ] ), dtc_alp( AD_center[ 5 ], AD_center[ 6 ] )
			)
		end
		return format( "(%s,%s,%s,%s)",
			dtc_alp( val_left, val_top ), dtc_alp( val_right, val_top ),
			dtc_alp( val_left, val_bottom ), dtc_alp( val_right, val_bottom )
		)
	end

	function alpha.angle( AA_origin, ... )
		--AA_origin = { origin_x, origin_y[, pos_ref_x, pos_ref_y] }
		local ang_alp, AA_gradient = recall.a_ang
		if val_i == 1
			and j == 1 then
			AA_gradient = table.gradient( 86, ... )
			ang_alp = remember( "a_ang",
				function( adD_x, adD_y )
					local aa_ang = math.angle( AA_origin[ 1 ], AA_origin[ 2 ], adD_x, adD_y ) % 87
					return alpha.va_to_a( AA_gradient[ ceil( aa_ang ) ] )
				end
			)
		end 
		if AA_origin[ 3 ] then
			return format( "(%s,%s,%s,%s)",
				ang_alp( AA_origin[ 3 ], AA_origin[ 4 ] ), ang_alp( AA_origin[ 3 ], AA_origin[ 4 ] ),
				ang_alp( AA_origin[ 3 ], AA_origin[ 4 ] ), ang_alp( AA_origin[ 3 ], AA_origin[ 4 ] )
			)
		end
		return format( "(%s,%s,%s,%s)",
			ang_alp( val_left, val_top ), ang_alp( val_right, val_top ),
			ang_alp( val_left, val_bottom ), ang_alp( val_right, val_bottom )
		)
	end
	
	function alpha.from_error( alpha_or_table )
		if type( alpha_or_table ) == "string" then
			alpha_or_table = alpha_or_table:gsub( "[%#%&Hh]*(%x%x)[%&]*",
				function( ASS_alpha )
					return format( "&H%s&", ASS_alpha )
				end
			)
		elseif type( alpha_or_table ) == "table" then
			for k, valor in pairs( alpha_or_table ) do
				if type( valor ) == "string" then
					alpha_or_table[ k ] = valor:gsub( "[%#%&Hh]*(%x%x)[%&]*",
						function( ASS_alpha )
							return format( "&H%s&", ASS_alpha )
						end
					)
				end
			end
		end
		return alpha_or_table
	end
	
	function alpha.fromstyle( ColorAlpha )
		--alpha from style
		if type( ColorAlpha ) == "function" then
			ColorAlpha = ColorAlpha( )
		end
		effector.print_error( ColorAlpha, "alpha", "alpha.fromstyle", 1 )
		local toAlpha = ""
		if ColorAlpha:match( "%x%x%x%x%x%x%x%x" ) then
			toAlpha = "&H" .. ColorAlpha:match( "(%x%x)%x%x%x%x%x%x" ) .. "&"
		elseif ColorAlpha:match( "%x%x" ) then
			toAlpha = ColorAlpha
		end
		return toAlpha --august 04th 2019
	end --alpha.fromstyle( line.styleref.color1 )
	
	function alpha.val2ass( val_A )
		--ass_alpha
		if type( val_A ) == "function" then
			val_A = val_A( )
		end
		local val_A = val_A or 255
		if tonumber( val_A ) then
			val_A = tonumber( val_A )
		end
		effector.print_error( val_A, "number", "alpha.val2ass", 1 )
		local val_A = math.clamp( val_A, 0, 255 )
		local alpha_A = math.to16( math.round( val_A ) )
		if alpha_A:len( ) == 1 then
			alpha_A = "0" .. alpha_A
		end
		return "&H" .. alpha_A .. "&" --august 04th 2019
	end --alpha.val2ass( 86 )
	
	function alpha.ipolfx( Ipol, Alpha1, Alpha2 )
		--interpolate_alpha
		if type( Ipol ) == "function" then
			Ipol = Ipol( )
		end
		if type( Alpha1 ) == "function" then
			Alpha1 = Alpha1( )
		end
		if type( Alpha2 ) == "function" then
			Alpha2 = Alpha2( )
		end
		local Ipol = Ipol or 0.5
		local Alpha1 = Alpha1 or text.alpha1
		local Alpha2 = Alpha2 or text.alpha2
		effector.print_error( Ipol, "number", "alpha.ipolfx", 1 )
		effector.print_error( Alpha1, "alpha", "alpha.ipolfx", 2 )
		effector.print_error( Alpha2, "alpha", "alpha.ipolfx", 3 )
		if tonumber( Alpha1 ) then
			Alpha1 = tonumber( Alpha1 )
		end
		if tonumber( Alpha2 ) then
			Alpha2 = tonumber( Alpha2 )
		end
		local alpha_i, alpha_f = 0, 255
		if type( Alpha1 ) == "string"
			and Alpha1:match( "%x%x%x%x%x%x%x%x" ) then
			Alpha1 = Alpha1:match( "(%x%x)%x%x%x%x%x%x" )
		end
		if type( Alpha1 ) == "string" then
			alpha_i = tonumber( Alpha1:match( "(%x%x)" ), 16 )
		end
		if type( Alpha1 ) == "number" then
			alpha_i = math.clamp( Alpha1, 0, 255 )
		end
		if type( Alpha2 ) == "string"
			and Alpha2:match( "%x%x%x%x%x%x%x%x" ) then
			Alpha2 = Alpha2:match( "(%x%x)%x%x%x%x%x%x" )
		end
		if type( Alpha2 ) == "string" then
			alpha_f = tonumber( Alpha2:match( "(%x%x)" ), 16 )
		end
		if type( Alpha2 ) == "number" then
			alpha_f = math.clamp( Alpha2, 0, 255 )
		end
		Ipol = math.clamp( Ipol ) --august 04th 2019
		return alpha.val2ass( math.round( alpha_i + (alpha_f - alpha_i) * Ipol ) )
	end --alpha.ipolfx( 0.5, "&HFF&", 55 )
	-- [%#%&Hh]^* <-- son opcionales, pero mínimo debe haber una de ellas :)
	
	--------------------------------------------------------------------------------------------------
	--Librería de las Funciones shapes ---------------------------------------------------------------
	function shape.ASSDraw3( Shape, Round )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Round ) == "function" then
			Round = Round( )
		end
		local Round = Round or 2 -- cifras decimales a redondear los números en la shape
		if fx.filter == "mod" then
			Round = 0
		end -- cifras redondeadas si se elije el VSFilterMod
		effector.print_error( Shape, "shape", "shape.ASSDraw3", 1 )
		effector.print_error( Round, "number", "shape.ASSDraw3", 2 )
		local Shape = Shape or "m 0 0 l 0 100 l 100 100 l 100 0 l 0 0 "
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.ASSDraw3( Shape[ i ], Round )
			end --recursividad: september 08th 2019
		else
			local segments, coor2 = { }, { }
			Shape = Shape:gsub( "  ", " " ) -- elimina los espacios múltiples
			Shape = Shape:gsub( "%S+",
				function( num )
					return format( "%s", math.round( tonumber( num ) or num, Round ) )
				end
			) --redondea los valores numéricos de la shape
			Shape = Shape:gsub( " c", "" ):gsub( "%b{}", "" )
			if Shape:match( "%i?clip%b()" ) then
				if Shape:match( "%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d]*" ) then
					local cx1, cy1, cx2, cy2 = Shape:match( "(%-?%d+[%.%d ]*)%,[ ]*(%-?%d+[%.%d ]*)%,[ ]*(%-?%d+[%.%d ]*)%,[ ]*(%-?%d+[%.%d]*)" )
					Shape = format( "m %s %s l %s %s l %s %s l %s %s ", cx1, cy1, cx1, cy2, cx2, cy2, cx2, cy1 )
				elseif Shape:match( "m %-?%d+[%.%d]* %-?%d+[%.%-%dmlb ]*" ) then
					Shape = Shape:match( "m %-?%d+[%.%d]* %-?%d+[%.%-%dmlb ]*" )
				end
			end
			for c in Shape:gmatch( "[mlb]^* %-?%d+[%.%d]* [%-%.%d ]*" ) do
				table.insert( segments, c )
			end
			for k = 1, #segments do
				coor2[ k ] = { }
				for c6 in segments[ k ]:gmatch( "%S+" ) do
					--captura: signos, números, letras y puntos
					table.insert( coor2[ k ], format( "%s ", c6 ) )
				end
			end
			for k = 1, #coor2 do
				if coor2[ k ][ 1 ] == "b "
					and #coor2[ k ] > 7 then
					coor3 = { }
					table.remove( coor2[ k ], 1 )
					for i = 1, #coor2[ k ] / 6 do
						coor3[ i ] = { }
						for h = 1, 6 do
							table.insert( coor3[ i ], coor2[ k ][ 6 * (i - 1) + h ] )
						end
						coor3[ i ] = format( "b %s", table.op( coor3[ i ], "concat" ) )
					end
					coor2[ k ] = table.op( coor3, "concat" )
				elseif coor2[ k ][ 1 ] == "l "
					and #coor2[ k ] > 3 then
					coor4 = { }
					table.remove( coor2[ k ], 1 )
					for i = 1, #coor2[ k ] / 2 do
						coor4[ i ] = { }
						for h = 1, 2 do
							table.insert( coor4[ i ], coor2[ k ][ 2 * (i - 1) + h ] )
						end
						coor4[ i ] = format( "l %s", table.op( coor4[ i ], "concat" ) )
					end
					coor2[ k ] = table.op( coor4, "concat" )
				else
					coor2[ k ] = table.op( coor2[ k ], "concat" )
				end
			end
			Shape = table.op( coor2, "concat" )
		end
		return Shape
	end
	
	function shape.round( Shape, Round )
		--redondea los valores de la Shape a las cifras decimales indicadas o al entero más cercano
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Round ) == "function" then
			Round = Round( )
		end
		local Shape = shape.ASSDraw3( Shape )
		local Round = Round or 0
		effector.print_error( Shape, "shape",  "shape.round", 1 )
		effector.print_error( Round, "number", "shape.round", 2 )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.round( Shape[ i ], Round )
			end
		else --recursividad: september 08th 2019
			Shape = Shape:gsub( "%-?%d+[%.%d]*",
				function( num )
					return math.round( tonumber( num ), Round )
				end
			)
		end
		return Shape
	end --shape.round( { "m 0.8 9 l 0 0 ", "m 5 6.2 l 8 8 " } )
	
	function shape.info( Shape )
		--genera variables con la información notable de la Shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.info", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local shape_coor, shape_x, shape_y = { }, { }, { }
		for coor in Shape:gmatch( "%-?%d+[%.%d]*" ) do
			table.insert( shape_coor, tonumber( coor ) )
		end
		for i = 1, #shape_coor / 2 do
			shape_x[ i ] = shape_coor[ 2 * i - 1 ]
			shape_y[ i ] = shape_coor[ 2 * i - 0 ]
		end
		-- Shape Data -------------------
		shape_x2 = table.duplicate( shape_x )	--> la tabla de las coordenadas en "x"
		shape_y2 = table.duplicate( shape_y )	--> la tabla de las coordenadas en "y"
		minx = table.op( shape_x, "min" )		--> la menor de las coordenadas en "x"
		maxx = table.op( shape_x, "max" )		--> la mayor de las coordenadas en "x"
		miny = table.op( shape_y, "min" )		--> la menor de las coordenadas en "y"
		maxy = table.op( shape_y, "max" )		--> la mayor de las coordenadas en "y"
		w_shape = maxx - minx					--> (width) ancho total en pixeles de la shape
		h_shape = maxy - miny					--> (height) alto total en pixeles de la shape
		c_shape = minx + w_shape / 2			--> (center) coordenada en "x" del centro de la shape
		m_shape = miny + h_shape / 2			--> (middle) coordenada en "y" del centro de la shape
		n_points = #shape_x						--> (points) cantidad de puntos de la shape
		---------------------------------
	end

	function shape.redraw( Shape, tract, Section )
		--redibuja la Shape de forma que cada parte que la conforme
		--"line" o "bezier" sea seccionada en partes iguales (tract)
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( tract ) == "function" then
			tract = tract( )
		end
		local tract = tract or 2
		effector.print_error( Shape, "shape", "shape.redraw", 1 )
		effector.print_error( tract, "number", "shape.redraw", 2 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.redraw( Shape[ i ], tract, Section )
			end
		else --recursividad: september 08th 2019
			local shape_parts, shape_sgm, shape_redraw = { }, { }, { }
			local shape_new = recall.shprd
			local length, angle_, n, N
			local Section = Section or "all"
			if j == 1 then
				shape_new = ""
				for c in Shape:gmatch( "[mlb]^* %-?%d+[%.%d]* [%-%.%d ]*" ) do
					table.insert( shape_parts, c )
				end
				for i = 1, #shape_parts do
					shape_sgm[ i ] = { }
					for c in shape_parts[ i ]:gmatch( "%S+" ) do
						table.insert( shape_sgm[ i ], tonumber( c ) or c )
					end
				end
				for i = 1, #shape_sgm do
					shape_redraw[ i ] = { }
					if shape_sgm[ i ][ 1 ] == "m" then
						shape_redraw[ i ] = shape_sgm[ i ]
					elseif shape_sgm[ i ][ 1 ] == "l" then
						if Section ~= "bezier" then
							n = #shape_sgm[ i - 1 ]
							length = math.distance( shape_sgm[ i - 1 ][ n - 1 ], shape_sgm[ i - 1 ][ n ], shape_sgm[ i ][ 2 ], shape_sgm[ i ][ 3 ] )
							angle_ = math.angle( shape_sgm[ i - 1 ][ n - 1 ], shape_sgm[ i - 1 ][ n ], shape_sgm[ i ][ 2 ], shape_sgm[ i ][ 3 ] )
							N = ceil( length / tract )
							shape_redraw[ i ][ -1 ] = shape_sgm[ i - 1 ][ n - 1 ]
							shape_redraw[ i ][ 0 ]  = shape_sgm[ i - 1 ][ n ]
							for k = 1, N do
								local Px = shape_sgm[ i - 1 ][ n - 1 ] + math.polar( angle_, length * k / N, "x" )
								local Py = shape_sgm[ i - 1 ][ n - 0 ] + math.polar( angle_, length * k / N, "y" )
								shape_redraw[ i ][ k ] = format( "%s %s", Px, Py )
							end
							table.insert( shape_redraw[ i ], 1, "l" )
						else
							shape_redraw[ i ] = shape_sgm[ i ]
						end
					elseif shape_sgm[ i ][ 1 ] == "b" then
						if Section ~= "line" then
							n = #shape_sgm[ i - 1 ]
							local Bx = { shape_sgm[ i - 1 ][ n - 1 ], shape_sgm[ i ][ 2 ], shape_sgm[ i ][ 4 ], shape_sgm[ i ][ 6 ] }
							local By = { shape_sgm[ i - 1 ][ n - 0 ], shape_sgm[ i ][ 3 ], shape_sgm[ i ][ 5 ], shape_sgm[ i ][ 7 ] }
							length = math.length_bezier( shape_sgm[ i - 1 ][ n - 1 ],  shape_sgm[ i - 1 ][ n ], shape_sgm[ i ][ 2 ], 
								shape_sgm[ i ][ 3 ], shape_sgm[ i ][ 4 ], shape_sgm[ i ][ 5 ], shape_sgm[ i ][ 6 ], shape_sgm[ i ][ 7 ] )
							N = ceil( length / tract )
							for k = 1, N do
								local Px, Py = math.confi_bezier( 4, Bx, By, k / N )
								shape_redraw[ i ][ k ] = format( "%s %s", Px, Py )
							end
							table.insert( shape_redraw[ i ], 1, "l" )
						else
							shape_redraw[ i ] = shape_sgm[ i ]
						end
					end
				end
				for i = 1, #shape_redraw do
					for k = 1, #shape_redraw[ i ] do
						shape_new = shape_new .. shape_redraw[ i ][ k ] .. " "
					end
				end
				Shape = remember( "shprd", shape.ASSDraw3( shape_new ) )
			end
		end
		return Shape --shape.redraw( { shape.circle, shape.rectangle }, 3 )
	end --shape.redraw( shape.circle, 3 )

	function shape.modify( Shape, modify )
		--le aplica un "filtro" (función) a los valores numéricos de la Shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local modify = modify or function( x, y )
			return x, y
		end
		effector.print_error( Shape, "shape", "shape.modify", 1 )
		effector.print_error( modify, "function", "shape.modify", 2 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.modify( Shape[ i ], modify )
			end
		else --recursividad: september 08th 2019
			shape.info( Shape )
			Pk = 0
			Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
				function( x, y )
					Cx = c_shape						-- coordenada "x" del centro de la shape
					Cy = m_shape						-- coordenada "y" del centro de la shape
					Do = math.distance( x, y )			-- distancia del punto al origen
					Dc = math.distance( Cx, Cy, x, y )	-- distancia del punto al centro de la shape
					Ao = math.angle( x, y )				-- ángulo del origen al punto
					Ac = math.angle( Cx, Cy, x, y )		-- ángulo del centro al punto
					Pn = n_points						-- cantidad total de puntos en la shape
					Pk = Pk + 1							-- contador de los puntos de la shape
					Mx = (y - miny ) / h_shape			-- módulo de varianza respecto a "x", Mx = [0, 1]
					My = (x - minx ) / w_shape			-- módulo de varianza respecto a "y", My = [0, 1]
					Mp = (Pk - 1) / (Pn - 1)			-- módulo de varianza respecto a los puntos, Mp = [0, 1]
					local mod_x, mod_y = modify( x, y )
					if mod_y then
						return format( "%s %s", modify( x, y ) )
					end
					return modify( x, y )
				end
			)
			Shape = shape.ASSDraw3( Shape )
		end --shape.modify( { shape.circle, shape.rectangle }, function( x, y ) x = 1.5 * x + w_shape return x, y end )[ j ]
		return Shape
	end --shape.modify( shape.circle, function( x, y ) x = 1.5 * x + w_shape return x, y end )

	function shape.filter( Shape, Filter )
		--le aplica un "filtro" (función) a los valores numéricos de la Shape
		--requiere "Yutils.lua"
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Filter = Filter or function( x, y )
			return x, y
		end
		effector.print_error( Shape, "shape", "shape.filter", 1 )
		effector.print_error( Filter, "function", "shape.filter", 2 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.filter( Shape[ i ], Filter )
			end
		else --recursividad: september 08th 2019
			shape.info( Shape )
			Pk = 0
			Shape = Yutils.shape.filter( Shape,
				function( x, y )
					Cx = c_shape						-- coordenada "x" del centro de la shape
					Cy = m_shape						-- coordenada "y" del centro de la shape
					Do = math.distance( x, y )			-- distancia del punto al origen
					Dc = math.distance( Cx, Cy, x, y )	-- distancia del punto al centro de la shape
					Ao = math.angle( x, y )				-- ángulo del origen al punto
					Ac = math.angle( Cx, Cy, x, y )		-- ángulo del centro al punto
					Pn = n_points						-- cantidad total de puntos en la shape
					Pk = Pk + 1							-- contador de los puntos de la shape
					Mx = (y - miny ) / h_shape			-- módulo de varianza respecto a "x", Mx = [0, 1]
					My = (x - minx ) / w_shape			-- módulo de varianza respecto a "y", My = [0, 1]
					Mp = (Pk - 1) / (Pn - 1)			-- módulo de varianza respecto a los puntos, Mp = [0, 1]
					return Filter( x, y )
				end
			)
			Shape = shape.ASSDraw3( Shape )
		end
		return Shape
	end
	
	function shape.filter2( Shape, Filter, Split )
		--require "Yutils.lua"
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Split ) == "function" then
			Split = Split( )
		end
		local Split = Split or 2 * ratio
		local Filter = Filter or function( x, y )
			return x, y
		end
		effector.print_error( Shape, "shape", "shape.filter2", 1 )
		effector.print_error( Filter, "function", "shape.filter2", 2 )
		effector.print_error( Split, "number", "shape.filter2", 3 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.filter2( Shape[ i ], Filter, Split )
			end
		else --recursividad: september 09th 2019
			Shape = Yutils.shape.split( Shape, Split )
			Shape = Yutils.shape.flatten( Shape, Split )
			shape.info( Shape )
			Pk = 0
			Shape = Yutils.shape.filter( Shape,
				function( x, y )
					Cx = c_shape						-- coordenada "x" del centro de la shape
					Cy = m_shape						-- coordenada "y" del centro de la shape
					Do = math.distance( x, y )			-- distancia del punto al origen
					Dc = math.distance( Cx, Cy, x, y )	-- distancia del punto al centro de la shape
					Ao = math.angle( x, y )				-- ángulo del origen al punto
					Ac = math.angle( Cx, Cy, x, y )		-- ángulo del centro al punto
					Pn = n_points						-- cantidad total de puntos en la shape
					Pk = Pk + 1							-- contador de los puntos de la shape
					Mx = (y - miny ) / h_shape			-- módulo de varianza respecto a "x", Mx = [0, 1]
					My = (x - minx ) / w_shape			-- módulo de varianza respecto a "y", My = [0, 1]
					Mp = (Pk - 1) / (Pn - 1)			-- módulo de varianza respecto a los puntos, Mp = [0, 1]
					return Filter( x, y )
				end
			)
		end
		Shape = shape.ASSDraw3( Shape )
		return Shape
	end --shape.filter2( shape.circle, function( x, y ) x = x + Rcs( 4 ) y = y + Rcs( 4 ) return x, y end, 5 )
	
	function shape.filter3( Shape, Split, ... )
		--require "Yutils.lua"
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Split ) == "function" then
			Split = Split( )
		end
		effector.print_error( Shape, "shape", "shape.filter3", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local filters = { ... }
		if type( ... ) == "table" then
			filters = ...
		end
		if #filters == 0 then
			filters[ 1 ] = function( x, y )
				return x, y
			end
		end
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.filter3( Shape[ i ], Split, ... )
			end
		else --recursividad: september 08th 2019
			if Split
				and Split ~= 0 then
				local Split3 = abs( Split )
				effector.print_error( Split3, "number", "shape.filter3", 2 )
				Shape = Yutils.shape.split( Shape, Split3 )
				Shape = Yutils.shape.flatten( Shape, Split3 )
			end
			shape.info( Shape )
			for i = 1, #filters do
				if type( filters[ i ] ) == "table"
					or type( filters[ i ] ) == "string" then
					local do_shapefx, mode_fx = nil, nil
					if type( filters[ i ] ) == "table" then
						do_shapefx, mode_fx = filters[ i ][ 1 ], filters[ i ][ 2 ]
					else
						do_shapefx, mode_fx = filters[ i ], nil
					end
					Shape = shape.do_shape( Shape, do_shapefx, mode_fx )
					--add: june 24th 2019
				else
					if type( filters[ i ] ) ~= "function" then
						filters[ i ] = function( x, y )
							return x, y
						end
					end
					Pk = 0
					Shape = Yutils.shape.filter( Shape,
						function( x, y )
							Cx = c_shape						-- coordenada "x" del centro de la shape
							Cy = m_shape						-- coordenada "y" del centro de la shape
							Do = math.distance( x, y )			-- distancia del punto al origen
							Dc = math.distance( Cx, Cy, x, y )	-- distancia del punto al centro de la shape
							Ao = math.angle( x, y )				-- ángulo del origen al punto
							Ac = math.angle( Cx, Cy, x, y )		-- ángulo del centro al punto
							Pn = n_points						-- cantidad total de puntos en la shape
							Pk = Pk + 1							-- contador de los puntos de la shape
							Mx = (y - miny ) / h_shape			-- módulo de varianza respecto a "x", Mx = [0, 1]
							My = (x - minx ) / w_shape			-- módulo de varianza respecto a "y", My = [0, 1]
							Mp = (Pk - 1) / (Pn - 1)			-- módulo de varianza respecto a los puntos, Mp = [0, 1]
							return filters[ i ]( x, y )
						end
					)
				end
				shape.info( Shape )
			end
		end
		Shape = shape.ASSDraw3( Shape )
		return Shape
	end
	
	function shape.length( Shape, parts )
		--retorna la longitud de la Shape ingresada o una tabla
		--con los valores de cada una de las secciones de la Shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.length", 1 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.length( Shape[ i ], parts )
			end
		else --recursividad: september 08th 2019
			local shape_parts, shape_segments, shape_length = { }, { }, 0
			for c in Shape:gmatch( "%S+" ) do
				table.insert( shape_parts, c )
			end
			for k = 1, #shape_parts do
				local segments, n = { }, 0
				if shape_parts[ k ] == "l"
					or shape_parts[ k ] == "b" then
					n = ( shape_parts[ k ] == "l" ) and 5 or 9
					for i = 1, n do
						segments[ i ] = tonumber( shape_parts[ k - 3 + i ] )
					end
					table.remove( segments, 3 )
					table.insert( shape_segments, segments )
				end
			end
			if parts then
				return shape_segments
			end
			for i = 1, #shape_segments do
				shape_length = shape_length + math.length_bezier( shape_segments[ i ] )
			end
			Shape = shape_length
		end --shape.length( { shape.circle, shape.rectangle } )
		return Shape
		--return shape_length
	end --shape.length( shape.circle )
	
	function shape.width( Shape, Height )
		--retorna el ancho de la Shape ingresada
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.width", 1 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.width( Shape[ i ], Height )
			end
		else --recursividad: september 08th 2019
			local shape_parts, shape_px, shape_py = { }, { }, { }
			for c in Shape:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( shape_parts, tonumber( c ) )
			end
			for i = 1, #shape_parts / 2 do
				shape_px[ i ] = shape_parts[ 2 * i - 1 ]
				shape_py[ i ] = shape_parts[ 2 * i - 0 ]
			end
			local shape_width, shape_height = 0, 0
			if #shape_parts > 0 then
				shape_width  = table.op( shape_px, "rank" )
				shape_height = table.op( shape_py, "rank" )
			end
			if Height == "height" then
				return shape_height
			end
			Shape = shape_width
		end --shape.width( { shape.circle, shape.rectangle } )
		return Shape
		--return shape_width
	end
	
	function shape.height( Shape )
		--retorna el alto de la Shape ingresada
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.height", 1 )
		return shape.width( Shape, "height" )
	end
	
	function shape.from_clip( )
		--convierte el i?clip de las líneas kara en una shape
		local Shape = ""
		fxgroup = nil
		lines_comment = false
		if linefx[ ii ].text:match( "\\i?clip%b()" ) then
			fxgroup = true
			lines_comment = false
			Shape = linefx[ ii ].text:match( "\\i?clip%b()" )
			return format( "{\\an7\\pos(0,0)\\p1}%s", shape.ASSDraw3( Shape ) )
		end
	end

	function shape.rotate( Shape, Angle, org_x, org_y )	-- in z axis
		--rota la Shape respecto al eje "z" con un punto de origen predeterminado
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Angle ) == "function" then
			Angle = Angle( )
		end
		if type( org_x ) == "function" then
			org_x = org_x( )
		end
		if type( org_y ) == "function" then
			org_y = org_y( )
		end
		effector.print_error( Shape, "shape", "shape.rotate", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local Ang = Angle or 0
		local cx = org_x or 0
		local cy = org_y or 0
		effector.print_error( Ang, "number", "shape.rotate", 2 )
		effector.print_error( cx, "numberstring", "shape.rotate", 3 )
		effector.print_error( cy, "number", "shape.rotate", 4 )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.rotate( Shape[ i ], Angle, org_x, org_y )
			end
		else --recursividad: september 08th 2019
			if cx == "center" then
				shape.info( Shape )
				cx = c_shape
				cy = m_shape
			end
			Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
				function( x, y )
					local new_ang = math.angle( cx, cy, x, y )
					local new_rad = math.distance( cx, cy, x, y )
					x = cx + math.polar( new_ang + Ang, new_rad, "x" )
					y = cy + math.polar( new_ang + Ang, new_rad, "y" )
					return format( "%s %s", x, y )
				end
			)
			Shape = shape.ASSDraw3( Shape )
		end --shape.rotate( { shape.rectangle, shape.trebol }, -45 )
		return Shape
	end
	
	function shape.reflect( Shape, Axis, Relative )
		--hace un reflejo de la Shape respecto a alguno de los 2 ejes, o a la recta y = x
		--o respecto a las rectas x = Relative o y = Relative
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Relative ) == "function" then
			Relative = Relative( )
		end
		effector.print_error( Shape, "shape",  "shape.reflect", 1 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.reflect( Shape[ i ], Axis, Relative )
			end
		else --recursividad: september 08th 2019
			local Reltv = Relative or 0
			effector.print_error( Reltv, "number", "shape.reflect", 3 )
			Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
				function( x, y )
					if Axis == "x" then
						y = Reltv - y
					elseif Axis == "y"
						or Axis == nil then
						x = Reltv - x
					else
						x = -Reltv - x
						y = -Reltv - y
					end
					return format( "%s %s", x, y )
				end
			)
			Shape = shape.ASSDraw3( Shape )
		end
		return Shape
	end
	
	function shape.oblique( Shape, Pixel, Axis )
		--le aplica un fx tipo "cursiva" a la Shape ingresada
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Pixel ) == "function" then
			Pixel = Pixel( )
		end
		effector.print_error( Shape, "shape", "shape.oblique", 1 )
		effector.print_error( Pixel, "numbertable", "shape.oblique", 2 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.oblique( Shape[ i ], Pixel, Axis )
			end
		else --recursividad: september 08th 2019
			shape.info( Shape )
			local pxl1, pxl2 = Pixel, 0
			if type( Pixel ) == "table" then
				pxl1 = Pixel[ 1 ]
				pxl2 = Pixel[ 2 ] or 0
			end
			Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
				function( x, y )
					if Axis == "x"
						or Axis == nil then
						x = x + pxl1 * (y - miny) / h_shape
					elseif Axis == "y" then
						y = y + pxl1 * (x - minx) / w_shape
					else
						x = x + pxl1 * (y - miny) / h_shape
						y = y + pxl2 * (x - minx) / w_shape
					end
					return format( "%s %s", x, y )
				end
			)
			Shape = shape.ASSDraw3( Shape )
		end
		return Shape
	end

	function shape.to_bezier( Shape )
		--convierte las secciones "line" de la Shape, en "bezier"
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.to_bezier", 1 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.to_bezier( Shape[ i ] )
			end
		else --recursividad: september 08th 2019
			for i = 1, 2 do
				Shape = Shape:gsub( "(%-?%d+[%.%d]* %-?%d+[%.%d]* l %-?%d+[%.%d]* %-?%d+[%.%d]*)",
					function( seg_line )
						local coor = { }
						for c in seg_line:gmatch( "%-?%d+[%.%d]*" ) do
							table.insert( coor, c )
						end
						local x1, y1, x4, y4 = coor[ 1 ], coor[ 2 ], coor[ 3 ], coor[ 4 ]
						local Ang = math.angle( x1, y1, x4, y4 )
						local Rad = math.distance( x1, y1, x4, y4 )
						local x2, x3 = x1 + math.polar( Ang, (1 / 3) * Rad, "x" ), x1 + math.polar( Ang, (2 / 3) * Rad, "x" )
						local y2, y3 = y1 + math.polar( Ang, (1 / 3) * Rad, "y" ), y1 + math.polar( Ang, (2 / 3) * Rad, "y" )
						return format( "%s %s b %s %s %s %s %s %s", x1, y1, x2, y2, x3, y3, x4, y4 )
					end
				)
			end
			Shape = shape.ASSDraw3( Shape )
		end
		return Shape
	end --shape.to_bezier( shape.rectangle )
	
	function shape.reverse( Shape )
		--revierte el sentido en que fue dibujada la Shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.reverse", 1 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.reverse( Shape[ i ] )
			end
		else --recursividad: september 08th 2019
			local shape1, shape2, shape3 = { }, { }, { }
			local index, shape_x, shape_y, shape_inv = { }, { }, { }, ""
			for c in Shape:gmatch( "%S+" ) do
				table.insert( shape1, c )
				table.insert( shape2, c )
			end
			shape1, shape2 = table.reverse( shape1 ), table.reverse( shape2 )
			for k = 1, #shape1 do
				if shape1[ k ] == "m"
					or shape1[ k ] == "l"
					or shape1[ k ] == "b" then
					table.insert( index, k )
				end
			end
			for k = 1, #shape1 do
				if shape1[ k ] == "m"
					or shape1[ k ] == "l"
					or shape1[ k ] == "b" then
					table.remove( shape1, k )
				end
			end
			for k = 1, #shape1 / 2 do
				shape_x[ k ] = tonumber( shape1[ 2 * k - 0 ] )
				shape_y[ k ] = tonumber( shape1[ 2 * k - 1 ] )
			end
			for k = 1, #shape1 do
				if k % 2 == 1 then
					shape3[ k ] = shape_x[ (k + 1) / 2 ]
				else
					shape3[ k ] = shape_y[ (k + 0) / 2 ]
				end
			end
			for k = 1, #index do
				if shape2[ index[ k ] ] ~= "b" then
					table.insert( shape3, index[ k ], shape2[ index[ k ] ] )
				else
					table.insert( shape3, index[ k ] - 4, shape2[ index[ k ] ] )
				end
			end
			for k = 1, #shape3 do
				shape_inv = shape_inv .. shape3[ k ] .. " "
			end
			shape_inv = shape_inv:sub( 1, -3 )
			shape_inv = "m " .. shape_inv
			Shape = shape.ASSDraw3( shape_inv )
		end
		return Shape
	end

	function shape.origin( Shape )
		--posiciona a la Shape en su ubicación por default (cuadrante IV del AssDraw3)
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.origin", 1 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.origin( Shape[ i ] )
			end
		else --recursividad: september 08th 2019
			shape.info( Shape )
			Shape = shape.ASSDraw3( shape.displace( Shape, -minx, -miny ) )
		end
		return Shape
	end
	
	function shape.displace( Shape, Dx, Dy )
		--desplaza la Shape a las coordenadas seleccionadas
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Dx ) == "function" then
			Dx = Dx( )
		end
		if type( Dy ) == "function" then
			Dy = Dy( )
		end
		effector.print_error( Shape, "shape", "shape.displace", 1 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.displace( Shape[ i ], Dx, Dy )
			end
		else --recursividad: september 08th 2019
			local Dx = Dx or 0
			local Dy = Dy or 0
			effector.print_error( Dx, "number", "shape.displace", 2 )
			effector.print_error( Dy, "number", "shape.displace", 3 )
			Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)", 
				function( x, y )
					return format( "%s %s", x + Dx, y + Dy )
				end
			)
			Shape = shape.ASSDraw3( Shape )
		end
		return Shape
	end --shape.displace( shape.circle, 20, 10 )
	
	function shape.incenter( Shape )
		--Desplaza la Shape respecto a su centro, al punto P = (0, 0)
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.incenter", 1 )
		local Shape = shape.origin( Shape )
		Shape = shape.displace( Shape, -shape.width( Shape ) / 2, -shape.height( Shape ) / 2)
		return shape.ASSDraw3( Shape )
	end
	
	function shape.centerpos( Shape, CenterX, CenterY )
		--Desplaza la Shape respecto a su centro, al punto P = ( CenterX, CenterY )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( CenterX ) == "function" then
			CenterX = CenterX( )
		end
		if type( CenterY ) == "function" then
			CenterY = CenterY( )
		end
		effector.print_error( Shape, "shape", "shape.centerpos", 1 )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.centerpos( Shape[ i ], CenterX, CenterY )
			end
		else --recursividad: september 08th 2019
			local CenterX = CenterX or 0
			local CenterY = CenterY or 0
			effector.print_error( CenterX, "number", "shape.centerpos", 2 )
			effector.print_error( CenterY, "number", "shape.centerpos", 3 )
			local Shape = shape.displace( shape.incenter( Shape ), CenterX, CenterY )
		end
		return Shape
	end
	
	function shape.firstpos( Shape, pos_x, pos_y )
		--Desplaza la Shape respecto a su primer punto, al punto P = ( pos_x, pos_y )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( pos_x ) == "function" then
			pos_x = pos_x( )
		end
		if type( pos_y ) == "function" then
			pos_y = pos_y( )
		end
		effector.print_error( Shape, "shape", "shape.firstpos", 1 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.firstpos( Shape[ i ], pos_x, pos_y )
			end
		else --recursividad: september 08th 2019
			local first_x = pos_x or 0
			local first_y = pos_y or 0
			effector.print_error( first_x, "number", "shape.firstpos", 2 )
			effector.print_error( first_y, "number", "shape.firstpos", 3 )
			local first_p = { }
			if Shape:match( "m %-?%d+[%.%d]* %-?%d+[%.%d]* " ) then
				first_p.x = Shape:match( "m (%-?%d+[%.%d]*) %-?%d+[%.%d]* " )
				first_p.y = Shape:match( "m %-?%d+[%.%d]* (%-?%d+[%.%d]*) " )
			end
			Shape = shape.displace( Shape, first_x - first_p.x, first_y - first_p.y )
		end
		return Shape
	end
	
	function shape.ratio( Shape, Ratiox, Ratioy, Mode )
		--modifica el tamaño de la Shape respecto a una proporción (Ratio)
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Ratiox ) == "function" then
			Ratiox = Ratiox( )
		end
		if type( Ratioy ) == "function" then
			Ratioy = Ratioy( )
		end
		if type( Mode ) == "function" then
			Mode = Mode( )
		end --add: january 05th 2019
		local Mode = Mode or 0
		effector.print_error( Shape, "shape", "shape.ratio", 1 )
		effector.print_error( Mode, "number", "shape.ratio", 4 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.ratio( Shape[ i ], Ratiox, Ratioy, Mode )
			end
		else --recursividad: september 08th 2019
			shape.info( Shape )
			-------------------------------------
			--valores notables de la Shape
			local shpx1, shpx2 = minx, maxx
			local shpy1, shpy2 = miny, maxy
			local shp_w, shp_h = w_shape, h_shape
			-- january 05th 2019 ----------------
			local Rx, Ry
			if Ratiox then
				Rx = Ratiox
				if type( Ratiox ) == "table" then
					Rx = Ratiox[ 1 ] / shape.width( Shape )
				end
			else
				Rx = 1
			end
			if Ratioy then
				Ry = Ratioy
				if type( Ratioy ) == "table" then
					Ry = Ratioy[ 1 ] / shape.height( Shape )
					if Ratiox == nil then
						Rx = Ry
					end
				end
			else
				Ry = Rx
			end
			effector.print_error( Rx, "numbertable", "shape.ratio", 2 )
			effector.print_error( Ry, "numbertable", "shape.ratio", 3 )
			Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)", 
				function( x, y )
					--Mode = 0, respecto al punto (0, 0)
					return format( "%s %s", x * Rx, y * Ry )
				end
			)
			--------------------------------------------------------------------------------
			--desplaza la shape_fx respecto a las 9 posiciones notables de la Shape original
			if Mode == 1 then
				Shape = shape.displace( shape.origin( Shape ), shpx1, shpy2 - shape.height( Shape ) )
			elseif Mode == 2 then
				Shape = shape.displace( shape.origin( Shape ), shpx1 + 0.5 * shp_w - 0.5 * shape.width( Shape ), shpy2 - shape.height( Shape ) )
			elseif Mode == 3 then
				Shape = shape.displace( shape.origin( Shape ), shpx2 - shape.width( Shape ), shpy2 - shape.height( Shape ) )
			elseif Mode == 4 then
				Shape = shape.displace( shape.origin( Shape ), shpx1, shpy1 + 0.5 * shp_h - 0.5 * shape.height( Shape ) )
			elseif Mode == 5 then
				Shape = shape.displace( shape.origin( Shape ), shpx1 + 0.5 * shp_w - 0.5 * shape.width( Shape ), shpy1 + 0.5 * shp_h - 0.5 * shape.height( Shape ) )
			elseif Mode == 6 then
				Shape = shape.displace( shape.origin( Shape ), shpx2 - shape.width( Shape ), shpy1 + 0.5 * shp_h - 0.5 * shape.height( Shape ) )
			elseif Mode == 7 then
				Shape = shape.displace( shape.origin( Shape ), shpx1, shpy1 )
			elseif Mode == 8 then
				Shape = shape.displace( shape.origin( Shape ), shpx1 + 0.5 * shp_w - 0.5 * shape.width( Shape ), shpy1 )
			elseif Mode == 9 then
				Shape = shape.displace( shape.origin( Shape ), shpx2 - shape.width( Shape ), shpy1 )
			end --add: january 05th 2019
			--------------------------------------------------------------------------------
		end
		return Shape --> Mode = 0
	end
	
	function shape.size( Shape, SizeX, SizeY, Mode )
		--modifica el tamaño de la Shape respecto a valores determinados
		--si SizeX es una tabla, SizeX[ 1 ] se sumará al ancho de la Shape
		--si SizeY es una tabla, SizeY[ 1 ] se sumará al alto de la Shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( SizeX ) == "function" then
			SizeX = SizeX( )
		end
		if type( SizeY ) == "function" then
			SizeY = SizeY( )
		end
		if type( Mode ) == "function" then
			Mode = Mode( )
		end
		local Mode = Mode or 0
		effector.print_error( Shape, "shape", "shape.size", 1 )
		effector.print_error( Mode, "number", "shape.size", 4 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.size( Shape[ i ], SizeX, SizeY, Mode )
			end
		else --recursividad: september 08th 2019
			local Szx = SizeX or shape.width( Shape )
			local Szy = SizeY or Szx
			if type( Szx ) == "table" then
				Szx = shape.width( Shape ) + Szx[ 1 ]
			end
			if type( Szy ) == "table" then
				Szy = shape.height( Shape ) + Szy[ 1 ]
			end
			effector.print_error( Szx, "numbertable", "shape.size", 2 )
			effector.print_error( Szy, "numbertable", "shape.size", 3 )
			if Szx == 0 then
				--la dimensión en "x" se modifica proporcionalmente según como se modifique en "y"
				Shape = shape.ratio( Shape, nil, { Szy }, Mode )
			elseif Szy == 0 then
				--la dimensión en "y" se modifica proporcionalmente según como se modifique en "x"
				Shape = shape.ratio( Shape, { Szx }, nil, Mode )
			else
				Shape = shape.ratio( Shape, Szx / shape.width( Shape ), Szy / shape.height( Shape ), Mode )
			end --mod: january 05th 2019
		end
		return Shape
	end --shape.size( shape.rectangle, 120, 45 )

	function shape.array( Shape, Loops, Angles_or_mode, Dxy )
		--genera múltiples arreglos "array" de una o más shapes ingresadas
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Loops ) == "function" then
			Loops = Loops( )
		end
		if type( Angles_or_mode ) == "function" then
			Angles_or_mode = Angles_or_mode( )
		end
		if type( Dxy ) == "function" then
			Dxy = Dxy( )
		end
		local Loops = Loops or 6
		local An_mo = Angles_or_mode or 0
		local disxy = Dxy or 0
		effector.print_error( Loops, "numbertable", "shape.array", 2 )
		effector.print_error( An_mo, "numberstringtable", "shape.array", 3 )
		effector.print_error( disxy, "numberstringtable", "shape.array", 4 )
		local loop1 = Loops
		local loop2 = 1
		if type( Loops ) == "table" then
			loop1 = Loops[ 1 ]
			loop2 = Loops[ 2 ] or loop1
		end
		local angle_array = An_mo
		if type( angle_array ) ~= "number"
			and type( angle_array ) ~= "table" then
			angle_array = 0
		end
		local angle_shape = 0
		if type( An_mo ) == "table" then
			angle_array = An_mo[ 1 ]
			angle_shape = An_mo[ 2 ] or 0
		end
		local distance_x, radius_ini = disxy, disxy
		if type( disxy ) == "string" then
			distance_x, radius_ini = 0, 0
		end
		local distance_y, radius_fin = distance_x, radius_ini
		local arco, angle_ini, distance_r = 360, 0, 0
		if type( disxy ) == "table" then
			distance_x = disxy[ 1 ]
			distance_y = disxy[ 2 ] or distance_x
			radius_ini = disxy[ 1 ]
			radius_fin = disxy[ 2 ] or radius_ini
			arco	   = disxy[ 3 ] or 360
			angle_ini  = disxy[ 4 ] or 0
			distance_r = disxy[ 5 ] or 0
		end
		local Shapes, shape_radial, shape_radial_fx, shape_array_fx, shape_lineal_fx = { }, "", "", "", ""
		local shape_left, idx, shape_rectangular_maxwidths
		local shape_array, shape_rectangular, shape_lineal = { }, { }, { }
		local shape_rectangular_widths = { }
		local widths, shp_lefts = { [ 0 ] = 0 }, { [ 0 ] = 0 }
		local heights, shp_tops = { [ 0 ] = 0 }, { [ 0 ] = 0 }
		if type( Shape ) == "table" then
			Shapes = Shape
		elseif Shape == "random" then
			local shp0 = {
				[ 1 ] = format( "m 0 0 l %s %s l %s %s l %s %s l %s %s l 50 0 ", 
					Rc( 10, 30 ), Rcs( 30 ), Rc( 25, 45 ), Rcs( 40 ), Rc( 0, 20 ), Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 )
				),
				[ 2 ] = format( "m 0 0 b %s %s %s %s %s %s l %s %s b %s %s %s %s 50 0 ", 
					Rc( 10, 30 ), Rcs( 30 ), Rc( 25, 45 ), Rcs( 40 ), Rc( 0, 20 ), Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 ),
					Rc( 10, 30 ), Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 )
				),
				[ 3 ] = format( "m 0 0 b %s %s %s %s %s %s b %s %s %s %s %s %s l 50 0 ", 
					Rc( 10, 30 ), Rcs( 30 ), Rc( 25, 45 ), Rcs( 40 ), Rc( 0, 20 ), Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 ),
					Rc( 10, 30 ), Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 )
				),
				[ 4 ] = format( "m 0 0 l %s %s l %s %s b %s %s %s %s %s %s l 50 0 ", 
					Rc( 10, 30 ), Rcs( 30 ), Rc( 25, 45 ), Rcs( 40 ), Rc( 0, 20 ), Rcs( 30 ), Rc( 25, 45 ), Rcs( 40 ),
					Rc( 20, 40 ), Rcs( 40 )
				),
				[ 5 ] = format( "m 0 0 l %s %s b %s %s %s %s %s %s l %s %s l 50 0 ", 
					Rc( 10, 30 ), Rcs( 30 ), Rc( 25, 45 ), Rcs( 40 ), Rc( 0, 20 ), Rcs( 30 ), Rc( 25, 45 ), Rcs( 40 ),
					Rc( 20, 40 ), Rcs( 40 )
				),
				[ 6 ] = format( "m 0 0 b %s %s %s %s %s %s l %s %s b %s %s %s %s %s %s l 50 0 ", 
					Rc( 10, 30 ), Rcs( 30 ), Rc( 25, 45 ), Rcs( 40 ), Rc( 0, 20 ), Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 ),
					Rc( 10, 30 ), Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 ), Rc( 10, 30 ), Rcs( 30 )
				),
				[ 6 ] = format( "m 0 0 b %s %s %s %s %s %s l %s %s l %s %s b %s %s %s %s 50 0 ", 
					Rc( 10, 30 ), Rcs( 30 ), Rc( 25, 45 ), Rcs( 40 ), Rc( 0, 20 ), Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 ),
					Rc( 10, 30 ), Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 ), Rc( 10, 30 ), Rcs( 30 )
				),
				[ 7 ] = format( "m 0 0 l %s 0 b %s %s %s %s %s %s l %s %s b %s %s %s %s 50 0 ", 
					Rc( 20, 40 ), Rc( 25, 45 ), Rcs( 40 ), Rc( 0, 20 ), Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 ), Rc( 10, 30 ),
					Rcs( 30 ), Rc( 20, 40 ), Rcs( 40 ), Rc( 10, 30 ), Rcs( 30 )
				),
			}
			local shp1 = shp0[ R( #shp0 ) ]
			local shp2 = shape.reverse( shape.reflect( shp1, "x" ) ):gsub( "m 50 0 ", "" )
			Shapes = { shape.ratio( shp1 .. shp2, { Rc( 27, 50 ) } ) }
			loop1, loop2 = 2 * R( 3, 4 ), 1
			radius_ini = 50 - shape.width( Shapes[ 1 ] )
			radius_fin = radius_ini
			An_mo = "radial2"
		else
			Shapes = { Shape }
		end
		effector.print_error( Shapes, "stringtable", "shape.array", 1 )
		if An_mo == "shape"
			or An_mo == "shape1" then
			local configs_pos = math.shape( disxy, nil, nil, loop1 * loop2 )
			local shp_array = ""
			for i = 1, #configs_pos do
				shp_array = shp_array .. shape.displace(
					shape.rotate( shape.incenter( Shapes[ (i - 1) % #Shapes + 1 ] ), configs_pos[ i ][ 3 ] ),
					configs_pos[ i ][ 1 ], configs_pos[ i ][ 2 ]
				)
				-- la opción de que la shape rote o no
			end --shape.array( shape.size( shape.rectangle, 15, 45 ), 20, "shape", shape.circle )
			return shape.origin( shp_array ) --add: december 08th 2018
		elseif An_mo == "shape2"
			or An_mo == "shape3" then
			local configs_pos = math.shape( disxy, nil, nil, loop1 * loop2 )
			local shp_array = ""
			for i = 1, #configs_pos do
				if i % 2 == 0 then
					Shapes[ (i - 1) % #Shapes + 1 ] = shape.reverse( Shapes[ (i - 1) % #Shapes + 1 ] )
				end
				shp_array = shp_array .. shape.displace(
					shape.rotate( shape.incenter( Shapes[ (i - 1) % #Shapes + 1 ] ), configs_pos[ i ][ 3 ] ),
					configs_pos[ i ][ 1 ], configs_pos[ i ][ 2 ]
				)
			end --shape.array( shape.size( shape.rectangle, 15, 45 ), 24, "shape2", shape.circle )
			return shape.origin( shp_array ) --add: december 08th 2018
		elseif An_mo == "radial3" then
			local radio_array, arcox
			for i = 1, #Shapes do
				shape_array[ i ] = ""
				widths[ i ] = shape.width( Shapes[ i ] ) + distance_r
				shp_lefts[ i ] = shp_lefts[ i - 1 ] + widths[ i - 1 ]
				for k = 1, loop2 do
					shape_array[ i ] = shape_array[ i ] .. shape.displace( shape.origin( Shapes[ i ] ),
						(k - 1) * widths[ i ],
						-0.5 * shape.height( Shapes[ i ] )
					)
				end
			end
			for i = 1, loop1 do
				idx = (i - 1) % #Shapes + 1
				radio_array = radius_ini + (radius_fin - radius_ini) * (i - 1) / (loop1 - 1)
				if loop1 == 1 then
					radio_array = radius_ini
				end
				arcox = (i - 1) * arco / loop1
				if loop1 > 1
					and arco % 360 ~= 0 then
					arcox = (i - 1) * arco / (loop1 - 1)
				end
				shape_radial_fx = shape_radial_fx .. shape.rotate( shape.displace( shape_array[ idx ],
					radio_array ), angle_ini + arcox
				)
			end
			return shape.origin( shape_radial_fx )	--radial3
		elseif An_mo == "radial"
			or An_mo == "radial1"
			or An_mo == "radial2" then
			local radio_array, arcox
			for i = 1, loop2 do
				idx = (i - 1) % #Shapes + 1
				shape_array[ i ] = shape.displace( shape.origin( Shapes[ idx ] ), 0, -0.5 * shape.height( Shapes[ idx ] ) )
				widths[ i ] = shape.width( Shapes[ idx ] ) + distance_r
				shp_lefts[ i ] = shp_lefts[ i - 1 ] + widths[ i - 1 ]
				shape_radial = shape_radial .. shape.displace( shape_array[ i ], shp_lefts[ i ] )
			end
			local shape_reverse
			for i = 1, loop1 do
				radio_array = radius_ini + (radius_fin - radius_ini) * (i - 1) / (loop1 - 1)
				if loop1 == 1 then
					radio_array = radius_ini
				end
				arcox = (i - 1) * arco / loop1
				if loop1 > 1
					and arco % 360 ~= 0 then
					arcox = (i - 1) * arco / (loop1 - 1)
				end
				shape_reverse = shape_radial
				if i % 2 == 0
					and An_mo == "radial2" then
					shape_reverse = shape.reverse( shape_radial )
				end
				shape_radial_fx = shape_radial_fx .. shape.rotate( shape.displace( shape_reverse, radio_array ),
					angle_ini + arcox
				)
			end
			return shape.origin( shape_radial_fx )	--radial1, radial2
		elseif An_mo == "array" then
			for i = 1, loop2 do
				idx = (i - 1) % #Shapes + 1
				Shapes[ idx ] = shape.origin( Shapes[ idx ] )
				heights[ i ] = shape.height( Shapes[ idx ] ) + distance_y
				shp_tops[ i ] = shp_tops[ i - 1 ] + heights[ i - 1 ]
				shape_rectangular[ i ] = ""
				for k = 1, loop1 do
					shape_rectangular[ i ] = shape_rectangular[ i ] .. shape.displace( Shapes[ idx ], 
						(k - 1) * shape.width( Shapes[ idx ] ) + distance_x * (k - 1)--math.i( k )[ "0,11" ]
					)
				end
				shape_rectangular_widths[ i ] = shape.width( shape_rectangular[ i ] )
				shape_rectangular[ i ] = shape.displace( shape_rectangular[ i ], 0, shp_tops[ i ] )
			end
			shape_rectangular_maxwidths = math.max( unpack( shape_rectangular_widths ) )
			for i = 1, loop2 do
				shape_rectangular[ i ] = shape.displace( shape_rectangular[ i ],
					(shape_rectangular_maxwidths - shape.width( shape_rectangular[ i ] )) / 2
				)
				shape_array_fx = shape_array_fx .. shape_rectangular[ i ]
			end
			return shape_array_fx
		end
		for i = 1, loop1 do
			idx = (i - 1) % #Shapes + 1
			shape_lineal[ i ] = shape.origin( shape.rotate( Shapes[ idx ], angle_shape - angle_array ) )
			shape_lineal[ i ] = shape.displace( shape_lineal[ i ], 0, -0.5 * shape.height( shape_lineal[ i ] ) )
			widths[ i ] = shape.width( shape_lineal[ i ] ) + distance_x
			shp_lefts[ i ] = shp_lefts[ i - 1 ] + widths[ i - 1 ]
			shape_lineal_fx = shape_lineal_fx .. shape.displace( shape_lineal[ i ], shp_lefts[ i ] )
		end
		return shape.origin( shape.rotate( shape_lineal_fx, angle_array ) )
	end
	
	function shape.Lmove( x1, y1, x2, y2, t1, t2, Accel ) -- Shape Lineal Move
		--mueve linealmente al objeto karaoke desde un punto p1 a un punto p2 sin unsar el tag \move
		if type( x1 ) == "function" then
			x1 = x1( )
		end
		if type( y1 ) == "function" then
			y1 = y1( )
		end
		if type( x2 ) == "function" then
			x2 = x2( )
		end
		if type( y2 ) == "function" then
			y2 = y2( )
		end
		if type( t1 ) == "function" then
			t1 = t1( )
		end
		if type( t2 ) == "function" then
			t2 = t2( )
		end
		if type( Accel ) == "function" then
			Accel = Accel( )
		end
		local Lcoor, time1, time2, accel = { }, 0, 1, 1
		local posx1, posx2, posy1, posy2 = 0, 0, 0, 0
		if type( x1 ) == "table" then
			Lcoor = x1
			time1 = math.round( y1 or fx.movet_i, 2 )
			time2 = math.round( x2 or fx.movet_f, 2 )
			accel = math.round( y2 or 1, 3 )
		else
			posx1 = x1 or fx.move_x1
			posy1 = y1 or fx.move_y1
			posx2 = x2 or fx.move_x2
			posy2 = y2 or fx.move_y2
			Lcoor = { posx1, posy1, posx2, posy2 }
			time1 = math.round( t1 or fx.movet_i, 2 )
			time2 = math.round( t2 or fx.movet_f, 2 )
			accel = math.round( Accel or 1, 3 )
		end
		effector.print_error( time1, "number", "shape.Lmove", 5 )
		effector.print_error( time2, "number", "shape.Lmove", 6 )
		----------------------------------------------------------
		if retime_mode then
			time1, time2 = retimettag( retime_mode, time1, time2 )
		end --september 09th 2017
		----------------------------------------------------------
		effector.print_error( posx1, "number", "shape.Lmove", 1 )
		effector.print_error( posy1, "number", "shape.Lmove", 2 )
		effector.print_error( posx2, "number", "shape.Lmove", 3 )
		effector.print_error( posy2, "number", "shape.Lmove", 4 )
		effector.print_error( accel, "number", "shape.Lmove", 7 )
		local coorx, coory, segms, fscxy, sizex, sizey, times = { }, { }, { }, { }, { }, { }, { [ 0 ] = 0 }
		for i = 1, #Lcoor / 2 do
			coorx[ i ] = Lcoor[ 2 * i - 1 ] - val_width / 2
			coory[ i ] = Lcoor[ 2 * i ] + val_height / 2 - l.descent
		end
		coorx, coory = math.round( coorx, 3 ), math.round( coory, 3 )
		for i = 2, #coorx do
			segms[ i - 1 ] = math.distance( coorx[ i ], coory[ i ], coorx[ i - 1 ], coory[ i - 1 ] )
		end
		local length = table.op( segms, "sum" )
		table.insert( segms, 1, 0 )
		if length == 0 then
			length = 1
		end
		for i = 1, #segms do
			times[ i ] = time1 + (time2 - time1) * segms[ i ] / length + times[ i - 1 ]
		end
		times = math.round( times, 2 )
		local tags1 = format( "\\fscx%s\\fscy%s", coorx[ 1 ], coory[ 1 ] )
		for i = 2, #coorx do
			tags1 = tags1 .. format( "\\t(%s,%s,%s,\\fscx%s\\fscy%s)",
				times[ i - 1 ], times[ i ], accel, coorx[ i ], coory[ i ]
			)
		end
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags1, tags_style .. effector.keeptags( fx__.t_type, fx__.keeptagsfx ) )
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy / 2 do
			table.insert( sizex, fscxy[ 2 * i - 1 ] )
			table.insert( sizey, fscxy[ 2 * i - 0 ] )
		end
		local min_x, min_y = table.op( sizex, "min" ), table.op( sizey, "min" )
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0
			and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function( x, y )
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		tags2 = tags2:gsub( "(\\t%(%d+[%.%d]*%,%d+[%.%d]*%,)1%,", "%1" )
		return tags2
	end --shape.Lmove( 100, 200, 500, 600 )
	
	function shape.Lmove2( Coor, Times, Times2 ) -- Shape Lineal Move 2
		if type( Coor ) == "function" then
			Coor = Coor( )
		end
		if type( Times ) == "function" then
			Times = Times( )
		end
		if type( Times2 ) == "function" then
			Times2 = Times2( )
		end
		effector.print_error( Coor, "table", "shape.Lmove2", 1 )
		------------------------------------
		--hace que las coordenadas sean relativas a
		--la posición por default del objeto karaoke
		local offset_x, offset_y = 0, 0
		if type( Coor[ 1 ] ) == "table" then
			Coor = Coor[ 1 ]
			offset_x, offset_y = fx.move_x1, fx.move_y1
		end --january 17th 2019
		------------------------------------
		if Times == nil then
			local time_ini, time_dur = 0, fx.dur
			local time1, time2 = 0, 0
			----------------------------------------------------------
			if retime_mode then
				time1, time2 = retimettag( retime_mode, time1, time2 )
				time_ini = time1
				time_dur = time2 - time1
			end --september 09th 2017
			----------------------------------------------------------
			if Times2 then
				if type( Times2 ) == "number" then
					time_dur = Times2
				elseif type( Times2 ) == "table" then
					time_ini = Times2[ 1 ] or 0
					time_dur = (Times2[ 2 ] or fx.dur) - time_ini
				end
			end
			local segments = { }
			for i = 1, #Coor / 2 - 1 do
				segments[ i ] = math.distance( Coor[ 2 * i - 1 ], Coor[ 2 * i ], Coor[ 2 * i + 1 ], Coor[ 2 * i + 2 ] )
			end
			local total_lenthg = table.op( segments, "sum" )
			local parcial = { [ 0 ] = 0 }
			for i = 1, #segments do
				parcial[ i ] = segments[ i ] + parcial[ i - 1 ]
			end
			Times = { [ 0 ] = time_ini }
			for i = 1, #Coor - 2 do
				Times[ i ] = (i % 2 == 1)
				and Times[ i - 1 ]
				or math.round( time_ini + time_dur * parcial[ i / 2 ] / total_lenthg, 2 )
			end
		end
		effector.print_error( Times, "table", "shape.Lmove2", 2 )
		----------------------------------------
		--los valores negativos valen desde el tiempo final del fx
		--el 0, después de la primera posición, cuenta como fx.dur
		for i = 1, #Times do
			if i > 1
				and Times[ i ] == 0 then
				Times[ i ] = fx.dur
			elseif Times[ i ] < 0 then
				Times[ i ] = fx.dur + Times[ i ]
			end
		end --january 17th 2019
		----------------------------------------
		local coorx, coory = { }, { }
		for i = 1, #Coor / 2 do
			coorx[ i ] = math.round( Coor[ 2 * i - 1 ] - val_width / 2 + offset_x, 2 )
			coory[ i ] = math.round( Coor[ 2 * i - 0 ] + val_height / 2 - l.descent + offset_y, 2 )
		end
		local tags1 = format( "\\fscx%s\\fscy%s", coorx[ 1 ], coory[ 1 ] )
		for i = 2, #coorx do
			tags1 = tags1 .. format( "\\t(%s,%s,\\fscx%s\\fscy%s)",
				Times[ 2 * (i - 1) - 1 ], Times[ 2 * (i - 1) ], coorx[ i ], coory[ i ]
			)
		end
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags1, tags_style .. effector.keeptags( fx__.t_type, fx__.keeptagsfx ) )
		local fscxy, sizex, sizey = { }, { }, { }
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy / 2 do
			table.insert( sizex, fscxy[ 2 * i - 1 ] )
			table.insert( sizey, fscxy[ 2 * i - 0 ] )
		end
		local min_x, min_y = table.op( sizex, "min" ), table.op( sizey, "min" )
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0
			and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function( x, y )
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		return tags2
	end --shape.Lmove2( { -l.width / 2, fx.pos_y, fx.pos_x, fx.pos_y, xres + l.width / 2, fx.pos_y }, { 0, 200, fx.dur - 200, fx.dur } )
	
	function shape.Pmove( F_x, F_y, domainF, t1, t2, Accel, offset_t ) -- Shape Parametric Move
		if type( F_x ) == "function" then
			F_x = F_x( )
		end
		if type( F_y ) == "function" then
			F_y = F_y( )
		end
		if type( domainF ) == "function" then
			domainF = domainF( )
		end
		if type( t1 ) == "function" then
			t1 = t1( )
		end
		if type( t2 ) == "function" then
			t2 = t2( )
		end
		if type( offset_t ) == "function" then
			offset_t = offset_t( )
		end
		effector.print_error( F_x, "string", "shape.Pmove", 1 )
		effector.print_error( F_y, "string", "shape.Pmove", 2 )
		effector.print_error( domainF, "numbertable", "shape.Pmove", 3 )
		local offset_t = offset_t or 0
		local accel = Accel or 1
		local time2 = t2 or fx.movet_f
		local time1 = t1 or fx.movet_i
		local tgdur
		effector.print_error( time1, "number", "shape.Pmove", 4 )
		effector.print_error( time2, "number", "shape.Pmove", 5 )
		----------------------------------------------------------
		if retime_mode then
			time1, time2 = retimettag( retime_mode, time1, time2 )
		end --september 09th 2017
		----------------------------------------------------------
		local dur_t = time2 - time1
		if Accel then
			effector.print_error( Accel, "number", "shape.Pmove", 6 )
		end
		effector.print_error( offset_t, "numbertable", "shape.Pmove", 7 )
		if type( offset_t ) == "table" then
			tgdur = math.round( offset_t[ 1 ], 2)
		else
			tgdur = math.round( 2.4 * frame_dur + offset_t, 2 )
		end
		tgdur = abs( tgdur )
		local n, i, domain = ceil( dur_t / tgdur ), 0, { }
		if type( domainF ) == "number" then
			domain = { 0, domainF }
		else
			domain = { domainF[ 1 ], domainF[ 2 ] }
		end
		local posx = math.round( fx.move_x1 - val_width / 2 + math.format( F_x, domain[ 1 ] ), 3 )
		local posy = math.round( fx.move_y1 + val_height / 2 - l.descent - math.format( F_y, domain[ 1 ] ), 3 )
		local tags = format( "\\fscx%s\\fscy%s", posx, posy )
		while dur_t > 0 do
			if type( Accel ) == "function" then
				accel = Accel( )
			end
			tags = tags .. format( "\\t(%s,%s,1,\\fscx%s\\fscy%s)",
				time1 + tgdur * i, time1 + tgdur * (i + 1), 
				math.round( posx + math.format( F_x, domain[ 1 ] + (domain[ 2 ] - domain[ 1 ]) * ((i + 1) / n) ^ accel ) - math.format( F_x, domain[ 1 ] ), 3 ),
				math.round( posy - math.format( F_y, domain[ 1 ] + (domain[ 2 ] - domain[ 1 ]) * ((i + 1) / n) ^ accel ) + math.format( F_y, domain[ 1 ] ), 3 )
			)
			i = i + 1
			dur_t = dur_t - tgdur
		end
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags, tags_style .. effector.keeptags( fx__.t_type, fx__.keeptagsfx ) )
		local fscxy, sizex, sizey = { }, { }, { }
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy / 2 do
			table.insert( sizex, fscxy[ 2 * i - 1 ] )
			table.insert( sizey, fscxy[ 2 * i - 0 ] )
		end
		local min_x, min_y = table.op( sizex, "min" ), table.op( sizey, "min" )
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0
			and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function( x, y )
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		tags2 = tags2:gsub( "(\\t%(%d+[%.%d]*%,%d+[%.%d]*%,)1%,", "%1" )
		return tags2
	end --shape.Pmove( "100 * cos( %s )", "100 * sin( %s )", { 0, 2 * pi } )

	function shape.Smove( Shape, t1, t2, Relative ) -- Shape Shape Move
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( t1 ) == "function" then
			t1 = t1( )
		end
		if type( t2 ) == "function" then
			t2 = t2( )
		end
		if Shape == nil
			and linefx[ ii ].text:match( "\\i?clip%b()" ) then
			Shape = shape.ASSDraw3( linefx[ ii ].text:match( "\\i?clip%b()" ) )
		end
		effector.print_error( Shape, "stringtable", "shape.Smove", 1 )
		local time2 = t2 or fx.movet_f
		local time1 = t1 or fx.movet_i
		effector.print_error( time1, "number", "shape.Smove", 2 )
		effector.print_error( time2, "number", "shape.Smove", 3 )
		----------------------------------------------------------
		if retime_mode then
			time1, time2 = retimettag( retime_mode, time1, time2 )
		end --september 09th 2017
		----------------------------------------------------------
		local dur_t, segms = time2 - time1, { }
		if type( Shape ) == "table" then
			if #Shape == 4 then
				Shape = format( "m %s %s l %s %s ", Shape[ 1 ], Shape[ 2 ], Shape[ 3 ], Shape[ 4 ] )
			elseif #Shape == 6 then
				Shape = format( "m %s %s b %s %s %s %s %s %s ", Shape[ 1 ], Shape[ 2 ], Shape[ 3 ], 
					Shape[ 4 ], Shape[ 3 ], Shape[ 4 ], Shape[ 5 ], Shape[ 6 ]
				)
			elseif #Shape == 8 then
				Shape = format( "m %s %s b %s %s %s %s %s %s ", Shape[ 1 ], Shape[ 2 ], Shape[ 3 ], 
					Shape[ 4 ], Shape[ 5 ], Shape[ 6 ], Shape[ 7 ], Shape[ 8 ]
				)
			end
		end
		local Shape = shape.ASSDraw3( Shape )
		local tags2 = recall.shSmtag
		if j == 1 then
			--Shape = Yutils.shape.flatten( Shape, 3 )
			Shape = shape.redraw( Shape, 3.15 * ratio, "bezier" )
			shape.info( Shape )
			local Shape2 = shape.displace( Shape, -shape_x2[ 1 ], -shape_y2[ 1 ] )
			local off_px, off_py = 0, 0
			if Relative then
				Shape2 = Shape
				off_px, off_py = shape_x2[ 1 ], shape_y2[ 1 ]
			end
			for i = 1, #shape.length( Shape2, "segments" ) do
				segms[ i ] = shape.length( Shape2, "segments" )[ i ]
				segms[ i ] = math.round( segms[ i ] )
			end
			local lengthx, times = shape.length( Shape2 ), { [ 0 ] = 0 }
			local posx = math.round( fx.move_x1 - val_width / 2 + off_px, 2 )
			local posy = math.round( fx.move_y1 + val_height / 2 - l.descent + off_py, 2 )
			local tags = format( "\\fscx%s\\fscy%s", posx, posy )
			for i = 1, #segms do
				times[ i ] = dur_t * math.length_bezier( segms[ i ] ) / lengthx + times[ i - 1 ]
			end
			times = math.round( table.op( times, "add", time1 ), 2 )
			times[ 0 ] = time1
			local function shape_lmove( Segment, time1, time2 )
				local size_fscx = math.round( fx.move_x1 - val_width / 2 + Segment[ 3 ], 2 )
				local size_fscy = math.round( fx.move_y1 + val_height / 2 - l.descent + Segment[ 4 ], 2 )
				return format( "\\t(%s,%s,1,\\fscx%s\\fscy%s)", time1, time2, size_fscx, size_fscy )
			end
			for k = 1, #segms do
				tags = tags .. shape_lmove( segms[ k ], times[ k - 1 ], times[ k ] )
			end
			tags2 = remember( "shSmtag", format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags, tags_style .. effector.keeptags( fx__.t_type, fx__.keeptagsfx ) ) )
		end
		local fscxy, sizex, sizey = { }, { }, { }
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy / 2 do
			table.insert( sizex, fscxy[ 2 * i - 1 ] )
			table.insert( sizey, fscxy[ 2 * i - 0 ] )
		end
		local min_x, min_y = table.op( sizex, "min" ), table.op( sizey, "min" )
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0
			and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function( x, y )
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		tags2 = tags2:gsub( "\\t%((%d+[%.%d]*)%,(%d+[%.%d]*)",
			function( t_ini, t_fin )
				if tonumber( t_fin ) > time2 then
					t_fin = time2
					return format( "\\t(%s,%s", t_ini, t_fin )
				end
			end
		)-- february 03rd 2018
		:gsub( "(\\t%(%d+[%.%d]*%,%d+[%.%d]*%,)1%,", "%1" )
		return tags2
	end --shape.Smove( shape.trebol )
	
	function shape.Rmove( Rx, Ry, t1, t2, Accel, offset_t, Counter2 ) -- Shape Random Move
		if type( t1 ) == "function" then
			t1 = t1( )
		end
		if type( t2 ) == "function" then
			t2 = t2( )
		end
		if type( offset_t ) == "function" then
			offset_t = offset_t( )
		end
		local offset_t = offset_t or 0
		local accel = Accel or 1
		local time2 = t2 or fx.movet_f
		local time1 = t1 or fx.movet_i
		local Rx = Rx or 0.4 * val_height
		local Ry = Ry or Rx
		local tgdur
		effector.print_error( Rx, "numbershapetable", "shape.Rmove", 1 )
		effector.print_error( Ry, "numbershapetable", "shape.Rmove", 2 )
		effector.print_error( time1, "number", "shape.Rmove", 3 )
		effector.print_error( time2, "number", "shape.Rmove", 4 )
		----------------------------------------------------------------
		if retime_mode then
			time1, time2 = retimettag( retime_mode, time1, time2 )
		end --september 09th 2017
		----------------------------------------------------------------
		local dur_t = time2 - time1
		effector.print_error( accel, "numberstring", "shape.Rmove", 5 )
		effector.print_error( offset_t, "numbertable", "shape.Rmove", 6 )
		local line = linefx[ ii ]
		local func_accel = loadstring( format( "return function( meta, line, i ) return %s end", accel ) )( )
		if type( offset_t ) == "table" then
			tgdur = math.round( offset_t[ 1 ], 2 )
		else
			tgdur = math.round( 3.6 * frame_dur + offset_t, 2 )
		end
		tgdur = abs( tgdur )
		local posx = math.round( fx.move_x1 - val_width / 2, 2 )
		local posy = math.round( fx.move_y1 + val_height / 2 - l.descent, 2 )
		local tags1, randx, randy, i = format( "\\fscx%s\\fscy%s", posx, posy ), 0, 0, 0
		local tm1, tm2, pdx, pdy
		if type( Rx ) == "string" then
			-- se mueve secuencialmente entre los puntos de la shape
			local coor, coor_x, coor_y = { }, { }, { }
			for num in Rx:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( coor, tonumber( num ) )
			end
			for i = 1, #coor/2 do
				coor_x[ i ] = coor[ 2 * i - 1 ]
				coor_y[ i ] = coor[ 2 * i - 0 ]
			end
			while dur_t > 0 do
				randx = coor_x[ (i + 1) % #coor_x + 1 ]
				randy = coor_y[ (i + 1) % #coor_y + 1 ]
				if dur_t - tgdur <= 0 then
					randx = 0
					randy = 0
				end
				tm1 = time1 + tgdur * (i + 0)
				tm2 = time1 + tgdur * (i + 1)
				--------------------------
				if dur_t - tgdur <= 0 then
					tm2 = time2
				end --fix: august 08th 2018
				--------------------------
				pdx = posx + randx
				pdy = posy + randy
				accel = math.round( func_accel( meta, line, i ), 3 )
				tags1 = tags1 .. format( "\\t(%s,%s,%s,\\fscx%s\\fscy%s)", tm1, tm2, accel, pdx, pdy )
				i = i + 1
				dur_t = dur_t - tgdur
			end
		else
			while dur_t > 0 do
				if type( Rx ) == "table" then
					if type( Rx[ 1 ] ) == "table" then
						randx = tostring( Rx[ 1 ][ 1 ] ) .. ">" .. tostring( Rx[ 1 ][ 2 ] )
					else
						randx = Rrd( Rx[ 1 ], Rx[ 2 ], 1, i, Counter2 )
					end
				elseif type( Rx ) == "function" then
					Rx_func = Rx( )
					randx = Rrd( -Rx_func, Rx_func, 1, i, Counter2 )
				else
					randx = Rrd( -Rx, Rx, 1, i, Counter2 )
				end
				if type( Ry ) == "table" then
					if type( Ry[ 1 ] ) == "table" then
						randy = tostring( Ry[ 1 ][ 1 ] ) .. ">" .. tostring( Ry[ 1 ][ 2 ] )
					else
						randy = Rrd( Ry[ 1 ], Ry[ 2 ], 1, -pi * i, Counter2 )
					end
				elseif type( Ry ) == "function" then
					Ry_func = Ry( )
					randy = Rrd( -Ry_func, Ry_func, 1, -pi * i, Counter2 )
				else
					randy = Rrd( -Ry, Ry, 1, -pi * i, Counter2 )
				end
				if type( randx ) == "number" then
					if dur_t - tgdur <= 0 then
						randx = 0
					end
					pdx = posx + randx
				else
					pdx = tostring( posx ) .. "+" .. randx
				end
				if type( randy ) == "number" then
					if dur_t - tgdur <= 0 then
						randy = 0
					end
					pdy = posy + randy
				else
					pdy = tostring( posy ) .. "+" .. randy
				end
				tm1 = time1 + tgdur * (i + 0)
				tm2 = time1 + tgdur * (i + 1)
				--------------------------
				if dur_t - tgdur <= 0 then
					tm2 = time2
				end --fix: august 08th 2018
				--------------------------
				accel = math.round( func_accel( meta, line, i ), 3 )
				tags1 = tags1 .. format( "\\t(%s,%s,%s,\\fscx%s\\fscy%s)", tm1, tm2, accel, pdx, pdy )
				i = i + 1
				dur_t = dur_t - tgdur
			end
		end
		local cap_nx, cap_ix = string.count( tags1, "(\\fscx)(%-?%d+[%.%d]*)%+(%-?%d+[%.%d]*)%>(%-?%d+[%.%d]*)" ), 0
		tags1 = tags1:gsub( "(\\fscx)(%-?%d+[%.%d]*)%+(%-?%d+[%.%d]*)%>(%-?%d+[%.%d]*)",
			function( Tag, Val0, Val1, Val2 )
				local Val0, Val1, Val2 = tonumber( Val0 ), tonumber( Val1 ), tonumber( Val2 )
				local Rank = Val2 - Val1
				cap_ix = cap_ix + 1
				return format( "%s%s", Tag, Val0 + Val1 + Rank * cap_ix / cap_nx )
			end
		)
		local cap_ny, cap_iy = string.count( tags1, "(\\fscy)(%-?%d+[%.%d]*)%+(%-?%d+[%.%d]*)%>(%-?%d+[%.%d]*)" ), 0
		tags1 = tags1:gsub( "(\\fscy)(%-?%d+[%.%d]*)%+(%-?%d+[%.%d]*)%>(%-?%d+[%.%d]*)",
			function( Tag, Val0, Val1, Val2 )
				local Val0, Val1, Val2 = tonumber( Val0 ), tonumber( Val1 ), tonumber( Val2 )
				local Rank = Val2 - Val1
				cap_iy = cap_iy + 1
				return format( "%s%s", Tag, Val0 + Val1 + Rank * cap_iy / cap_ny )
			end
		)
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags1, tags_style .. effector.keeptags( fx__.t_type, fx__.keeptagsfx ) )
		local fscxy, sizex, sizey = { }, { }, { }
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy / 2 do
			table.insert( sizex, fscxy[ 2 * i - 1 ] )
			table.insert( sizey, fscxy[ 2 * i - 0 ] )
		end
		local min_x, min_y = table.op( sizex, "min" ), table.op( sizey, "min" )
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0
			and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function( x, y )
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		tags2 = tags2:gsub( "(\\t%(%d+[%.%d]*%,%d+[%.%d]*%,)1%,", "%1" )
		return tags2
	end --shape.Rmove( 10, 20 )
	
	function shape.Rmove2( Rx, Ry, t, Accel ) -- Shape Random Move
		if type( t ) == "function" then
			t = t( )
		end
		local time_ini = 0
		local time_fin = fx.dur
		local time_tag = math.round( 2.8 * frame_dur, 2 )	--Duración de cada transformación
		local time_shk = Rrd( 3, 6 ) * time_tag				--Duración de cada "Shake"
		local time_off = Rrd( 4, 8 ) * time_tag				--Duración del tiempo "off"
		if t then
			time_ini = t[ 1 ] or 0
			time_fin = t[ 2 ] or fx.dur
			time_tag = t[ 3 ] or math.round( 2.8 * frame_dur, 2 )	--Duración de cada transformación
			time_shk = t[ 4 ] or Rrd( 3, 6 ) * time_tag				--Duración de cada "Shake"
			time_off = t[ 5 ] or Rrd( 4, 8 ) * time_tag				--Duración del tiempo "off"
		end
		----------------------------------------------------------------------
		if retime_mode then
			time_ini, time_fin = retimettag( retime_mode, time_ini, time_fin )
		end --september 09th 2017
		----------------------------------------------------------------------
		local accel = Accel or 1
		local time_dur = time_fin - time_ini
		local tag_tbl, tag_dur, i = { }, 0, 1
		local tag_tm1, tag_tm2, tag_shk, tag_off
		while time_dur > tag_dur do
			if type( Accel ) == "function" then
				accel = Accel( )
			end
			tag_shk = Rrd( 0.75 * time_shk, 1.25 * time_shk, 1, 4 * i )
			tag_off = Rrd( 0.65 * time_off, 1.25 * time_off, 1, -2 * pi * i )
			tag_tm1 = tag_dur + tag.only( i == 1 and Rrd( 1, 2, 1, 2 * i ) == 2, 0, tag_off )
			tag_tm2 = tag_tm1 + tag_shk
			tag_tbl[ i ] = shape.Rmove( Rx, Ry, tag_tm1, tag_tm2, Accel, { time_tag }, i )
			tag_dur = tag_tm2
			i = i + 1
		end
		local tag_fx1 = { }
		for i = 2, #tag_tbl do
			tag_fx1[ i - 1 ] = ""
			for c in tag_tbl[ i ]:gmatch( "\\t%b()" ) do
				tag_fx1[ i - 1 ] = tag_fx1[ i - 1 ] .. c
			end
		end
		local tag_fx2 = tag_tbl[ 1 ]
		local tag_fx3 = table.op( tag_fx1, "concat" )
		local tag_fx4 = tag_fx2:gsub( "\\p1", tag_fx3 .. "\\p1" )
		return tag_fx4
	end --shape.Rmove2( 12, 12 )
	
	function shape.Rmove3( Rx, Ry, t, Accel, offset_t )
		if type( t ) == "function" then
			t = t( )
		end
		local times = t or { 0, fx.dur }
		effector.print_error( times, "table", "shape.Rmove3", 3 )
		local rmove3_tgfx = ""
		local rmove3_tags = shape.Rmove( Rx, Ry, times[ 1 ], times[ 2 ], Accel, offset_t )
		local rmove3_tag3 = { }
		local rmove3_tbl3 = { }
		local rmove3_accl = Accel
		local rmove3_offt = offset_t
		for i = 2, #times / 2 do
			if type( Accel ) == "function" then
				rmove3_accl = Accel( )
			end
			if type( offset_t ) == "function" then
				rmove3_offt = offset_t( )
			end
			rmove3_tbl3[ i - 1 ] = { }
			rmove3_tag3[ i - 1 ] = shape.Rmove( Rx, Ry, times[ 2 * i - 1 ], times[ 2 * i ], rmove3_accl, rmove3_offt, i )
			for tr in rmove3_tag3[ i - 1 ]:gmatch( "\\t%(%d+[%.%d]*%,%d+[%.%d]*%,[%d%.%,]*\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*%)" ) do
				table.insert( rmove3_tbl3[ i - 1 ], tr )
			end
			rmove3_tag3[ i - 1 ] = table.op( rmove3_tbl3[ i - 1 ], "concat" )
		end
		rmove3_tag3 = table.op( rmove3_tag3, "concat" )
		rmove3_tgfx = rmove3_tags:gsub( "\\p1", format( "%s\\p1", rmove3_tag3 ) )
		return rmove3_tgfx
	end --shape.Rmove3( nil, nil, { 0, 500, fx.dur - 500, fx.dur }, 1, { 2f } )
	
	function shape.Rmove4( Rx, Ry, t1, t2, Accel, offset_t, move4 )
		if type( move4 ) == "function" then
			move4 = move4( )
		end
		local time1 = t1 or fx.movet_i
		local time2 = t2 or fx.movet_f
		local dur_t = time2 - time1
		local move4 = move4 or { 1.5 * frame_dur, 25 * ratio }	--move4 = { t, dx, acc }
		move4[ 3 ] = move4[ 3 ] or 1
		effector.print_error( move4, "table", "shape.Rmove4", 7 )
		local tag_r = shape.Rmove( Rx, Ry, time1, time2, Accel, offset_t )
		----------------------------------------------------------------
		if retime_mode then
			time1, time2 = retimettag( retime_mode, time1, time2 )
		end --september 09th 2017
		----------------------------------------------------------------
		local tagfx, Dur, i = "\\fscx0\\fscy0", dur_t, 0
		local t, dx, acc
		while Dur > 0 do
			if type( move4[ 1 ] ) == "table" then
				t = math.round( Rrd( move4[ 1 ][ 1 ] * 100, move4[ 1 ][ 2 ] * 100, 1, i ) / 100, 2 )
			else
				t = math.round( move4[ 1 ], 2 )
			end
			if type( move4[ 2 ] ) == "table" then
				dx = math.round( Rrd( move4[ 2 ][ 1 ] * 100, move4[ 2 ][ 2 ] * 100, 1, 2 * i ) / 100, 2 )
			else
				dx = math.round( move4[ 2 ], 2 )
			end
			if type( move4[ 3 ] ) == "table" then
				acc = math.round( Rrd( move4[ 3 ][ 1 ] * 100, move4[ 3 ][ 2 ] * 100, 1, -pi * i ) / 100, 2 )
			else
				acc = math.round( move4[ 3 ], 2 )
			end
			if dx < 0 or Dur - t <= 0 then
				dx = 0
			end
			tagfx = tagfx .. format( "\\t(%s,%s,%s,\\fscx%s)", time1 + i * t, time1 + (i + 1) * t, acc, dx * ((i + 1) % 2) )
			Dur = Dur - t
			i = i + 1
		end
		local dx2
		if type( move4[ 2 ] ) == "table" then
			dx2 = math.round( abs( (move4[ 2 ][ 2 ] - move4[ 2 ][ 1 ]) / 2 ), 2 )
		else
			dx2 = math.round( move4[ 2 ] / 2, 2 )
		end
		tag_r = tag_r:gsub( "\\pos%((%-?%d+[%.%d]*)%,(%-?%d+[%.%d]*)%)",
			function( x, y )
				return format( "\\pos(%s,%s)", tonumber( x ) - dx2, y )
			end
		)
		tagfx = tagfx .. "\\p1}m 0 0 m 100 100 {\\p0\\r"
		tagfx = tag_r:gsub( "\\r", "\\r" .. tagfx )
		tagfx = tagfx:gsub( "(\\t%(%d+[%.%d]*%,%d+[%.%d]*%,)1%,", "%1" )
		return tagfx
	end --shape.Rmove4( 20, 20, 0, fx.dur, 1, { 460 }, { 3f, { 20, 40 } } )
	
	function shape.Omove( P, t1, t2, Dur, Accel ) -- Shape Oscill Move
		if type( P ) == "function" then
			P = P( )
		end
		if type( t1 ) == "function" then
			t1 = t1( )
		end
		if type( t2 ) == "function" then
			t2 = t2( )
		end
		if type( Dur ) == "function" then
			Dur = Dur( )
		end
		if type( Accel ) == "function" then
			Accel = Accel( )
		end
		local Ocoor = P
		local time1 = math.round( t1 or fx.movet_i, 2 )
		local time2 = math.round( t2 or fx.movet_f, 2 )
		----------------------------------------------------------
		if retime_mode then
			time1, time2 = retimettag( retime_mode, time1, time2 )
		end --september 09th 2017
		----------------------------------------------------------
		local DurOM = time2 - time1
		local Durtt = Dur or 2 * frame_dur
		local accel = Accel or 1
		if type( Ocoor ) == "string" then
			local Ocoor2 = { }
			for num in Ocoor:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( Ocoor2, tonumber( num ) )
			end
			Ocoor = Ocoor2
		end
		local coorx, coory = { }, { }
		for i = 1, #Ocoor / 2 do
			coorx[ i ] = math.round( Ocoor[ 2 * i - 1 ], 2 )
			coory[ i ] = math.round( Ocoor[ 2 * i - 0 ], 2 )
		end
		local line = linefx[ ii ]
		local func_accel = loadstring( format( "return function( meta, line, i ) return %s end", accel ) )( )
		local posx = math.round( fx.move_x1 - val_width / 2, 2 )
		local posy = math.round( fx.move_y1 + val_height / 2 - l.descent, 2 )
		local tags1, i = format( "\\fscx%s\\fscy%s", posx, posy ), 0
		local px, py, t1, t2
		while DurOM > 0 do
			px = coorx[ i % #coorx + 1 ]
			py = coory[ i % #coory + 1 ]
			t1 = math.round( time1 + Durtt * (i + 0), 2 )
			t2 = math.round( time1 + Durtt * (i + 1), 2 )
			if DurOM - Durtt <= 0 then
				t2 = time2 - time1
				px, py = 0, 0
			end
			accel = math.round( func_accel( meta, line, i ), 3 )
			tags1 = tags1 .. format( "\\t(%s,%s,%s,\\fscx%s\\fscy%s)", t1, t2, accel, posx + px, posy + py )
			i = i + 1
			DurOM = DurOM - Durtt
		end
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags1, tags_style .. effector.keeptags( fx__.t_type, fx__.keeptagsfx ) )
		local fscxy, sizex, sizey = { }, { }, { }
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy / 2 do
			table.insert( sizex, fscxy[ 2 * i - 1 ] )
			table.insert( sizey, fscxy[ 2 * i - 0 ] )
		end
		local min_x, min_y = table.op( sizex, "min" ), table.op( sizey, "min" )
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0
			and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub("(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function( x, y )
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		tags2 = tags2:gsub( "(\\t%(%d+[%.%d]*%,%d+[%.%d]*%,)1%,", "%1" )
		return tags2
	end --shape.Omove( { 0, 30, 0, -30 } )
	
	function shape.lineclip( Mode, Dur, Ini )
		--asemeja las posiciones del texto en distintos cuadros en el vídeo
		if type( Dur ) == "function" then
			Dur = Dur( )
		end
		if type( Ini ) == "function" then
			Ini = Ini( )
		end
		if linefx[ ii ].text:match( "\\i?clip%b()" ) then
			local Shape = shape.ASSDraw3( linefx[ ii ].text:match( "\\i?clip%b()" ) )
			Shape = shape.firstpos( Shape, 0, 0 )
			local t_ini = Ini or fx.movet_i
			local t_dur = Dur or frame_dur
			effector.print_error( t_dur, "number", "shape.lineclip", 2 )
			effector.print_error( t_ini, "number", "shape.lineclip", 3 )
			local coord = { }
			for c in Shape:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( coord, tonumber( c ) )
			end
			local pos_x = math.round( fx.move_l1, 3 )
			local pos_y = math.round( fx.move_y1 - l.descent, 3 )
			local tagfx = ""
			if Mode == nil
				or Mode == 1 then
				tagfx = format( "\\an7\\pos(0,0)\\q2\\fscx%s\\fscy%s", pos_x, pos_y )
				for i = 1, #coord / 2 do
					local t1 = t_ini + (i - 1) * t_dur
					tagfx = tagfx .. format( "\\t(%s,%s,\\fscx%s\\fscy%s)",
						t1, t1 + 1, pos_x + coord[ 2 * i - 1 ], pos_y + coord[ 2 * i ]
					)
				end
				local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tagfx, tags_style .. effector.keeptags( fx__.t_type, fx__.keeptagsfx ) )
				local fscxy, sizex, sizey = { }, { }, { }
				for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
					table.insert( fscxy, tonumber( c ) )
				end
				for i = 1, #fscxy / 2 do
					table.insert( sizex, fscxy[ 2 * i - 1 ] )
					table.insert( sizey, fscxy[ 2 * i - 0 ] )
				end
				local min_x, min_y = table.op( sizex, "min" ), table.op( sizey, "min" )
				if min_x >= 0 then
					min_x = 0
				end
				if min_y > 0
					and min_y <= val_height then
					min_y = -min_y
				elseif min_y >= 0 then
					min_y = 0
				end
				local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
				tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
					function( x, y )
						fsc_x = x:match( "%-?%d+[%.%d]*" )
						fsc_y = y:match( "%-?%d+[%.%d]*" )
						return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
					end
				)
				return tags2
			else
				maxloop( #coord / 2 )
				retime( "fxpretime", t_ini + (j - 1) * t_dur, t_ini + j * t_dur )
				return format( "\\pos(%s,%s)", pos_x + coord[ 2 * j - 1 ] + l_width / 2, pos_y + coord[ 2 * j ] )
			end
		end
		return ""
	end --shape.lineclip( )

	function shape.setclip( Clips, Tags, Index )
		local Index = Index or { ii }
		local function setclip2( Clips2, Tags2, Index2 )
			local function inclip( Clips3 )
				local Sh_cT = { }
				if type( Clips3 ) == "string" then
					return shape.ASSDraw3( Clips3 )
				end
				for i = 1, #Clips3 do
					Sh_cT[ i ] = shape.ASSDraw3( Clips3[ i ] )
				end --shape.ASSDraw3( "\\clip(812,660,1020,698)" )
				return Sh_cT
			end
			if type( Clips2 ) == "string" then
				Clips2 = { Clips2 }
			end
			if type( Tags2 ) == "string" then
				Tags2 = { Tags2 }
			end
			Clips2 = inclip( Clips2 )
			if #Tags2 == #Clips2 then
				table.insert( Tags2, 1, "" )
			end
			if type( Index2 ) == "number" then
				Index2 = { Index2 }
			end
			Index2 = Index2 or { ii }
			local shape_video = format( "m 0 0 l %d 0 l %d %d l 0 %d ", xres, xres, yres, yres )
			table.insert( Clips2, 1, shape_video .. table.op( Clips2, "concat" ) )
			if table.inside( Index2, ii ) then
				maxloop( #Tags2 )
				return format( "\\clip(%s)%s", Clips2[ j ], Tags2[ j ] )
			else
				fxgroup = false
			end
		end
		effector.print_error( Clips, "table", "shape.setclip", 1 )
		effector.print_error( Tags,  "table", "shape.setclip", 2 )
		effector.print_error( Index, "table", "shape.setclip", 3 )
		if type( Clips[ 1 ] ) == "table" then
			replay( #Clips )
			if table.inside( Index[ J ], ii ) then
				return setclip2( Clips[ J ], Tags[ J ], Index[ J ] )
			else
				fxgroup = false
				return ""
			end
		end
		return setclip2( Clips, Tags, Index )
	end --shape.setclip( {"\\clip(m 180 618 l 216 664 602 664 536 620)", "\\clip(812,660,1020,698)"}, {"\\1c&H0000FF&", "\\1c&FF0000&"} )
	
	function shape.animated( dur, frame_duration, frames, size_x, size_y )
		if type( dur ) == "function" then
			dur = dur( )
		end
		if type( frame_duration ) == "function" then
			frame_duration = frame_duration( )
		end
		if type( frames ) == "function" then
			frames = frames( )
		end
		if type( size_x ) == "function" then
			size_x = size_x( )
		end
		if type( size_y ) == "function" then
			size_y = size_y( )
		end
		effector.print_error( dur, "number", "shape.animated", 1 )
		effector.print_error( frame_duration, "number", "shape.animated", 2 )
		effector.print_error( frames, "table", "shape.animated", 3 )
		effector.print_error( size_x, "number", "shape.animated", 4 )
		effector.print_error( size_y, "number", "shape.animated", 5 )
		local t_dur, f_dur = dur, frame_duration
		local Tag_fx, i = "\\bord0\\shad0\\fscx0\\fscy100", 0
		local t1, t2, t3, t4
		maxloop( #frames )
		while t_dur > 0 do
			t1 = f_dur * (#frames * i + j - 1)
			t2 = f_dur * (#frames * i + j - 1) + 1
			t3 = f_dur * (#frames * i + j - 0)
			t4 = f_dur * (#frames * i + j - 0) + 1
			Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\fscx100)\\t(%s,%s,\\fscx0)", t1, t2, t3, t4 )
			i = i + 1
			t_dur = t_dur - #frames * f_dur
		end
		return format( "{%s\\1img(%s,0,0)\\p1}%s", Tag_fx, frames[ j ], shape.size( shape.rectangle, size_x, size_y ) )
	end
	
	function shape.animated2( dur, frame_duration, Shapes, Pscale, Random )
		if type( dur ) == "function" then
			dur = dur( )
		end
		if type( frame_duration ) == "function" then
			frame_duration = frame_duration( )
		end
		if type( Shapes ) == "function" then
			Shapes = Shapes( )
		end
		local prop = Pscale or "\\p1"
		effector.print_error( dur, "number", "shape.animated2", 1 )
		effector.print_error( frame_duration, "number", "shape.animated2", 2 )
		effector.print_error( Shapes, "table", "shape.animated2", 3 )
		effector.print_error( prop, "numberstring", "shape.animated2", 4 )
		if type( prop ) == "number" then
			prop = format( "\\p%d", math.round( math.log( prop, 2 ) + 1 ) )
		end
		local t_dur, f_dur = dur, math.round( frame_duration, 3 )
		local Tag_fx, last_alpha, i = "\\alpha&HFF&", "\\alpha&HFF&", 0
		local t1, t2, t3, t4
		local types = { }
		for k, v in pairs( Shapes ) do
			if type( v ) == "table" then
				table.insert( types, "table" )
			else
				table.insert( types, "string" )
			end
		end
		if table.inside( types, "table" ) == false then
			if t_dur / f_dur < #Shapes then
				maxloop( ceil( t_dur / f_dur ) )
			else
				maxloop( #Shapes )
			end
			while t_dur > 0 do
				t1 = f_dur * (#Shapes * i + j - 1)
				t2 = f_dur * (#Shapes * i + j - 1) + 1
				t3 = f_dur * (#Shapes * i + j - 0)
				t4 = f_dur * (#Shapes * i + j - 0) + 1
				if t2 >= dur then
					last_alpha = "\\alpha&H00&"
				end
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\alpha&H00&)\\t(%s,%s,%s)", t1, t2, t3, t4, last_alpha )
				i = i + 1
				t_dur = t_dur - #Shapes * f_dur
			end
			if Random then
				return format( "{%s%s}%s", Tag_fx, prop, Shapes[ R( maxj ) ] )
			end
			return format( "{%s%s}%s", Tag_fx, prop, Shapes[ j ] )
		else
			if t_dur / f_dur < #Shapes then
				replay( ceil( t_dur / f_dur ) )
			else
				replay( #Shapes )
			end
			if type( Shapes[ J ] ) == "table" then
				maxloop( #Shapes[ J ] )
			end
			while t_dur > 0 do
				t1 = f_dur * (#Shapes * i + J - 1)
				t2 = f_dur * (#Shapes * i + J - 1) + 1
				t3 = f_dur * (#Shapes * i + J - 0)
				t4 = f_dur * (#Shapes * i + J - 0) + 1
				if t2 >= dur then
					last_alpha = "\\alpha&H00&"
				end
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\alpha&H00&)\\t(%s,%s,%s)", t1, t2, t3, t4, last_alpha )
				i = i + 1
				t_dur = t_dur - #Shapes * f_dur
			end
			if type( Shapes[ J ] ) == "table" then
				return format( "{%s%s}%s", Tag_fx, prop, Shapes[ J ][ j ] )
			end
			return format( "{%s%s}%s", Tag_fx, prop, Shapes[ J ] )
		end
	end
	
	function shape.movevc( Shape, Return, width_vc, height_vc, posx, posy, Dx, Dy, time_vci, time_vcf )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( width_vc ) == "function" then
			width_vc = width_vc( )
		end
		if type( height_vc ) == "function" then
			height_vc = height_vc( )
		end
		if type( posx ) == "function" then
			posx = posx( )
		end
		if type( posy ) == "function" then
			posy = posy( )
		end
		if type( Dx ) == "function" then
			Dx = Dx( )
		end
		if type( Dy ) == "function" then
			Dy = Dy( )
		end
		if type( time_vci ) == "function" then
			time_vci = time_vci( )
		end
		if type( time_vcf ) == "function" then
			time_vcf = time_vcf( )
		end
		effector.print_error( Shape, "shape", "shape.movevc", 1 )
		if ( width_vc and width_vc <= 0 )
			or width_vc == "default" then
			width_vc = val_width
		end
		if ( height_vc and height_vc <= 0 )
			or height_vc == "default" then
			height_vc = val_height
		end
		local Shpfx = recall.Sh1
		local SmvcW, SmvcH, Smark, ShmVC = recall.ShW, recall.ShH, recall.Mrk, recall.Svc
		local SVCti, SVCtf, SVCdx, SVCdy = recall.Sti, recall.Stf, recall.Sdx, recall.Sdy
		local SVCpx, SVCpy = recall.Spx, recall.Spy
		if j == 1 then
			Shpfx = remember( "Sh1", shape.origin( Shape ) )
			SmvcW = remember( "ShW", abs( width_vc or val_width ) )
			SmvcH = remember( "ShH", abs( height_vc or val_height ) )
			Shpfx = shape.size( Shpfx, SmvcW, SmvcH )
			shape.info( Shpfx )
			Smark = remember( "Mrk", format( "m %d %d m 0 0 ", SmvcW, SmvcH ) )
			ShmVC = remember( "Svc", table.concat2( shape.divide( Shpfx ), Smark ) )
		end
		if Return == "loops" or Return == "loop" then
			return #ShmVC
		end
		if Return == "shape" then
			return ShmVC[ j ]
		end
		if j == 1 then
			SVCti = remember( "Sti", (time_vci or fx.movet_i) )
			SVCtf = remember( "Stf", (time_vcf or fx.movet_f) )
			SVCdx = remember( "Sdx", (Dx or fx.move_x2 - fx.move_x1) )
			SVCdy = remember( "Sdy", (Dy or fx.move_y2 - fx.move_y1) )
			SVCpx = remember( "Spx", (posx or fx.move_x1) )
			SVCpy = remember( "Spy", (posy or fx.move_y1) )
		end
		local Tag_fx = ""
		maxloop( #ShmVC )
		if Return == "tag"
			or Return == nil then
			Tag_fx = format( "\\clip(%s)\\movevc(%s,%s,%s,%s,%s,%s)", ShmVC[ j ],
				math.round( SVCpx - SmvcW / 2, 2 ), math.round( SVCpy - SmvcH / 2, 2 ),
				math.round( SVCpx - SmvcW / 2 + SVCdx, 2 ), math.round( SVCpy - SmvcH / 2 + SVCdy, 2 ),
				math.round( SVCti, 2 ), math.round( SVCtf, 2 )
			)
			return Tag_fx
		end
	end
	
	function shape.movevci( Shape, Return, width_vc, height_vc, posx, posy, Dx, Dy, time_vci, time_vcf )
		effector.print_error( Shape, "shape", "shape.movevci", 1 )
		if width_vc then
			effector.print_error( width_vc, "numberstring", "shape.movevci", 3 )
		end
		if height_vc then
			effector.print_error( height_vc, "numberstring", "shape.movevci", 4 )
		end
		if posx then
			effector.print_error( posx, "number", "shape.movevci", 5 )
		end
		if posy then
			effector.print_error( posy, "number", "shape.movevci", 6 )
		end
		if Dx then
			effector.print_error( Dx, "number", "shape.movevci", 7 )
		end
		if Dy then
			effector.print_error( Dy, "number", "shape.movevci", 8 )
		end
		if time_vci then
			effector.print_error( time_vci, "number", "shape.movevci", 9 )
		end
		if time_vcf then
			effector.print_error( time_vcf, "number", "shape.movevci", 10 )
		end
		local  tag_Smvci = shape.movevc( Shape, Return, width_vc, height_vc, posx, posy, Dx, Dy, time_vci, time_vcf ):gsub( "clip", "iclip" )
		return tag_Smvci
	end

	function shape.divide( Shape, Mark )
		-- retorna una tabla con las shapes que conforman una shape
		-- si se quiere, retorna cada una de esas shapes con un marco
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Mark ) == "function" then
			Mark = Mark( )
		end
		effector.print_error( Shape, "shape", "shape.divide", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local Shapes, mark = { }, ""
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shapes[ i ] = shape.divide( Shape[ i ], Mark )
			end
		else --recursividad: september 08th 2019
			shape.info( Shape )
			if Mark == "default"
				or type( Mark ) == "number" then
				mark = format( "m %s %s m %s %s ", maxx, maxy, minx, miny )
			elseif type( Mark ) == "table" then
				mark = format( "m %s %s m %s %s ", Mark[ 3 ], Mark[ 4 ], Mark[ 1 ], Mark[ 2 ] )
			end
			for c in Shape:gmatch( "m %-?%d+[%.%d]* %-?%d+[%.%d]*[%-?%d%.lb ]*" ) do
				table.insert( Shapes, mark .. c )
			end
		end --shape.divide( { "m 50 53 l 23 66 m 50 53 l 54 84 ", "m 0 5 l 2 6 m 5 3 l 5 8 " } )
		return Shapes
	end --shape.divide( "m 50 53 l 23 66 l 20 96 l 46 84 m 50 53 l 54 84 l 81 97 l 78 66 " )
	
	function shape.to_shape( Table_points )
		--concatena una tabla con los valores de una Shape, para volverla en "string" nuevamente
		if type( Table_points ) == "function" then
			Table_points = Table_points( )
		end
		effector.print_error( Table_points, "table", "shape.to_shape", 1 )
		local Shape = ""
		for i = 1, #Table_points do
			Shape = Shape .. Table_points[ i ] .. " "
		end
		return Shape
	end
	
	function shape.retire( Shape, Index_1, Index_2 )
		--retira el o los segmentos de la shape que indiquemos
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Index_1 ) == "function" then
			Index_1 = Index_1( )
		end
		if type( Index_2 ) == "function" then
			Index_2 = Index_2( )
		end
		effector.print_error( Shape, "shape", "shape.retire", 1 )
		local Shape, coor = shape.ASSDraw3( Shape ), { }
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.retire( Shape[ i ], Index_1, Index_2 )
			end
		else --recursividad: september 08th 2019
			local I_1 = Index_1
			local I_2 = Index_2 or I_1
			effector.print_error( I_1, "number", "shape.retire", 2 )
			effector.print_error( I_2, "number", "shape.retire", 3 )
			for c in Shape:gmatch( "[mlb]^* %-?%d+[%.%d]* [%-%.%d ]*" ) do
				table.insert( coor, c )
			end
			Shape = shape.to_shape( table.retire( coor, I_1, I_2 ) )
		end
		return Shape
	end
	
	function shape.trajectory( Loop_t, distance_nim, distance_max )
		if type( Loop_t ) == "function" then
			Loop_t = Loop_t( )
		end
		if type( distance_nim ) == "function" then
			distance_nim = distance_nim( )
		end
		if type( distance_max ) == "function" then
			distance_max = distance_max( )
		end
		local Loop_t = ceil( Loop_t or linefx[ ii ].duration / 720 )
		local Dr_max = distance_max or 20 * ratio
		local Dr_min = distance_nim or 10 * ratio
		effector.print_error( Loop_t, "number", "shape.trajectory", 1 )
		effector.print_error( Dr_min, "number", "shape.trajectory", 2 )
		effector.print_error( Dr_max, "number", "shape.trajectory", 3 )
		local n, dist, Ang, px, py = 3 * (Loop_t + 1), R( Dr_min, Dr_max ), { }, { }, { }
		Ang[ -1 ] = R( 17 ) * 17
		Ang[ 0 ] = Ang[ -1 ] - 180
		px[ -1 ] = math.polar( Ang[ -1 ], dist, "x" )
		py[ -1 ] = math.polar( Ang[ -1 ], dist, "y" )
		px[ 0 ] = px[ -1 ] + math.polar( Ang[ 0 ], dist, "x" )
		py[ 0 ] = py[ -1 ] + math.polar( Ang[ 0 ], dist, "y" )
		for i = 1, n do
			dist = R( Dr_min, Dr_max )
			local Val = (i - 1) % 3 + 1
			if Val == 1 then
				Ang[ i ] = Ang[ i - 1 ]
			elseif Val == 2 then
				Ang[ i ] = Ang[ i - 1 ] + 90 * (-1) ^ R( 2 ) + R( -10, 10 ) * 5
			elseif Val == 3 then
				Ang[ i ] = Ang[ i - 1 ] + 90 * (-1) ^ i - R( -10, 10 ) * 5
			end
			px[ i ] = px[ i - 1 ] + math.polar( Ang[ i ], dist, "x" )
			py[ i ] = py[ i - 1 ] + math.polar( Ang[ i ], dist, "y" )
		end
		local tags, k = format( "m %s %s ", px[ 0 ], py[ 0 ] ), 0
		while k <= Loop_t do
			tags = tags .. format( "b %s %s %s %s %s %s ", 
				px[ 3 * k + 1 ], py[ 3 * k + 1 ], px[ 3 * k + 2 ], py[ 3 * k + 2 ], px[ 3 * k + 3 ], py[ 3 * k  + 3 ]
			)
			k = k + 1
		end
		return ( (j == 1) and remember( "tags", shape.ASSDraw3( tags ) ) or recall.tags )
	end --shape.trajectory( )
	
	function shape.Ltrajectory( length_total, length_curve, height_curve ) -- Curve in Line Trajectory
		if type( length_total ) == "function" then
			length_total = length_total( )
		end
		if type( length_curve ) == "function" then
			length_curve = length_curve( )
		end
		if type( height_curve ) == "function" then
			height_curve = height_curve( )
		end
		local ratio_y = height_curve or 40 * ratio
		local lengthC = length_curve or xres / 4
		local lengthT = length_total or xres - val_center
		effector.print_error( lengthT, "number", "shape.Ltrajectory", 1 )
		effector.print_error( lengthC, "number", "shape.Ltrajectory", 2 )
		effector.print_error( ratio_y, "number", "shape.Ltrajectory", 3 )
		local Loop_Lt = math.round( lengthT / lengthC )
		local loops, Rand, px, py = 3 * Loop_Lt, lengthT / ratio_y, { }, { }
		local Ang, Rad
		for i = 0, loops, 3 do
			px[ i ] = i * lengthC / 3
			py[ i ] = R( -Rand / 4, Rand / 4 )
		end
		for i = 1, loops + 1, 3 do
			px[ i ] = px[ i - 1 ] + R( -0.6 * lengthC, 0.6 * lengthC )
			py[ i ] = R( 0.7 * Rand, Rand ) * (-1) ^ R( 2 )
		end
		for i = 2, loops, 3 do
			Ang = math.angle( px[ i + 2 ], py[ i + 2 ], px[ i + 1 ], py[ i + 1 ] )
			Rad = math.distance( px[ i + 2 ], py[ i + 2 ], px[ i + 1 ], py[ i + 1 ] )
			px[ i ] = px[ i + 1 ] + math.polar( Ang, Rad, "x" )
			py[ i ] = py[ i + 1 ] + math.polar( Ang, Rad, "y" )
		end
		local k, tags = 0, "m 0 0 "
		while k <= Loop_Lt - 1 do
			tags = tags .. format( "b %s %s %s %s %s %s ", 
				px[ 3 * k + 1 ], py[ 3 * k + 1 ], px[ 3 * k + 2 ], py[ 3 * k + 2 ], px[ 3 * k + 3 ], py[ 3 * k + 3 ]
			)
			k = k + 1
		end
		return ( (j == 1) and remember( "tags", shape.ASSDraw3( tags ) ) or recall.tags )
	end --shape.Ltrajectory( )
	
	function shape.Ctrajectory( Loop_Ct, radius_min, radius_max ) -- Circle Trajectory
		if type( Loop_Ct ) == "function" then
			Loop_Ct = Loop_Ct( )
		end
		if type( radius_min ) == "function" then
			radius_min = radius_min( )
		end
		if type( radius_max ) == "function" then
			radius_max = radius_max( )
		end
		local R_max = radius_max or xres / 25
		local R_min = radius_min or xres / 40
		local loops = ceil( 3 * (Loop_Ct or linefx[ ii ].duration / 720) )
		effector.print_error( loops, "number", "shape.Ctrajectory", 1 )
		effector.print_error( R_min, "number", "shape.Ctrajectory", 2 )
		effector.print_error( R_max, "number", "shape.Ctrajectory", 3 )
		local px, py = { }, { }
		local Ang, Rad
		for i = -3, loops, 3 do
			Ang = R( 36 ) * 10
			Rad = R( R_min, R_max )
			px[ i ] = math.polar( Ang, Rad, "x" )
			py[ i ] = math.polar( Ang, Rad, "y" )
		end
		for i = -2, loops + 1, 3 do
			Ang = R( 20 ) * 18
			Rad = R( R_min, 2 * R_max )
			px[ i ] = px[ i - 1 ] + math.polar( Ang, Rad, "x" )
			py[ i ] = py[ i - 1 ] + math.polar( Ang, Rad, "y" )
		end
		for i = -1, loops, 3 do
			Ang = math.angle( px[ i + 2 ], py[ i + 2 ], px[ i + 1 ], py[ i + 1 ] )
			Rad = R( R_min / 2, 2.5 * R_max )
			px[i] = px[ i + 1 ] + math.polar( Ang, Rad, "x" )
			py[i] = py[ i + 1 ] + math.polar( Ang, Rad, "y" )
		end
		local k, tags = 0, format( "m 0 0 b %s %s %s %s %s %s ", px[ -2 ], py[ -2 ], px[ -1 ], py[ -1 ], px[ 0 ], py[ 0 ] )
		while k <= loops / 3 - 2 do
			tags = tags .. format( "b %s %s %s %s %s %s ",
				px[ 3 * k + 1 ], py[ 3 * k + 1 ], px[ 3 * k + 2 ], py[ 3 * k + 2 ], px[ 3 * k + 3 ], py[ 3 * k + 3 ]
			)
			k = k + 1
		end
		return ( (j == 1) and remember( "tags", shape.ASSDraw3( tags ) ) or recall.tags )
	end --shape.Ctrajectory( )
	
	function shape.Rtrajectory( Loop_Rt, radius_min, radius_max ) -- Random Trajectory
		if type( radius_max ) == "function" then
			radius_max = radius_max( )
		end
		if type( radius_max ) == "function" then
			radius_max = radius_max( )
		end
		if type( radius_max ) == "function" then
			radius_max = radius_max( )
		end
		local R_max = radius_max or xres / 25
		local R_min = radius_min or xres / 40
		local loops = ceil( 3 * (Loop_Rt or linefx[ ii ].duration / 720) )
		effector.print_error( loops, "number", "shape.Rtrajectory", 1 )
		effector.print_error( R_min, "number", "shape.Rtrajectory", 2 )
		effector.print_error( R_max, "number", "shape.Rtrajectory", 3 )
		local px, py = { }, { }
		local Ang, Rad
		for i = -3, loops, 3 do
			Ang = R( 36 ) * 10
			Rad = R( R_min, R_max )
			px[ i ] = math.polar( Ang, Rad, "x" )
			py[ i ] = math.polar( Ang, Rad, "y" )
		end
		for i = -2, loops + 1, 3 do
			Ang = R( 20 ) * 18
			Rad = R( R_min, 2 * R_max )
			px[ i ] = px[ i - 1 ] + math.polar( Ang, Rad, "x" )
			py[ i ] = py[ i - 1 ] + math.polar( Ang, Rad, "y" )
		end
		for i = -1, loops, 3 do
			Ang = R( 30 ) * 12
			Rad = R( R_min / 2, 2.5 * R_max )
			px[ i ] = px[ i + 1 ] + math.polar( Ang, Rad, "x" )
			py[ i ] = py[ i + 1 ] + math.polar( Ang, Rad, "y" )
		end
		local k, tags = 0, format( "m 0 0 b %s %s %s %s %s %s ", px[ -2 ], py[ -2 ], px[ -1 ], py[ -1 ], px[ 0 ], py[ 0 ] )
		while k <= loops / 3 - 2 do
			tags = tags .. format( "b %s %s %s %s %s %s ",
				px[ 3 * k + 1 ], py[ 3 * k + 1 ], px[ 3 * k + 2 ], py[ 3 * k + 2 ], px[ 3 * k + 3 ], py[ 3 * k + 3 ]
			)
			k = k + 1
		end
		return ( (j == 1) and remember( "tags", shape.ASSDraw3( tags ) ) or recall.tags )
	end --shape.Rtrajectory( )
	
	function shape.Strajectory( Loops_St, Radius ) -- Segment Line Trajectory
		if type( Loops_St ) == "function" then
			Loops_St = Loops_St( )
		end
		if type( Radius ) == "function" then
			Radius = Radius( )
		end
		local Radius = Radius or 0.75 * val_height
		local loops = ceil( Loops_St or linefx[ ii ].duration / 820 )
		effector.print_error( loops, "number", "shape.Strajectory", 1 )
		effector.print_error( Radius, "number", "shape.Strajectory", 2 )
		local angles = { [ 0 ] = R( 36 ) * 10 }
		for i = 1, loops do
			angles[ i ] = R( angles[ i - 1 ] + 110, angles[ i - 1 ] + 250 )
		end
		local tags, Rand = "m 0 0 ", 0
		for i = 1, loops do
			Rand = R( 0.7 * Radius, Radius )
			tags = format( "%sl %s %s ", tags, math.polar( angles[ i ], Rand, "x" ), math.polar( angles[ i ], Rand, "y" ) )
		end
		return ( (j == 1) and remember( "tags", shape.ASSDraw3( tags ) ) or recall.tags )
	end --shape.Strajectory( )
	
	function shape.multi1( Size_shape, Px )
		if type( Size_shape ) == "function" then
			Size_shape = Size_shape( )
		end
		local Shape = recall.shape_multi1
		if j == 1 then
			local i = 1
			local Px = Px or 4 * ratio
			local shpw, Pxi, Px1 = 0, 0, 0
			if Size_shape == "default"
				or Size_shape == nil then
				Size_shape = math.max( val_width, val_height )
			end
			effector.print_error( Size_shape, "number", "shape.multi1", 1 )
			effector.print_error( Px, "numbertable", "shape.multi1", 2 )
			if type( Px ) == "number" then
				Px = { Px }
			end
			if type( Px ) == "table" then
				Px1 = Px[ 1 ]
			elseif type( Px ) == "function" then
				Px1 = Px( 1 )
			end
			shpw = Px1
			Shape = format( "m 0 0 l 0 %s l %s %s l %s 0 l 0 0 ", Px1, Px1, Px1, Px1 )
			while 2 * shpw < Size_shape do
				if type( Px ) == "table" then
					Pxi = Px[ i % #Px + 1 ]
				elseif type( Px ) == "function" then
					Pxi = Px( i )
				end
				shpw = shpw + ((type( Pxi ) == "table") and Pxi[ 1 ] or Pxi)
				if type( Pxi ) == "number" then
					Shape = Shape .. format( "m %s %s l %s %s l %s %s l %s %s l %s %s l %s %s l %s %s l %s %s l %s %s l %s %s ", 
						-shpw + Px1, -shpw + Px1, -shpw + Px1, shpw, shpw, shpw, shpw, -shpw + Px1, -shpw + Px1, -shpw + Px1,
						-shpw + Px1 + Pxi, -shpw + Px1 + Pxi, shpw - Pxi, -shpw + Px1 + Pxi, shpw - Pxi, shpw - Pxi,
						-shpw + Px1 + Pxi, shpw - Pxi, -shpw + Px1 + Pxi, -shpw + Px1 + Pxi
					)
				end --mod: january 02nd 2019
				i = i + 1
			end
			Shape = remember( "shape_multi1", shape.origin( Shape ) )
		end
		return shape.ASSDraw3( Shape ) --shape.multi1( 100, { 10, { 4 } } )
	end --retorna shapes cuadradas concéntricas
	
	function shape.multi2( Width, Height, Pixel )
		if type( Width ) == "function" then
			Width = Width( )
		end
		if type( Height ) == "function" then
			Height = Height( )
		end
		if type( Pixel ) == "function" then
			Pixel = Pixel( )
		end
		local Shape = recall.shape_multi2
		if j == 1 then	
			local Pixel = Pixel or 6 * ratio
			local Width = Width or val_width
			local Height = Height or val_height
			effector.print_error( Width, "number", "shape.multi2", 1 )
			effector.print_error( Height, "number", "shape.multi2", 2 )
			effector.print_error( Pixel, "numbertable", "shape.multi2", 3 )
			if type( Pixel ) == "number" then
				Pixel = { Pixel }
			end
			local dimen = { x = Width, y = Height }
			if Height > Width then
				dimen = { x = Height, y = Width }
			end
			local i, Pxl_i = 1, 0
			local Shp2 = format( "m 0 0 l 0 %s l %s 0 l 0 0 l 0 0 ", Pixel[ 1 ], Pixel[ 1 ] )
			local dim_y = Pixel[ 1 ]
			while dim_y < dimen.y do
				if type( Pixel ) == "table" then
					Pxl_i = Pixel[ i % #Pixel + 1 ]
				end
				dim_y = dim_y + ((type( Pxl_i ) == "table") and Pxl_i[ 1 ] or Pxl_i)
				if type( Pxl_i ) == "number" then
					Shp2 = Shp2 .. format( "m 0 %s l 0 %s l %s 0 l %s 0 l 0 %s ", dim_y - Pxl_i, dim_y, dim_y, dim_y - Pxl_i, dim_y - Pxl_i )
				end
				i = i + 1
			end
			local dim_x, shp_y = dim_y, dim_y
			while dim_x < dimen.x do
				if type( Pixel ) == "table" then
					Pxl_i = Pixel[ i % #Pixel + 1 ]
				end
				dim_x = dim_x + ((type( Pxl_i ) == "table") and Pxl_i[ 1 ] or Pxl_i)
				if type( Pxl_i ) == "number" then
					Shp2 = Shp2 .. format( "m %s %s l %s %s l %s 0 l %s 0 l %s %s ",
						dim_x - shp_y - Pxl_i, shp_y, dim_x - shp_y, shp_y, dim_x, dim_x - Pxl_i, dim_x - shp_y - Pxl_i, shp_y
					)
				end
				i = i + 1
			end
			local shp_x = 0
			while shp_x < shp_y do
				if type( Pixel ) == "table" then
					Pxl_i = Pixel[ i % #Pixel + 1 ]
				end
				shp_x = shp_x + ((type( Pxl_i ) == "table") and Pxl_i[ 1 ] or Pxl_i)
				if type( Pxl_i ) == "number"
					and shp_x <= shp_y then
					Shp2 = Shp2 .. format( "m %s %s l %s %s l %s %s l %s %s l %s %s ",
						dim_x - shp_y + shp_x - Pxl_i, shp_y, dim_x - shp_y + shp_x, shp_y,
						dim_x, shp_x, dim_x, shp_x - Pxl_i, dim_x - shp_y + shp_x - Pxl_i, shp_y
					)
				end
				i = i + 1
			end
			if shp_x - ((type( Pxl_i ) == "table") and Pxl_i[ 1 ] or Pxl_i) < shp_y
				and type( Pxl_i ) == "number" then
				shp_x = shp_x - Pxl_i
				Shp2 = Shp2 .. format( "m %s %s l %s %s l %s %s l %s %s ",
					dim_x - shp_y + shp_x, shp_y, dim_x, shp_y, dim_x, shp_x, dim_x - shp_y + shp_x, shp_y
				)
			end
			if Height > Width then
				Shp2 = shape.reflect( shape.rotate( Shp2, -90 ) )
			end
			Shape = remember( "shape_multi2", Shp2 )
		end --mod: january 04th 2019
		return shape.ASSDraw3( Shape ) --shape.multi2( 36, 94, { 10, { 2 }, 5, { 3 } } )
	end	--crea shapes diagonales dentro de un rectángulo con medidas dadas
	
	function shape.multi3( Size, Bord, Shape )
		if type( Size ) == "function" then
			Size = Size( )
		end
		if type( Bord ) == "function" then
			Bord = Bord( )
		end
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape3 = recall.shape_multi3
		if j == 1 then
			local Shape = Shape or shape.circle
			local i, Shpfx1, Shpfx2 = 1, "", ""
			local Bord = Bord or 4 * ratio
			if type( Bord ) == "number" then
				Bord = { Bord }
			end
			local Size_max, Brd_i = Bord[ 1 ], 0
			if Size == "default"
				or Size == nil then
				Size = (val_width ^ 2 + val_height ^ 2) ^ 0.5
			end
			effector.print_error( Size, "numbertable", "shape.multi3", 1 )
			effector.print_error( Bord, "numbertable", "shape.multi3", 2 )
			effector.print_error( Shape, "shape", "shape.multi3", 3 )
			Shape3 = shape.incenter( shape.size( Shape, Bord[ 1 ] ) )
			while Size_max <= Size do
				if type( Bord ) == "table" then
					Brd_i = Bord[ i % #Bord + 1 ]
				end
				Size_max = Size_max + 2 * ((type( Brd_i ) == "table") and Brd_i[ 1 ] or Brd_i)
				if type( Brd_i ) == "number" then
					Shpfx1 = shape.incenter( shape.size( Shape, Size_max ) )
					Shpfx2 = shape.incenter( shape.reverse( shape.size( Shape, Size_max - 2 * Brd_i ) ):gsub( "m", "l", 1 ) )
					Shape3 = Shape3 .. Shpfx1 .. Shpfx2
				end
				i = i + 1
			end --mod: january 03rd 2019
			Shape3 = remember( "shape_multi3", shape.origin( Shape3 ) )
		end --shape.multi3( 100, { 8, { 5 } } )
		return shape.ASSDraw3( Shape3 )
	end --si no se pone "Shape", retorna círculos concéntricos, o shapes concéntricas de la que se haya ingresado
	
	function shape.multi4( Size, Loop1, Loop2, n )
		if type( Size ) == "function" then
			Size = Size( )
		end
		if type( Loop1 ) == "function" then
			Loop1 = Loop1( )
		end
		if type( Loop2 ) == "function" then
			Loop2 = Loop2( )
		end
		if type( n ) == "function" then
			n = n( )
		end
		local Shapefx = recall.Shpfx
		if j == 1 then
			local Sizer
			local Shape = ""
			local n = math.round( abs( n or 25 ) )
			if Size == "default" then
				Sizer = (val_width ^ 2 + val_height ^ 2) ^ 0.5
			else
				Sizer = Size
			end
			Sizer = math.round( Sizer or (val_width ^ 2 + val_height ^ 2) ^ 0.5 )
			Sizer = 2 * ceil( Sizer / 2 )
			local Loop1 = math.round( abs( Loop1 or 6 ) )
			if Loop1 < 3 then
				Loop1 = 3
			end
			local Pn = Sizer / 2
			local Loop2 = math.round( Loop2 or 1 )
			if Loop2 <= 0 then
				Loop2 = 1
			end
			effector.print_error( Sizer, "number", "shape.multi4", 1 )
			effector.print_error( Loop1, "number", "shape.multi4", 2 )
			effector.print_error( Loop2, "number", "shape.multi4", 3 )
			effector.print_error( n, "number", "shape.multi4", 4 )
			local Px = math.round( 0.5 * Sizer / Loop2 )
			local function multi40( Size40, Loop40, Px40 )
				local Size40 = 2 * ceil( Size40 / 2 )
				if Px40 >= Size40 / 2 then
					Px40 = Size40 / 2
				end
				local Angle = 360 / Loop40
				local Shapes = { }
				local Shape40 = ""
				for i = 1, math.round( 360 / Angle ) do
					Shapes[ i ] = format( "m %s %s l %s %s l %s %s l %s %s ", 
						math.polar( Angle * (i - 0), Size40 / 2 - Px40, "x" ),	math.polar( Angle * (i - 0), Size40 / 2 - Px40, "y" ),
						math.polar( Angle * (i - 0), Size40 / 2, "x" ),			math.polar( Angle * (i - 0), Size40 / 2, "y" ),
						math.polar( Angle * (i - 1), Size40 / 2, "x" ),			math.polar( Angle * (i - 1), Size40 / 2, "y" ),
						math.polar( Angle * (i - 1), Size40 / 2 - Px40, "x" ),	math.polar( Angle * (i - 1), Size40 / 2 - Px40, "y" )
					)
					Shape40 = Shape40 .. Shapes[ i ]
				end
				return Shape40
			end
			local i = 0
			while Pn > 0
				and i < n do
				Shape = Shape .. multi40( Pn * 2, Loop1, Px )
				Pn = Pn - Px
				i = i + 1
			end
			Shapefx = remember( "Shpfx", ( Loop1 % 2 == 1 )
				and shape.origin( shape.rotate( Shape, ((-1) ^ ((Loop1 - 1) / 2)) * 90 / Loop1 ) )
				or  shape.origin( Shape )
			)
		end
		return Shapefx --shape.multi4( 100, 6, 4, 3 )
	end --retorna un polígono regular de Loop1 lados, con un arreglo de Loop2. n es la cantidad de arreglos tomados en cuenta
	
	function shape.multi5( Shapes, Width, Height, Dxy )
		if type( Shapes ) == "function" then
			Shapes = Shapes( )
		end
		if type( Width ) == "function" then
			Width = Width( )
		end
		if type( Height ) == "function" then
			Height = Height( )
		end
		if type( Dxy ) == "function" then
			Dxy = Dxy( )
		end
		local Shape = recall.shape_multi5
		if j == 1 then
			local widths, heights, ShapeT, dis_xy = { }, { }, { }, { }
			local max_W, max_H
			if type( Shapes ) == "table" then
				for i = 1, #Shapes do
					widths[ i ] = shape.width( Shapes[ i ] )
					heights[ i ] = shape.height( Shapes[ i ] )
				end
				max_W = math.max( unpack( widths ) )
				max_H = math.max( unpack( heights ) )
				for i = 1, #Shapes do
					ShapeT[ i ] = ""
					for k = 1, #Shapes do
						ShapeT[ i ] = ShapeT[ i ] .. shape.displace(
							shape.incenter( Shapes[ (k - i) % #Shapes + 1 ] ), (k - 1) * max_W, (i - #Shapes) * max_H
						)
					end
				end
				Shape = shape.origin( table.op( ShapeT, "concat" ) )
			else
				Shape = Shapes or shape.size( shape.rectangle, 8 * ratio )
				Shape = shape.origin( Shape )
			end
			local Height = Height or val_height
			local Width = Width or val_width
			effector.print_error( Width, "number", "shape.multi5", 2 )
			effector.print_error( Height, "number", "shape.multi5", 3 )
			if Dxy == nil then
				dis_xy = { 0, 0 }
			elseif type( Dxy ) == "number" then
				dis_xy = { Dxy, 0 }
			else
				dis_xy = Dxy
			end
			local length_H = ceil( Width / (shape.width( Shape ) + dis_xy[ 1 ]) )
			local length_V = ceil( Height / (shape.height( Shape ) + dis_xy[ 2 ]) )
			Shape = remember( "shape_multi5", shape.array( Shape, { length_H, length_V }, "array", dis_xy ) )
		end
		return shape.ASSDraw3( Shape ) --shape.multi5( )
	end --retorna un arreglo matricial rectangular de las shapes ingresadas
	
	function shape.multi6( Size, Bord, Part ) -- december 30th 2016
		local Size = Size or 104
		local Bord = Bord or 4
		local Part = Part or 20
		if type( Size ) == "function" then
			Size = Size( )
		end
		if type( Bord ) == "function" then
			Bord = Bord( )
		end
		if type( Part ) == "function" then
			Part = Part( )
		end
		local Shape = recall.shape_multi6
		if j == 1 then
			effector.print_error( Size, "number", "shape.multi6", 1 )
			effector.print_error( Bord, "number", "shape.multi6", 2 )
			effector.print_error( Part, "number", "shape.multi6", 3 )
			Part = 4 * ceil( Part / 4 )
			local Wdt = math.round( (Size - Bord) / (Part / 4), 2 )
			local sh_top, sh_right, sh_bottom, sh_left = "", "", "", ""
			for i = 1, Part / 4 do
				sh_top = sh_top .. format( "m %s 0 l %s 0 l %s %s l %s %s ",
					Wdt * (i - 1), Wdt * i, Wdt * i, Bord, Wdt * (i - 1), Bord
				)
			end
			for i = 1, Part / 4 do
				sh_right = sh_right .. format( "m %s %s l %s %s l %s %s l %s %s ",
					Size, Wdt * (i - 1), Size, Wdt * i, Size - Bord, Wdt * i, Size - Bord, Wdt * (i - 1)
				)
			end
			for i = 1, Part / 4 do
				sh_bottom = sh_bottom .. format( "m %s %s l %s %s l %s %s l %s %s ",
					Size - Wdt * (i - 1), Size, Size - Wdt * i, Size, Size - Wdt * i, Size - Bord, Size - Wdt * (i - 1), Size - Bord
				)
			end
			for i = 1, Part / 4 do
				sh_left = sh_left .. format( "m 0 %s l 0 %s l %s %s l %s %s ",
					Size - Wdt * (i - 1), Size - Wdt * i, Bord, Size - Wdt * i, Bord, Size - Wdt * (i - 1)
				)
			end
			Shape = remember( "shape_multi6", sh_top .. sh_right .. sh_bottom .. sh_left )
		end
		return shape.ASSDraw3( Shape ) --shape.multi6( )
	end --retorna el perímetro de un cuadrado formado de rectángulos individuales
	
	function shape.multi7( Part, Radius )
		local Part = Part or 12
		local Radius = Radius or 50
		local Shape, Angle, Ang_B, Ratio = recall.shape_multi7
		if type( Part ) == "function" then
			Part = Part( )
		end
		if type( Radius ) == "function" then
			Radius = Radius( )
		end
		if j == 1 then
			Part = math.round( abs( Part ) )
			if Part < 2 then
				Part = 2
			end
			effector.print_error( Part, "number", "shape.multi7", 1 )
			effector.print_error( Radius, "numbertable", "shape.multi7", 2 )
			Angle = 360 / Part
			Ang_B = Angle * 0.295927
			Ratio = 1 / cos( rad( Ang_B ) ) --sin( deg( Angle / 2 ) )
			Shape = ""
			if type( Radius ) == "number" then
				for i = 1, Part do
					Shape = Shape .. format( "m 0 0 l %s %s b %s %s %s %s %s %s l 0 0 ",
						math.polar( Angle * ( i - 1 ), Radius, "x" ),					math.polar( Angle * ( i - 1 ), Radius, "y" ),
						math.polar( Angle * ( i - 1 ) + Ang_B, Radius * Ratio, "x" ),	math.polar( Angle * ( i - 1 ) + Ang_B, Radius * Ratio, "y" ),
						math.polar( Angle *  i - Ang_B, Radius * Ratio, "x" ),			math.polar( Angle *  i - Ang_B, Radius * Ratio, "y" ),
						math.polar( Angle *  i, Radius, "x" ),							math.polar( Angle *  i, Radius, "y" )
					)
				end
			else --type( Radius ) == "table"
				for i = 1, #Radius - 1 do
					for k = 1, Part do
						Shape = Shape .. format( "m %s %s b %s %s %s %s %s %s l %s %s b %s %s %s %s %s %s l %s %s ",
							math.polar( Angle * ( k - 1 ), Radius[ i + 1 ], "x" ),					math.polar( Angle * ( k - 1 ), Radius[ i + 1 ], "y" ),
							math.polar( Angle * ( k - 1 ) + Ang_B, Radius[ i + 1 ] * Ratio, "x" ),	math.polar( Angle * ( k - 1 ) + Ang_B, Radius[ i + 1 ] * Ratio, "y" ),
							math.polar( Angle *  k - Ang_B, Radius[ i + 1 ] * Ratio, "x" ),			math.polar( Angle *  k - Ang_B, Radius[ i + 1 ] * Ratio, "y" ),
							math.polar( Angle *  k, Radius[ i + 1 ], "x" ),							math.polar( Angle *  k, Radius[ i + 1 ], "y" ),
							math.polar( Angle *  k, Radius[ i ], "x" ),								math.polar( Angle *  k, Radius[ i ], "y" ),
							math.polar( Angle *  k - Ang_B, Radius[ i ] * Ratio, "x" ),				math.polar( Angle *  k - Ang_B, Radius[ i ] * Ratio, "y" ),
							math.polar( Angle * ( k - 1 ) + Ang_B, Radius[ i ] * Ratio, "x" ),		math.polar( Angle * ( k - 1 ) + Ang_B, Radius[ i ] * Ratio, "y" ),
							math.polar( Angle * ( k - 1 ), Radius[ i ], "x" ),						math.polar( Angle * ( k - 1 ), Radius[ i ], "y" ),
							math.polar( Angle * ( k - 1 ), Radius[ i + 1 ], "x" ),					math.polar( Angle * ( k - 1 ), Radius[ i + 1 ], "y" )
						)
					end
				end
			end
			Shape = remember( "shape_multi7", shape.origin( Shape ) )
		end
		return shape.ASSDraw3( Shape ) --shape.multi7( 12, { 20, 40, 60 } )
	end --retorna un círculo o el perímetro de un círculo hecho con segmentos individuales
	
	function shape.multi8( Shape, Size_ini, Size_fin, Loop )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Size_ini ) == "function" then
			Size_ini = Size_ini( )
		end
		if type( Size_fin ) == "function" then
			Size_fin = Size_fin( )
		end
		if type( Loop ) == "function" then
			Loop = Loop( )
		end
		local Shape = Shape or shape.rectangle
		Shape = shape.origin( Shape )
		local Size_i = Size_ini or shape.width( Shape )
		local Size_f = Size_fin or shape.width( Shape ) * 0.5
		local Loop_s = Loop or 8
		Size_i = abs( ceil( Size_i ) )
		Size_f = abs( ceil( Size_f ) )
		Loop_s = abs( ceil( Loop_s ) )
		if Loop_s < 2 then
			Loop_s = 2
		end
		local Size_max = math.max( Size_i, Size_f )
		local Size_min = math.min( Size_i, Size_f )
		local Shp_init = shape.size( Shape, Size_max, 0 )
		-- hace que lo más complicado de la función se ejecute sólo una vez -----------------------
		local Shp_mul8 = recall.shape8
		if j == 1 then
			Shp_mul8 = ""
			local Shp_cent, Shp_midd = 0.5 * shape.width( Shp_init ), 0.5 * shape.height( Shp_init )
			for i = 1, Loop_s do
				Shp_mul8 = Shp_mul8 .. shape.centerpos( shape.size( Shp_init, Size_max - (Size_max - Size_min) * (i - 1) / (Loop_s - 1), 0 ), Shp_cent, Shp_midd )
			end
			Shp_mul8 = remember( "shape8", Shp_mul8 )
		end
		-------------------------------------------------------------------------------------------
		return Shp_mul8 --shape.multi8( shape.rectangle, 100, 10, 10 )
		--january 11th 2018
	end --retorna shapes concéntricas desde una tamaño inicial hasta un tamaño final
	
	function shape.multi9( Shape, Loop, Tags, Vertical )
		if type( Loop ) == "function" then
			Loop = Loop( )
		end
		if type( Tags ) == "function" then
			Tags = Tags( )
		end
		local Shape = Shape or shape.rectangle
		local Loop_s = Loop or 8
		effector.print_error( Loop_s, "number", "shape.multi9", 2 )
		if Loop_s < 2 then
			Loop_s = 2
		end
		local Tags_s = Tags
		if Tags == nil then
			Tags_s = { }
			for i = 1, Loop_s do
				Tags_s[ i ] = format( "{\\1c%s}", random.color( nil, 82 ) )
			end
		end
		effector.print_error( Tags_s, "table", "shape.multi9", 3 )
		local tag_N = "{"
		if Vertical then
			tag_N = "{\\p0}\\N{\\p1"
		end --add: december 05th 2018
		local Shps_9 = "{\\p1}"
		if type( Shape ) == "string" then
			Shape = shape.origin( Shape )
			for i = 1, Loop_s do
				Shps_9 = Shps_9 .. tag_N .. Tags_s[ (i - 1) % #Tags_s + 1 ] .. "}" .. Shape
			end
		elseif type( Shape ) == "function" then
			for i = 1, Loop_s do
				Shps_9 = Shps_9 .. tag_N .. Tags_s[ (i - 1) % #Tags_s + 1 ] .. "}" .. shape.origin( Shape( i, Loop_s ) )
			end --january 24th 2018
			--[[
			my_filter = function( ... )
				local tbl = { ... }
				local i = tbl[ 1 ]
				local n = tbl[ 2 ]
				local mod = (i - 1) / (n - 1)
				return format( "m 0 0 l 0 50 l 0 %s l 4 %s l 4 %s l 0 %s ",
					40 + 10 * sin( pi * mod ), 40 + 10 * sin( pi * mod ),
					10 - 10 * sin( pi * mod ), 10 - 10 * sin( pi * mod )
				)
			end;
			Loop = ceil( (l.width + 160) / 4 );
			tags = table.ipol( { 255, 80, 255 }, Loop, "\\1a" )
			shape.multi9( my_filter, Loop, tags )
			--]]
		end
		-- elimina el primer salto de línea \N de la shape
		Shps_9 = Shps_9:gsub( "{\\p0}\\N{\\p1", "{", 1 )
		--------------------------------------------------
		return Shps_9
		--crea una shape formada por una secuencia de shapes en una única línea de fx
	end --january 13th 2018
	
	function shape.equality( Shape1, Shape2 )
		local segm1, segm2, Shapefx1, Shapefx2 = { }, { }, { }, { }
		for c in Shape1:gmatch( "[blm]* %-?%d+[%.%d]* [%-%.%d ]*" ) do
			table.insert( segm1, c )
		end
		for c in Shape2:gmatch( "[blm]* %-?%d+[%.%d]* [%-%.%d ]*" ) do
			table.insert( segm2, c )
		end
		local difference = abs( #segm1 - #segm2 )
		if difference == 0 then
			return { Shape1, Shape2 }
		end
		local n, N, segm
		if #segm1 < #segm2 then
			n, N = ceil( difference / #segm1 ), ceil( #segm1 / difference )
			for i = 1, #segm1 do
				if i % N == 0 then
					segm = ""
					for k = 1, N + 1 do
						segm = segm .. segm1[ i ]
					end
					Shapefx1[ i ] = segm
				else
					Shapefx1[ i ] = segm1[ i ]
				end
			end
			Shapefx1 = table.op( Shapefx1, "concat" )
			Shapefx2 = Shape2
		else
			n, N = ceil( difference / #segm2 ), ceil( #segm2 / difference )
			for i = 1, #segm2 do
				if i % N == 0 then
					segm = ""
					for k = 1, N + 1 do
						segm = segm .. segm2[ i ]
					end
					Shapefx2[ i ] = segm
				else
					Shapefx2[ i ] = segm2[ i ]
				end
			end
			Shapefx1 = Shape1
			Shapefx2 = table.op( Shapefx2, "concat" )
		end
		return Shapefx1, Shapefx2
	end
	
	function shape.morphism( Size, Shape1, Shape2, Accel )
		if type( Size ) == "function" then
			Size = Size( )
		end
		if type( Shape1 ) == "function" then
			Shape1 = Shape1( )
		end
		if type( Shape2 ) == "function" then
			Shape2 = Shape2( )
		end
		if type( Accel ) == "function" then
			Accel = Accel( )
		end
		local Accel  = Accel or 1
		local Shapes = recall.shape_morphism
		effector.print_error( Size,  "number", "shape.morphism", 1 )
		effector.print_error( Shape1, "shape", "shape.morphism", 2 )
		effector.print_error( Shape2, "shape", "shape.morphism", 3 )
		effector.print_error( Accel, "number", "shape.morphism", 4 )
		if j == 1 then
			local coor1, coor2 = { }, { }
			local k
			if Size < 2
				or Size == nil then
				Size = 4
			end
			Size = math.round( Size )
			for c in Shape1:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( coor1, tonumber( c ) )
			end
			for c in Shape2:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( coor2, tonumber( c ) )
			end
			Shapes = { }
			for i = 1, Size do
				k = 1
				Shapes[ i ] = Shape1:gsub( "%-?%d+[%.%d]*", 
					function( val )
						if coor2[ (k - 1) % #coor1 + 1 ]
							and coor1[ k ] then
							val = val + (coor2[ (k - 1) % #coor1 + 1 ] - coor1[ k ]) * ((i - 1) / (Size - 1)) ^ Accel
						else
							val = val + (coor1[ (k - 1) % #coor2 + 1 ] - coor2[ k ]) * (1 - (i - 1) / (Size - 1)) ^ Accel
						end
						k = k + 1
						return val
					end
				)
				Shapes[ i ] = shape.ASSDraw3( Shapes[ i ] )
			end
			Shapes = remember( "shape_morphism", Shapes )
		end
		return Shapes --shape.morphism( 6, shape.to_bezier( shape.rectangle ), shape.circle )
	end --retorna una tabla con la interpolación entre las dos shapes ingresadas
	
	function shape.bord( Shape, Bord, Size )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Bord ) == "function" then
			Bord = Bord( )
		end
		if type( Size ) == "function" then
			Size = Size( )
		end
		effector.print_error( Shape, "shape", "shape.bord", 1 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.bord( Shape[ i ], Bord, Size )
			end
		else --recursividad: september 08th 2019
			shape.info( Shape )
			local P_first, Size_x, Size_y, Shape_1, Shape_2, Shape_B = { }, w_shape, h_shape, "", "", ""
			P_first.x = tonumber( Shape:match( "m (%-?%d+[%.%d]*) %-?%d+[%.%d]* " ) )
			P_first.y = tonumber( Shape:match( "m %-?%d+[%.%d]* (%-?%d+[%.%d]*) " ) )
			local Size = Size or { [ 1 ] = w_shape, [ 2 ] = h_shape }
			local Bord = Bord or 4
			effector.print_error( Bord, "number", "shape.bord", 2 )
			effector.print_error( Size, "numbertable", "shape.bord", 3 )
			if type( Size ) == "table" then
				Size_x, Size_y = Size[ 1 ], Size[ 2 ]
			elseif type( Size ) == "number" then
				Size_x, Size_y = Size, Size
			end
			Bord = abs( Bord )
			if  Bord > floor( math.min( Size_x, Size_y ) / 2 ) - 1 then
				Bord = floor( math.min( Size_x, Size_y ) / 2 ) - 1
			end
			Shape_1 = shape.incenter( shape.size( Shape, Size_x, Size_y ) )
			Shape_2 = shape.incenter( shape.size( shape.reverse( Shape ), Size_x - 2 * Bord, Size_y - 2 * Bord ) )
			Shape_2 = "l" .. Shape_2:sub( 2, -1 )
			Shape_B = Shape_1 .. Shape_2
			Shape = shape.firstpos( Shape_B, P_first.x, P_first.y )
		end
		return Shape
	end --shape.bord( shape.circle, 8, 120 )
	
	function shape.from_audio( Audio_wav, Width_wav, Height_scale_wav, Thickness_wav, Offset_time )
		local Wav_fil = Audio_wav or "test.wav"
		local Wav_frm = 2 * frame_dur
		local Wav_wth = Width_wav or l.width + 20 * ratio
		local Wav_hht = Height_scale_wav or 1 / 220 -- = 0.0045
		local Wav_tkn = Thickness_wav or 6 * ratio
		local Wav_otm = Offset_time or 0
		effector.print_error( Wav_fil, "string", "shape.from_audio", 1 )
		effector.print_error( Wav_wth, "number", "shape.from_audio", 2 )
		effector.print_error( Wav_hht, "number", "shape.from_audio", 3 )
		effector.print_error( Wav_tkn, "number", "shape.from_audio", 4 )
		effector.print_error( Wav_otm, "number", "shape.from_audio", 5 )
		local Wav_pos = effector.new_pos( fx.pos_x - Wav_wth / 2, fx.pos_y )
		if Wav_hht <= 0
			or Wav_hht >= 1 then
			Wav_hht = 1 / 150
		end
		function audio_to_shape( Samples, Width, Height_scale, Thickness )
			local thick, n = Thickness / 2, #Samples
			local Shape = format( "m 0 %s l", Samples[ 1 ] * Height_scale - thick )
			for i = 2, n do
				Shape = format( "%s %s %s", Shape, (i - 1) / (n - 1) * Width, Samples[ i ] * Height_scale - thick )
			end
			for i = n, 1, -1 do
				Shape = format( "%s %s %s", Shape, (i - 1) / (n - 1) * Width, Samples[ i ] * Height_scale + thick )
			end
			return Shape
		end
		if Wav_fil:match( "%.wav" ) == nil then
			Wav_fil = Wav_fil .. ".wav"
		end
		local reader = Yutils.decode.create_wav_reader( Wav_fil )
		local chunk_size = reader.sample_from_ms( Wav_frm )
		maxloop( (linefx[ ii ].duration + 2 * Wav_otm) / Wav_frm )
		local ms = linefx[ ii ].start_time + Wav_frm * (j - 1)
		retime( "preline", Wav_frm * (j - 1) - Wav_otm, Wav_frm * j - Wav_otm )
		reader.position( floor( reader.sample_from_ms( ms ) ) )
		local Shape = shape.ratio( audio_to_shape( reader.samples( chunk_size )[ 1 ], Wav_wth / 2, Wav_hht, Wav_tkn ), 2, 1 )
		Shape = shape.ASSDraw3( Shape )
		return format( "{\\an7%s\\p1}%s", Wav_pos, Shape )
	end --shape.from_audio( )
	
	function shape.to_pixels( Shape, Shape2, Seed, Filter )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Shape2 ) == "function" then
			Shape2 = Shape2( )
		end
		if type( Seed ) == "function" then
			Seed = Seed( )
		end
		effector.print_error( Shape, "shape", "shape.to_pixels", 1 )
		local Shape = shape.ASSDraw3( Shape )
		shape.info( Shape )
		local shape_pixel, pixel_table
		local pixel_datas, pixel, pixel_pos = { }, recall.pxl, ""
		if j == 1 then
			pixel_table = Yutils.shape.to_pixels( Shape )
			pixel = { }
			for i = 1, #pixel_table do
				pixel_datas[ i ] = { }
				for k, v in pairs( pixel_table[ i ] ) do
					table.insert( pixel_datas[ i ], v )
				end
			end
			for i = 1, #pixel_table do
				pixel[ i ] = { }
				pixel[ i ].x = fx.move_x1 - w_shape / 2 + pixel_datas[ i ][ 2 ]
				pixel[ i ].y = fx.move_y1 - h_shape / 2 + pixel_datas[ i ][ 1 ]
				pixel[ i ].a = alpha.val2ass( 255 - pixel_datas[ i ][ 3 ] )
			end
			pixel = remember( "pxl", pixel ) --fix: september 08th 2018
			maxloop( #pixel_datas )
		end
		pixel_pos = effector.new_pos( pixel[ j ].x, pixel[ j ].y )
		if Filter then
			pixel_pos = Filter( pixel )
		end
		fx.pos_x, fx.pos_y = pixel[ j ].x, pixel[ j ].y
		---------------------------------------
		if Shape2 then
			if type( Shape2 ) == "function" then
				shape_pixel = Shape2( )
			elseif type( Shape2 ) == "table" then
				shape_pixel = Shape2[ math.i( j, #Shape2 )[ "1-->A" ] ]
			else
				shape_pixel = Shape2
			end
		else
			shape_pixel = shape.pixel
		end
		---------------------------------------
		effector.print_error( shape_pixel, "shape", "shape.to_pixels", 2 )
		if Seed then --si posgroup existe
			effector.print_error( Seed, "number", "shape.to_pixels", 3 )
			if R( Seed ) == 1 then
				return format( "{\\1a%s\\bord0\\shad0%s\\p1}%s", pixel[ j ].a, pixel_pos, shape_pixel )
			end
			return nil
		end
		return format( "{\\1a%s\\bord0\\shad0%s\\p1}%s", pixel[ j ].a, pixel_pos, shape_pixel )
		--[[
		my_filter = function( pixel )
			local Px, Py = recall.Px, recall.Py
			if j == 1 then
				Px, Py = remember( "Px", { } ), remember( "Py", { } )
				for i = 1, 5 do
					Px[ i ] = Rsr( 18, 42 )
					Py[ i ] = Rsr( 18, 42 )
				end
			end
			local t = Rc( 0, 1 )
			local mod = math.i( t * 100, 0, 50 )[ "A-->B-->A" ] / 50
			local Dx, Dy = math.confi_bezier( 5, Px, Py, t )
			return format( "\\move(%s,%s,%s,%s)",
				pixel[ j ].x, pixel[ j ].y, fx.move_x1 + Dx + Rrs( 10 ) * mod, fx.move_y1 + Dy + Rrs( 10 ) * mod
			)
		end
		shape.to_pixels( shape.bord( shape.circle, 1 ), nil, 5, my_filter )
		--]]
	end --shape.to_pixels( shape.bord( shape.circle, 1 ), nil, 10 )
	
	function shape.bord_to_pixels( Shape, Shape2, Pixel, Seed, Filter )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Shape2 ) == "function" then
			Shape2 = Shape2( )
		end
		if type( Pixel ) == "function" then
			Pixel = Pixel( )
		end
		if type( Seed ) == "function" then
			Seed = Seed( )
		end
		effector.print_error( Shape, "shape", "shape.bord_to_pixels", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local bord_shape
		local size_pixel = Pixel or 2
		local seed_space = Seed or 1
		shape.info( Shape )
		effector.print_error( size_pixel, "number", "shape.bord_to_pixels", 3 )
		effector.print_error( seed_space, "number", "shape.bord_to_pixels", 4 )
		local points = recall.shppnt
		if j == 1 then
			points = remember( "shppnt", shape.point( Shape, size_pixel ) )
			maxloop( #points )
		end
		---------------------------------------
		if Shape2 then
			if type( Shape2 ) == "function" then
				bord_shape = Shape2( )
			elseif type( Shape2 ) == "table" then
				bord_shape = Shape2[ math.i( j, #Shape2 )[ "1-->A" ] ]
			else
				bord_shape = Shape2
			end
		else
			bord_shape = shape.pixel
		end
		effector.print_error( bord_shape, "shape",  "shape.bord_to_pixels", 2 )
		---------------------------------------
		local bordpixel_pos = effector.new_pos( points[ j ].x, points[ j ].y )
		if Filter then
			bordpixel_pos = Filter( points )
		end
		fx.pos_x, fx.pos_y = points[ j ].x, points[ j ].y
		if R( seed_space ) == 1 then --si posgroup existe
			return format( "{%s\\bord0\\shad0\\p1}%s", bordpixel_pos, bord_shape )
		end
		return nil
	end --shape.bord_to_pixels( shape.circle )
	
	function shape.fxline( P1, P2, Radius )
		if type( P1 ) == "function" then
			P1 = P1( )
		end
		if type( P2 ) == "function" then
			P2 = P2( )
		end
		if type( Radius ) == "function" then
			Radius = Radius( )
		end
		local P1 = P1 or { val_left, val_middle }
		local P2 = P2 or { val_right, val_middle }
		local Radius = Radius or val_width
		local Shape = ""
		local P2x, P2y
		effector.print_error( P1, "table", "shape.fxline", 1 )
		effector.print_error( P2, "numbertable", "shape.fxline", 2 )
		effector.print_error( Radius, "number", "shape.fxline", 3 )
		if type( P2 ) == "table" then
			Shape = format( "m %s %s l %s %s ", P1[ 1 ], P1[ 2 ], P2[ 1 ], P2[ 2 ] )
		else
			P2x = P1[ 1 ] + math.polar( P2, Radius, "x" )
			P2y = P1[ 2 ] + math.polar( P2, Radius, "y" )
			Shape = format( "m %s %s l %s %s ", P1[ 1 ], P1[ 2 ], P2x, P2y )
		end
		return shape.ASSDraw3( Shape )
	end --shape.fxline( )
	
	function shape.fxcircle( Shape )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local ShapeC = ""
		local Cpx, Cpy, Radius
		if Shape == nil then
			Shape = ""
			if linefx[ ii ].text:match( "\\i?clip%b()" ) then
				Shape = linefx[ ii ].text:match( "\\i?clip%b()" )
			end
		end
		effector.print_error( Shape, "stringtable", "shape.fxcircle", 1 )
		if type( Shape ) == "string"
			and Shape ~= "" then
			Cpx, Cpy, Radius = math.circle( Shape )
			ShapeC = shape.displace( shape.incenter( shape.size( shape.circle, 2 * Radius ) ), Cpx, Cpy )
			ShapeC = format( "{\\an7\\pos(0,0)}%s", ShapeC )
		elseif type( Shape ) == "table" then
			ShapeC = shape.displace( shape.incenter( shape.size( shape.circle, 2 * Shape[ 3 ] ) ), Shape[ 1 ], Shape[ 2 ] )
			ShapeC = format( "{\\an7\\pos(0,0)}%s", ShapeC )
		end
		return ShapeC
	end --shape.fxcircle( )
	
	function shape.trim( Shape, Lines, Mark, Ratio )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Lines ) == "function" then
			Lines = Lines( )
		end
		if type( Mark ) == "function" then
			Mark = Mark( )
		end
		if type( Ratio ) == "function" then
			Ratio = Ratio( )
		end
		effector.print_error( Shape, "shape", "shape.trim", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local Mark = Mark or ""
		local Ratio = Ratio or 1
		effector.print_error( Lines, "table", "shape.trim", 2 )
		effector.print_error( Mark, "numbershapetable", "shape.trim", 3 )
		effector.print_error( Ratio, "number", "shape.trim", 4 )
		shape.info( Shape)
		if Mark == 1 then
			Mark = format( "m %s %s m %s %s ", maxx, maxy, minx, miny )
		elseif type( Mark ) == "table" then
			Mark = format( " m %s %s m 0 0 ", Mark[ 1 ] * Ratio, Mark[ 2 ] * Ratio )
		end
		local trim_tbl = recall.trim_table
		if j == 1 then
			trim_tbl = remember( "trim_table", { Shape } )
			local trim_n
			local function get_shapes( Shape, Line )
				local function get_var( Line )
					local x1, y1, x2, y2, m, b, ang
					if type( Line ) == "table" then
						x1, y1 = Line[ 1 ], Line[ 2 ]
						if #Line == 4 then -- tabla de 2 puntos
							x2, y2 = Line[ 3 ], Line[ 4 ]
						elseif #Line == 3 then
							if type( Line[ 3 ] ) == "number" then --table de punto y ángulo
								x2 = x1 + math.polar( Line[ 3 ], 1, "x" )
								y2 = y1 + math.polar( Line[ 3 ], 1, "y" )
							elseif type( Line[ 3 ] ) == "table" then --tabla de punto y pendiente
								x2 = x1 + 1
								y2 = y1 + Line[ 3 ][ 1 ]
							end
						else
							ang = 5 + R( 36 ) * 10
							x2 = x1 + math.polar( ang, 1, "x" )
							y2 = y1 + math.polar( ang, 1, "y" )
						end
					else
						local coor = { }
						for num in Line:gmatch( "%-?%d+[%.%d]*" ) do
							table.insert( coor, tonumber( num ) )
						end
						x1, y1, x2, y2 = coor[ 1 ], coor[ 2 ], coor[ 3 ], coor[ 4 ]
					end
					x1, y1, x2, y2 = x1 * Ratio, y1 * Ratio, x2 * Ratio, y2 * Ratio
					if x1 ~= x2 then
						m = (y2 - y1) / (x2 - x1)
						b = y1 - m * x1
					else
						m = x1
						b = nil
					end
					return m, b
				end
				local function get_point( Shape, Line )
					local shp_trim = { }
					local m, b = get_var( Line )
					if b then
						shp_trim[ 1 ] = Shape:gsub( "([mlb]*) (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
							function( c, x, y )
								if c and tonumber( y ) <= m * tonumber( x ) + b then
									if tonumber( y ) + 0.99 * Ratio >= m * tonumber( x ) + b then
										y = m * tonumber( x ) + b
									end
									return format( "%s %s %s ", c, x, y )
								end
								return ""
							end
						)
						shp_trim[ 2 ] = Shape:gsub( "([mlb]*) (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
							function( c, x, y )
								if c and tonumber( y ) >= m * tonumber( x ) + b then
									if tonumber( y ) + 0.99 * Ratio <= m * tonumber( x ) + b then
										y = m * tonumber( x ) + b
									end
									return format( "%s %s %s ", c, x, y )
								end
								return ""
							end
						)
					else
						shp_trim[ 1 ] = Shape:gsub( "([mlb]*) (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
							function( c, x, y )
								if c and tonumber( x ) >= m then
									if tonumber( x ) + 0.99 * Ratio <= m then
										x = m
									end
									return format( "%s %s %s ", c, x, y )
								end
								return ""
							end
						)
						shp_trim[ 2 ] = Shape:gsub( "([mlb]*) (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
							function( c, x, y )
								if c and tonumber( x ) <= m then
									if tonumber( x ) + 0.99 * Ratio >= m then
										x = m
									end
									return format( "%s %s %s ", c, x, y )
								end
								return ""
							end
						)
					end
					return shp_trim
				end
				local Line = Line or "m 0 0 l 1 0 "
				local trims = { }
				local shape_trims = { [ 1 ] = "", [ 2 ] = "" }
				local Shapes = shape.divide( Shape )
				for i = 1, #Shapes do
					Shapes[ i ] = shape.redraw( Shapes[ i ], Ratio )
					trims[ i ] = get_point( Shapes[ i ], Line )
				end
				for i = 1, #trims do
					trims[ i ][ 1 ] = "m" .. trims[ i ][ 1 ]:sub( 2, -1 )
					trims[ i ][ 2 ] = "m" .. trims[ i ][ 2 ]:sub( 2, -1 )
					if trims[ i ][ 1 ]:match( "m (%-?%d+[%.%d]* %-?%d+[%.%d]* )" ) then
						trims[ i ][ 1 ] = trims[ i ][ 1 ] .. trims[ i ][ 1 ]:match( "m (%-?%d+[%.%d]* %-?%d+[%.%d]* )" )
					end
					if trims[ i ][ 2 ]:match( "m (%-?%d+[%.%d]* %-?%d+[%.%d]* )" ) then
						trims[ i ][ 2 ] = trims[ i ][ 2 ] .. trims[ i ][ 2 ]:match( "m (%-?%d+[%.%d]* %-?%d+[%.%d]* )" )
					end
					if trims[ i ][ 1 ] == "m" then
						trims[ i ][ 1 ] = ""
					end
					if trims[ i ][ 2 ] == "m" then
						trims[ i ][ 2 ] = ""
					end
				end
				for i = 1, #trims do
					shape_trims[ 1 ] = shape_trims[ 1 ] .. trims[ i ][ 1 ]
					shape_trims[ 2 ] = shape_trims[ 2 ] .. trims[ i ][ 2 ]
				end
				shape_trims[ 1 ] = shape.reduce( shape.ASSDraw3( shape_trims[ 1 ] ), 5 )
				shape_trims[ 2 ] = shape.reduce( shape.ASSDraw3( shape_trims[ 2 ] ), 5 )
				for i, v in pairs( shape_trims ) do
					if v == "" then
						table.remove( shape_trims, i )
					end
				end
				return shape_trims
			end
			local trim_aux = { }
			for i = 1, #Lines do
				trim_n = #trim_tbl
				for k = 1, trim_n do
					trim_aux = table.inserttable( trim_aux, get_shapes( trim_tbl[ k ], Lines[ i ] ) )
				end
				trim_tbl = table.duplicate( trim_aux )
				trim_aux = { }
			end
			for i = 1, #trim_tbl do
				trim_tbl[ i ] = shape.ASSDraw3( Mark ) .. trim_tbl[ i ]
			end
		end
		return trim_tbl
	end --tbl = shape.trim( shape.rectangle, { "m 0 100 l 100 0 ", "m 0 0 l 100 100 ", { 0, 20, 100, 20 } } )

	function shape.reduce( Shape )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.reduce", 1 )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.reduce( Shape[ i ] )
			end
		else --recursividad: september 08th 2019
			local function get_reduce( Shape_red )
				Shape_red = Shape_red:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*) l (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) l (%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
					function( x1, y1, x2, y2, x3, y3 )
						local angle1 = math.angle( x1, y1, x2, y2 )
						local angle2 = math.angle( x1, y1, x3, y3 )
						if math.round( angle1, 1 ) == math.round( angle2, 1 ) then
							return format( "%s %s l %s %s", x1, y1, x3, y3 )
						end
					end
				)
				return Shape_red
			end
			while Shape ~= get_reduce( Shape ) do
				Shape = get_reduce( Shape )
			end
		end
		return Shape
		--shape.reduce( shape.redraw( shape.rectangle, 4 ) )
	end --shape.reduce( "m 0 0 l 0 2 l 0 3 l 0 5 l 0 6 l 0 8 l 0 9 l 0 11 l 0 12 l 0 14 " )

	function shape.inclip( Tags )
		local Shape = shape.displace( format( "m 0 0 l %s 0", l_width ), l_left, l_middle )
		local Shpos = ""
		if Tags then
			Shpos = "{\\an7\\pos(0,0)}"
		end
		if linefx[ ii ].text:match( "\\i?clip%b()" ) then
			Shape = shape.ASSDraw3( linefx[ ii ].text:match( "\\i?clip%b()" ) )
		end
		return format( "%s%s", Shpos, Shape )
	end

	function shape.matrix( Shape, ... )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.matrix", 1 )
		local Matrixes = { ... }
		if #Matrixes == 0 then
			Matrixes[ 1 ] = {
				1,	0,	0,
				0,	1,	0,
				0,	0,	1
			}
		end
		for i = 1, #Matrixes do
			if #Matrixes[ i ] ~= 9 then
				error( "<<Error: shape.matrix>> Cada matriz debe ser de tamaño 3x3\n3x3 matrix expected", 2 )
			end
			for _, v in ipairs( Matrixes[ i ] ) do
				if type( v ) ~= "number" then
					error( "<<Error: shape.matrix>> Cada matriz solo debe contener números\nmatrix must contain only numbers", 2 )
				end
			end
		end
		local Matrix = math.matrix_mul2( unpack( Matrixes ) )
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.matrix( Shape[ i ], ... )
			end
		else --recursividad: september 08th 2019
			Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
				function( x, y )
					local Points = { tonumber( x ), tonumber( y ), 1 } --> coordenadas homogéneas
					local Mtable = math.matrix_mul( Points, Matrix )
					x = Mtable[ 1 ]
					y = Mtable[ 2 ]
					return format( "%s %s", x, y )
				end
			)
			Shape = shape.ASSDraw3( Shape )
		end
		return Shape
	end
	
	function shape.iso( Shape1, Shape2, Trim )
		local Trim = Trim or 8
		local Shape1 = shape.filter2( Shape1, nil, Trim )
		local Shape2 = shape.filter2( Shape2, nil, Trim )
		local Shapes1 = shape.divide( Shape1 )
		local Shapes2 = shape.divide( Shape2 )
		local function equ( Table1, Table2 )
			local table_max, table_min
			local orden, tables = { }, { }
			if #Table1 >= #Table2 then
				table_max = table.duplicate( Table1 )
				table_min = table.duplicate( Table2 )
				orden = { 2, 1 }
			else
				table_max = table.duplicate( Table2 )
				table_min = table.duplicate( Table1 )
				orden = { 1, 2 }
			end
			for i = 1, #table_max - #table_min do
				table.insert( table_min, table_min[ i ] )
			end
			tables = {
				[ 1 ] = table_min,
				[ 2 ] = table_max
			}
			return tables[ orden[ 1 ] ], tables[ orden[ 2 ] ]
		end
		local function equ_tramos( Tramo1, Tramo2 )
			local function tramos( Shape )
				segments = { }
				for c in Shape:gmatch( "[mlb]^* %-?%d+[%.%d]*[%-%d%. ]*" ) do
					table.insert( segments, c )
				end
				return segments
			end
			local segment_1 = tramos( Tramo1 )
			local segment_2 = tramos( Tramo2 )
			segment_1[ 1 ] = segment_1[ 1 ]:gsub( "m", "l" )
			segment_2[ 1 ] = segment_2[ 1 ]:gsub( "m", "l" )
			local segm_max, segm_min
			local orden, Shapes = { }, { }
			if #segment_1 >= #segment_2 then
				segm_max = segment_1
				segm_min = segment_2
				orden = { 2, 1 }
			else
				segm_max = segment_2
				segm_min = segment_1
				orden = { 1, 2 }
			end
			for i = 1, #segm_max - #segm_min do
				table.insert( segm_min, 2 * i - 1, segm_min[ 2 * i - 1 ] )
			end
			segm_min[ 1 ] = segm_min[ 1 ]:gsub( "l", "m" )
			segm_max[ 1 ] = segm_max[ 1 ]:gsub( "l", "m" )
			Shapes = {
				[ 1 ] = table.op( segm_min, "concat" ),
				[ 2 ] = table.op( segm_max, "concat" )
			}
			return Shapes[ orden[ 1 ] ], Shapes[ orden[ 2 ] ]
		end
		Shapes1, Shapes2 = equ( Shapes1, Shapes2 )
		for i = 1, #Shapes1 do
			Shapes1[ i ], Shapes2[ i ] = equ_tramos( Shapes1[ i ], Shapes2[ i ] )
		end
		return table.op( Shapes1, "concat" ), table.op( Shapes2, "concat" )
	end --shape.iso( shape.circle, shape.rectangle )
	
	function shape.do_shape( Shape1, Shape2, Mode, Split )
		if type( Shape1 ) == "function" then
			Shape1 = Shape1( )
		end
		if type( Shape2 ) == "function" then
			Shape2 = Shape2( )
		end
		if type( Split ) == "function" then
			Split = Split( )
		end
		local Split = Split or 2
		local Shape1 = shape.ASSDraw3( Shape1 )
		local Shape2 = shape.ASSDraw3( Shape2 )
		local Shape1 = shape.filter2( Shape1, nil, Split )
		local Ratio = math.round( shape.width( Shape1 ) / shape.length( Shape2 ), 3 )
		local Mode = Mode or 1
		local Filter
		if type( Mode ) == "function" then
			Filter = Mode
		end
		if shape.length( Shape2 ) < shape.width( Shape1 ) then
			Filter = function( x, y )
				return x, y
			end
		else
			if Mode == 1 then		-- centrado
				Filter = function( x, y )
					return (1 - Ratio) / 2 + Ratio * x, y
				end
			elseif Mode == 2 then	-- de inicio a fin
				Filter = function( x, y )
					return Ratio * x, y
				end
			elseif Mode == 3 then	-- de fin a inicio
				Filter = function( x, y )
					return 1 - Ratio + Ratio * x, y
				end
			elseif Mode == 4 then	-- justificado a lo largo
				Filter = function( x, y )
					return x, y
				end
			end
		end
		Pk = 0
		shape.info( Shape1 )
		local shape_do_shape = shape.ASSDraw3( Yutils.shape.glue( Shape1, Shape2,
			function( x, y )
				Cx = c_shape						-- coordenada en "x" del centro de la shape
				Cy = m_shape						-- coordenada en "y" del centro de la shape
				Do = math.distance( x, y )			-- distancia del punto al origen
				Dc = math.distance( Cx, Cy, x, y )	-- distancia del punto al centro de la shape
				Ao = math.angle( x, y )				-- ángulo del origen al punto
				Ac = math.angle( Cx, Cy, x, y )		-- ángulo del centro al punto
				Pn = n_points						-- cantidad total de puntos en la shape
				Pk = Pk + 1							-- contador de los puntos de la shape
				Mx = (y - miny ) / h_shape			-- módulo de varianza respecto a "x", Mx = [0, 1]
				My = (x - minx ) / w_shape			-- módulo de varianza respecto a "y", My = [0, 1]
				Mp = (Pk - 1) / (Pn - 1)			-- módulo de varianza respecto a los puntos, Mp = [0, 1]
				return Filter( x, y )
			end
		) )
		return shape_do_shape
	end	--shape.do_shape( shape.size( shape.rectangle, 80, 20 ), shape.circle, 1, 4 )
	
	function shape.to_outline( Shape, Bord )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Bord ) == "function" then
			Bord = Bord( )
		end
		local Bord = (Bord or 1.02) / 2
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.to_outline( Shape[ i ], Bord )
			end
		else --recursividad: september 08th 2019
			Shape = Yutils.shape.flatten( Shape, 2 )
			Shape = shape.ASSDraw3( Yutils.shape.to_outline( Shape, Bord ) )
		end
		return Shape
	end	--shape.to_outline( shape.rectangle )
	
	function shape.point( Shape, Pixel )
		--retorna una tabla con todos los puntos de la shape ingresada: { { px1, py1 }, { px2, py2 }, ... }
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Pixel ) == "function" then
			Pixel = Pixel( )
		end
		local Pixel = Pixel or nil
		effector.print_error( Shape, "shape",  "shape.point", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local Points, ShapeR = recall.pnts
		if j == 1 then
			Points = remember( "pnts", { } )
			if type( Shape ) == "table" then
				for i = 1, #Shape do
					Points[ i ] = shape.point( Shape[ i ], Pixel )
				end
			else --recursividad: september 08th 2019
				if Pixel then
					effector.print_error( Pixel, "number", "shape.point", 2 )
					ShapeR = shape.redraw( Shape, Pixel )
				else
					ShapeR = Shape
				end
				local i = 1
				shape.info( ShapeR )
				for pnt in ShapeR:gmatch( "%-?%d+[%.%d]* %-?%d+[%.%d]*" ) do
					Points[ i ] = {
						x = tonumber( pnt:match( "(%-?%d+[%.%d]*) %-?%d+[%.%d]*" ) ),
						y = tonumber( pnt:match( "%-?%d+[%.%d]* (%-?%d+[%.%d]*)" ) )
					}
					i = i + 1
				end
			end
		end --shape.point( { shape.circle, shape.rectangle } )
		return Points
	end --shape.point( shape.circle )
	
	function shape.deformed( Shape, Deformed, Pixel, Axis )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Deformed ) == "function" then
			Deformed = Deformed( )
		end
		if type( Pixel ) == "function" then
			Pixel = Pixel( )
		end
		local Axis = Axis or "x"
		local Pixel1 = Pixel or l.height / 2
		local Deformed1 = Deformed or 2
		local Deformed2, Pixel2 = Deformed1, Pixel1
		if type( Axis ) == "table" then
			Deformed2 = Axis[ 1 ]
			Pixel2 = Axis[ 2 ]
		end
		effector.print_error( Shape, "shape", "shape.deformed", 1 )
		effector.print_error( Deformed1, "number", "shape.deformed", 2 )
		effector.print_error( Pixel1, "number", "shape.deformed", 3 )
		local Shape = shape.ASSDraw3( Shape )
		local shape_filter = function( x, y )
			local px, py = x, y
			if Axis == "x" then
				y = y - Pixel1 * sin( ((px - minx) / w_shape) * Deformed1 * pi )
			elseif Axis == "y" then
				x = x + Pixel1 * sin( ((py - miny) / h_shape) * Deformed1 * pi )
			else
				x = x + Pixel2 * sin( ((py - miny) / h_shape) * Deformed2 * pi )
				y = y - Pixel1 * sin( ((px - minx) / w_shape) * Deformed1 * pi )
			end
			return x, y
		end
		return format( "{\\p1}%s", shape.origin( shape.filter2( Shape, shape_filter, 2 ) ) )
	end --shape.deformed( shape.rectangle, 8, 5, "y" )
	
	function shape.allin( Shape, Tags )
		-- organiza la shape o la tabla de shapes ---------
		local Shape = Shape or { shape.circle }
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Shape ) == "string" then
			Shape = shape.divide( Shape )
		end
		Shape = table.reverse( Shape )
		---------------------------------------------------
		-- organiza la tabla de tags para las shapes ------
		local Tags = Tags or { "\\1c" .. shape.color1 }
		if type( Tags ) == "function" then
			Tags = Tags( )
		end
		Tags = table.reverse( Tags )
		---------------------------------------------------
		effector.print_error( Shape, "stringtable", "shape.allin", 1 )
		effector.print_error( Tags, "table", "shape.allin", 2 )
		-- obtiene la info de cada shape y crea un marco --
		local min_x_shape, min_y_shape = { }, { }
		for i = 1, #Shape do
			shape.info( Shape[ i ] )
			min_x_shape[ i ] = minx
			min_y_shape[ i ] = miny
		end
		local min_x = table.op( min_x_shape, "min" )
		local min_y = table.op( min_y_shape, "min" )
		for i = 1, #Shape do
			Shape[ i ] = shape.displace( Shape[ i ], -min_x, -min_y )
		end
		local max_x_shape, max_y_shape = { }, { }
		for i = 1, #Shape do
			shape.info( Shape[ i ] )
			max_x_shape[ i ] = maxx
			max_y_shape[ i ] = maxy
		end
		local mark_x = table.op( max_x_shape, "max" )
		local mark_y = table.op( max_y_shape, "max" )
		local mark_shape = format( "m 0 0 l %s 0 m 0 %s l %s %s ", mark_x, mark_y, mark_x, mark_y )
		--fix: december 11th 2018
		--local mark_shape = format( "m %s %s m 0 0 ", mark_x, mark_y )
		---------------------------------------------------
		-- desplaza cada shape y le agrega los tags -------
		for i = 1, #Shape do
			Shape[ i ] = shape.displace( mark_shape .. Shape[ i ], mark_x * ( i - 0.5 - #Shape / 2 ) )
			Shape[ i ] = format( "{%s}", Tags[ math.i( i, #Tags )[ "1-->A" ] ] ) .. Shape[ i ]
		end
		---------------------------------------------------
		-- reune todas las shapes en una sola -------------
		local shape_allin = ""
		for i = 1, #Shape do
			shape_allin = shape_allin .. Shape[ #Shape - i + 1 ]
		end
		---------------------------------------------------
		return shape_allin
		-- colors = table.concat1( table.gradient( 24, "&H0000FF&", "&H00FFFF&", "&H00FF00&", "&HFF00FF&", "&H0000FF&" ), "\\1c" )
		-- shape.allin( shape.array( shape.size( shape.rectangle, 20, 4 ), 20, "radial", 24 ), colors )
	end
	
	function shape.fusion( Shapes, Tags )
		if type( Shapes ) == "function" then
			Shapes = Shapes( )
		end
		if type( Tags ) == "function" then
			Tags = Tags( )
		end
		local shp_max_x, shp_max_y = { }, { }
		local Shapes_tbl = recall.shp_fus
		if j == 1 then
			Shapes_tbl = Shapes or { shape.rectangle, shape.circle }
			if type( Shapes_tbl ) == "string" then
				Shapes_tbl = shape.divide( shape.origin( Shapes_tbl ) )
			end
			for i = 1, #Shapes_tbl do
				shape.info( Shapes_tbl[ i ] )
				table.insert( shp_max_x, maxx )
				table.insert( shp_max_y, maxy )
			end
			local shp_mark_x = table.op( shp_max_x, "max" )
			local shp_mark_y = table.op( shp_max_y, "max" )
			local shp_mark = format( "m 0 0 l %s 0 m 0 %s l %s %s ", shp_mark_x, shp_mark_y, shp_mark_x, shp_mark_y )
			--fix: december 11th 2018
			--local shp_mark = format( "m %s %s m 0 0 ", shp_mark_x, shp_mark_y )
			for i = 1, #Shapes_tbl do
				Shapes_tbl[ i ] = shp_mark .. Shapes_tbl[ i ]
			end
			for i = #Shapes_tbl, 1, -1 do
				Shapes_tbl[ i ] = shape.centerpos( Shapes_tbl[ i ], 0.5 * shp_mark_x + (#Shapes_tbl - i) * shp_mark_x, 0.5 * shp_mark_y )
				Shapes_tbl[ i ] = shape.displace( Shapes_tbl[ i ], -0.5 * #Shapes_tbl * shp_mark_x + 0.5 * shp_mark_x )
			end
			local shp_tags = Tags
			if Tags == nil then
				shp_tags = { }
				for i = 1, #Shapes_tbl do
					shp_tags[ i ] = format( "{\\1c%s}", random.color( nil, 82 ) )
				end
			end
			for i = 1, #Shapes_tbl do
				Shapes_tbl[ i ] = "{" .. shp_tags[ (i - 1) % #shp_tags + 1 ] .. "}" .. Shapes_tbl[ i ]
			end
			Shapes_tbl = remember( "shp_fus", Shapes_tbl )
		end
		return table.op( Shapes_tbl, "concat" ) --january 11th 2018
	end --reune las shapes individuales que conforman una shape, para retornarse en una única línea
	
	function shape.deformed2( Shape, Defor_x, Defor_y )
		--deforma los puntos internos de un conjunto de shapes matriz
		local Shape = Shape or shape.rectangle
		local coors = { }
		local deforx = Defor_x or 6 * ratio
		local defory = Defor_y or deforx
		effector.print_error( Shape, "shape", "shape.deformed2", 1 )
		effector.print_error( deforx, "number", "shape.deformed2", 2 )
		effector.print_error( defory, "number", "shape.deformed2", 3 )
		local maxx, maxy = shape.width( Shape ), shape.height( Shape )
		Shape = shape.origin( Shape )
		Shape = Shape:gsub( "(%d+[%.%d]* %d+[%.%d]*)",
			function( Point )
				if table.inside( coors, Point ) == false then
					table.insert( coors, Point )
				end
				return "pnt" .. table.index( coors, Point )
			end
		)
		for i = 1, #coors do
			coors[ i ] = coors[ i ]:gsub( "(%d+[%.%d]*) (%d+[%.%d]*)",
				function( coor_x, coor_y )
					local coor_x = tonumber( coor_x )
					local coor_y = tonumber( coor_y )
					if coor_x ~= 0
						and coor_x ~= maxx then
						coor_x = coor_x + Rrs( deforx )
					end
					if coor_y ~= 0
						and coor_y ~= maxy then
						coor_y = coor_y + Rrs( defory )
					end
					if coor_x < 0 then
						coor_x = 0
					end
					if coor_x > maxx then
						coor_x = maxx
					end
					if coor_y < 0 then
						coor_y = 0
					end
					if coor_y > maxy then
						coor_y = maxy
					end
					return coor_x .. " " .. coor_y
				end
			)
		end
		local Shapes = { }
		for shp in Shape:gmatch( "m pnt%d+ [lb pnt%d]*" ) do
			shp = shp:gsub( "pnt(%d+)",
				function( Index )
					return coors[ tonumber( Index ) ]
				end
			)
			table.insert( Shapes, shp )
		end
		local Shapefx = ""
		for i = 1, #Shapes do
			Shapefx = Shapefx .. Shapes[ i ]
		end
		return Shapefx --may 10th 2018
	end

	function shape.filtershape( Shape, ... )
		--le aplica uno o más filtros (funciones) a cada una de
		--las shapes individuales que conforman a una Shape Compuesta :D-
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		effector.print_error( Shape, "shape", "shape.filtershape", 1 )
		local filters = { ... }
		if type( ... ) == "table" then
			filters = ...
		end
		if #filters == 0 then
			filters[ 1 ] = function( Shape_ii )
				return Shape_ii
			end
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.filtershape( Shape[ i ], ... )
			end
		else --recursividad: september 08th 2019
			------------------------------------
			local Shape_n, n = { }
			for n in Shape:gmatch( "m %-?%d+[%.%d]* %-?%d+[%.%-%dbl ]*" ) do
				--tabla de shapes que conforman la Shape
				table.insert( Shape_n, n )
			end
			local Shp_info = { minx = { }, maxx = { }, miny = { }, maxy = { }, w_shape = { }, h_shape = { } }
			for i = 1, #Shape_n do
				shape.info( Shape_n[ i ] )
				Shp_info.minx[ i ] = minx
				Shp_info.maxx[ i ] = maxx
				Shp_info.miny[ i ] = miny
				Shp_info.maxy[ i ] = maxy
				Shp_info.w_shape[ i ] = w_shape
				Shp_info.h_shape[ i ] = h_shape
			end
			-- variables notables de las shapes ------
			Sn = #Shape_n								--> cantidad total de shapes individuales ----
			minx = table.op( Shp_info.minx, "min" )		--> mínimo valor de "x" entre todas las shapes
			miny = table.op( Shp_info.miny, "min" )		--> mínimo valor de "y" entre todas las shapes
			minw = table.op( Shp_info.w_shape, "min" )	--> mínimo ancho entre todas las shapes ------
			minh = table.op( Shp_info.h_shape, "min" )	--> mínima altura entre todas las shapes -----
			maxx = table.op( Shp_info.maxx, "max" )		--> máximo valor de "x" entre todas las shapes
			maxy = table.op( Shp_info.maxy, "max" )		--> máximo valor de "y" entre todas las shapes
			maxw = table.op( Shp_info.w_shape, "max" )	--> máximo ancho entre todas las shapes ------
			maxh = table.op( Shp_info.h_shape, "max" )	--> máxima altura entre todas las shapes -----
			------------------------------------------
			for i = 1, #filters do
				if type( filters[ i ] ) ~= "function" then
					filters[ i ] = function( Shape_ii )
						return Shape_ii
					end
				end
				Si = 0									--> contador de shapes individuales ----------
				Shape = Shape:gsub( "m %-?%d+[%.%d]* %-?%d+[%.%-%dbl ]*",
					function( shp )
						Si = Si + 1
						return filters[ i ]( shp )
					end
				)
			end
		end
		return Shape
		--Shp = shape.array( shape.size( shape.rectangle, 10, 60 ), 20 );
		--Filterx = function( shape_i ) if Si % 2 == 1 then return shape.displace( shape_i, 0, -10 ) end return shape.displace( shape_i, 0, 10 ) end
		--shape.filtershape( Shp, Filterx )
	end --january 04th 2019

	function shape.intersect( Shape1, Shape2 )
		--retorna una tabla con los puntos de intersección entre dos shapes
		if type( Shape1 ) == "function" then
			Shape1 = Shape1( )
		end
		if type( Shape2 ) == "function" then
			Shape2 = Shape2( )
		end
		effector.print_error( Shape1, "shape", "shape.intersect", 1 )
		effector.print_error( Shape2, "shape", "shape.intersect", 2 )
		local Shape1 = shape.ASSDraw3( Yutils.shape.flatten( Shape1, 4 ) )
		local Shape2 = shape.ASSDraw3( Yutils.shape.flatten( Shape2, 4 ) )
		--------------------------------
		local function line_shp( Shape )
			--obtiene los segmentos de recta que posee una shape
			local parts_shp, line = { }
			for line in Shape:gmatch( "[mbl]^*%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) do
				parts_shp[ #parts_shp + 1 ] = line
			end
			local lines_tbl = { }
			for i = 1, #parts_shp do
				if parts_shp[ i ]:sub( 1, 1 ) == "l" then
					lines_tbl[ #lines_tbl + 1 ] = parts_shp[ i - 1 ]:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) .. " " .. parts_shp[ i ]
				end
			end
			return lines_tbl
		end
		------------------------------
		local function minmax( Shape )
			--retorna los valores mínimos y máximos en "x" y "y" de una shape
			local minx, maxx = 1000000, -1000000
			local miny, maxy = 1000000, -1000000
			local Shape = Shape:gsub( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)",
				function( val_x, val_y )
					minx, miny = math.min( minx, val_x ), math.min( miny, val_y )
					maxx, maxy = math.max( maxx, val_x ), math.max( maxy, val_y )
				end
			)
			return minx, miny, maxx, maxy
		end
		-----------------------------------------
		local Lines_shape1 = line_shp( Shape1 )
		local Lines_shape2 = line_shp( Shape2 )
		-----------------------------------------
		local function intersectx( Line1, Line2 )
			--retorna el punto de intersección (si lo hay) entre dos segmentos rectos de shape :D
			local x1, y1, x2, y2 = Line1:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)%s+l%s+(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
			local x3, y3, x4, y4 = Line2:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)%s+l%s+(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
			x1, y1, x2, y2 = tonumber( x1 ), tonumber( y1 ), tonumber( x2 ), tonumber( y2 )
			x3, y3, x4, y4 = tonumber( x3 ), tonumber( y3 ), tonumber( x4 ), tonumber( y4 )
			local x, y = math.intersect( x1, y1, x2, y2, x3, y3, x4, y4 )
			local minx1, miny1, maxx1, maxy1 = minmax( Line1 )
			local minx2, miny2, maxx2, maxy2 = minmax( Line2 )
			local min_x, max_x = math.max( minx1, minx2 ), math.min( maxx1, maxx2 )
			local min_y, max_y = math.max( miny1, miny2 ), math.min( maxy1, maxy2 )
			if type( x ) == "number"
				and (x >= min_x and x <= max_x)
				and (y >= min_y and y <= max_y) then
				return { x, y }
			end
			return "not x and y intersect"
		end
		-----------------------------------------
		local intersect_tbl = { }
		for i = 1, #Lines_shape1 do
			for k = 1, #Lines_shape2 do
				if type( intersectx( Lines_shape1[ i ], Lines_shape2[ k ] ) ) == "table" then
					intersect_tbl[ #intersect_tbl + 1 ] = intersectx( Lines_shape1[ i ], Lines_shape2[ k ] )
				end
			end
		end
		return intersect_tbl --october 09th 2019
	end --shape.intersect( shape.rectangle, shape.displace( shape.circle, 40, -20 ) )

	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "text" -----------------------------------------------------------------
	function text.upper( Text )
		local Text = Text or linefx[ ii ].text
		effector.print_error( Text, "text", "text.upper", 1 )
		local up_tag2, up_tags = { }, { }
		for c in Text:gmatch( "%b{}" ) do
			table.insert( up_tag2, c )
		end
		local txt_2up = unicode.to_upper_case( Text )
		for c in txt_2up:gmatch( "%b{}" ) do
			table.insert( up_tags, c )
		end
		for i = 1, #up_tags do
			txt_2up = txt_2up:gsub( tag.operation( up_tags[ i ] ), up_tag2[ i ], 1 )
		end
		txt_2up = txt_2up:gsub( "KEfx", "" )
		return txt_2up
	end --Text:upper( )
	
	function text.lower( Text )
		local Text = Text or linefx[ ii ].text
		effector.print_error( Text, "text", "text.lower", 1 )
		local lw_tag2, lw_tags = { }, { }
		for c in Text:gmatch( "%b{}" ) do
			table.insert( lw_tag2, c )
		end
		local txt_2lw = unicode.to_lower_case( Text )
		for c in txt_2lw:gmatch( "%b{}" ) do
			table.insert( lw_tags, c )
		end
		for i = 1, #lw_tags do
			txt_2lw = txt_2lw:gsub( tag.operation( lw_tags[ i ] ), lw_tag2[ i ], 1 )
		end
		txt_2lw = txt_2lw:gsub( "KEfx", "" )
		return txt_2lw
	end --Text:lower( )
	
	function text.kara( )
		local text_2kara = ""
		for i = 1, linefx[ ii ].syl.n do
			if i < linefx[ ii ].syl.n
				or linefx[ ii ].syl[ i ].text1:gsub( " ", "" ) ~= "" then
				text_2kara = text_2kara .. format( "{\\k%s}%s",
					math.round( linefx[ ii ].syl[ i ].duration / 10 ), linefx[ ii ].syl[ i ].text1
				)
			end
		end
		text_2kara = text_2kara:gsub( "\\k0", "" ):gsub( "{}", "" )
		text_2kara = text_2kara:gsub( "(%b{})(%b{})",
			function( capture1, capture2 )
				local Times, Tag_k
				if capture1:match( "\\[kK]^*[fo]*%d+" )
					and capture2:match( "\\[kK]^*[fo]*%d+" ) then
					Times = capture1:match( "\\[kK]^*[fo]*(%d+)" ) + capture2:match( "\\[kK]^*[fo]*(%d+)" )
					Tag_k = capture2:match( "\\([kK]^*[fo]*)%d+" )
					capture1 = capture1:sub( 2, -2 ):gsub( "\\[kK]^*[fo]*%d+", "" )
					capture2 = capture2:sub( 2, -2 ):gsub( "\\[kK]^*[fo]*%d+", "" )
					return format( "{%s%s\\%s%d}", capture1, capture2, Tag_k, Times )
				end
				return format( "{%s%s}", capture1:sub( 2, -2 ), capture2:sub( 2, -2 ) )
			end
		)
		text_2kara = text_2kara:gsub( "%b{} ",
			function( capture )
				capture = capture:sub( 1, -2 )
				return " " .. capture .. "|"
			end
		)
		return text_2kara
	end --Text:kara( )
	
	function text.infx( syl_in_fx, true_false )
		-- encuentra las marcas +fx y -fx en las syls y le aplica fx solo a ellas
		local Syls_in_fx, t_or_f = { }, true
		if true_false then
			t_or_f = false
		end
		local Stxt1, fx_in
		for i = 1, linefx[ ii ].syl.n do
			Stxt1 = linefx[ ii ].syl[ i ].text
			if Stxt1 ~= Stxt1:gsub( "+fx", "" ) then
				fx_in = { }
				table.insert( fx_in, i )
				table.insert( fx_in, linefx[ ii ].syl.n )
				for k = i, linefx[ ii ].syl.n do
					if linefx[ ii ].syl[ k ].text ~= linefx[ ii ].syl[ k ].text:gsub( "-fx", "" ) then
						table.insert( fx_in, k )
					end
				end
				table.sort( fx_in, function( a, b ) return a < b end )
				for k = i, fx_in[ table.index( fx_in, i ) + 1 ] do
					table.insert( Syls_in_fx, k )
				end
			elseif Stxt1 ~= Stxt1:gsub( "-fx", "" ) then
				table.insert( Syls_in_fx, i )
			end
		end
		if table.inside( Syls_in_fx, val_i ) == t_or_f then
			return syl_in_fx
		end
		if syl_in_fx == linefx[ ii ].syl[ val_i ].text1 then
			return nil
		end
		if type( syl_in_fx ) == "number" then
			return 0
		end
		return ""
	end --syl.text:infx( )
	
	function text.outfx( syl_out_fx )
		return text.infx( syl_out_fx, 2 )
	end --syl.text:outfx( )
	sylfx = {
		infx = text.infx,
		outfx = text.outfx,
	}
	
	function text.tag( ... )
		local tags_text = { ... }
		local return_text, TextTag = "", val_text
		local char_text, tag_i_ipol, tag_n_ipol = { }, "", ""
		if type( tags_text[ 1 ] ) == "string"
			and tags_text[ 1 ]:gsub( "%b{}", "" ) ~= ""
			and tags_text[ 1 ]:sub( 1, 1 ) ~= "\\" then
			TextTag = tags_text[ 1 ]
			table.remove( tags_text, 1 )
		end
		for c in unicode.chars( TextTag ) do
			table.insert( char_text, c )
		end
		---------------------------------------------------------------
		local function text_ipol( vals, count_i, count_n, without_tag )
			if #vals == 1 then
				vals[ 2 ] = vals[ 1 ]
			end
			local copy_tbl = table.duplicate( vals )
			local tag_into = ""
			if without_tag then
				tag_into = vals[ 1 ]
				copy_tbl = { }
				if #vals == 2 then
					vals[ 3 ] = vals[ 2 ]
				end
				for i = 2, #vals do
					copy_tbl[ i - 1 ] = vals[ i ]
				end
			end
			---------------------------------------------------
			local tags_ipol, max_ipol = { }, count_n - 1
			if max_ipol == 0 then
				return copy_tbl[ 1 ]
			end
			if fx.filter == "mod" then
				max_ipol = count_n
			end
			local function ipol_number( val_1, val_2, pct_ipol )
				return val_1 + (val_2 - val_1) * pct_ipol
			end
			local ipol_function = ipol_number
			if tag_into:match( "\\c" )
				or tag_into:match( "\\%d[%d]*v?c" ) then
				ipol_function = color.interpolate
			elseif tag_into:match( "\\alpha" )
				or tag_into:match( "\\%d[%d]*v?a" ) then
				ipol_function = alpha.interpolate
			end
			local ipol_i, ipol_f, pct_ip
			for i = 1, max_ipol do
				ipol_i = copy_tbl[ floor( (i - 1) / (max_ipol / (#copy_tbl - 1)) ) + 1 ]
				ipol_f = copy_tbl[ floor( (i - 1) / (max_ipol / (#copy_tbl - 1)) ) + 2 ]
				pct_ip = floor( (i - 1) % (max_ipol / (#copy_tbl - 1)) ) / (max_ipol / (#copy_tbl - 1))
				tags_ipol[ i ] = ipol_function( ipol_i, ipol_f, pct_ip )
			end --text.tag( { "\\fscy", 100, 200, 50 } ) = text.tag( "\\fscy{ 100, 200, 50 }" )
			tags_ipol[ #tags_ipol + 1 ] = copy_tbl[ #copy_tbl ]
			---------------------------------------------------
			if fx.filter == "mod" then
				if tag_into:match( "\\c" )
					or tag_into:match( "\\alpha" )
					or tag_into:match( "\\%d[%d]*v?[ac]^*" ) then
					if fx__.v_kanji == false then
						return format( "(%s,%s,%s,%s)", tags_ipol[ count_i ], tags_ipol[ count_i + 1 ], tags_ipol[ count_i ], tags_ipol[ count_i + 1 ] )
					end
					return format( "(%s,%s,%s,%s)", tags_ipol[ count_i ], tags_ipol[ count_i ], tags_ipol[ count_i + 1 ], tags_ipol[ count_i + 1 ] )
				end
				return tags_ipol[ count_i ]
			end
			return tags_ipol[ count_i ] --rewrite: october 13th 2018
		end
		---------------------------------------------------------------
		local function str_to_table( String )
			if type( String ) == "string"
				and String:match( "\\%w+%b{}" ) then
				local line = linefx[ ii ]
				local tags_capture = tag.operation( String:match( "(\\%w+)%b{}" ) )
				local vals_capture = String:match( "\\%w+(%b{})" )
				if pcall( loadstring( format( "return function( meta, line, x, y ) return %s end", vals_capture ) ) ) then
					local string_func = loadstring( format( "return function( meta, line, x, y ) return %s end", vals_capture ) )( )
					if pcall( string_func ) then
						local vals_table = string_func( meta, line, x, y )
						if vals_table then
							table.insert( vals_table, 1, tags_capture )
							return vals_table
						end
					end
				end
				return String
			end
			return String
		end
		---------------------------------------------------------------
		for i = 1, #char_text do
			tag_n_ipol = ""
			for k = 1, #tags_text do
				tags_text[ k ] = str_to_table( tags_text[ k ] )
				if type( tags_text[ k ] ) == "table" then
					tag_i_ipol = tags_text[ k ][ 1 ] .. text_ipol( tags_text[ k ], i, #char_text, true )
				else
					tag_i_ipol = tags_text[ k ]
				end
				tag_n_ipol = tag_n_ipol .. tag_i_ipol
			end
			if char_text[ i ] == " " then
				return_text = return_text .. " "
			else
				return_text = return_text .. format( "{%s}%s", tag_n_ipol, char_text[ i ] )
			end
		end
		return return_text
	end --line.text_stripped:tag( "\\fscy{ 100, 200, 50 }", { "\\1c", "&H00FFFF&", "&HFF00FF&", "&HFFFF00&" } )
	
	function text.rand( Text_ran, num_tran, dur_tran, extra_tags, table_rand, text_all )
		local Text_ran = Text_ran or val_text
		local dur_tran = abs( dur_tran or 2 * frame_dur )
		local num_tran = abs( math.round( num_tran or 5 ) )
		local del_tran = 0 --add: july 29th 2018
		local delay_tr = dur_tran * num_tran
		----------------------------------------------
		if dur_tran < frame_dur then
			dur_tran = frame_dur
		end
		if delay_tr == 0 or
			delay_tr > fx.dur then
			delay_tr = fx.dur
			num_tran = ceil( fx.dur / dur_tran )
		end
		----------------------------------------------
		local table_ch = { }
		for i = 48, 57 do --dígitos
			table.insert( table_ch, string.char( i ) )
		end
		for i = 65, 90 do --minúsculas y mayúsculas
			table.insert( table_ch, string.char( i ) )
			table.insert( table_ch, string.char( i + 32 ) )
		end
		local tbl_rand = table_rand or table_ch
		----------------------------------------------
		local extra_tg = extra_tags or ""
		local time_ini = R( 0, fx.dur - delay_tr, 5 * frame_dur )
		---------------------------------------------------------
		if text_rand == "intro"
			or text_rand == "line" then
			time_ini = 0
		elseif text_rand == "outro" then
			time_ini = fx.dur - delay_tr
		end --add: july 27th 2018
		---------------------------------------------------------
		--local tbl_char = table.retire( table.string( Text_ran ), " " )
		local tbl_char = table.string( Text_ran ) --fix: december 06th 2018
		local tbl_rtrn = { }
		local time_line = fx.dur - delay_tr
		---------------------------------------------------------
		local Ad, Ai = "\\134a~", "\\134a255"
		if l.outline == 0
			and l.shadow == 0 then
			Ad = "\\1a~"
			Ai = "\\1a255"
		elseif l.shadow == 0 then
			Ad = "\\13a~"
			Ai = "\\13a255"
		elseif l.outline == 0 then
			Ad = "\\14a~"
			Ai = "\\14a255"
		end --add: september 24th 2018
		for i = 1, #tbl_char do
			if table.inside( text.char_special, tbl_char[ i ] ) then
				tbl_rtrn[ i ] = format( "{\\fscx%s}%s", l.scale_x, tbl_char[ i ] )
			else
				if text_rand == "line" then --add: july28th 2018
					tbl_rtrn[ i ] = format( "{\\fscx%s%s\\t(%s,%s,\\fscx0%s)\\t(%s,%s,\\fscx%s%s)\\t(%s,%s,\\fscx0%s)}%s",
						l.scale_x, Ad, time_ini, time_ini + del_tran, Ai, time_ini + delay_tr, time_ini + delay_tr + del_tran,
						l.scale_x, Ad, time_line, time_line + del_tran, Ai, tbl_char[ i ]
					)
					for k = 1, num_tran do
						tbl_rtrn[ i ] = tbl_rtrn[ i ] .. format( "{\\fscx0%s\\t(%s,%s,\\fscx%s%s%s)\\t(%s,%s,\\fscx0%s%s)\\t(%s,%s,\\fscx%s%s)\\t(%s,%s,\\fscx0%s)}%s",
							Ai, time_ini + (k - 1) * dur_tran, time_ini + del_tran + (k - 1) * dur_tran, l.scale_x, Ad, extra_tg,
							time_ini + (k - 0) * dur_tran, time_ini + del_tran + (k - 0) * dur_tran, Ai, tag.default( extra_tg ),
							time_line + (k - 1) * dur_tran, time_line + del_tran + (k - 1) * dur_tran, l.scale_x, Ad,
							time_line + (k - 0) * dur_tran, time_line + del_tran + (k - 0) * dur_tran, Ai, Re( tbl_rand )
						)
					end
				else
					tbl_rtrn[ i ] = format( "{\\fscx%s%s\\t(%s,%s,\\fscx0%s)\\t(%s,%s,\\fscx%s%s)}%s",
						l.scale_x, Ad, time_ini, time_ini + del_tran, Ai, time_ini + delay_tr,
						time_ini + delay_tr + del_tran, l.scale_x, Ad, tbl_char[ i ]
					)
					for k = 1, num_tran do
						tbl_rtrn[ i ] = tbl_rtrn[ i ] .. format( "{\\fscx0%s\\t(%s,%s,\\fscx%s%s%s)\\t(%s,%s,\\fscx0%s%s)}%s",
							Ai, time_ini + (k - 1) * dur_tran, time_ini + del_tran + (k - 1) * dur_tran, l.scale_x, Ad, extra_tg,
							time_ini + (k - 0) * dur_tran, time_ini + del_tran + (k - 0) * dur_tran, Ai, tag.default( extra_tg ), Re( tbl_rand )
						)
					end
				end
			end
		end
		if text_all
			or text_rand == "intro"
			or text_rand == "line"
			or text_rand == "outro" then
			return table.concat( tbl_rtrn )
		end --char.text:rand( 5, 2f, "\\1cR( )" )
		return tag.only( R( R( 2, 4 ) ) == 1, table.concat( tbl_rtrn ), Text_ran )
	end --text.rand( syl.text, 5, 2f, "\\1cR( )" )
	
	function text.inclip( Text )
		-- aplica fx solo al texto que esté dentro de un \clip
		fxgroup = nil
		if linefx[ ii ].text:match( "\\x?clip%b()" ) then
			local shp_tbls = shape.divide( linefx[ ii ].text:match( "\\x?clip%b()" ) )
			for i = 1, #shp_tbls do
				shape.info( shp_tbls[ i ] )
				if (val_center >= minx and val_center <= maxx)
					and (val_middle >= miny and val_middle <= maxy) then
					fxgroup = true
				end
			end
		end --Text:inclip( )
		return Text
	end --march 22nd 2017

	function text.outclip( Text )
		-- aplica fx solo al texto que esté fuera de un \clip
		fxgroup = nil
		if linefx[ ii ].text:match( "\\x?clip%b()" ) then
			fxgroup = true
			local shp_tbls = shape.divide( linefx[ ii ].text:match( "\\x?clip%b()" ) )
			for i = 1, #shp_tbls do
				shape.info( shp_tbls[ i ] )
				if (val_center >= minx and val_center <= maxx)
					and (val_middle >= miny and val_middle <= maxy) then
					fxgroup = nil 
				end
			end
		end --Text:outclip( )
		return Text
	end --march 22nd 2017

	text.romaji = {
		"a",	"i",	"u",	"e",	"o",	"ya",	"yu",	"yo",
		"ka",	"ki",	"ku",	"ke",	"ko",	"kya",	"kyu",	"kyo",
		"sa",	"shi",	"su",	"se",	"so",	"sha",	"shu",	"sho",
		"ta",	"chi",	"tsu",	"te",	"to",	"cha",	"chu",	"cho",
		"na",	"ni",	"nu",	"ne",	"no",	"nya",	"nyu",	"nyo",
		"ha",	"hi",	"fu",	"he",	"ho",	"hya",	"hyu",	"hyo",
		"ma",	"mi",	"mu",	"me",	"mo",	"mya",	"myu",	"myo",
		"ya",			"yu",			"yo",
		"ra",	"ri",	"ru",	"re",	"ro",	"rya",	"ryu",	"ryo",
		"wa",	"wi",			"we",	"wo",
		"n",
		"ga",	"gi",	"gu",	"ge",	"go",	"gya",	"gyu",	"gyo",
		"za",	"ji",	"zu",	"ze",	"zo",	"ja",	"ju",	"jo",
		"da",	"di",	"du",	"de",	"do",
		"ba",	"bi",	"bu",	"be",	"bo",	"bya",	"byu",	"byo",
		"pa",	"pi",	"pu",	"pe",	"po",	"pya",	"pyu",	"pyo",
		"b",	"c",	"d",	"k",	"p",	"r",	"s",	"t",
		"z"
	}
	
	text.hiragana = {
		"あ",	"い",	"う",	"え",	"お",	"ゃ",	"ゅ",	"ょ",
		"か",	"き",	"く",	"け",	"こ",	"きゃ",	"きゅ",	"きょ",
		"さ",	"し",	"す",	"せ",	"そ",	"しゃ",	"しゅ",	"しょ",
		"た",	"ち",	"つ",	"て",	"と",	"ちゃ",	"ちゅ",	"ちょ",
		"な",	"に",	"ぬ",	"ね",	"の",	"にゃ",	"にゅ",	"にょ",
		"は",	"ひ",	"ふ",	"へ",	"ほ",	"ひゃ",	"ひゅ",	"ひょ",
		"ま",	"み",	"む",	"め",	"も",	"みゃ",	"みゅ",	"みょ",
		"や",			"ゆ",			"よ",
		"ら",	"り",	"る",	"れ",	"ろ",	"りゃ",	"りゅ",	"りょ",
		"わ",	"ゐ",			"ゑ",	"を",
		"ん",
		"が",	"ぎ",	"ぐ",	"げ",	"ご",	"ぎゃ",	"ぎゅ",	"ぎょ",
		"ざ",	"じ",	"ず",	"ぜ",	"ぞ",	"じゃ",	"じゅ",	"じょ",
		"だ",	"ぢ",	"づ",	"で",	"ど",
		"ば",	"び",	"ぶ",	"べ",	"ぼ",	"びゃ",	"びゅ",	"びょ",
		"ぱ",	"ぴ",	"ぷ",	"ぺ",	"ぽ",	"ぴゃ",	"ぴゅ",	"ぴょ",
		"っ",	"っ",	"っ",	"っ",	"っ",	"っ",	"っ",	"っ",
		"っ"
	}
	
	text.katakana = {
		"ア",	"イ",	"ウ",	"エ",	"オ",	"ャ",	"ュ",	"ョ",
		"カ",	"キ",	"ク",	"ケ",	"コ",	"キャ",	"キュ",	"キョ",
		"サ",	"シ",	"ス",	"セ",	"ソ",	"シャ",	"シュ",	"ショ",
		"タ",	"チ",	"ッ",	"テ",	"ト",	"チャ",	"チュ",	"チョ",
		"ナ",	"ニ",	"ヌ",	"ネ",	"ノ",	"ニャ",	"ニュ",	"ニョ",
		"ハ",	"ヒ",	"フ",	"ヘ",	"ホ",	"ヒャ",	"ヒュ",	"ヒョ",
		"マ",	"ミ",	"ム",	"メ",	"モ",	"ミャ",	"ミュ",	"ミョ",
		"ヤ",			"ユ",			"ヨ",
		"ラ",	"リ",	"ル",	"レ",	"ロ",	"リャ",	"リュ",	"リョ",
		"ワ",	"ヰ",			"ヱ",	"ヲ",
		"ン",
		"ガ",	"ギ",	"グ",	"ゲ",	"ゴ",	"ギャ",	"ギュ",	"ギョ",
		"ザ",	"ジ",	"ズ",	"ゼ",	"ゾ",	"ジャ",	"ジュ",	"ジョ",
		"ダ",	"ヂ",	"ヅ",	"デ",	"ド",
		"バ",	"ビ",	"ブ",	"ベ",	"ボ",	"ビャ",	"ビュ",	"ビョ",
		"パ",	"ピ",	"プ",	"ペ",	"ポ",	"ピャ",	"ピュ",	"ピョ",
		"ッ",	"ッ",	"ッ",	"ッ",	"ッ",	"ッ",	"ッ",	"ッ",
		"ッ"
	}
	
	text.char_upper = {
		"A",	"B",	"C",	"D",	"E",	"F",	"G",	"H",
		"I",	"J",	"K",	"L",	"M",	"N",	"Ñ",	"O",
		"P",	"Q",	"R",	"S",	"T",	"U",	"V",	"W",
		"X",	"Y",	"Z"
	}
	
	text.char_lower = {
		"a",	"b",	"c",	"d",	"e",	"f",	"g",	"h",
		"i",	"j",	"k",	"l",	"m",	"n",	"ñ",	"o",
		"p",	"q",	"r",	"s",	"t",	"u",	"v",	"w",
		"x",	"y",	"z"
	}
	
	text.char_number = {
		"1",	"2",	"3",	"4",	"5",	"6",	"7",	"8",
		"9",	"0"
	}
	-- Re( { string.char( R( 48, 57 ) ), string.char( R( 65, 90 ) ), string.char( R( 97, 122 ) ) } )
	-- retorna un elemento al azar de cualquiera de la tres anteriores tablas de caracteres
	text.char_special = {
		"°",	"¬",	"¡",	"!",	"¿",	"?",	"(",	")",
		"[",	"]",	"^",	"'",	"-",	"#",	"$",	"%",
		"&",	";",	":",	",",	".",	"<",	">",	"*",
		"~",	"´",	"`",	"¨",	"+",	"/",	"{",	"}",
		"|",	"_",	"\\",	"\""
	}
	
	function text.karaoke_true( Table )
		local dur_ktime = { }
		for i = 1, #Table do
			dur_ktime[ i ] = { }
			for dur_k in Table[ i ]:gmatch( "\\[kK]^*[fo]*%d+" ) do
				table.insert( dur_ktime[ i ], dur_k:match( "%d+" ) )
			end
			if #dur_ktime[ i ] == 0 then
				return false
			end
		end
		return true
	end
	
	function text.remove_tags( text_string )
		local  text_withouttags = text_string:gsub( "%b{}", "" )
		return text_withouttags
	end

	function text.remove_space_in_tags( text_str )
		local tags_raw, tags_KEx = { }, { }
		local tags_clp
		for c_rem in text_str:gmatch( "%b{}" ) do
			table.insert( tags_raw, c_rem )
		end
		for i = 1, #tags_raw do
			tags_KEx[ i ] = tags_raw[ i ]
			tags_clp = { }
			for c_clp in tags_KEx[ i ]:gmatch( "\\i?clip%b()" ) do
				table.insert( tags_clp, c_clp )
			end
			tags_KEx[ i ] = tags_raw[ i ]:gsub( " ", "" )
			for k = 1, #tags_clp do
				tags_KEx[ i ] = tags_KEx[ i ]:gsub( "\\i?clip%b()", tags_clp[ k ]:gsub( " ", "KEclip" ), 1 )
			end
		end
		for i = 1, #tags_KEx do
			text_str = text_str:gsub( tag.operation( tags_raw[ i ] ), tags_KEx[ i ], 1 )
		end
		return text_str
	end
	
	function text.remove_extra_space( linetext_str )
		local linetext_chars = { }
		for c_spc in unicode.chars( linetext_str ) do
			table.insert( linetext_chars, c_spc )
		end
		for i = 1, #linetext_chars do
			if linetext_chars[ 1 ] == " "
				or linetext_chars[ 1 ] == "	" then
				table.remove( linetext_chars, 1 )
			elseif linetext_chars[ #linetext_chars ] == " "
				or linetext_chars[ #linetext_chars ] == "	" then
				table.remove( linetext_chars, #linetext_chars )
			end
		end
		return table.op( linetext_chars, "concat" )
	end
	
	function text.remove_syls_nil( linetext_str, linetext_dur )	
		local syl_complete = text.text2syl( linetext_str, linetext_dur )
		local syl_tags, syl_texts, line_without_syl_nil = { }, { }, ""
		for i = 1, #syl_complete do
			syl_tags[ i ] = syl_complete[ i ]:match( "{%S+}" ) or ""
			syl_texts[ i ] = text.remove_tags( syl_complete[ i ] )
		end
		if syl_texts[ 1 ]
			and syl_texts[ 1 ]:gsub( " ", "" ):gsub( "	", "" ) == "" then
			syl_texts[ 1 ] = ""
		end
		if syl_texts[ #syl_texts ]
			and syl_texts[ #syl_texts - 1 ]
			and syl_texts[ #syl_texts ]:gsub( " ", "" ):gsub( "	", "" ) == ""
			and syl_texts[ #syl_texts - 1 ]:gsub( " ", "" ):gsub( "	", "" ) == "" then
			syl_texts[ #syl_texts - 1 ] = ""
		end
		for i = 1, #syl_complete do
			line_without_syl_nil = line_without_syl_nil .. syl_tags[ i ] .. syl_texts[ i ]
		end
		return line_without_syl_nil
	end
	
	function text.to_word( line_text_str, line_text_dur )
		local txt_str = line_text_str:gsub( "\\N", " " )
		txt_str = text.remove_space_in_tags( txt_str )
		local line_text_dur = line_text_dur or fx.dur
		local words_in_line = { }
		--for wrd in txt_str:gmatch( "[{.-}]*[%S+]*[\32-\47\58-\64]*" ) do
		for wrd in txt_str:gmatch( "[{.-}]*[%S+]*[\33-\47\58-\64]*[%s]*" ) do --fix: may 11th 2018
			table.insert( words_in_line, wrd )
		end
		table.remove( words_in_line, #words_in_line )
		if words_in_line[ 1 ] then
			local word_in_t_1 = text.remove_tags( words_in_line[ 1 ] ):gsub( " ", "" ):gsub( "	", "" )
			if unicode.len( word_in_t_1 ) == 0 then
				words_in_line[ 1 ] = words_in_line[ 1 ]:gsub( " ", "" ):gsub( "	", "" ) .. "KEfx"
			end
			if words_in_line[ 1 ] == "KEfx" then
				table.remove( words_in_line, 1 )
			end
		end
		if #words_in_line > 0 then
			words_in_line[ #words_in_line ] = words_in_line[ #words_in_line ]:gsub( " ", "" ):gsub( "	", "" )
		end
		if #words_in_line == 0 then
			words_in_line[ 1 ] = format( "{\\k%d}", line_text_dur / 10 )
		end
		return words_in_line
	end

	function text.text2word( line_text_str, line_text_dur )
		local line_text_dur = line_text_dur or fx.dur
		local words_in_text = text.to_word( line_text_str, line_text_dur )
		local words_in_text_dur, count_chars_in_line = { }
		local text_without_space = text.remove_tags( line_text_str ):gsub( " ", "" )
		local word_without_space
		if text.karaoke_true( words_in_text ) == true then
			for i = 1, #words_in_text do
				words_in_text_dur[ i ] = { }
				for tag_k in words_in_text[ i ]:gmatch( "\\[kK]^*[fo]*%d+" ) do
					table.insert( words_in_text_dur[ i ], tag_k:match( "%d+" ) )
				end
				words_in_text_dur[ i ] = table.op( words_in_text_dur[ i ], "sum" ) * 10
			end
		else
			count_chars_in_line = unicode.len( text_without_space )
			for i = 1, #words_in_text do
				word_without_space = text.remove_tags( words_in_text[ i ] ):gsub( " ", "" )
				words_in_text_dur[ i ] = math.round(
					unicode.len( word_without_space ) * line_text_dur / count_chars_in_line, 3
				)
			end
		end
		return words_in_text, words_in_text_dur
	end

	function text.text2syl( line_text_str, line_text_dur )
		local words_in_text = text.to_word( line_text_str, line_text_dur )
		local syls_in_text, syls_in_text_dur, chars_in_text = { }, { }
		local text_without_space = text.remove_tags( line_text_str ):gsub( " ", "" )
		local word_without_space
		if text.karaoke_true( words_in_text ) == true then
			for i = 1, #words_in_text do
				for syls in words_in_text[ i ]:gmatch( "{.-}[\32-\122\124\126-\255]*" ) do
					table.insert( syls_in_text, syls )
				end
			end
			for i = 1, #syls_in_text do
				if text.remove_tags( syls_in_text[ i ] ) == "" then
					syls_in_text[ i ] = syls_in_text[ i ] .. "KEfx"
				end
			end
			for i = 1, #syls_in_text do
				syls_in_text_dur[ i ] = { }
				for tagk in syls_in_text[ i ]:gmatch( "\\[kK]^*[fo]*%d+" ) do
					table.insert( syls_in_text_dur[ i ], tagk:match( "%d+" ) )
				end
				syls_in_text_dur[ i ] = table.op( syls_in_text_dur[ i ], "sum" ) * 10
			end
		else
			syls_in_text = words_in_text
			chars_in_text = unicode.len( text_without_space )
			for i = 1, #words_in_text do
				word_without_space = text.remove_tags( words_in_text[ i ] ):gsub( " ", "" )
				syls_in_text_dur[ i ] = math.round(
					unicode.len( word_without_space ) * line_text_dur / chars_in_text, 3
				)
			end
		end
		return syls_in_text, syls_in_text_dur
	end

	function text.text2char( line_text_str, line_text_dur )
		local words_in_text = text.to_word( line_text_str, line_text_dur )
		local syls_in_text, syls_in_text_stp, syls_in_text_dur = { }, { }, { }
		local chars_in_text, chars_in_text_dur, chars_in_linetext_str = { }, { }
		if text.karaoke_true( words_in_text ) == true then
			for i = 1, #words_in_text do
				for c_2c1 in words_in_text[ i ]:gmatch( "{.-}[\32-\122\124\126-\255]*" ) do
					table.insert( syls_in_text, c_2c1 )
				end
			end
			for i = 1, #syls_in_text do
				if text.remove_tags( syls_in_text[ i ] ) == "" then
					syls_in_text[ i ] = syls_in_text[ i ] .. "KEfx"
				end
			end
			for i = 1, #syls_in_text do
				syls_in_text_dur[ i ] = { }
				for c_2c2 in syls_in_text[ i ]:gmatch( "\\[kK]^*[fo]*%d+" ) do
					table.insert( syls_in_text_dur[ i ], c_2c2:match( "%d+" ) )
				end
				syls_in_text_dur[ i ] = table.op( syls_in_text_dur[ i ], "sum" ) * 10
			end
			for i = 1, #syls_in_text do
				syls_in_text_stp[ i ] = text.remove_tags( syls_in_text[ i ] )
				if syls_in_text_stp[ i ] == "KEfx" then
					table.insert( chars_in_text, "KEfx" )
				else
					for c_2c3 in unicode.chars( syls_in_text_stp[ i ] ) do
						table.insert( chars_in_text, c_2c3 )
					end
				end
				if syls_in_text_stp[ i ] == "KEfx" then
					table.insert( chars_in_text_dur, syls_in_text_dur[ i ] )
				else
					if syls_in_text_stp[ i ]:gsub( " ", "" ) == ""
						or syls_in_text_stp[ i ]:gsub( " ", "" ) == syls_in_text_stp[ i ] then
						for k = 1, unicode.len( syls_in_text_stp[ i ] ) do
							table.insert(
								chars_in_text_dur, math.round( syls_in_text_dur[ i ] / unicode.len( syls_in_text_stp[ i ] ), 2 )
							)
						end
					else
						local syl_in_text_stp2
						for k = 1, unicode.len( syls_in_text_stp[ i ] ) do
							if table.string( syls_in_text_stp[ i ] )[ k ] == " " then
								table.insert( chars_in_text_dur, 0 )
							else
								syl_in_text_stp2 = syls_in_text_stp[ i ]:gsub( " ", "" )
								table.insert( chars_in_text_dur,
									math.round( syls_in_text_dur[ i ] / unicode.len( syl_in_text_stp2 ), 2 )
								)
							end
						end
					end
				end
			end
		else
			for c_2c4 in unicode.chars( text.remove_tags( line_text_str ) ) do
				table.insert( chars_in_text, c_2c4 )
			end
			chars_in_linetext_str = #table.retire( table.duplicate( chars_in_text ), " " )
			for i = 1, #chars_in_text do
				if chars_in_text[ i ] == " "
					or chars_in_text[ i ] == "" then
					table.insert( chars_in_text_dur, 0 )
				else
					table.insert( chars_in_text_dur, math.round( line_text_dur / chars_in_linetext_str, 3 ) )
				end
			end
		end
		return chars_in_text, chars_in_text_dur
	end
	
	function text.to_kara( String, K_mode )
		local K_mode = K_mode or "k"
		local K_mode_tbl = { "k", "kf", "ko" }
		if table.inside( K_mode_tbl, K_mode ) == false then
			K_mode = "k"
		end
		local romajis = {
			----------------------------------------------------------------------
			"kya",	"kyu",	"kyo",	"sha",	"shu",	"sho",	"cha",	"chu",	"cho",
			"nya",	"nyu",	"nyo",	"hya",	"hyu",	"hyo",	"mya",	"myu",	"myo",
			"rya",	"ryu",	"ryo",	"gya",	"gyu",	"gyo",	"bya",	"byu",	"byo",
			"pya",	"pyu",	"pyo",	"shi",	"chi",	"tsu",
			----------------------------------------------------------------------
			"ya",	"yu",	"yo",	"ka",	"ki",	"ku",	"ke",	"ko",	"sa",
			"su",	"se",	"so",	"ta",	"te",	"to",	"na",	"ni",	"nu",
			"ne",	"no",	"ha",	"hi",	"fu",	"he",	"ho",	"ma",	"mi",
			"mu",	"me",	"mo",	"ya",	"yu",	"yo",	"ra",	"ri",	"ru",
			"re",	"ro",	"wa",	"wi",	"we",	"wo",	"ga",	"gi",	"gu",
			"ge",	"go",	"za",	"ji",	"zu",	"ze",	"zo",	"ja",	"ju",
			"jo",	"da",	"di",	"du",	"de",	"do",	"ba",	"bi",	"bu",
			"be",	"bo",	"pa",	"pi",	"pu",	"pe",	"po",
			----------------------------------------------------------------------
			"a",	"i",	"u",	"e",	"o",	"n",	"b",	"c",	"d",
			"k",	"p",	"r",	"s",	"t",	"z"
			----------------------------------------------------------------------
		}
		local String = text.lower( String )
		String = String:gsub( "%b{}", "" )
		local words, times = text.text2word( String )
		local num = 0
		for i = 1, #words do
			for k = 1, #romajis do
				words[ i ] = words[ i ]:gsub( "[\128-\255]*" .. romajis[ k ], "[%1]" )
			end
			words[ i ] = words[ i ]:gsub( "%b[]",
				function( capture )
					capture = capture:gsub( "%[", "" ):gsub( "%]", "" )
					return "[" .. capture .. "]"
				end
			)
			words[ i ], num = words[ i ]:gsub( "%b[]", "%1" )
			if num > 0 then
				words[ i ] = words[ i ]:gsub( "%b[]",
					function( capture )
						capture = capture:gsub( "%[", "" ):gsub( "%]", "" )
						return format( "{\\%s%d}%s", K_mode, times[ i ] / (num * 10), capture )
					end
				)
			end
		end
		String = table.op( words, "concat" )
		return String
	end --text.to_kara( line.text_stripped )
	
	function text.syl2hiragana( Text )
		local idx
		if table.inside( text.romaji, Text:lower( ):match( "%w+" ) ) == true then
			idx = table.index( text.romaji, Text:lower( ):match( "%w+" ) )
			return Text:lower( ):gsub( text.romaji[ idx ], text.hiragana[ idx ] )
		elseif table.inside( text.katakana, Text:match( "[\128-\255]+" ) ) == true then
			idx = table.index( text.katakana, Text:match( "[\128-\255]+" ) )
			return Text:gsub( text.katakana[ idx ], text.hiragana[ idx ] )
		end
		return Text
	end
	
	function text.syl2katakana( Text )
		local idx
		if table.inside( text.romaji, Text:lower( ):match( "%w+" ) ) == true then
			idx = table.index( text.romaji, Text:lower( ):match( "%w+" ) )
			return Text:lower( ):gsub( text.romaji[ idx ], text.katakana[ idx ] )
		elseif table.inside( text.hiragana, Text:match( "[\128-\255]+" ) ) == true then
			idx = table.index( text.hiragana, Text:match( "[\128-\255]+" ) )
			return Text:gsub( text.hiragana[ idx ], text.katakana[ idx ] )
		end
		return Text
	end
	
	function text.kana2romaji( Text )
		local idx
		if table.inside( text.hiragana, Text:match( "[\128-\255]+" ) ) == true then
			idx = table.index( text.hiragana, Text:match( "[\128-\255]+" ) )
			return Text:gsub( text.hiragana[ idx ], text.romaji[ idx ] )
		elseif table.inside( text.katakana, Text:match( "[\128-\255]+" ) ) == true then
			idx = table.index( text.katakana, Text:match( "[\128-\255]+" ) )
			return Text:gsub( text.katakana[ idx ], text.romaji[ idx ] )
		end
		return Text
	end
	
	function text.text2stripped( text_str4 )
		local text_str4 = text.remove_tags( text_str4 )
		local text_without_space = text_str4:gsub( " ", "" )
		if unicode.len( text_without_space ) == 0 then
			return text_str4
		end
		return text_str4:gsub( " ", "" )
	end

	function text.char_size( )
		local char_DS = _ds or 0.85
		local char_ds = char_DS * l.descent
		local char_t1 = {
			"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R",
			"S", "T", "U", "V", "W", "X", "Y", "Z", "á", "é", "í", "ó", "ú", "ü", "b", "d", "f",
			"h", "i", "k", "l", "ñ", "t"
		}
		local char_t2 = { "Ñ", "Á", "É", "Í", "Ó", "Ú", "Ü" }
		local char_t3 = { "g", "p", "q", "y" }
		local char_t4 = { "a", "c", "e", "m", "n", "o", "r", "s", "u", "v", "w", "w", "x", "z" }
		local char_t5 = { "Q", "j" }
		c_top	 = l.top
		c_bottom = l.bottom
		c_height = val_height
		if table.inside( char_t1, val_text ) == true then
			c_top	 = l.top + char_ds
			c_bottom = l.bottom - char_ds
			c_height = l.height - 2 * char_ds
		elseif table.inside( char_t2, val_text ) == true then
			c_top	 = l.top
			c_bottom = l.bottom - char_ds
			c_height = l.height - char_ds
		elseif table.inside( char_t3, val_text ) == true then
			c_top	 = l.top + 2 * char_ds
			c_bottom = l.bottom
			c_height = l.height - 2 * char_ds
		elseif table.inside( char_t4, val_text ) == true then
			c_top	 = l.top + 2 * char_ds
			c_bottom = l.bottom - char_ds
			c_height = l.height - 3 * char_ds
		elseif table.inside( char_t5, val_text ) == true then
			c_top	 = l.top + char_ds
			c_bottom = l.bottom
			c_height = l.height - char_ds
		end
	end
	
	function text.char2byte( string_text )
		local bytes = { }
		for c in unicode.chars( string_text ) do
			table.insert( bytes, c:byte( ) )
		end
		return bytes
	end
	
	function text.byte2char( table_bytes )
		return string.char( unpack( table_bytes ) )
	end
	
	function text.inside( inside, Text )
		-- verifica si dentro de una syl hay un string
		-- y retorna false o true según sea el caso :)
		local text_ins = Text
		local inside = inside or ""
		if text_ins == nil then
			text_ins = val_text
			if fx__.t_type == "Line"
				or fx__.t_type == "Translation Line" 
				or fx__.t_type == "Template Line [Word]"
				or fx__.t_type == "Template Line [Syl]"
				or fx__.t_type == "Template Line [Char]" then
				text_ins = linefx[ ii ].text_raw
			elseif fx__.t_type == "Word"
				or fx__.t_type == "Translation Word" then		
				text_ins = linefx[ ii ].word[ val_i ].text_raw
			elseif fx__.t_type == "Syl"
				or fx__.t_type == "Convert to Hiragana"
				or fx__.t_type == "Convert to Katakana"
				or fx__.t_type == "Convert to Romaji" then
				text_ins = linefx[ ii ].syl[ val_i ].text_raw
			elseif fx__.t_type == "Char"
				or fx__.t_type == "Translation Char" then		
				text_ins = linefx[ ii ].char[ val_i ].text_raw
			end
		end
		if text_ins:match( inside ) then
			return true
		end
		return false
	end --text.inside( "-fx" )
	
	function text.bezier( Shape, mode, Accel, Offset_time )
		if Shape == nil then
			Shape = shape.displace( format( "m 0 0 l %d 0", l_width ), l_left, l_middle )
			if linefx[ ii ].text:match( "\\i?clip%b()" ) then
				Shape = linefx[ ii ].text:match( "\\i?clip%b()" )
			end
		end
		local mode = mode or 2
		--------------------------------------------
		-- modos de 1 a 5 ingresados desde el script
		if l_effect:match( "%d" ) then
			mode = tonumber( l_effect:match( "%d" ) )
		end --january 05th 2018
		mode = ceil( abs( mode ) )
		--------------------------------------------
		if type( Shape ) == "string" then
			if l_actor:match( "circle" )
				and Shape:match( "\\i?clip%b()" ) then
				local center_x, center_y, Radius = math.circle( Shape )
				local Coor = { }
				for c in Shape:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( Coor, tonumber( c ) )
				end
				local ang_x, ang_y = Coor[ 1 ], Coor[ 2 ]
				local angle = math.angle( center_x, center_y, ang_x, ang_y )
				local shape_crc = shape.centerpos( shape.size( shape.circle, 2 * (Radius + effect_val[ 1 ]) ) )
				shape_crc = shape.displace( shape.rotate( shape_crc, angle - 90 + effect_val[ 2 ] ), center_x, center_y )
				if l_actor:match( "icircle" ) then
					shape_crc = shape.reverse( shape_crc )
				end
				if mode >= 5 then
					mode = (mode - 1) % 5 - 3
					return math.bezier2move( shape_crc, mode, Accel, Offset_time )
					--modo 5 = 1
					--modo 6 o más = 2
				end
				return math.bezier2( shape_crc, mode )
			end
			if mode >= 5 then
				mode = (mode - 1) % 5 - 3
				return math.bezier2move( Shape, mode, Accel, Offset_time )
			end
			return math.bezier2( Shape, mode )
		elseif type( Shape ) == "table" then
			local t1 = Aceel
			local t2 = Offset_time
			if mode >= 5 then
				mode = (mode - 1) % 5 + 1
			end
			return math.movebezier( Shape, t1, t2, mode )
		end		
	end --text.bezier( )
	
	function text.text2part( line_text_str, line_text_dur, line_text_left, Parts )
		local line_text_str = line_text_str or linefx[ ii ].text_stripped
		local line_text_dur = line_text_dur or linefx[ ii ].duration
		local line_text_left = line_text_left or linefx[ ii ].left
		local Parts = Parts or 2
		local parts_in_text = string.parts( line_text_str, Parts )
		local parts_in_text_dur = { }
		local parts_widths, parts_lefts = { [ 0 ] = 0 }, { [ 0 ] = line_text_left }
		local parts_rights, parts_centers = { }, { }
		local char_dur = math.round( line_text_dur / unicode.len( line_text_str ), 3 )
		local left_spc
		for i = 1, #parts_in_text do
			left_spc = ""
			parts_in_text_dur[ i ] = unicode.len( parts_in_text[ i ] ) * char_dur --fix: july 03rd 2019
			while parts_in_text[ i ]:sub( 1, 1 ) == " "
				or parts_in_text[ i ]:sub( 1, 1 ) == "	" do
				left_spc = left_spc .. parts_in_text[ i ]:sub( 1, 1 )
				parts_in_text[ i ] = parts_in_text[ i ]:sub( 2, -1 )
			end
			parts_widths[ i ] = aegisub.width( parts_in_text[ i ] )
			parts_lefts[ i ] = parts_lefts[ i - 1 ] + parts_widths[ i - 1 ] + aegisub.width( left_spc )
		end
		for i = 1, #parts_in_text do
			while parts_in_text[ i ]:sub( -1, -1 ) == " "
				or parts_in_text[ i ]:sub( -1, -1 ) == "	" do
				parts_in_text[ i ] = parts_in_text[ i ]:sub( 1, -2 )
			end
			parts_widths[ i ] = aegisub.width( parts_in_text[ i ] )
			parts_rights[ i ] = parts_lefts[ i ] + parts_widths[ i ]
			parts_centers[ i ] = parts_lefts[ i ] + parts_widths[ i ] / 2
		end
		parts_widths[ 0 ] = nil
		parts_lefts[ 0 ] = nil
		return parts_in_text, parts_in_text_dur, parts_centers, parts_widths, parts_lefts, parts_rights
		--june 28th 2018
	end --local p_txt, p_dur, p_cen, p_wid, p_lef, p_rig
	
	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "text" usando Yutils.lua by Youka --------------------------------------
	function text.to_shape( Text, Scale, Tags, Offset )
		local Text = Text or val_text
		while Text:sub( -1, -1 ) == " " do
			Text = Text:sub( 1, -2 )
		end
		local text_scale = Scale or 1
		local shape_scale = math.round( math.log( text_scale, 2 ) + 1 )
		local text_confi = {
			[ 1 ] = l.fontname,
			[ 2 ] = l.bold,
			[ 3 ] = l.italic,
			[ 4 ] = l.underline,
			[ 5 ] = l.strikeout,
			[ 6 ] = l.fontsize,
			[ 7 ] = text_scale * l.scale_x / 100,
			[ 8 ] = text_scale * l.scale_y / 100,
			[ 9 ] = l.spacing,
		}
		local text_font = Yutils.decode.create_font( unpack( text_confi ) )
		local text_shape = shape.ASSDraw3( text_font.text_to_shape( Text ) )
		local text_off_x = 0.5 * (shape.width( text_shape )  - text_scale * aegisub.width( Text ))
		local text_off_y = 0.5 * (shape.height( text_shape ) - text_scale * aegisub.height( Text ))
		if Offset then
			text_off_x = 0
			text_off_y = 0
		end
		text_shape = shape.displace( text_shape, text_off_x, text_off_y )
		if Tags then
			return format( "{\\p%d%s}%s", shape_scale, extra_tags or "", text_shape )
		end
		return text_shape
	end --text.to_shape( syl.text )
	
	function text.bord_to_shape( Text, Scale, Tags, Bord )
		local Text = Text or val_text
		local text_scale = Scale or 1
		local shape_scale = math.round( math.log( text_scale, 2 ) + 1 )
		local text_shape = text.to_shape( Text, text_scale )
		local bord_width = Bord or l.outline
		local bord_shape = Yutils.shape.to_outline(
			Yutils.shape.flatten( text_shape, 2 ), bord_width * text_scale / 2, bord_width * text_scale / 2
		)
		bord_shape = shape.ASSDraw3( bord_shape )
		if bord_shape ~= "" then
			if Tags then
				return format( "{\\p%d%s}%s", shape_scale, extra_tags or "", bord_shape )
			end
			return bord_shape
		end
		return ""
	end --text.bord_to_shape( line.text_stripped, 8, true )

	function text.do_shape( Text, Shape, Scale, Mode, Tags, Split )
		local Text = Text or val_text
		local Split = Split or 2
		local text_scale = Scale or 1
		local shape_scale = math.round( math.log( text_scale, 2 ) + 1 )
		local Shape = Shape or format( "m %s %s l %s %s", val_left, val_bottom, val_right, val_bottom )
		Shape = shape.ratio( Shape, text_scale )
		shape.info( Shape )
		local text_shape = shape.filter2( text.to_shape( Text, text_scale, nil, true ), nil, Split * text_scale )
		if text_shape ~= "" then
			local Ratio = math.round( (text_scale * aegisub.width( Text )) / shape.length( Shape ), 3 )
			local Mode = Mode or 1
			local Filter
			if type( Mode ) == "function" then
				Filter = Mode
			end
			local actor_offset, ratio_offset = 0, 0
			if l_actor:match( "%-?%d+[%.%d]*" ) then
				actor_offset = tonumber( l_actor:match( "%-?%d+[%.%d]*" ) )
			end
			ratio_offset = math.round( (text_scale * actor_offset) / shape.length( Shape ), 3 )
			if shape.length( Shape ) < text_scale * aegisub.width( Text ) then
				Filter = function( x, y )
					return x, y
				end
			else
				if Mode == 1 then
					Filter = function( x, y )
						return (1 - Ratio) / 2 + ratio_offset + Ratio * x, y
					end
				elseif Mode == 2 then
					Filter = function( x, y )
						return ratio_offset + Ratio * x, y
					end
				elseif Mode == 3 then
					Filter = function( x, y )
						return 1 - Ratio - ratio_offset + Ratio * x, y
					end
				elseif Mode == 4 then
					Filter = function( x, y )
						return x, y
					end
				end
			end
			local text_pos = effector.new_pos( 0, 0 )
			local text_do_shape = shape.ASSDraw3( Yutils.shape.glue( text_shape, Shape, Filter ) )
			if Tags then
				return format( "{\\an7%s\\p%d%s}%s", text_pos, shape_scale, extra_tags or "", text_do_shape )
			end
			return text_do_shape
		end
		return ""
	end	--text.do_shape( line.text_stripped, "m 102 352 b 359 190 882 184 1164 352", 2, 1, true )
	
	function text.deformed( Text, Deformed, Pixel, Axis )
		local Axis  = Axis or "x"
		local Pixel = Pixel or l.height
		local Deformed = Deformed or 2
		local DeformeD, PixeL = Deformed, Pixel
		if type( Axis ) == "table" then
			DeformeD = Axis[ 1 ]
			PixeL = Axis[ 2 ]
		end
		local text_def  = Text or val_text
		local text_shp1 = text.to_shape( text_def )
		if text_shp1 ~= "" then
			local text_fltr = function( x, y )
				local px, py = x, y
				if Axis == "x" then
					y = y - Pixel * sin( ((px - minx) / w_shape) * Deformed * pi )
				elseif Axis == "y" then
					x = x + Pixel * sin( ((py - miny) / h_shape) * Deformed * pi )
				else
					x = x + PixeL * sin( ((py - miny) / h_shape) * DeformeD * pi )
					y = y - Pixel * sin( ((px - minx) / w_shape) * Deformed * pi )
				end
				return x, y
			end
			local text_shp2 = shape.filter2( text_shp1, text_fltr, 6 )
			return format( "{\\p1%s}%s", extra_tags or "", text_shp2 )
		end
		return ""
	end --text.deformed( line.text_stripped, 8, 5, "y" )
	
	function text.deformed2( Text, Mode )
		local text_shape = text.to_shape( Text, 8, nil, true )
		if text_shape ~= "" then
			shape.info( text_shape )
			local center_dx = minx + w_shape / 2
			local center_dy = miny + h_shape / 2
			if Mode == nil
				or Mode == 1 then
				local k = 0
				text_shape = Yutils.shape.filter( shape.redraw( text_shape, 6 ), 
					function( x, y )
						local def_angle = math.angle( center_dx, center_dy, x, y )
						k = k + 1
						x = center_dx + math.polar( def_angle, 320 + 10 * (-1) ^ k, "x" )
						y = center_dy + math.polar( def_angle, 320 + 10 * (-1) ^ k, "y" )
						return x, y
					end
				)
			elseif Mode == 2 then
				text_shape = Yutils.shape.filter( shape.redraw( text_shape, 6 ), 
					function( x, y )
						local def_angle = math.angle( center_dx, center_dy, x, y )
						local des_dista = math.distance( center_dx, center_dy, x, y )
						local des_radiu = ((des_dista <= 80) and ((des_dista <= 60) and 70 or 140) or 200)
						x = center_dx + math.polar( def_angle, des_radiu, "x" )
						y = center_dy + math.polar( def_angle, des_radiu, "y" )
						return x, y
					end
				)
			elseif Mode == 3 then
				text_shape = Yutils.shape.filter( shape.redraw( text_shape, 6 ), 
					function( x, y )
						local def_angle = math.angle( center_dx, center_dy, x, y )
						local def_angRE = (def_angle - 1) % 60 + 1
						local def_ang3A = 180 - 60 - def_angRE
						local des_radiu = 200
						local des_dista = des_radiu * sin( rad( 60 ) ) / sin( rad( def_ang3A ) )
						local des_radDE = ((math.distance( center_dx, center_dy, x, y ) <= 80) and des_dista / 2 or des_dista)
						x = center_dx + math.polar( def_angle, des_radDE, "x" )
						y = center_dy + math.polar( def_angle, des_radDE, "y" )
						return x, y
					end
				)
			end
			local text_pos = effector.new_pos( fx.pos_l, fx.pos_t )
			return format( "{\\an7%s\\p4%s}%s", text_pos, extra_tags or "", shape.ASSDraw3( text_shape ) )
		end
		return ""
	end --text.deformed2( syl.text )

	function text.to_pixels( Text, Mode, Shape, Space, Ratio )
		local text_2pixel = Text or val_text
		local shape_pixel
		local Ratio = Ratio or 1
		local pixel_table
		local Px, Py = recall.PPx, recall.PPy
		local pixel_datas, pixel, pixel_pos = { }, recall.pxl, ""
		if j == 1 then
			if text.to_shape( text_2pixel ) == "" then
				return ""
			end
			pixel_table = Yutils.shape.to_pixels( shape.ratio( text.to_shape( text_2pixel, 1, nil, true ), Ratio ) )
			pixel = remember( "pxl", { } )
			for i = 1, #pixel_table do
				pixel_datas[ i ] = { }
				for k, v in pairs( pixel_table[ i ] ) do
					table.insert( pixel_datas[ i ], v )
				end
			end
			for i = 1, #pixel_table do
				pixel[ i ] = { }
				pixel[ i ].x = fx.pos_l + pixel_datas[ i ][ 2 ] - 0.5 * (Ratio - 1) * aegisub.width( text_2pixel )
				pixel[ i ].y = fx.pos_t + pixel_datas[ i ][ 1 ] - 0.5 * (Ratio - 1) * aegisub.height( text_2pixel )
				pixel[ i ].a = alpha.val2ass( 255 - pixel_datas[ i ][ 3 ] )
			end
			maxloop( #pixel_datas )
			Px, Py = remember( "PPx", { } ), remember( "PPy", { } )
			for i = 1, 5 do
				Px[ i ] = Rrs( 20, 50 )
				Py[ i ] = Rrs( 20, 50 )
			end
		end
		local to_an = math.angle( fx.move_x1, fx.move_y1, pixel[ j ].x, pixel[ j ].y )
		---------------------------------------
		if Shape then
			if type( Shape ) == "function" then
				shape_pixel = Shape( )
			elseif type( Shape ) == "table" then
				shape_pixel = Shape[ math.i( j, #Shape )[ "1-->A" ] ]
			else
				shape_pixel = Shape
			end
		else
			shape_pixel = shape.pixel
		end
		---------------------------------------
		if Space
			and R( Space ) ~= 1 then
			return nil
		end
		if type( Mode ) == "function" then
			pixel_pos = Mode( pixel )
			if type( pixel_pos ) == "boolean" then
				if pixel_pos then
					pixel_pos = effector.new_pos( pixel[ j ].x, pixel[ j ].y )
					fx.pos_x, fx.pos_y = pixel[ j ].x, pixel[ j ].y
					return format( "{%s\\1a%s\\bord0\\shad0\\p1%s}%s", pixel_pos, pixel[ j ].a, extra_tags or "", shape_pixel )
				end
				return nil
			end --si posgroup existe
			fx.pos_x, fx.pos_y = pixel[ j ].x, pixel[ j ].y
			return format( "{\\1a%s\\bord0\\shad0%s\\p1%s}%s", pixel[ j ].a, pixel_pos, extra_tags or "", shape_pixel )
		elseif Mode == nil
			or Mode == 1 then
			pixel_pos = effector.new_pos( pixel[ j ].x, pixel[ j ].y )
			fx.pos_x, fx.pos_y = pixel[ j ].x, pixel[ j ].y
			return format( "{%s\\1a%s\\bord0\\shad0\\p1%s}%s", pixel_pos, pixel[ j ].a, extra_tags or "", shape_pixel )
		end
		fx.pos_x, fx.pos_y = pixel[ j ].x, pixel[ j ].y
		if Mode == 2 then
			return format( "{\\move(%s,%s,%s,%s)\\1a%s\\bord0\\fad(0,200)\\p1%s}%s", pixel[ j ].x, pixel[ j ].y, 
				fx.move_x1 + 1.00 * math.polar( to_an, 40 + Rs( 6 ), "x" ) * ratio, 
				fx.move_y1 + 1.00 * math.polar( to_an, 40 + Rs( 6 ), "y" ) * ratio,
				pixel[ j ].a, extra_tags or "", shape_pixel
			)
		elseif Mode == 3 then
			return format( "{\\move(%s,%s,%s,%s)\\1a%s\\bord0\\fad(0,200)\\p1%s}%s", pixel[ j ].x, pixel[ j ].y, 
				fx.move_x1 + 0.75 * math.polar( to_an, 40 + Rs( 6 ), "x" ) * ratio, 
				fx.move_y1 + 1.55 * math.polar( to_an, 40 + Rs( 6 ), "y" ) * ratio,
				pixel[ j ].a, extra_tags or "", shape_pixel
			)
		elseif Mode == 4 then
			return format( "{\\move(%s,%s,%s,%s)\\1a%s\\bord0\\fad(0,200)\\p1%s}%s", pixel[ j ].x, pixel[ j ].y, 
				fx.move_x1 + 1.25 * math.polar( to_an, 40 + Rs( 6 ), "x" ) * ratio, 
				fx.move_y1 + 0.35 * math.polar( to_an, 40 + Rs( 6 ), "y" ) * ratio + 20 * R( -1, 1 ) * ratio,
				pixel[ j ].a, extra_tags or "", shape_pixel
			)
		elseif Mode == 5 then
			local DDx, DDy = math.confi_bezier( 5, Px, Py, Rc( 0, 1 ) )
			return format( "{\\move(%s,%s,%s,%s)\\1a%s\\bord0\\fad(0,200)\\p1%s}%s", pixel[ j ].x, pixel[ j ].y, 
				fx.move_x1 + DDx + Rrs( 6 ), fx.move_y1 + DDy + Rrs( 6 ),
				pixel[ j ].a, extra_tags or "", shape_pixel
			)
		end
	end --text.to_pixels( )
	
	function text.to_clip( Text, relative_pos, iclip, Scale )
		local Text = Text or val_text
		local text_scale = Scale or 1
		local text_clip = text.to_shape( Text, text_scale, nil, true )
		local text_mode = ""
		if text_clip ~= "" then
			if relative_pos then
				-- la posición es relativa a la original del texto
				text_clip = shape.displace( text_clip, val_left, val_top )
			else
				-- la posición es relativa a fx.pos_x y fx.pos_y
				text_clip = shape.displace( text_clip, fx.move_l1, fx.move_t1 )
			end
			if iclip then
				text_mode = "i"
			end
			return format( "\\%sclip(%s)%s", text_mode, text_clip, extra_tags or "" )
		end
		return ""
	end --text.to_clip( syl.text )

	function text.bord_to_pixels( Text, Shape, Pixel, Seed, Filter, Scale )
		local text_2bord = Text or val_text
		local bord_shape
		local size_pixel = Pixel or 2
		local seed_space = Seed or 1
		local text_scale = Scale or 1 -->10-10-16
		local text_shape, points = recall.txtshp, recall.txtpnt
		if j == 1 then
			text_shape = remember( "txtshp",
				shape.displace( text.to_shape( text_2bord, text_scale, nil, true ), fx.pos_l, fx.pos_t )
			)
			points = remember( "txtpnt", shape.point( text_shape, size_pixel ) )
			maxloop( #points )
		end
		if #points > 0 then
			---------------------------------------
			if Shape then
				if type( Shape ) == "function" then
					bord_shape = Shape( )
				elseif type( Shape ) == "table" then
					bord_shape = Shape[ math.i( j, #Shape )[ "1-->A" ] ]
				else
					bord_shape = Shape
				end
			else
				bord_shape = shape.pixel
			end
			---------------------------------------
			local bordpixel_pos = effector.new_pos( points[ j ].x, points[ j ].y )
			if Filter then
				bordpixel_pos = Filter( points )
			end
			fx.pos_x, fx.pos_y = points[ j ].x, points[ j ].y
			if R( seed_space ) == 1 then
				if posgroup then --si posgroup existe
					if posgroup( ) then
						--para añadir un condicional a las funciones que
						--modifican las posiciones y no se pueden usar en el fxgroup
						return format( "{%s\\bord0\\shad0\\p1%s}%s", bordpixel_pos, extra_tags or "", bord_shape )
					end
					return ""
				end
				return format( "{%s\\bord0\\shad0\\p1%s}%s", bordpixel_pos, extra_tags or "", bord_shape )
			end
		end
		return ""
	end --text.bord_to_pixels( syl.text )

	function text.gradienth( ... )
		local shp_w = (tonumber( effect_val[ 1 ] ) > 0) and tonumber( effect_val[ 1 ] ) or 2
		local Shape, cn = "", ceil( val_width / shp_w )
		local gradh = table.gradient( { { cn } }, ... )
		for i = 1, cn do
			Shape = Shape .. format( "{\\1c%s\\p1}%s", gradh[ i ], shape.size( shape.rectangle, shp_w, ceil( val_height ) ) )
		end
		return format( "{%s\\bord0\\shad0}%s", text.to_clip( ), Shape )
	end --text.gradienth( "&H00FFFF&", "&H0000FF&" )
	
	function text.gradienth2( ... )
		local shp_w = (tonumber( effect_val[ 1 ] ) > 0) and tonumber( effect_val[ 1 ] ) or 2
		local Shape, cn2 = "", ceil( val_width / shp_w )
		local Shmod = shape.size( shape.rectangle, shp_w, ceil( 1.8 * val_height ) )
		local count, gradh = recall.countline, recall.gradienth
		if j == 1 then
			count = remember( "countline", ceil( (l.width + 4 * shp_w) / shp_w ) )
			gradh = remember( "gradienth", table.gradient( { { count } }, ... ) )
		end
		for i = 1, cn2 do
			Shape = Shape .. format( "{\\1c%s\\p1}%s", gradh[ floor( val_left - l.left ) + i ], Shmod )
		end
		return format( "{%s\\bord0\\shad0}%s", text.to_clip( ), Shape )
	end --text.gradienth2( "&H00FFFF&", "&H0000FF&" )
	
	function text.gradientv( ... )
		local shp_h = (tonumber( effect_val[ 1 ] ) > 0) and tonumber( effect_val[ 1 ] ) or 2
		local Shape, cn = "", ceil( val_height / shp_h )
		local gradv = table.gradient( { { cn } }, ... )
		for i = 1, cn do
			Shape = Shape .. format( "{\\1c%s\\p1}%s{\\p0}\\N", gradv[ i ], shape.size( shape.rectangle, ceil( val_width ), shp_h ) )
		end
		return format( "{%s\\bord0\\shad0}%s", text.to_clip( ), Shape )
	end --text.gradientv( "&H00FFFF&", "&H0000FF&" )
	
	function text.gradientangle( Angle, ... )
		local shp_s = (tonumber( effect_val[ 1 ] ) > 0) and tonumber( effect_val[ 1 ] ) or 2
		local Angle = Angle or 0
		local shp_w = math.round( abs( val_width * cos( rad( Angle ) ) + val_height * sin( rad( Angle ) ) + 1 ) )
		local shp_h = math.round( abs( val_width * sin( rad( Angle ) ) + val_height * cos( rad( Angle ) ) + 1 ) )
		local Shape, cn = format( "{\\fr%s}", Angle % 361 ), ceil( shp_w / shp_s )
		local grada = table.gradient( { { cn } }, ... )
		for i = 1, cn do
			Shape = Shape .. format( "{\\1c%s\\p1}%s", grada[ i ], shape.size( shape.rectangle, shp_s, shp_h ) )
		end
		return format( "{%s\\bord0\\shad0}%s", text.to_clip( ), Shape )
	end --text.gradientangle( 45, "&H00FFFF&", "&H0000FF&" )
	
	function text.maskclip( Fondo, Color, fxBord, fxMask, Shape, Space )
		if type( Fondo ) == "function" then
			Fondo = Fondo( )
		end
		if type( Color ) == "function" then
			Color = Color( )
		end
		if type( fxBord ) == "function" then
			fxBord = fxBord( )
		end
		if type( fxMask ) == "function" then
			fxMask = fxMask( )
		end
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Space ) == "function" then
			Space = Space( )
		end
		local Fondo = Fondo or text.color1
		local Color = Color or shape.color1
		local fxBord = fxBord or ""
		local fxMask = fxMask or ""
		local Shape = Shape or shape.circle
		local Space = Space or 0.85
		local colorm1, colorm2
		local colortag = nil
		if Fondo:match( "\\1[v]*c" ) == nil then
			Fondo = "\\1c" .. Fondo
		end
		if type( Color ) == "table" then
			colorm1 = Color[ 1 ]
			colorm2 = Color[ 2 ] or "&H000000&"
		else
			colorm1 = Color
			colorm2 = "&H000000&"
			if colorm1:match( "\\1[v]*c" ) then
				colortag = true
			end
		end
		local Horizontal, Vertical, Colors, Shapes = recall.horiz, recall.verti, recall.color, recall.shapes
		if val_i == 1
			and j == 1
			and J == 1 then
			Horizontal = remember( "horiz", { [ 0 ] = 0 } )
			Vertical = remember( "verti", { } )
			Colors = remember( "color", { } )
			Shapes = remember( "shapes", { } )
			local i = 0
			local shwidth
			while Horizontal[ i ] <= l.width do
				shwidth = Rr( 18, 36 )
				Horizontal[ i + 1 ] = (i == 0) and 0 or Horizontal[ i ] + R( 0.5 * shwidth, 1.5 * shwidth * Space )
				Colors[ i + 1 ] = colortag and colorm1 or color.mask( "\\1c", colorm1, colorm2 )
				Shapes[ i + 1 ] = shape.size( shape.origin( shape.rotate( Shape, R( 360 ) ) ), shwidth, Rr( 18, 36 ) )
				i = i + 1
			end
			for i = 1, #Horizontal do
				Vertical[ i ] = l.height / 2 + Rs( 0.4 * l.height )
			end
		end
		local decide1, decide2, decide3 = { }, { }, { }
		for i = 1, #Horizontal do
			if Horizontal[ i ] + shape.width( Shapes[ i ] ) / 2 >= val_left - l.left then
				table.insert( decide1, Horizontal[ i ] )
			end
			if Horizontal[ i ] - shape.width( Shapes[ i ] ) / 2 <= val_right - l.left then
				table.insert( decide2, Horizontal[ i ] )
			end
		end
		for i = 1, #Horizontal do
			if table.inside( decide1, Horizontal[ i ] )
				and table.inside( decide2, Horizontal[ i ] ) then
				table.insert( decide3, { i, Horizontal[ i ] } )
			end
		end
		replay( 3 )
		if J == 1 then
			return format( "{%s\\bord0%s\\p1}%s",
				Fondo, text.to_clip( ), shape.size( shape.rectangle, 2 * val_width, 2 * val_height )
			)
		elseif J == 2 then
			if #decide3 == 0 then
				return format( "{\\an7\\pos(%s,%s)%s\\3c%s\\bord2\\blur4%s%s\\p1}%s",
					l.left, l.top, Colors[ R( #Colors ) ], shape.color3, text.to_clip( ), fxMask,
					shape.centerpos( Shapes[ R( #Shapes ) ], val_center - l.left, l.middle )
				)
			end
			maxloop( #decide3 )
			return format( "{\\an7\\pos(%s,%s)%s\\3c%s\\bord2\\blur4%s%s\\p1}%s",
				l.left, l.top, Colors[ decide3[ j ][ 1 ] ], shape.color3, text.to_clip( ), fxMask,
				shape.centerpos( Shapes[ decide3[ j ][ 1 ] ], decide3[ j ][ 2 ], Vertical[ decide3[ j ][ 1 ] ] )
			)
		end
		return format( "{\\1a&HFF&%s}%s", fxBord, val_text )
	end --text.maskclip( )
	
	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "image" usando Yutils.lua by Youka -------------------------------------
	function image.data( bmp_image, Return )
		local bmp_color, bmp_alpha = { }, { }
		local bmp_image = bmp_image or "test.bmp"
		local bmp_xdata = Yutils.decode.create_bmp_reader( bmp_image ).data_packed( )
		for i = 1, #bmp_xdata do
			bmp_color[ i ] = color.val2ass( bmp_xdata[ i ].r, bmp_xdata[ i ].g, bmp_xdata[ i ].b )
			bmp_alpha[ i ] = alpha.val2ass( 255 - bmp_xdata[ i ].a )
		end
		if Return == "color" then
			return bmp_color
		end
		if Return == "alpha" then
			return bmp_alpha
		end
		return bmp_color, bmp_alpha
	end --image.data( )
	
	function image.to_pixels( bmp_image, Size )
		local bmp_color, bmp_alpha = recall.clr, recall.alp
		local bmp_image = bmp_image or "test.bmp"
		local Size = Size or 1
		if j == 1 then
			bmp_color = remember( "clr", image.data( bmp_image, "color" ) )
			bmp_alpha = remember( "alp", image.data( bmp_image, "alpha" ) )
			maxloop( #bmp_color )
		end
		local bmp_wth = Yutils.decode.create_bmp_reader( bmp_image ).width( )
		local bmp_hht = Yutils.decode.create_bmp_reader( bmp_image ).height( )
		local posx = fx.pos_x + ((j - 1) % bmp_wth + 1) * Size - bmp_wth * Size / 2 + Size / 2
		local posy = fx.pos_y + ceil( j / bmp_hht - 1 ) * Size - bmp_hht * Size / 2 + Size / 2
		if bmp_alpha[ j ] == "&HFF&" then
			return nil
		end
		local bmp_tag = effector.new_pos( posx, posy )
		bmp_tag = format( "{%s\\1c%s\\1a%s}", bmp_tag, bmp_color[ j ], bmp_alpha[ j ] )
		return format( "%s{\\bord0\\shad0\\fscx%s\\fscy%s\\p1}%s", bmp_tag, 100 * Size, 100 * Size, shape.pixel )
	end -- image.to_pixels( )
	
	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "aegisub" --------------------------------------------------------------
	function aegisub.word( line_text, line_dur, ci_ )
		line_text = line_text:gsub( "\\N", " " ):gsub( "  ", " " )
		words_line2, words_dur2 = text.text2word( line_text, line_dur )
		word_fx = { n = #words_line2 }
		words_left2 = l_left
		words_start2 = 0
		for k = 1, #words_line2 do
			word_fx[ k ]				= { }
			word_fx[ k ].text			= words_line2[ k ]
			word_fx[ k ].text_raw		= word_fx[ k ].text
			word_fx[ k ].text_stripped	= text.text2stripped( words_line2[ k ] )
			word_fx[ k ].text1			= text.remove_tags( words_line2[ k ] ):gsub( "KEfx", "" )
			word_fx[ k ].text2			= word_fx[ k ].text_stripped:gsub( "KEfx", "" )
			word_fx[ k ].width_t		= aegisub.width( word_fx[ k ].text1 )
			word_fx[ k ].width			= aegisub.width( word_fx[ k ].text2 )
			word_fx[ k ].left			= words_left2 
			word_fx[ k ].center			= words_left2 + word_fx[ k ].width / 2
			word_fx[ k ].right			= words_left2 + word_fx[ k ].width
			word_fx[ k ].top			= l_top
			word_fx[ k ].middle			= l_middle
			word_fx[ k ].bottom			= l_bottom
			word_fx[ k ].height			= l_height
			word_fx[ k ].duration		= words_dur2[ k ]
			word_fx[ k ].dur			= words_dur2[ k ]
			word_fx[ k ].start_time		= words_start2
			word_fx[ k ].end_time		= words_start2 + word_fx[ k ].duration
			word_fx[ k ].mid_time		= words_start2 + word_fx[ k ].duration / 2
			words_left2 				= words_left2  + word_fx[ k ].width_t
			words_start2				= words_start2 + word_fx[ k ].duration
		end
		ci_  = ci_ or 1
		word = word_fx[ ci_ ]
		word.i = ci_
		word.n = word_fx.n
		word.text_ = word.text
		word.text  = word.text_stripped:gsub( "KEfx", "" )
		return ""
	end
	
	function aegisub.word2s( )
		w_txt, w_dur = text.text2word( linefx[ ii ].text, linefx[ ii ].duration )
		s_txt, w_len, w_fnl = { }, { }, { [ 0 ] = 0 }
		for i = 1, #w_txt do
			s_txt[ i ] = text.text2syl( w_txt[ i ], w_dur[ i ] )
			w_len[ i ] = #s_txt[ i ]
		end
		for i = 1, #w_txt do
			w_fnl[ i ] = w_fnl[ i - 1 ] + w_len[ i ]
		end
		for i = 1, #w_txt do
			if syl.i >= w_fnl[ i - 1 ]
				and syl.i <= w_fnl[ i ] then
				return i
			end
		end
	end

	function aegisub.wordsi( ws_ )
		ws_txt, ws_dur = text.text2word( linefx[ ii ].text, linefx[ ii ].duration )
		sw_txt, w_syli, w_syln = { }, { }, { }
		for i = 1, #ws_txt do
			sw_txt[ i ] = text.text2syl( ws_txt[ i ], ws_dur[ i ] )
		end
		for i = 1, #ws_txt do
			for k = 1, #sw_txt[ i ] do
				table.insert( w_syli, k )
				table.insert( w_syln, #sw_txt[ i ] )
			end
		end
		return w_syli[ ws_ ], w_syln[ ws_ ]
	end
	
	function aegisub.syls2c( )
		c_txt = { }
		local syl_text = syl.text:gsub( "KEfx", "" ):gsub( noblank2, "" )
		for char_1 in unicode.chars( syl_text ) do
			table.insert( c_txt, char_1 )
		end
		if #c_txt == 0 then
			c_txt[ 1 ] = ""
		end
		charsyl   = { n = #c_txt }
		charsyl_d = syl.dur / charsyl.n
		charsyl_l = syl.left
		charsyl_s = syl.start_time
		for k = 1, charsyl.n do
			charsyl[ k ]			= { }
			charsyl[ k ].text		= c_txt[ k ]
			charsyl[ k ].text_raw	= charsyl[ k ].text
			charsyl[ k ].width		= aegisub.text_extents( L, charsyl[ k ].text )
			charsyl[ k ].left		= charsyl_l 
			charsyl[ k ].center		= charsyl_l + charsyl[ k ].width / 2
			charsyl[ k ].right		= charsyl_l + charsyl[ k ].width
			charsyl[ k ].top		= syl.top
			charsyl[ k ].middle		= syl.middle
			charsyl[ k ].bottom		= syl.bottom
			charsyl[ k ].height		= syl.height
			charsyl[ k ].duration	= charsyl_d
			charsyl[ k ].dur		= charsyl_d
			charsyl[ k ].start_time	= charsyl_s
			charsyl[ k ].end_time	= charsyl[ k ].start_time + charsyl_d
			charsyl[ k ].mid_time	= charsyl[ k ].start_time + charsyl_d / 2
			charsyl_l				= charsyl_l + charsyl[ k ].width
			charsyl_s				= charsyl_s + charsyl[ k ].dur
		end
		char = charsyl
		return ""
	end
	
	function aegisub.line2W( )
		w_txt, w_dur = text.text2word( linefx[ ii ].text, linefx[ ii ].duration )
		if #w_txt == 0 then
			w_txt[ 1 ] = ""
		end
		wordline   = { n = #w_txt }
		wordline_l = linefx[ ii ].left
		wordline_s = 0
		for k = 1, wordline.n do
			wordline[ k ]				= { }
			wordline[ k ].text_			= w_txt[ k ]
			wordline[ k ].text_raw		= wordline[ k ].text_
			wordline[ k ].text_stripped	= text.text2stripped( w_txt[ k ] )
			wordline[ k ].text			= wordline[ k ].text_stripped:gsub( "KEfx", "" )
			wordline[ k ].text1			= text.remove_tags( w_txt[ k ] ):gsub( "KEfx", "" )
			wordline[ k ].text2			= wordline[ k ].text_stripped:gsub( "KEfx", "" )
			wordline[ k ].width_t		= aegisub.text_extents( L, wordline[ k ].text1 )
			wordline[ k ].width			= aegisub.text_extents( L, wordline[ k ].text2 )
			wordline[ k ].left			= wordline_l 
			wordline[ k ].center		= wordline_l + wordline[ k ].width / 2
			wordline[ k ].right			= wordline_l + wordline[ k ].width
			wordline[ k ].top			= linefx[ ii ].top
			wordline[ k ].middle		= linefx[ ii ].middle
			wordline[ k ].bottom		= linefx[ ii ].bottom
			wordline[ k ].height		= linefx[ ii ].height
			wordline[ k ].duration		= w_dur[ k ]
			wordline[ k ].dur			= w_dur[ k ]
			wordline[ k ].start_time	= wordline_s
			wordline[ k ].end_time		= wordline[ k ].start_time + w_dur[ k ]
			wordline[ k ].mid_time		= wordline[ k ].start_time + w_dur[ k ] / 2
			wordline_l 					= wordline_l + wordline[ k ].width_t
			wordline_s					= wordline_s + wordline[ k ].dur
		end
		word = wordline
		return ""
	end
	
	function aegisub.line2S( )
		s_txt, s_dur = text.text2syl( linefx[ ii ].text, linefx[ ii ].duration )
		if #s_txt == 0 then
			s_txt[ 1 ] = ""
		end
		sylline   = { n = #s_txt }
		sylline_l = linefx[ ii ].left
		sylline_s = 0
		for k = 1, sylline.n do
			sylline[ k ]				= { }
			sylline[ k ].text_			= s_txt[ k ]
			sylline[ k ].text_raw		= sylline[ k ].text_
			sylline[ k ].text_stripped	= text.text2stripped( s_txt[ k ] )
			sylline[ k ].text			= sylline[ k ].text_stripped:gsub( "KEfx", "" )
			sylline[ k ].text1			= text.remove_tags( s_txt[ k ] ):gsub( "KEfx", "" )
			sylline[ k ].text2			= sylline[ k ].text_stripped:gsub( "KEfx", "" )
			sylline[ k ].width_t		= aegisub.text_extents( L, sylline[ k ].text1 )
			sylline[ k ].width			= aegisub.text_extents( L, sylline[ k ].text2 )
			sylline[ k ].left			= sylline_l 
			sylline[ k ].center			= sylline_l + sylline[ k ].width / 2
			sylline[ k ].right			= sylline_l + sylline[ k ].width
			sylline[ k ].top			= linefx[ ii ].top
			sylline[ k ].middle			= linefx[ ii ].middle
			sylline[ k ].bottom			= linefx[ ii ].bottom
			sylline[ k ].height			= linefx[ ii ].height
			sylline[ k ].duration		= s_dur[ k ]
			sylline[ k ].dur			= s_dur[ k ]
			sylline[ k ].start_time		= sylline_s
			sylline[ k ].end_time		= sylline[ k ].start_time + s_dur[ k ]
			sylline[ k ].mid_time		= sylline[ k ].start_time + s_dur[ k ] / 2
			sylline_l 					= sylline_l + sylline[ k ].width_t
			sylline_s					= sylline_s + sylline[ k ].dur
		end
		syl = sylline
		return ""
	end
	
	function aegisub.line2C( )
		c_txt = { }
		local linefx_text = linefx[ ii ].text_stripped:gsub( noblank2, "" )
		for char_2 in unicode.chars( linefx_text ) do
			table.insert( c_txt, char_2 )
		end
		if #c_txt == 0 then
			c_txt[ 1 ] = ""
		end
		charline   = { n = #c_txt }
		charline_d = linefx[ ii ].duration / charline.n
		charline_l = linefx[ ii ].left
		charline_s = 0
		for k = 1, charline.n do
			charline[ k ]				= { }
			charline[ k ].text			= c_txt[ k ]
			charline[ k ].text_raw		= charline[ k ].text
			charline[ k ].text_stripped	= charline[ k ].text
			charline[ k ].width			= aegisub.text_extents( L, charline[ k ].text )
			charline[ k ].left			= charline_l 
			charline[ k ].center		= charline_l + charline[ k ].width / 2
			charline[ k ].right			= charline_l + charline[ k ].width
			charline[ k ].top			= linefx[ ii ].top
			charline[ k ].middle		= linefx[ ii ].middle
			charline[ k ].bottom		= linefx[ ii ].bottom
			charline[ k ].height		= linefx[ ii ].height
			charline[ k ].duration		= charline_d
			charline[ k ].dur			= charline_d
			charline[ k ].start_time	= charline_s
			charline[ k ].end_time		= charline[ k ].start_time + charline_d
			charline[ k ].mid_time		= charline[ k ].start_time + charline_d / 2
			charline_l 					= charline_l + charline[ k ].width
			charline_s					= charline_s + charline[ k ].dur
		end
		char = charline
		return ""
	end
	
	function aegisub.word2S( )
		s_txt, s_dur = text.text2syl( word.text_, word.dur )
		if #s_txt == 0 then
			s_txt[ 1 ] = ""
		end
		sylword   = { n = #s_txt }
		sylword_l = word.left
		sylword_s = word.start_time
		for k = 1, sylword.n do
			sylword[ k ]				= { }
			sylword[ k ].text_			= s_txt[ k ]
			sylword[ k ].text_raw		= sylword[ k ].text_
			sylword[ k ].text_stripped	= text.text2stripped( s_txt[ k ] )
			sylword[ k ].text			= sylword[ k ].text_stripped:gsub( "KEfx", "" )
			sylword[ k ].text1			= text.remove_tags( s_txt[ k ] ):gsub( "KEfx", "" )
			sylword[ k ].text2			= sylword[ k ].text_stripped:gsub( "KEfx", "" )
			sylword[ k ].width_t		= aegisub.text_extents( L, sylword[ k ].text1 )
			sylword[ k ].width			= aegisub.text_extents( L, sylword[ k ].text2 )
			sylword[ k ].left			= sylword_l 
			sylword[ k ].center			= sylword_l + sylword[ k ].width / 2
			sylword[ k ].right			= sylword_l + sylword[ k ].width
			sylword[ k ].top			= word.top
			sylword[ k ].middle			= word.middle
			sylword[ k ].bottom			= word.bottom
			sylword[ k ].height			= word.height
			sylword[ k ].duration		= s_dur[ k ]
			sylword[ k ].dur			= s_dur[ k ]
			sylword[ k ].start_time		= sylword_s
			sylword[ k ].end_time		= sylword[ k ].start_time + s_dur[ k ]
			sylword[ k ].mid_time		= sylword[ k ].start_time + s_dur[ k ] / 2
			sylword_l 					= sylword_l + sylword[ k ].width_t
			sylword_s					= sylword_s + sylword[ k ].dur
		end
		syl = sylword
		return ""
	end
	
	function aegisub.word2C( )
		c_txt = { }
		for char_3 in unicode.chars( word.text ) do
			table.insert( c_txt, char_3 )
		end
		if #c_txt == 0 then
			c_txt[ 1 ] = ""
		end
		charword   = { n = #c_txt }
		charword_d = word.dur / charword.n
		charword_l = word.left
		charword_s = word.start_time
		for k = 1, charword.n do
			charword[ k ]				= { }
			charword[ k ].text			= c_txt[ k ]
			charword[ k ].text_raw		= charword[ k ].text
			charword[ k ].text_stripped	= charword[ k ].text
			charword[ k ].width			= aegisub.text_extents( L, charword[ k ].text )
			charword[ k ].left			= charword_l 
			charword[ k ].center		= charword_l + charword[ k ].width / 2
			charword[ k ].right			= charword_l + charword[ k ].width
			charword[ k ].top			= word.top
			charword[ k ].middle		= word.middle
			charword[ k ].bottom		= word.bottom
			charword[ k ].height		= word.height
			charword[ k ].duration		= charword_d
			charword[ k ].dur			= charword_d
			charword[ k ].start_time	= charword_s
			charword[ k ].end_time		= charword[ k ].start_time + charword_d
			charword[ k ].mid_time		= charword[ k ].start_time + charword_d / 2
			charword_l 					= charword_l + charword[ k ].width
			charword_s					= charword_s + charword[ k ].dur
		end
		char = charword
		return ""
	end
	
	function aegisub.word2c( )
		w_txt = text.text2word( linefx[ ii ].text, linefx[ ii ].duration )
		w_len, w_fnl = { }, { [ 0 ] = 0 }
		for i = 1, #w_txt do
			w_len[ i ] = unicode.len( text.text2stripped( w_txt[ i ] ) .. blk )
		end
		for i = 1, #w_txt do
			w_fnl[ i ] = w_fnl[ i - 1 ] + w_len[ i ]
		end
		for i = 1, #w_txt do
			if char.i >= w_fnl[ i - 1 ]
				and char.i <= w_fnl[ i ] then
				return i
			end
		end
	end
	
	function aegisub.wordci( wc_ )
		wc_txt = text.text2word( linefx[ ii ].text, linefx[ ii ].duration )
		w_len, w_chari, w_charn = { }, { }, { }
		for i = 1, #wc_txt do
			w_len[ i ] = unicode.len( text.text2stripped( wc_txt[ i ] ) .. blk )
		end
		for i = 1, #wc_txt do
			for k = 1, w_len[ i ] do
				table.insert( w_chari, k )
				table.insert( w_charn, w_len[ i ] )
			end
		end
		w_chari[ #w_chari + 1 ] = w_chari[ #w_chari ]
		w_charn[ #w_charn + 1 ] = w_charn[ #w_charn ]
		return w_chari[ wc_ ], w_charn[ wc_ ]
	end
	
	function aegisub.width( string_txt )
		local string_width, string_height
		string_width, string_height = aegisub.text_extents( L, string_txt )
		return math.round( string_width, 3 )
	end
	
	function aegisub.height( string_txt )
		local string_width, string_height
		string_width, string_height = aegisub.text_extents( L, string_txt )
		return math.round( string_height, 3 )
	end
	
	-------------------------------------------------------------------------------------------------
	-- Librería de funciones File -------------------------------------------------------------------
	function file.get_lines( File_lua, Number_or_match )
		--retorna una tabla con las líneas seleccionadas de un archivo
		local File_lua = File_lua or "my.lua"
		local File = io.open( File_lua, "r" )
		--Number_or_match = number, { ini, fin }, {{ n1, n2, n3 ... }}, match
		local n = Number_or_match or 1
		local Lines_tbl = { }
		local count = 1
		for line in File:lines( ) do
			if type( n ) == "number" then --number
				if count == n then
					Lines_tbl[ #Lines_tbl + 1 ] = line
				end
				count = count + 1
			elseif type( n ) == "table"
				and type( n[ 1 ] ) == "table" then --lines
				if table.inside( n[ 1 ], count ) then
					Lines_tbl[ #Lines_tbl + 1 ] = line
				end
				count = count + 1
			elseif type( n ) == "table" then --ini & fin
				if type( n[ 2 ] ) == "number" then --number & number
					if count >= n[ 1 ]
						and count <= n[ 2 ] then
						Lines_tbl[ #Lines_tbl + 1 ] = line
					end
				elseif type( n[ 2 ] ) == "string" then --number & match
					if count >= n[ 1 ] then
						Lines_tbl[ #Lines_tbl + 1 ] = line
						if line:match( n[ 2 ] ) then
							break
						end
					end
				end
				count = count + 1
			elseif type( n ) == "string" then --match
				if line:match( n ) then
					Lines_tbl[ #Lines_tbl + 1 ] = line
				end
			end
		end
		File:close( )
		return Lines_tbl
	end --august 25th 2018
	
	function file.gsub( File_lua, ... )
		--modifica un archivo seleccionado usando string.gsub en sus líneas :D
		local File_lua = File_lua or "my.lua"
		local File = io.open( File_lua, "r" )		-- abre el archivo
		local Content_file = File:read( "*all" )	-- copia su contenido en una variable
		File:close( )								-- cierra el archivo
		local Modifx = { ... }						-- tabla de modificaciones
		if type( Modifx[ 1 ][ 1 ] ) == "table" then
			Modifx = ...
		end -- ... = { match1, rep1 }, { match2, rep2 } or {{ match1, rep1 }, { match2, rep2 }}
		-- modificacoines específicas del contenido del archivo ------------------
		for i = 1, #Modifx do
			Content_file = Content_file:gsub( Modifx[ i ][ 1 ], Modifx[ i ][ 2 ] )
		end
		--------------------------------------------------------------------------
		File = io.open( File_lua, "w+" )			-- reabre el archivo y elimina su contenido
		File:write( Content_file )					-- escribe las modificaciones en el archivo
		File:close( )								-- cierra el archivo
		return "" --{ "%-%-%[%[%w+[ %w%/%:]*%]%] ", "" }
	end --august 25th 2018
	
	function file.match( File_lua, Match_or_tbl )
		--busca coincidencias en un archivo y retorna true o false
		local File_lua = File_lua or "my.lua"
		local File = io.open( File_lua, "r" )		-- abre el archivo
		local Content_file = File:read( "*all" )	-- copia su contenido en una variable
		File:close( )								-- cierra el archivo
		local Match_or_tbl = Match_or_tbl or "fxKE"	-- coincidencias
		if type( Match_or_tbl ) == "table" then
			for i = 1, #Match_or_tbl do
				if Content_file:match( Match_or_tbl[ i ] ) then
					return true
				end
			end
			return false
		end
		if Content_file:match( Match_or_tbl ) then
			return true
		end
		return false
	end --august 25th 2018
	
	function file.gmatch( File_lua, Match_or_tbl )
		--busca coincidencias en un archivo y retorna una tabla con ellas
		local File_lua = File_lua or "my.lua"
		local File = io.open( File_lua, "r" )		-- abre el archivo
		local Content_file = File:read( "*all" )	-- copia su contenido en una variable
		File:close( )								-- cierra el archivo
		local Match_or_tbl = Match_or_tbl or "fxKE"	-- coincidencias
		local Gmatch_tbl = { }
		if type( Match_or_tbl ) == "table" then
			for i = 1, #Match_or_tbl do
				Gmatch_tbl[ i ] = { }
				for cap in Content_file:gmatch( Match_or_tbl[ i ] ) do
					Gmatch_tbl[ i ][ #Gmatch_tbl[ i ] + 1 ] = cap
				end
			end
		else
			for cap in Content_file:gmatch( Match_or_tbl ) do
				Gmatch_tbl[ #Gmatch_tbl + 1 ] = cap
			end
		end
		return Gmatch_tbl
	end --august 26th 2018
	
	function file.count( File_lua, Match_or_tbl )
		--retorna la cantidad de veces que una coincidencia está en un archivo
		local File_lua = File_lua or "my.lua"
		local File = io.open( File_lua, "r" )		-- abre el archivo
		local Content_file = File:read( "*all" )	-- copia su contenido en una variable
		File:close( )								-- cierra el archivo
		local Match_or_tbl = Match_or_tbl or "fxKE"	-- coincidencias
		local count_fl = 0
		if type( Match_or_tbl ) == "table" then
			for i = 1, #Match_or_tbl do
				for cap in Content_file:gmatch( Match_or_tbl[ i ] ) do
					count_fl = count_fl + 1
				end
			end
		else
			for cap in Content_file:gmatch( Match_or_tbl ) do
				count_fl = count_fl + 1
			end
		end
		return count_fl
	end --august 26th 2018
	
	-------------------------------------------------------------------------------------------------
	-- Librería de funciones Effector ---------------------------------------------------------------
	effector.GUI_config = {
		[ 01 ] = {								class = "label";	x = 1; y = 0;	height = 1; width = 2;	label = " [:: Primary Setting ::]" },
		[ 02 ] = {								class = "label";	x = 0; y = 1;	height = 1; width = 1;	label = "                          Apply to Style:" },
		[ 03 ] = { name = "line_style";			class = "dropdown";	x = 1; y = 1;	height = 1; width = 4;	hint  = "Selected Lines or Lines Styles to which you Apply the Effect.";	items = { };	value = "" },
		[ 04 ] = {								class = "label";	x = 0; y = 2;	height = 1; width = 1;	label = "                       Selection Effect:" },
		[ 05 ] = { name = "effect_mode";		class = "dropdown";	x = 1; y = 2;	height = 1; width = 4;	hint  = "Select the Effect Mode, lead-in[fx], hi-light[fx], lead-out[fx], shape[fx], translation[fx] and function[fx].";	items = { "lead-in[fx]", "hi-light[fx]", "lead-out[fx]", "shape[fx]", "translation[fx]", "function[fx]" , "Add new config[fx]" };	value = "lead-in[fx]" },
		[ 06 ] = {								class = "label";	x = 1; y = 5;	height = 1; width = 2;	label = " [:: Text Setting ::]" },
		[ 07 ] = {								class = "label";	x = 1; y = 6;	height = 1; width = 2;	label = " Primary Color                                   " },
		[ 08 ] = {								class = "label";	x = 3; y = 6;	height = 1; width = 2;	label = " Secondary Color                              " },
		[ 09 ] = {								class = "label";	x = 1; y = 10;	height = 1; width = 2;	label = " Border Color" },
		[ 10 ] = {								class = "label";	x = 3; y = 10;	height = 1; width = 2;	label = " Shadow Color" },
		[ 11 ] = { name = "color_1c";			class = "color";	x = 1; y = 7;	height = 2; width = 2;	hint  = "text.color1 or TC1: Select the Primary Color of Text.";	value = "#FFFFFF" },
		[ 12 ] = { name = "color_2c";			class = "color";	x = 3; y = 7;	height = 2; width = 2;	hint  = "text.color2 or TC2: Select the Secondary Color of Text.";	value = "#FF0000" },
		[ 13 ] = { name = "color_3c";			class = "color";	x = 1; y = 11;	height = 2; width = 2;	hint  = "text.color3 or TC3: Select the Border Color of Text.";		value = "#000000" },
		[ 14 ] = { name = "color_4c";			class = "color";	x = 3; y = 11;	height = 2; width = 2;	hint  = "text.color4 or TC4: Select the Shadow Color of Text.";		value = "#000000" },
		[ 15 ] = { name = "alpha_1a";			class = "intedit";	x = 1; y = 9;	height = 1; width = 2;	min   = 0; max = 255;			hint = "text.alpha1 or TA1: Select the Transparency (alpha) of the Primary Color of Text.";		value = "0" },
		[ 16 ] = { name = "alpha_2a";			class = "intedit";	x = 3; y = 9;	height = 1; width = 2;	min   = 0; max = 255;			hint = "text.alpha2 or TA2: Select the Transparency (alpha) of the Secondary Color of Text.";	value = "0" },
		[ 17 ] = { name = "alpha_3a";			class = "intedit";	x = 1; y = 13;	height = 1; width = 2;	min   = 0; max = 255;			hint = "text.alpha3 or TA3: Select the Transparency (alpha) of the Border Color of Text.";		value = "0" },
		[ 18 ] = { name = "alpha_4a";			class = "intedit";	x = 3; y = 13;	height = 1; width = 2;	min   = 0; max = 255;			hint = "text.alpha4 or TA4: Select the Transparency (alpha) of the Shadow Color of Text.";		value = "0" },
		[ 19 ] = { name = "linecomment";		class = "checkbox"; x = 0; y = 16;	height = 1; width = 1;	label = "Line Comment";			hint = "Comment the Lines of Karaoke.";		value = true },
		[ 20 ] = { name = "saveconfiguration";	class = "checkbox"; x = 0; y = 17;	height = 1; width = 1;	label = "Save Configuration";	hint = "Save the Configuration of Text.";	value = true },
		[ 23 ] = {								class = "label";	x = 0; y = 3;	height = 1; width = 1;	label = "                     Using Tags Filter:" },
		[ 24 ] = { name = "tags_filter";		class = "dropdown";	x = 1; y = 3;	height = 1; width = 4;	hint  = "Select the Filter to be used for the Tags Colors and Alpha of Text.";	items = { "XY-VSFilter", "VSFilterMod", "No Tags Color and Alpha", "No Tags Color and Alpha [VSFilterMod]" };	value = "XY-VSFilter" },
		[ 25 ] = {								class = "label";	x = 0; y = 9;	height = 1; width = 1;	label = "Kara Effector " .. script_version .. script_update },
		[ 26 ] = {								class = "label";	x = 0; y = 10;	height = 1; width = 1;	label = Effector_Lib_modified },
		[ 27 ] = {								class = "label";	x = 0; y = 11;	height = 1; width = 1;	label = "(c) Vict8r Kara" },
		[ 28 ] = {								class = "label";	x = 3; y = 0;	height = 1; width = 2;	label = "           facebook.com/karaeffector" },
		[ 29 ] = {								class = "label";	x = 3; y = 4;	height = 1; width = 2;	label = "                        discord.gg/YFP2zeY" },
		[ 31 ] = {								class = "label";	x = 3; y = 14;	height = 1; width = 2;	label = "            karaeffector.blogspot.com" },
	} --► ◄ 21, 22 y 30: asignados :D
	-------------------------------------
	effector.GUI_modify = {
		[ 01 ] = { 						class = "label";	x = 0;	y = 0;	height = 1; width = 6;	label = " Shape[fx]: Template Shape" },
		[ 68 ] = { 						class = "label";	x = 6;	y = 0;	height = 1; width = 4;	label = " Estilo seleccionado:" },
		[ 02 ] = { 						class = "label";	x = 10;	y = 0;	height = 1; width = 2;	label = "                    Template Type [fx]:" },
		[ 03 ] = { 						class = "label";	x = 0;	y = 1;	height = 1; width = 2;	label = "                     Line Start Time =" },
		[ 04 ] = { 						class = "label";	x = 0;	y = 2;	height = 1; width = 2;	label = "                      Line End Time =" },
		[ 05 ] = { 						class = "label";	x = 0;	y = 3;	height = 1; width = 2;	label = "                                       x( s ) =" },
		[ 06 ] = { 						class = "label";	x = 0;	y = 4;	height = 1; width = 2;	label = "                                       y( s ) =" },
		[ 09 ] = { 						class = "label";	x = 8;	y = 1;	height = 1; width = 2;	label = "                             Center \"x\" =" },
		[ 10 ] = { 						class = "label";	x = 8;	y = 2;	height = 1; width = 2;	label = "                             Center \"y\" =" },
		[ 11 ] = { 						class = "label";	x = 8;	y = 3;	height = 1; width = 2;	label = "                                Scale \"x\" =" },
		[ 12 ] = { 						class = "label";	x = 8;	y = 4;	height = 1; width = 2;	label = "                                Scale \"y\" =" },
		[ 14 ] = { 						class = "label";	x = 0;	y = 5;	height = 1; width = 2;	label = "                       Layer // Align =" },
		[ 15 ] = { 						class = "label";	x = 6;	y = 5;	height = 1; width = 2;	label = "                                  Pos \"x\" =" },
		[ 16 ] = { 						class = "label";	x = 6;	y = 6;	height = 1; width = 2;	label = "                                  Pos \"y\" =" },
		[ 17 ] = { 						class = "label";	x = 6;	y = 7;	height = 1; width = 2;	label = "                         Times Move =" },
		[ 18 ] = { 						class = "label";	x = 0;	y = 6;	height = 1; width = 2;	label = "                                       loop =" },
		[ 19 ] = { 						class = "label";	x = 0;	y = 7;	height = 1; width = 2;	label = "                                        Size =" },
		[ 20 ] = { 						class = "label";	x = 2;	y = 8;	height = 1; width = 2;	label = "Return [fx]:" },
		[ 21 ] = {						class = "label";	x = 8;	y = 8;	height = 1; width = 2;	label = " Add Tags [fx]:          " },
		[ 65 ] = {						class = "label";	x = 10;	y = 8;	height = 1; width = 2;	label = "                 Add Tags Language:" },
		[ 66 ] = { name = "language";	class = "dropdown";	x = 12;	y = 8;	height = 1; width = 2;	items = { "Lua", "Automation Auto-4" };	value = "Lua" },
		[ 24 ] = { 						class = "label";	x = 0;	y = 16;	height = 1; width = 2;	label = "                    Shape Colors [fx]:" },
		[ 25 ] = { 						class = "label";	x = 2;	y = 15;	height = 1; width = 2;	label = "             Primary Color             " },
		[ 26 ] = { 						class = "label";	x = 4;	y = 15;	height = 1; width = 2;	label = "              Border Color              " },
		[ 27 ] = { 						class = "label";	x = 6;	y = 15;	height = 1; width = 2;	label = "             Shadow Color             " },
		[ 28 ] = { 						class = "label";	x = 0;	y = 19;	height = 1; width = 2;	label = "                            Variables [fx]:" },
		---------------------------------------------------------------------------------------------------------------------------------------
		[ 29 ] = { name = "t_type";		class = "dropdown";	x = 12; y = 0;	height = 1; width = 2;	items = { "Line", "Syl" };	value = "Syl" },
		[ 32 ] = { name = "color1";		class = "color";	x = 2;	y = 16; height = 2; width = 2;	value = "#FFFFFF" },
		[ 33 ] = { name = "color3";		class = "color";	x = 4;	y = 16; height = 2; width = 2;	value = "#0000FF" },
		[ 34 ] = { name = "color4";		class = "color";	x = 6;	y = 16; height = 2; width = 2;	value = "#000000" },
		[ 35 ] = { name = "alpha1";		class = "intedit";	x = 2;	y = 18;	height = 1; width = 2;	min = 0; max = 255;	value = "0" },
		[ 36 ] = { name = "alpha3";		class = "intedit";	x = 4;	y = 18;	height = 1; width = 2;	min = 0; max = 255;	value = "0" },
		[ 37 ] = { name = "alpha4";		class = "intedit";	x = 6;	y = 18;	height = 1; width = 2;	min = 0; max = 255; value = "0" },
		[ 38 ] = { name = "start_t";	class = "textbox";	x = 2;	y = 1;	height = 1; width = 6;	text = "0" },
		[ 39 ] = { name = "end_t";		class = "textbox";	x = 2;	y = 2;	height = 1; width = 6;	text = "0" },
		[ 40 ] = { name = "fun_x";		class = "textbox";	x = 2;	y = 3;	height = 1; width = 4;	text = "0" },
		[ 41 ] = { name = "fun_y";		class = "textbox";	x = 2;	y = 4;	height = 1; width = 4;	text = "0" },
		[ 42 ] = { name = "s_i";		class = "textbox";	x = 6;	y = 3;	height = 1; width = 2;	text = "0" },
		[ 43 ] = { name = "s_f";		class = "textbox";	x = 6;	y = 4;	height = 1; width = 2;	text = "0" },
		[ 44 ] = { name = "center_x";	class = "textbox";	x = 10; y = 1;	height = 1; width = 4;	text = "0" },
		[ 45 ] = { name = "center_y";	class = "textbox";	x = 10; y = 2;	height = 1; width = 4;	text = "0" },
		[ 46 ] = { name = "scale_x";	class = "textbox";	x = 10; y = 3;	height = 1; width = 4;	text = "1" },
		[ 47 ] = { name = "scale_y";	class = "textbox";	x = 10; y = 4;	height = 1; width = 4;	text = "1" },
		[ 48 ] = { name = "align";		class = "textbox";	x = 4;	y = 5;	height = 1; width = 2;	text = "5" },
		[ 49 ] = { name = "layer";		class = "textbox";	x = 2;	y = 5;	height = 1; width = 2;	text = "0" },
		[ 50 ] = { name = "move_x";		class = "textbox";	x = 8;	y = 5;	height = 1; width = 6;	text = "0" },
		[ 51 ] = { name = "move_y";		class = "textbox";	x = 8;	y = 6;	height = 1; width = 6;	text = "0" },
		[ 52 ] = { name = "move_t";		class = "textbox";	x = 8;	y = 7;	height = 1; width = 6;	text = "0" },
		[ 53 ] = { name = "loops";		class = "textbox";	x = 2;	y = 6;	height = 1; width = 4;	text = "1" },
		[ 54 ] = { name = "size";		class = "textbox";	x = 2;	y = 7;	height = 1; width = 4;	text = "1" },
		[ 55 ] = { name = "returnfx";	class = "textbox";	x = 2;	y = 9;	height = 6; width = 4;	text = " " },
		[ 67 ] = { name = "modify";		class = "checkbox"; x = 4;	y = 8;	height = 1; width = 2;	label = "Modify or Return [fx]";	value = false },
		[ 56 ] = { name = "addtag";		class = "textbox";	x = 8;	y = 9;	height = 6; width = 6;	text = " " },
		[ 60 ] = { 						class = "label"; 	x = 8;	y = 15;	height = 1; width = 2;	label = " New [fx] Name:" },
		[ 62 ] = { name = "namefx";		class = "textbox";	x = 8;	y = 16;	height = 2; width = 6;	text = "" },
		[ 61 ] = { name = "printfx";	class = "checkbox"; x = 8;	y = 18;	height = 1; width = 2;	label = "Print Config [fx]";	value = false },
		[ 59 ] = { 						class = "label"; 	x = 10; y = 18;	height = 1; width = 2;	label = "                 Template Folder [fx]:" },
 		[ 63 ] = { name = "folderfx";	class = "dropdown";	x = 12; y = 18;	height = 1; width = 2;	items = { "lead-in[fx]", "hi-light[fx]", "lead-out[fx]", "shape[fx]", "translation[fx]", "function[fx]" };	value = nil },
		[ 07 ] = { 						class = "label";	x = 6;	y = 13;	height = 1; width = 1;	label = "Keeptags [fx]:   " },
		[ 69 ] = { name = "keeptagsfx";	class = "dropdown";	x = 6;	y = 14;	height = 1; width = 1;	items = { "", "Line", "Word", "Syl", "Char" };	value = "" },
		[ 64 ] = { 						class = "label"; 	x = 0;	y = 9;	height = 1; width = 2;	label = "Kara Effector " .. script_version .. script_update },
		[ 08 ] = { 						class = "label"; 	x = 0;	y = 10;	height = 1; width = 2;	label = Effector_Lib_modified },
		[ 13 ] = { 						class = "label";	x = 6;	y = 9;	height = 1; width = 2;	label = "WhatsApp KE:" },
		[ 71 ] = { 						class = "label";	x = 6;	y = 10;	height = 1; width = 2;	label = "+57 320 8631472" },
		[ 72 ] = { 						class = "label";	x = 12;	y = 15;	height = 1; width = 2;	label = "            discord.gg/YFP2zeY" },
		[ 57 ] = { name = "variable";	class = "textbox";	x = 2;	y = 19;	height = 7; width = 12;	text = " " },
		[ 70 ] = { name = "reverfx";	class = "checkbox"; x = 0;	y = 22;	height = 1; width = 2;	label = "Reverse [fx]";			value = false },
		[ 30 ] = { name = "noblank";	class = "checkbox"; x = 0;	y = 23;	height = 1; width = 2;	label = "Noblank [fx]";			value = true },
		[ 31 ] = { name = "v_kanji";	class = "checkbox"; x = 0;	y = 24;	height = 1; width = 2;	label = "Vertical Kanji [fx]";	value = false },
		[ 58 ] = { name = "saveFX";		class = "checkbox"; x = 0;	y = 25;	height = 1; width = 2;	label = "Save Configuration";	value = true },
	}--▲
	
	effector.GUI_add = {
		[ 01 ] = { 						class = "label";	x = 0;	y = 0;	height = 1;  width = 2;		label = " Add new config[fx]:" },
		[ 02 ] = { name = "addnewfx";	class = "textbox";	x = 0;	y = 2;	height = 13; width = 10;	text = "" },
		[ 03 ] = { 						class = "label";	x = 0;	y = 15;	height = 1;  width = 10;	label = " Add variables, functions or new fx configurations, in the LUA programming language                                                              " },
		[ 04 ] = { 						class = "label";	x = 0;	y = 1;	height = 1;  width = 1;		label = " Save in File:" },
		[ 05 ] = { name = "lua_file";	class = "dropdown";	x = 1;	y = 1;	height = 1;	 width = 2;		items = { "Effector-newfx-3.6.lua", "Effector-newlib-3.6.lua" };	value = "Effector-newfx-3.6.lua" },
		--modify: august 18th 2018
	}--▲ container_file = "Effector-newlib-3.6.lua"
	
	-- Hints ----------------------------
	effector.GUI_modify[ 29 ].hint = "Effect Type to Apply at Line Effect"
	effector.GUI_modify[ 32 ].hint = "shape.color1 or SC1: Primary Color Shape"
	effector.GUI_modify[ 33 ].hint = "shape.color3 or SC3: Border Color Shape"
	effector.GUI_modify[ 34 ].hint = "shape.color4 or SC4: Shadow Color Shape"
	effector.GUI_modify[ 35 ].hint = "shape.alpha1 or SA1: Primary Alpha Shape"
	effector.GUI_modify[ 36 ].hint = "shape.alpha3 or SA3: Border Alpha Shape"
	effector.GUI_modify[ 37 ].hint = "shape.alpha4 or SA4: Shadow Alpha Shape"
	effector.GUI_modify[ 38 ].hint = "fx.start_time: Is the Start Time Line Effect"
	effector.GUI_modify[ 39 ].hint = "fx.end_time: Is the End Time Line Effect\nfx.dur = fx.end_time - fx.start_time"
	effector.GUI_modify[ 40 ].hint = "fx.fun_x: Parametric Function Equation for X, example: x( s ) = 3 * sin(s + 1)"
	effector.GUI_modify[ 41 ].hint = "fx.fun_y: Parametric Function Equation for Y, example: y( s ) = s^2 + cos( s )"
	effector.GUI_modify[ 42 ].hint = "fx.domain_i: Initial Domain of Parametric Function"
	effector.GUI_modify[ 43 ].hint = "fx.domain_f: Final Domain of Parametric Function"
	effector.GUI_modify[ 44 ].hint = "fx.center_x: x-coordinate of the Reference Point of the Position"
	effector.GUI_modify[ 45 ].hint = "fx.center_y: y-coordinate of the Reference Point of the Position"
	effector.GUI_modify[ 46 ].hint = "fx.scale_x: x-scale of the Parametric Function"
	effector.GUI_modify[ 47 ].hint = "fx.scale_y: y-scale of the Parametric Function"
	effector.GUI_modify[ 48 ].hint = "fx.align: Line Effect Alignment, for example \\an5"
	effector.GUI_modify[ 49 ].hint = "fx.layer: Line Effect Layer"
	effector.GUI_modify[ 50 ].hint = "x-coordinate of the Position of Line Effect\nfx.pos_x = fx.center_x + fx.fun_x * fx.scale_x"
	effector.GUI_modify[ 51 ].hint = "y-coordinate of the Position of Line Effect\nfx.pos_y = fx.center_y + fx.fun_y * fx.scale_y"
	effector.GUI_modify[ 52 ].hint = "fx.movet_i, fx.movet_f: Time Move, for default: 0, fx.dur"
	effector.GUI_modify[ 53 ].hint = "fx.loop_v, fx.loop_h: Line Effect Loop\nmaxj = fx.loop_v * fx.loop_h"
	effector.GUI_modify[ 54 ].hint = "fx.sizex, fx.sizey: Line Effect Size (\\fscx and \\fscy)"
	effector.GUI_modify[ 55 ].hint = "Line Effect Return, example: syl.text, char.text, \"m 0 0 l 0 1 l 1 1 l 1 0 \""
	effector.GUI_modify[ 56 ].hint = "Line Effect Add Tags, example: \"\\\\bord0\"; format( \"\\\\3c%s\", shape.color3 ) in lua Language, or: !maxloop( $width / $syln )!!retime( \"start2syl\", -1000 + $si * 50, 0 )!{\\1c!random.color( )!} in Automation Auto-4 Language"
	effector.GUI_modify[ 57 ].hint = "Declare Variables and Functions"
	effector.GUI_modify[ 58 ].hint = "Line Effect Save Configuration"
	effector.GUI_modify[ 61 ].hint = "Print Configurations of the Line Effect"
	effector.GUI_modify[ 62 ].hint = "New Effect Name. Not use Special Characters"
	effector.GUI_modify[ 63 ].hint = "Destination Folder for the New Effect"
	effector.GUI_modify[ 66 ].hint = "Select the Programming Language for Add Tags"
	effector.GUI_modify[ 67 ].hint = "Decide whether the settings made will generate fx lines or will modify existing karaoke lines"
	effector.GUI_modify[ 69 ].hint = "Add tags that have karaoke lines to the generated effect lines"
	effector.GUI_modify[ 70 ].hint = "Return reversely the text of karaoke effect, written from right to left"
	
	-------------------------------------
	effector.GUI_karax = table.duplicate( effector.GUI_modify )
	effector.GUI_karax[ 29 ].items = {
		[ 01 ] = "Line",
		[ 02 ] = "Word",
		[ 03 ] = "Syl",
		[ 04 ] = "Syl Multi",
		[ 05 ] = "Furi",
		[ 06 ] = "Char",
		[ 07 ] = "Convert to Hiragana",
		[ 08 ] = "Convert to Katakana",
		[ 09 ] = "Convert to Romaji",
		[ 10 ] = "Translation Line",
		[ 11 ] = "Translation Word",
		[ 12 ] = "Translation Char",
		[ 13 ] = "Template Line [Word]",
		[ 14 ] = "Template Line [Syl]",
		[ 15 ] = "Template Line [Char]",
	}
	effector.GUI_karax[ 29 ].value = "Syl"
	-------------------------------------
	effector.GUI_shape = table.duplicate( effector.GUI_modify )
	effector.GUI_shape[ 29 ].items = {
		[ 01 ] = "Line",
		[ 02 ] = "Word",
		[ 03 ] = "Syl",
		[ 04 ] = "Syl Multi",
		[ 05 ] = "Furi",
		[ 06 ] = "Char",
		[ 07 ] = "Convert to Hiragana",
		[ 08 ] = "Convert to Katakana",
		[ 09 ] = "Convert to Romaji",
		[ 10 ] = "Translation Line",
		[ 11 ] = "Translation Word",
		[ 12 ] = "Translation Char",
		[ 13 ] = "Template Line [Word]",
		[ 14 ] = "Template Line [Syl]",
		[ 15 ] = "Template Line [Char]",
	}
	effector.GUI_shape[ 29 ].value = "Syl"
	-------------------------------------
	effector.GUI_trans = table.duplicate( effector.GUI_modify )
	effector.GUI_trans[ 29 ].items = {
		[ 1 ] = "Translation Line",
		[ 2 ] = "Translation Word",
		[ 3 ] = "Translation Char",
	}
	effector.GUI_trans[ 29 ].value = "Translation Char"
	-----------------------------------------------------
	-- compatibilidad con KE 3.4 Math kurisu o anteriores
	PfxM_Box  = table.duplicate( effector.GUI_karax )
	Shape_Box = table.duplicate( effector.GUI_shape )
	Trans_Box = table.duplicate( effector.GUI_trans )
	-----------------------------------------------------

	function effector.create_fx( new_fx_type, ... )
		local fx_config = { ... }
		--------------------------------------------------
		local type_fx_lib, type_fx_nam = leadin_fx_library, leadin_fx
		local new_fx_GUI, lib_fx = effector.GUI_karax, "lead-in[fx]: "
		if new_fx_type == "HLfx" then
			type_fx_lib, type_fx_nam = hilight_fx_library, hilight_fx
			new_fx_GUI, lib_fx = effector.GUI_karax, "hi-light[fx]: "
		elseif new_fx_type == "LOfx" then
			type_fx_lib, type_fx_nam = leadout_fx_library, leadout_fx
			new_fx_GUI, lib_fx = effector.GUI_karax, "lead-out[fx]: "
		elseif new_fx_type == "SHfx" then
			type_fx_lib, type_fx_nam = shape_fx_library, shape_fx
			new_fx_GUI, lib_fx = effector.GUI_shape, "shape[fx]: "
		elseif new_fx_type == "TLfx" then
			type_fx_lib, type_fx_nam = transla_fx_library, transla_fx
			new_fx_GUI, lib_fx = effector.GUI_trans, "translation[fx]: "
		elseif new_fx_type == "FTfx" then
			type_fx_lib, type_fx_nam = function_fx_library, function_fx
			new_fx_GUI, lib_fx = effector.GUI_karax, "function[fx]: "
		end
		local tablefx = table.duplicate( new_fx_GUI )
		--------------------------------------------------
		fx_config[ 01 ] = fx_config[ 01 ]:gsub( "_", " " )
		--------------------------------------------------
		tablefx[ 01 ].label = lib_fx .. fx_config[ 01 ]	--[[título]]		tablefx[ 29 ].value = fx_config[ 02 ]	--[[template type]]
		tablefx[ 30 ].value = fx_config[ 03 ]	--[[noblank]]				tablefx[ 31 ].value = fx_config[ 04 ]	--[[vertical kanji]]
		tablefx[ 32 ].value = fx_config[ 05 ]	--[[shape color 1]]			tablefx[ 33 ].value = fx_config[ 06 ]	--[[shape color 3]]
		tablefx[ 34 ].value = fx_config[ 07 ]	--[[shape color 4]]			tablefx[ 35 ].value = fx_config[ 08 ]	--[[shape alpha 1]]
		tablefx[ 36 ].value = fx_config[ 09 ]	--[[shape alpha 3]]			tablefx[ 37 ].value = fx_config[ 10 ]	--[[shape alpha 4]]
		tablefx[ 38 ].text  = fx_config[ 11 ]	--[[line start time]]		tablefx[ 39 ].text  = fx_config[ 12 ]	--[[line end time]]
		tablefx[ 40 ].text  = fx_config[ 13 ]	--[[function in x]]			tablefx[ 41 ].text  = fx_config[ 14 ]	--[[function in y]]
		tablefx[ 42 ].text  = fx_config[ 15 ]	--[[domain i]]				tablefx[ 43 ].text  = fx_config[ 16 ]	--[[domain f]]
		tablefx[ 44 ].text  = fx_config[ 17 ]	--[[center x]]				tablefx[ 45 ].text  = fx_config[ 18 ]	--[[center y]]
		tablefx[ 46 ].text  = fx_config[ 19 ]	--[[scale x]]				tablefx[ 47 ].text  = fx_config[ 20 ]	--[[scale y]]
		tablefx[ 48 ].text  = fx_config[ 21 ]	--[[aling]]					tablefx[ 49 ].text  = fx_config[ 22 ]	--[[layer]]
		tablefx[ 50 ].text  = fx_config[ 23 ]	--[[pos x]]					tablefx[ 51 ].text  = fx_config[ 24 ]	--[[pos y]]
		tablefx[ 52 ].text  = fx_config[ 25 ]	--[[time move]]				tablefx[ 53 ].text  = fx_config[ 26 ]	--[[loop]]
		tablefx[ 54 ].text  = fx_config[ 27 ]	--[[size]]					tablefx[ 55 ].text  = fx_config[ 28 ]	--[[return]]
		tablefx[ 56 ].text  = fx_config[ 29 ]	--[[add tags]]				tablefx[ 57 ].text  = fx_config[ 30 ]	--[[variables]]
		tablefx[ 66 ].value = fx_config[ 31 ] or "Lua"	--[[lenguaje]]		tablefx[ 67 ].value = fx_config[ 32 ] or false	--[[return or modify]]
		tablefx[ 70 ].value = fx_config[ 33 ] or false	--[[reverse fx]]	tablefx[ 69 ].value = fx_config[ 34 ]	--[[keeptagsfx]]
		------------------------------------------------
		table.insert( type_fx_lib, tablefx )
		table.insert( type_fx_nam, fx_config[ 01 ] )
		------------------------------------------------
		return tablefx
	end
	
	function table.inbox( tablefx, ... )
		local config_FX = { ... }
		------------------------------------------------
		tablefx[ 01 ].label = config_FX[ 01 ]	--[[título]]				tablefx[ 29 ].value = config_FX[ 02 ]	--[[template type]]
		tablefx[ 30 ].value = config_FX[ 03 ]	--[[noblank]]				tablefx[ 31 ].value = config_FX[ 04 ]	--[[vertical kanji]]
		tablefx[ 32 ].value = config_FX[ 05 ]	--[[shape color 1]]			tablefx[ 33 ].value = config_FX[ 06 ]	--[[shape color 3]]
		tablefx[ 34 ].value = config_FX[ 07 ]	--[[shape color 4]]			tablefx[ 35 ].value = config_FX[ 08 ]	--[[shape alpha 1]]
		tablefx[ 36 ].value = config_FX[ 09 ]	--[[shape alpha 3]]			tablefx[ 37 ].value = config_FX[ 10 ]	--[[shape alpha 4]]
		tablefx[ 38 ].text  = config_FX[ 11 ]	--[[line start time]]		tablefx[ 39 ].text  = config_FX[ 12 ]	--[[line end time]]
		tablefx[ 40 ].text  = config_FX[ 13 ]	--[[function in x]]			tablefx[ 41 ].text  = config_FX[ 14 ]	--[[function in y]]
		tablefx[ 42 ].text  = config_FX[ 15 ]	--[[domain i]]				tablefx[ 43 ].text  = config_FX[ 16 ]	--[[domain f]]
		tablefx[ 44 ].text  = config_FX[ 17 ]	--[[center x]]				tablefx[ 45 ].text  = config_FX[ 18 ]	--[[center y]]
		tablefx[ 46 ].text  = config_FX[ 19 ]	--[[scale x]]				tablefx[ 47 ].text  = config_FX[ 20 ]	--[[scale y]]
		tablefx[ 48 ].text  = config_FX[ 21 ]	--[[aling]]					tablefx[ 49 ].text  = config_FX[ 22 ]	--[[layer]]
		tablefx[ 50 ].text  = config_FX[ 23 ]	--[[pos x]]					tablefx[ 51 ].text  = config_FX[ 24 ]	--[[pos y]]
		tablefx[ 52 ].text  = config_FX[ 25 ]	--[[time move]]				tablefx[ 53 ].text  = config_FX[ 26 ]	--[[loop]]
		tablefx[ 54 ].text  = config_FX[ 27 ]	--[[size]]					tablefx[ 55 ].text  = config_FX[ 28 ]	--[[return]]
		tablefx[ 56 ].text  = config_FX[ 29 ]	--[[add tags]]				tablefx[ 57 ].text  = config_FX[ 30 ]	--[[variables]]
		tablefx[ 66 ].value = config_FX[ 31 ] or "Lua"	--[[lenguaje]]		tablefx[ 67 ].value = config_FX[ 32 ] or false	--[[return or modify]]
		tablefx[ 70 ].value = config_FX[ 33 ] or false	--[[reverse fx]]	tablefx[ 69 ].value = config_FX[ 34 ]	--[[keeptagsfx]]
		------------------------------------------------
		return ""
	end
	
	function Ps( string_config )
		local string_config = string_config:gsub( "\\", "\\\\" ):gsub( '"', '\\"' ):gsub( "\n", "\\n" )
		while string_config ~= string_config:gsub( "  ", " " ) do
			string_config = string_config:gsub( "  ", " " )
		end
		return string_config
	end
	
	function table.inbox2( table_data )
		table__ = { }
		table__.effect		= table_data[ 01 ].label				table__.t_type		= table_data[ 29 ].value
		table__.noblank		= table_data[ 30 ].value				table__.v_kanji		= table_data[ 31 ].value
		table__.color1		= table_data[ 32 ].value				table__.color3		= table_data[ 33 ].value
		table__.color4		= table_data[ 34 ].value				table__.alpha1		= table_data[ 35 ].value
		table__.alpha3		= table_data[ 36 ].value				table__.alpha4		= table_data[ 37 ].value
		table__.start_t		= table_data[ 38 ].text					table__.end_t		= table_data[ 39 ].text
		table__.fun_x		= table_data[ 40 ].text					table__.fun_y		= table_data[ 41 ].text
		table__.s_i			= table_data[ 42 ].text					table__.s_f			= table_data[ 43 ].text
		table__.center_x	= table_data[ 44 ].text					table__.center_y	= table_data[ 45 ].text
		table__.scale_x		= table_data[ 46 ].text					table__.scale_y		= table_data[ 47 ].text
		table__.align		= table_data[ 48 ].text					table__.layer		= table_data[ 49 ].text
		table__.move_x		= table_data[ 50 ].text					table__.move_y		= table_data[ 51 ].text
		table__.move_t		= table_data[ 52 ].text					table__.loops		= table_data[ 53 ].text
		table__.size		= table_data[ 54 ].text					table__.returnfx	= table_data[ 55 ].text
		table__.addtag		= table_data[ 56 ].text					table__.variable	= table_data[ 57 ].text
		table__.namefx		= table_data[ 62 ].text					table__.folderfx	= table_data[ 63 ].value
		table__.language	= table_data[ 66 ].value or "Lua"		table__.modify		= table_data[ 67 ].value or false
		table__.keeptagsfx	= table_data[ 69 ].value				table__.reverfx		= table_data[ 70 ].value or false
		return table__
	end
	---------------------------------------------------------
	
	function effector.keeptags( template_type, keeptags_type )
		local tags_keeptags_tbl = {
			[ 01 ] = "\\bord%-?%d+[%.%d]*",			[ 02 ] = "\\xbord%-?%d+[%.%d]*",		[ 03 ] = "\\ybord%-?%d+[%.%d]*",
			[ 04 ] = "\\shad%-?%d+[%.%d]*",			[ 05 ] = "\\xshad%-?%d+[%.%d]*",		[ 06 ] = "\\yshad%-?%d+[%.%d]*",
			[ 07 ] = "\\blur%-?%d+[%.%d]*",			[ 08 ] = "\\fscx%-?%d+[%.%d]*",			[ 09 ] = "\\fscy%-?%d+[%.%d]*",
			[ 10 ] = "\\be%-?%d+[%.%d]*",			[ 11 ] = "\\fax%-?%d+[%.%d]*",			[ 12 ] = "\\fay%-?%d+[%.%d]*",
			[ 13 ] = "\\frx%-?%d+[%.%d]*",			[ 14 ] = "\\fry%-?%d+[%.%d]*",			[ 15 ] = "\\fr[z]*%-?%d+[%.%d]*",
			[ 16 ] = "\\fsp%-?%d+[%.%d]*",			[ 17 ] = "\\fs%-?%d+[%.%d]*",			[ 18 ] = "\\alpha%-?[%d&]^*[%.%d&H%x]*",
			[ 19 ] = "\\1a%-?[%d&]^*[%.%d&H%x]*",	[ 20 ] = "\\3a%-?[%d&]^*[%.%d&H%x]*",	[ 21 ] = "\\4a%-?[%d&]^*[%.%d&H%x]*",
			[ 22 ] = "\\4c%-?[%d&]^*[%.%d&H%x]*",	[ 23 ] = "\\3c%-?[%d&]^*[%.%d&H%x]*",	[ 24 ] = "\\[1]*c%-?[%d&]^*[%.%d&H%x]*",
			[ 25 ] = "\\an%d+",						[ 26 ] = "\\pos%b()",					[ 27 ] = "\\org%b()",
			[ 28 ] = "\\fad%b()",					[ 29 ] = "\\move%b()",					[ 30 ] = "\\clip%b()",
			[ 31 ] = "\\iclip%b()",
		}
		if keeptags_type ~= "" then
			-----------------------
			if template_type == "Syl"
				or template_type == "Syl Multi"
				or template_type == "Char"
				or template_type == "Furi"
				or template_type == "Convert to Hiragana"
				or template_type == "Convert to Katakana"
				or template_type == "Convert to Romaji" then
				--------------------------------------------
				if keeptags_type == "Line" then
					local syl_tags_tbl = { }
					if #linefx[ ii ].syl.tags > 0 then
						for i = 1, #linefx[ ii ].syl.tags do
							syl_tags_tbl[ i ] = { }
							syl_tags_tbl[ i ][ 1 ] = linefx[ ii ].syl.tags[ i ]
						end
					end
					if #syl_tags_tbl > 1 then
						for i = 2, #syl_tags_tbl do
							for k = i, #syl_tags_tbl do
								table.insert( syl_tags_tbl[ k ], 2, syl_tags_tbl[ i - 1 ][ 1 ] )
							end
						end
					end
					local syl_tags_str = table.concat( syl_tags_tbl[ syl.i ] )
					syl_tags_str = syl_tags_str:gsub( "\\[kK]^*[fo]*%d+", "" )
					:gsub( "\\[%-%+]^*fx", "" ):gsub( "{(.-)}", "%1" )
					:gsub( "\\pos%b()", "" ):gsub( "\\move%b()", "" )
					syl_tags_str = string.change( syl_tags_str, tags_keeptags_tbl, 1, "\\t[%w%-%~]*%b()" )
					:gsub( "\\\\", "\\" )
					return syl_tags_str
				elseif keeptags_type == "Word" then
					local word_tags_str = linefx[ ii ].word[ word.i ].tags:sub( 2, -2 )
					:gsub( "\\[kK]^*[fo]*%d+", "" ):gsub( "\\pos%b()", "" )
					:gsub( "\\[%-%+]^*fx", "" ):gsub( "\\move%b()", "" )
					return word_tags_str
				elseif keeptags_type == "Syl"
					or keeptags_type == "Char" then
					local tags_in_syl = linefx[ ii ].syl[ syl.i ].tags:gsub( "\\[kK]^*[fo]*%d+", "" )
					:gsub( "\\[%-%+]^*fx", "" ):gsub( "{(.-)}", "%1" )
					:gsub( "\\pos%b()", "" ):gsub( "\\move%b()", "" )
					return tags_in_syl
				end
			elseif template_type == "Translation Word"
				or template_type == "Word" then
				-------------------------------
				if keeptags_type == "Line" then
					local word_tags_tbl = { }
					if #linefx[ ii ].word.tags > 0 then
						for i = 1, #linefx[ ii ].word.tags do
							word_tags_tbl[ i ] = { }
							word_tags_tbl[ i ][ 1 ] = linefx[ ii ].word.tags[ i ]
						end
					end
					if #word_tags_tbl > 1 then
						for i = 2, #word_tags_tbl do
							for k = i, #word_tags_tbl do
								table.insert( word_tags_tbl[ k ], 2, word_tags_tbl[ i - 1 ][ 1 ] )
							end
						end
					end
					local word_tags_str = table.concat( word_tags_tbl[ word.i ] )
					word_tags_str = word_tags_str:gsub( "\\[kK]^*[fo]*%d+", "" )
					:gsub( "\\[%-%+]^*fx", "" ):gsub( "{(.-)}", "%1" )
					:gsub( "\\pos%b()", "" ):gsub( "\\move%b()", "" )
					word_tags_str = string.change( word_tags_str, tags_keeptags_tbl, 1, "\\t[%w%-%~]*%b()" )
					:gsub( "\\\\", "\\" )
					return word_tags_str
				elseif keeptags_type == "Word"
					or keeptags_type == "Syl"
					or keeptags_type == "Char" then
					local word_tags_str = linefx[ ii ].word[ word.i ].tags:sub( 2, -2 )
					:gsub( "\\[kK]^*[fo]*%d+", "" ):gsub( "\\pos%b()", "" )
					:gsub( "\\[%-%+]^*fx", "" ):gsub( "\\move%b()", "" )
					return word_tags_str
				end
			elseif template_type == "Line"
				or template_type == "Template Line [Word]"
				or template_type == "Template Line [Syl]"
				or template_type == "Template Line [Char]"
				or template_type == "Translation Line"
				or template_type == "Translation Char" then
				if linefx[ ii ].text:match( "%b{}" ) then
					local line_tags_str = linefx[ ii ].text:match( "%b{}" ):gsub( "\\[kK]^*[fo]*%d+", "" )
					:gsub( "\\[%-%+]^*fx", "" ):gsub( "{(.-)}", "%1" )
					:gsub( "\\pos%b()", "" ):gsub( "\\move%b()", "" )
					return line_tags_str
				end
			--elseif template_type == "Translation Char" then
			end
		end
		return ""
	end --keeptags_add( fx__.t_type, fx__.keeptagsfx )
	
	function effector.pos( t_move, t_pos, t_time )
		local pos, options_pos, options_pdy, offset_posx
		if t_move == 1 then
			pos = format( "\\pos(%s,%s)", t_pos[ 1 ], t_pos[ 2 ] )
		elseif t_move == 2 then
			pos = format( "\\move(%s,%s,%s,%s)", t_pos[ 1 ], t_pos[ 2 ], t_pos[ 3 ], tostring( t_pos[ 4 ] ) .. t_time )
		elseif t_move == 3 then
			pos = format( "\\moves3(%s,%s,%s,%s,%s,%s)", t_pos[ 1 ], t_pos[ 2 ], t_pos[ 3 ], t_pos[ 4 ],
				t_pos[ 5 ], tostring( t_pos[ 6 ] ) .. t_time
			)
		elseif t_move == 4 then
			pos = format( "\\moves4(%s,%s,%s,%s,%s,%s,%s,%s)", t_pos[ 1 ], t_pos[ 2 ], t_pos[ 3 ], t_pos[ 4 ],
				t_pos[ 5 ], t_pos[ 6 ], t_pos[ 7 ], tostring( t_pos[ 8 ] ) .. t_time
			)
		elseif t_move == 6 then
			pos = format( "\\mover(%s,%s,%s,%s,%s,%s,%s,%s)", t_pos[ 1 ], t_pos[ 2 ], t_pos[ 3 ], t_pos[ 4 ],
				t_pos[ 9 ], t_pos[ 10 ], t_pos[ 11 ], tostring( t_pos[ 12 ] ) .. t_time
			)
		else
			pos = ""
		end
		if l.angle ~= 0 then
			offset_posx, offset_posy = effector.modify_pos( true )
			options_pos = { l.left, l.center, l.right }
			options_pdy = { fx.pos_b, fx.pos_y, fx.pos_t }
			pos = pos .. format( "\\org(%s,%s)\\fr%s",
				math.round( options_pos[ (l.align - 1) % 3 + 1 ] - offset_posx, 2 ),
				math.round( options_pdy[ ceil( l.align / 3 ) ], 2 ),
				l.angle
			)
		end
		return pos
	end

	function effector.knj( v_knj, reverse_fx )
		local options_px, options_py
		local pos_knjx, pos_knjy = fx.center_x, fx.center_y
		local pos_rever_x = 0
		if reverse_fx == true then
			pos_rever_x = l.right + l.left - 2 * val_center
		end
		if v_knj == true then
			pos_rever_x = 0
			options_px = {
				[ 1 ] = l.margin_l + l.height / 2,
				[ 2 ] = l.margin_l + (xres - l.margin_l - l.margin_r) / 2,
				[ 3 ] = xres - l.margin_r - l.height / 2,
			}
			options_py = {
				[ 1 ] = l.middle + l.height * (offset_h * (val_i - val_n)),
				[ 2 ] = l.middle + l.height * (offset_h * (val_i - val_n / 2 - 1) + 0.45),
				[ 3 ] = l.middle + l.height * (offset_h * (val_i - 1)),
			}
			if reverse_fx == true then
				options_py = {
					[ 1 ] = l.middle - l.height * (offset_h * (val_i - 1)),
					[ 2 ] = l.middle - l.height * (offset_h * (val_i - val_n / 2 - 1) + 0.45),
					[ 3 ] = l.middle - l.height * (offset_h * (val_i - val_n)),
				}
			end
			pos_knjx = options_px[ (l.align - 1) % 3 + 1 ]
			pos_knjy = options_py[ ceil( l.align / 3 ) ]
		end
		return pos_knjx + pos_rever_x, pos_knjy
	end

	function effector.offset_pos( string_inPos, offset_dx, offset_dy )
		local offset_dx = offset_dx or 0
		local offset_dy = offset_dy or 0
		local cap_pos, cap_tag = { }, { }
		local pos_cap = {
			[ 1 ] = "\\pos%b()",
			[ 2 ] = "\\org%b()",
			[ 3 ] = "\\move%b()",
			[ 4 ] = "\\movevc%b()",
			[ 5 ] = "\\moves3%b()",
			[ 6 ] = "\\moves4%b()",
			[ 7 ] = "\\mover%b()",
		}
		for i = 1, #pos_cap do
			for oC in string_inPos:gmatch( pos_cap[ i ] ) do
				table.insert( cap_pos, oC )
			end
		end
		if #cap_pos > 0 then
			for i = 2, #cap_pos + 1 do
				cap_tag[ i - 1 ] = { [ 1 ] = cap_pos[ i - 1 ]:match( "\\(%w+)" ) }
				cap_pos[ i - 1 ] = cap_pos[ i - 1 ]:gsub( "\\%w+", "" )
				for oCC in cap_pos[ i - 1 ]:gmatch( "%-?%d+[%.%d+]*" ) do
					table.insert( cap_tag[ i - 1 ], tonumber( oCC ) )
				end
			end
		end
		for i = 1, #cap_tag do
			if cap_tag[ i ][ 1 ] == "pos"
				or cap_tag[ i ][ 1 ] == "org" then
				string_inPos = string_inPos:gsub( "\\" .. cap_tag[ i ][ 1 ] .. "%b()",
					format( "\\%s(%s,%s)", cap_tag[ i ][ 1 ], cap_tag[ i ][ 2 ] + offset_dx, cap_tag[ i ][ 3 ] + offset_dy )
				)
			elseif cap_tag[ i ][ 1 ] == "move"
				or cap_tag[ i ][ 1 ] == "movevc" then
				if #cap_tag[ i ] == 5 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[ i ][ 1 ] .. "%b()",
						format( "\\%s(%s,%s,%s,%s)", cap_tag[ i ][ 1 ], cap_tag[ i ][ 2 ] + offset_dx, cap_tag[ i ][ 3 ] + offset_dy,
							cap_tag[ i ][ 4 ] + offset_dx, cap_tag[ i ][ 5 ] + offset_dy
						)
					)
				elseif #cap_tag[ i ] == 7 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[ i ][ 1 ] .. "%b()",
						format( "\\%s(%s,%s,%s,%s,%s,%s)", cap_tag[ i ][ 1 ], cap_tag[ i ][ 2 ] + offset_dx, cap_tag[ i ][ 3 ] + offset_dy,
							cap_tag[ i ][ 4 ] + offset_dx, cap_tag[ i ][ 5 ] + offset_dy, cap_tag[ i ][ 6 ], cap_tag[ i ][ 7 ]
						)
					)
				else --\\movevc(x,y)
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[ i ][ 1 ] .. "%b()",
						format( "\\%s(%s,%s)", cap_tag[ i ][ 1 ], cap_tag[ i ][ 2 ] + offset_dx, cap_tag[ i ][ 3 ] + offset_dy )
					)
				end
			elseif cap_tag[ i ][ 1 ] == "moves3" then
				if #cap_tag[ i ] == 7 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[ i ][ 1 ] .. "%b()",
						format( "\\%s(%s,%s,%s,%s,%s,%s)", cap_tag[ i ][ 1 ], cap_tag[ i ][ 2 ] + offset_dx, cap_tag[ i ][ 3 ] + offset_dy,
							cap_tag[ i ][ 4 ] + offset_dx, cap_tag[ i ][ 5 ] + offset_dy, cap_tag[ i ][ 6 ] + offset_dx, cap_tag[ i ][ 7 ] + offset_dy
						)
					)
				elseif #cap_tag[ i ] == 9 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[ i ][ 1 ] .. "%b()",
						format( "\\%s(%s,%s,%s,%s,%s,%s,%s,%s)", cap_tag[ i ][ 1 ], cap_tag[ i ][ 2 ] + offset_dx, cap_tag[ i ][ 3 ] + offset_dy,
							cap_tag[ i ][ 4 ] + offset_dx, cap_tag[ i ][ 5 ] + offset_dy, cap_tag[ i ][ 6 ] + offset_dx, cap_tag[ i ][ 7 ] + offset_dy,
							cap_tag[ i ][ 8 ], cap_tag[ i ][ 9 ]
						)
					)
				end
			elseif cap_tag[ i ][ 1 ] == "moves4" then
				if #cap_tag[ i ] == 9 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[ i ][ 1 ] .. "%b()",
						format( "\\%s(%s,%s,%s,%s,%s,%s,%s,%s)", cap_tag[ i ][ 1 ], cap_tag[ i ][ 2 ] + offset_dx, cap_tag[ i ][ 3 ] + offset_dy,
							cap_tag[ i ][ 4 ] + offset_dx, cap_tag[ i ][ 5 ] + offset_dy, cap_tag[ i ][ 6 ] + offset_dx, cap_tag[ i ][ 7 ] + offset_dy,
							cap_tag[ i ][ 8 ] + offset_dx, cap_tag[ i ][ 9 ] + offset_dy
						)
					)
				elseif #cap_tag[ i ] == 11 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[ i ][ 1 ] .. "%b()",
						format( "\\%s(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)", cap_tag[ i ][ 1 ], cap_tag[ i ][ 2 ] + offset_dx, cap_tag[ i ][ 3 ] + offset_dy,
							cap_tag[ i ][ 4 ] + offset_dx, cap_tag[ i ][ 5 ] + offset_dy, cap_tag[ i ][ 6 ] + offset_dx, cap_tag[ i ][ 7 ] + offset_dy,
							cap_tag[ i ][ 8 ] + offset_dx, cap_tag[ i ][ 9 ] + offset_dy, cap_tag[ i ][ 10 ], cap_tag[ i ][ 11 ]
						)
					)
				end
			elseif cap_tag[ i ][ 1 ] == "mover" then
				if #cap_tag[ i ] == 9 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[ i ][ 1 ] .. "%b()",
						format( "\\%s(%s,%s,%s,%s,%s,%s,%s,%s)", cap_tag[ i ][ 1 ], cap_tag[ i ][ 2 ] + offset_dx, cap_tag[ i ][ 3 ] + offset_dy,
							cap_tag[ i ][ 4 ] + offset_dx, cap_tag[ i ][ 5 ], cap_tag[ i ][ 6 ], cap_tag[ i ][ 7 ], cap_tag[ i ][ 8 ], cap_tag[ i ][ 9 ]
						)
					)
				elseif #cap_tag[ i ] == 11 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[ i ][ 1 ] .. "%b()",
						format( "\\%s(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)", cap_tag[ i ][ 1 ], cap_tag[ i ][ 2 ] + offset_dx, cap_tag[ i ][ 3 ] + offset_dy,
							cap_tag[ i ][ 4 ] + offset_dx, cap_tag[ i ][ 5 ], cap_tag[ i ][ 6 ], cap_tag[ i ][ 7 ], cap_tag[ i ][ 8 ], cap_tag[ i ][ 9 ],
							cap_tag[ i ][ 10 ], cap_tag[ i ][ 11 ]
						)
					)
				end
			end
		end
		return string_inPos
	end

	function effector.import( Lua_file )
		local Lua_file = Lua_file or "utils-auto4"
		Lua_file = Lua_file:gsub( "%.lua", "" )
		include( Lua_file .. ".lua" )
	end
	import = effector.import

	function effector.addfx( Library_fx, Name_fx )
		local fx_lib = {
			[ 1 ] = "lead-in",
			[ 2 ] = "hi-light",
			[ 3 ] = "lead-out",
			[ 4 ] = "shape",
			[ 5 ] = "translation",
			[ 6 ] = "function",
		}
		local n1, n2
		if type( Library_fx ) == "string" then
			n1 = table.index( fx_lib, Library_fx )
		elseif type( Library_fx ) == "number" then
			n1 = Library_fx
		end
		if type( n1 ) ~= "number" then
			n1 = 1
		end
		if type( Name_fx ) == "string" then
			n2 = table.index( list_fx[ n1 ], Name_fx, "%[.-%] " )
		elseif type( Name_fx ) == "number" then
			n2 = Name_fx
		end
		if type( n2 ) ~= "number" then
			n2 = 1
		end
		local add_fx = table.inbox2( list_library[ n1 ][ n2 ] )
		if  table.inside( effector.list, add_fx ) == false then
			table.insert( effector.list, add_fx )
			lines_comment = false
		end
	end
	addfx = effector.addfx

	function effector.savefx( New_fxname, File_fx )
		io.output( io.open( File_fx, "a" ) )
		io.write( New_fxname )
		io.close( )
	end

	function effector.modify_pos( Offset_x )
		local KE_align = linefx[ ii ].align
		local KE_posDx, KE_pos_x = 0, 0
		local KE_posDy, KE_pos_y = 0, 0
		if linefx[ ii ].text:match( "\\an%d+" ) then
			KE_align = tonumber( linefx[ ii ].text:match( "\\an(%d+)" ) )
			KE_pos_y = -0.5 * (linefx[ ii ].height + linefx[ ii ].descent)
		end
		if linefx[ ii ].text:match( "\\pos%(" ) then
			KE_posDx = 0.5 * linefx[ ii ].width * ((KE_align - 1) % 3 - 1)
			KE_posDy = 0.5 * linefx[ ii ].height * (ceil( (10 - ((KE_align - 1) % 9 + 1)) / 3 ) - 2)
			KE_pos_x = linefx[ ii ].center - tonumber( linefx[ ii ].text:match( "\\pos%((%-?%d+[.%d+]*)%,%-?%d+[.%d+]*%)" ) )
			KE_pos_y = linefx[ ii ].middle - tonumber( linefx[ ii ].text:match( "\\pos%(%-?%d+[.%d+]*%,(%-?%d+[.%d+]*)%)" ) )
		end
		if Offset_x then
			return KE_pos_x, KE_pos_y
		end
		return KE_pos_x + KE_posDx, KE_pos_y + KE_posDy
	end

	function effector.new_pos( posx, posy )
		local posx = posx or fx.pos_x
		local posy = posy or fx.pos_y
		local newpos = format( "\\pos(%s,%s)",
			math.round( posx + fx.move_x1 - fx.pos_x, 3 ), math.round( posy + fx.move_y1 - fx.pos_y, 3 )
		)
		if Nmove == 2 then
			newpos = format( "\\move(%s,%s,%s,%s)",
				math.round( posx + fx.move_x1 - fx.pos_x, 3 ), math.round( posy + fx.move_y1 - fx.pos_y, 3 ),
				math.round( posx + fx.move_x2 - fx.pos_x, 3 ), math.round( posy + fx.move_y2 - fx.pos_y, 3 ) .. tags_times
			)
		elseif Nmove == 3 then
			newpos = format( "\\moves3(%s,%s,%s,%s,%s,%s)",
				math.round( posx + fx.move_x1 - fx.pos_x, 3 ), math.round( posy + fx.move_y1 - fx.pos_y, 3 ),
				math.round( posx + fx.move_x2 - fx.pos_x, 3 ), math.round( posy + fx.move_y2 - fx.pos_y, 3 ),
				math.round( posx + fx.move_x3 - fx.pos_x, 3 ), math.round( posy + fx.move_y3 - fx.pos_y, 3 ) .. tags_times
			)
		elseif Nmove == 4 then
			newpos = format( "\\moves4(%s,%s,%s,%s,%s,%s,%s,%s)",
				math.round( posx + fx.move_x1 - fx.pos_x, 3 ), math.round( posy + fx.move_y1 - fx.pos_y, 3 ),
				math.round( posx + fx.move_x2 - fx.pos_x, 3 ), math.round( posy + fx.move_y2 - fx.pos_y, 3 ),
				math.round( posx + fx.move_x3 - fx.pos_x, 3 ), math.round( posy + fx.move_y3 - fx.pos_y, 3 ),
				math.round( posx + fx.move_x4 - fx.pos_x, 3 ), math.round( posy + fx.move_y4 - fx.pos_y, 3 ) .. tags_times
			)
		end
		return newpos
	end

	function effector.default_val( )
		fx.loop_v, fx.loop_h, fx.loop_3, loop_h = 1, 1, 1, 1
		fx.maxloop_fx = fx.loop_v * fx.loop_h * fx.loop_3
		maxj = fx.maxloop_fx
		fx.start_time, fx.end_time = l_start, l_end
		fx.dur = fx.end_time - fx.start_time
		fx.mid_time = fx.start_time - fx.dur / 2
		fx.center_x, fx.center_y, fx.scale_x, fx.scale_y, offset_maxspace, offset_h = val_center, val_middle, 1, 1, 0, 0.9
		fx.pos_x, fx.pos_y, fx.pos_t, fx.pos_r, fx.pos_b, fx.pos_l = val_center, val_middle, val_top, val_right, val_bottom, val_left
		fx.sizex, fx.sizey, fx.movet_i, fx.movet_f, tags_times = l_scale_x, l_scale_y, 0, fx.dur, ""
		fx.tag_size, fx.align, fx.layer = format( "\\fscx%s\\fscy%s", fx.sizex, fx.sizey ), "\\an5", l_layer
		fx.angle1, fx.angle2, fx.radius1, fx.radius2 = fx.pos_x, fx.pos_x, fx.pos_x, fx.pos_x
		fx.move_x1, fx.move_x2, fx.move_x3, fx.move_x4 = fx.pos_x, fx.pos_x, fx.pos_x, fx.pos_x
		fx.move_y1, fx.move_y2, fx.move_y3, fx.move_y4 = fx.pos_y, fx.pos_y, fx.pos_y, fx.pos_y
		fx.move_t1, fx.move_t2, fx.move_t3, fx.move_t4 = fx.pos_t, fx.pos_t, fx.pos_t, fx.pos_t
		fx.move_r1, fx.move_r2, fx.move_r3, fx.move_r4 = fx.pos_r, fx.pos_r, fx.pos_r, fx.pos_r
		fx.move_b1, fx.move_b2, fx.move_b3, fx.move_b4 = fx.pos_b, fx.pos_b, fx.pos_b, fx.pos_b
		fx.move_l1, fx.move_l2, fx.move_l3, fx.move_l4 = fx.pos_l, fx.pos_l, fx.pos_l, fx.pos_l
	end

	function effector.effect_offset( )
		effect_val = { }
		for c in l_fx:gmatch( "%-?%d+[%.%d+]*" ) do
			table.insert( effect_val, c )
		end
		for i = 1, 64 do
			effect_val[ i ] = effect_val[ i ] or 0
		end
		fx.offset_x = effect_val[ 1 ]
		fx.offset_y = effect_val[ 2 ]
		fx.offset_z = effect_val[ 3 ]
	end

	function effector.decide( )
		local Decide_No_1 = { 75, 97, 114, 97, 32, 69, 102, 102, 101, 99, 116, 111, 114 }
		local Decide_No_2 = { 69, 102, 102, 101, 99, 116, 115, 32, 65, 117, 116, 111, 109, 97, 116, 105, 111, 110, 32, 75, 97, 114, 97, 111,
							107, 101, 115, 46, 32, 67, 114, 101, 97, 116, 105, 110, 103, 32, 69, 102, 102, 101, 99, 116, 115, 32, 119, 105,
							116, 104, 32, 77, 111, 100, 105, 102, 105, 97, 98, 108, 101, 32, 80, 97, 114, 97, 109, 101, 116, 101, 114, 115
		}
		local Decide_No_3 = { 75, 97, 114, 97, 76, 97, 117, 114, 97 }
		local Decide_No_4 = { 51, 46, 54 }
		local Decide_No_5 = { 40, 99, 41, 32, 86, 105, 99, 116, 56, 114, 32, 75, 97, 114, 97 }
		--------------------------------------------------------------------------------------
		local bytes_table = {
			[ 01 ] = { 32, 91, 58, 58, 32, 80, 114, 105, 109, 97, 114, 121, 32, 83, 101, 116, 116, 105, 110, 103, 32, 58, 58, 93 },
			[ 02 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 65, 112, 112,
					108, 121, 32, 116, 111, 32, 83, 116, 121, 108, 101, 58 },
			[ 03 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 83, 101, 108, 101, 99, 116,
					105, 111, 110, 32, 69, 102, 102, 101, 99, 116, 58 },
			[ 04 ] = { 32, 91, 58, 58, 32, 84, 101, 120, 116, 32, 83, 101, 116, 116, 105, 110, 103, 32, 58, 58, 93 },
			[ 05 ] = { 32, 80, 114, 105, 109, 97, 114, 121, 32, 67, 111, 108, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 },
			[ 06 ] = { 32, 83, 101, 99, 111, 110, 100, 97, 114, 121, 32, 67, 111, 108, 111, 114, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 },
			[ 07 ] = { 32, 66, 111, 114, 100, 101, 114, 32, 67, 111, 108, 111, 114 },
			[ 08 ] = { 32, 83, 104, 97, 100, 111, 119, 32, 67, 111, 108, 111, 114 },
			[ 09 ] = { 76, 105, 110, 101, 32, 67, 111, 109, 109, 101, 110, 116 },
			[ 10 ] = { 83, 97, 118, 101, 32, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110 },
			[ 11 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 85, 115, 105, 110, 103, 32, 84, 97,
					103, 115, 32, 70, 105, 108, 116, 101, 114, 58 },
			[ 12 ] = { 75, 97, 114, 97, 32, 69, 102, 102, 101, 99, 116, 111, 114, 32, 51, 46, 54, 32, 108, 101, 103, 97, 99, 121 },
			[ 13 ] = { 79, 99, 116, 111, 98, 101, 114, 32, 48, 55, 116, 104, 32, 50, 48, 49, 57 },
			[ 14 ] = { 40, 99, 41, 32, 86, 105, 99, 116, 56, 114, 32, 75, 97, 114, 97 },
			[ 15 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 97, 99, 101, 98, 111, 111, 107, 46, 99, 111, 109, 47, 107, 97, 114,
					97, 101, 102, 102, 101, 99, 116, 111, 114 },
			[ 16 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 115, 99,
					111, 114, 100, 46, 103, 103, 47, 89, 70, 80, 50, 122, 101, 89 },
			[ 17 ] = { 32, 83, 104, 97, 112, 101, 91, 102, 120, 93, 58, 32, 84, 101, 109, 112, 108, 97, 116, 101, 32, 83, 104, 97, 112, 101 },
			[ 18 ] = { 32, 69, 115, 116, 105, 108, 111, 32, 115, 101, 108, 101, 99, 99, 105, 111, 110, 97, 100, 111, 58 },
			[ 19 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 101, 109, 112, 108, 97, 116, 101,
					32, 84, 121, 112, 101, 32, 91, 102, 120, 93, 58 },
			[ 20 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 76, 105, 110, 101, 32, 83, 116, 97,
					114, 116, 32, 84, 105, 109, 101, 32, 61 },
			[ 21 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 76, 105, 110, 101, 32, 69, 110,
					100, 32, 84, 105, 109, 101, 32, 61 },
			[ 22 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 32, 32, 32, 32, 32, 32, 32, 120, 40, 32, 115, 32, 41, 32, 61 },
			[ 23 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 32, 32, 32, 32, 32, 32, 32, 121, 40, 32, 115, 32, 41, 32, 61 },
			[ 24 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67,
					101, 110, 116, 101, 114, 32, 34, 120, 34, 32, 61 },
			[ 25 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 67,
					101, 110, 116, 101, 114, 32, 34, 121, 34, 32, 61 },
			[ 26 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 83, 99, 97, 108, 101, 32, 34, 120, 34, 32, 61 },
			[ 27 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 83, 99, 97, 108, 101, 32, 34, 121, 34, 32, 61 },
			[ 28 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 76, 97, 121, 101, 114, 32,
					47, 47, 32, 65, 108, 105, 103, 110, 32, 61 },
			[ 29 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 32, 32, 80, 111, 115, 32, 34, 120, 34, 32, 61 },
			[ 30 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 32, 32, 80, 111, 115, 32, 34, 121, 34, 32, 61 },
			[ 31 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 105, 109, 101,
					115, 32, 77, 111, 118, 101, 32, 61 },
			[ 32 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 111, 111, 112, 32, 61 },
			[ 33 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 83, 105, 122, 101, 32, 61 },
			[ 34 ] = { 82, 101, 116, 117, 114, 110, 32, 91, 102, 120, 93, 58 },
			[ 35 ] = { 32, 65, 100, 100, 32, 84, 97, 103, 115, 32, 91, 102, 120, 93, 58, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 },
			[ 36 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 65, 100, 100, 32, 84, 97, 103, 115, 32, 76, 97, 110,
					103, 117, 97, 103, 101, 58 },
			[ 37 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 83, 104, 97, 112, 101, 32, 67, 111, 108,
					111, 114, 115, 32, 91, 102, 120, 93, 58 },
			[ 38 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 80, 114, 105, 109, 97, 114, 121, 32, 67, 111, 108, 111, 114, 32, 32,
					32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 },
			[ 39 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 66, 111, 114, 100, 101, 114, 32, 67, 111, 108, 111, 114, 32, 32,
					32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 },
			[ 40 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 83, 104, 97, 100, 111, 119, 32, 67, 111, 108, 111, 114, 32, 32, 32,
					32, 32, 32, 32, 32, 32, 32, 32, 32, 32 },
			[ 41 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 86, 97,
					114, 105, 97, 98, 108, 101, 115, 32, 91, 102, 120, 93, 58 },
			[ 42 ] = { 77, 111, 100, 105, 102, 121, 32, 111, 114, 32, 82, 101, 116, 117, 114, 110, 32, 91, 102, 120, 93 },
			[ 43 ] = { 32, 78, 101, 119, 32, 91, 102, 120, 93, 32, 78, 97, 109, 101, 58 },
			[ 44 ] = { 80, 114, 105, 110, 116, 32, 67, 111, 110, 102, 105, 103, 32, 91, 102, 120, 93 },
			[ 45 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 84, 101, 109, 112, 108, 97, 116, 101, 32, 70, 111,
					108, 100, 101, 114, 32, 91, 102, 120, 93, 58 },
			[ 46 ] = { 75, 101, 101, 112, 116, 97, 103, 115, 32, 91, 102, 120, 93, 58, 32, 32, 32 },
			[ 47 ] = { 75, 97, 114, 97, 32, 69, 102, 102, 101, 99, 116, 111, 114, 32, 51, 46, 54, 32, 108, 101, 103, 97, 99, 121 },
			[ 48 ] = { 79, 99, 116, 111, 98, 101, 114, 32, 48, 55, 116, 104, 32, 50, 48, 49, 57 },
			[ 49 ] = { 87, 104, 97, 116, 115, 65, 112, 112, 32, 75, 69, 58 },
			[ 50 ] = { 43, 53, 55, 32, 51, 50, 48, 32, 56, 54, 51, 49, 52, 55, 50 },
			[ 51 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 105, 115, 99, 111, 114, 100, 46, 103, 103, 47, 89, 70, 80, 50,
					122, 101, 89 },
			[ 52 ] = { 82, 101, 118, 101, 114, 115, 101, 32, 91, 102, 120, 93 },
			[ 53 ] = { 78, 111, 98, 108, 97, 110, 107, 32, 91, 102, 120, 93 },
			[ 54 ] = { 86, 101, 114, 116, 105, 99, 97, 108, 32, 75, 97, 110, 106, 105, 32, 91, 102, 120, 93 },
			[ 55 ] = { 83, 97, 118, 101, 32, 67, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110 },
			[ 56 ] = { 32, 65, 100, 100, 32, 110, 101, 119, 32, 99, 111, 110, 102, 105, 103, 91, 102, 120, 93, 58 },
			[ 57 ] = { 32, 65, 100, 100, 32, 118, 97, 114, 105, 97, 98, 108, 101, 115, 44, 32, 102, 117, 110, 99, 116, 105, 111, 110, 115,
					32, 111, 114, 32, 110, 101, 119, 32, 102, 120, 32, 99, 111, 110, 102, 105, 103, 117, 114, 97, 116, 105, 111, 110, 115,
					44, 32, 105, 110, 32, 116, 104, 101, 32, 76, 85, 65, 32, 112, 114, 111, 103, 114, 97, 109, 109, 105, 110, 103, 32, 108,
					97, 110, 103, 117, 97, 103, 101, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32,  32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32,
					32, 32, 32, 32, 32, 32, 32, 32, 32, 32 },
			[ 58 ] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 97, 114, 97, 101, 102, 102, 101, 99, 116, 111, 114, 46, 98, 108,
					111, 103, 115, 112, 111, 116, 46, 99, 111, 109 },
			[ 59 ] = { 32, 83, 97, 118, 101, 32, 105, 110, 32, 70, 105, 108, 101, 58 },
		}
		local bytes_table2 = {
			---------------------------------------------------------------------------------------------------------------------------------
			[ 01 ] = effector.GUI_config[ 01 ].label,	[ 02 ] = effector.GUI_config[ 02 ].label,	[ 03 ] = effector.GUI_config[ 04 ].label,
			[ 04 ] = effector.GUI_config[ 06 ].label,	[ 05 ] = effector.GUI_config[ 07 ].label,	[ 06 ] = effector.GUI_config[ 08 ].label,
			[ 07 ] = effector.GUI_config[ 09 ].label,	[ 08 ] = effector.GUI_config[ 10 ].label,	[ 09 ] = effector.GUI_config[ 19 ].label,
			[ 10 ] = effector.GUI_config[ 20 ].label,	[ 11 ] = effector.GUI_config[ 23 ].label,	[ 12 ] = effector.GUI_config[ 25 ].label,
			[ 13 ] = effector.GUI_config[ 26 ].label,	[ 14 ] = effector.GUI_config[ 27 ].label,	[ 15 ] = effector.GUI_config[ 28 ].label,
			[ 16 ] = effector.GUI_config[ 29 ].label,	[ 58 ] = effector.GUI_config[ 31 ].label,
			---------------------------------------------------------------------------------------------------------------------------------
			[ 17 ] = effector.GUI_modify[ 01 ].label,	[ 18 ] = effector.GUI_modify[ 68 ].label,	[ 19 ] = effector.GUI_modify[ 02 ].label,
			[ 20 ] = effector.GUI_modify[ 03 ].label,	[ 21 ] = effector.GUI_modify[ 04 ].label,	[ 22 ] = effector.GUI_modify[ 05 ].label,
			[ 23 ] = effector.GUI_modify[ 06 ].label,	[ 24 ] = effector.GUI_modify[ 09 ].label,	[ 25 ] = effector.GUI_modify[ 10 ].label,
			[ 26 ] = effector.GUI_modify[ 11 ].label,	[ 27 ] = effector.GUI_modify[ 12 ].label,	[ 28 ] = effector.GUI_modify[ 14 ].label,
			[ 29 ] = effector.GUI_modify[ 15 ].label,	[ 30 ] = effector.GUI_modify[ 16 ].label,	[ 31 ] = effector.GUI_modify[ 17 ].label,
			[ 32 ] = effector.GUI_modify[ 18 ].label,	[ 33 ] = effector.GUI_modify[ 19 ].label,	[ 34 ] = effector.GUI_modify[ 20 ].label,
			[ 35 ] = effector.GUI_modify[ 21 ].label,	[ 36 ] = effector.GUI_modify[ 65 ].label,	[ 37 ] = effector.GUI_modify[ 24 ].label,
			[ 38 ] = effector.GUI_modify[ 25 ].label,	[ 39 ] = effector.GUI_modify[ 26 ].label,	[ 40 ] = effector.GUI_modify[ 27 ].label,
			[ 41 ] = effector.GUI_modify[ 28 ].label,	[ 42 ] = effector.GUI_modify[ 67 ].label,	[ 43 ] = effector.GUI_modify[ 60 ].label,
			[ 44 ] = effector.GUI_modify[ 61 ].label,	[ 45 ] = effector.GUI_modify[ 59 ].label,	[ 46 ] = effector.GUI_modify[ 07 ].label,
			[ 47 ] = effector.GUI_modify[ 64 ].label,	[ 48 ] = effector.GUI_modify[ 08 ].label,	[ 49 ] = effector.GUI_modify[ 13 ].label,
			[ 50 ] = effector.GUI_modify[ 71 ].label,	[ 51 ] = effector.GUI_modify[ 72 ].label,	[ 52 ] = effector.GUI_modify[ 70 ].label,
			[ 53 ] = effector.GUI_modify[ 30 ].label,	[ 54 ] = effector.GUI_modify[ 31 ].label,	[ 55 ] = effector.GUI_modify[ 58 ].label,
			---------------------------------------------------------------------------------------------------------------------------------
			[ 56 ] = effector.GUI_add[ 01 ].label,		[ 57 ] = effector.GUI_add[ 03 ].label,		[ 59 ] = effector.GUI_add[ 04 ].label,
			---------------------------------------------------------------------------------------------------------------------------------
		}
		----------------------------------------------------------------------------
		if table.compare( text.char2byte( script_name ), Decide_No_1 ) == false then
			error( text.byte2char( { 78, 111, 32, 100, 101, 98, 101, 115, 32, 99, 97, 109, 98, 105, 97, 114, 32, 101, 108, 32, 110, 111,
									109, 98, 114, 101, 32, 100, 101, 108, 32, 83, 99, 114, 105, 112, 116, 44, 32, 100, 101, 32, 108, 111,
									32, 99, 111, 110, 116, 114, 97, 114, 105, 111, 32, 115, 101, 32, 103, 101, 110, 101, 114, 97, 114, 195,
									161, 32, 117, 110, 32, 101, 114, 114, 111, 114, 32, 113, 117, 101, 32, 110, 111, 32, 116, 101, 32, 100,
									101, 106, 97, 114, 195, 161, 32, 117, 115, 97, 114, 32, 101, 108, 32, 75, 97, 114, 97, 32, 69, 102, 102,
									101, 99, 116, 111, 114 } )
			)
		elseif table.compare( text.char2byte( script_description ), Decide_No_2 ) == false then
			error( text.byte2char( { 78, 111, 32, 100, 101, 98, 101, 115, 32, 99, 97, 109, 98, 105, 97, 114, 32, 108, 97, 32, 100, 101, 115,
									99, 114, 105, 112, 99, 105, 195, 179, 110, 32, 100, 101, 108, 32, 83, 99, 114, 105, 112, 116, 44, 32,
									100, 101, 32, 108, 111, 32, 99, 111, 110, 116, 114, 97, 114, 105, 111, 32, 115, 101, 32, 103, 101, 110,
									101, 114, 97, 114, 195, 161, 32, 117, 110, 32, 101, 114, 114, 111, 114, 32, 113, 117, 101, 32, 110, 111,
									32, 116, 101, 32, 100, 101, 106, 97, 114, 195, 161, 32, 117, 115, 97, 114, 32, 101, 108, 32, 75, 97, 114,
									97, 32, 69, 102, 102, 101, 99, 116, 111, 114 } )
			)
		elseif table.compare( text.char2byte( script_author ), Decide_No_3 ) == false then
			error( text.byte2char( { 78, 111, 32, 100, 101, 98, 101, 115, 32, 99, 97, 109, 98, 105, 97, 114, 32, 101, 108, 32, 110, 111, 109,
									98, 114, 101, 32, 100, 101, 108, 32, 97, 117, 116, 111, 114, 32, 100, 101, 108, 32, 83, 99, 114, 105, 112,
									116, 44, 32, 100, 101, 32, 108, 111, 32, 99, 111, 110, 116, 114, 97, 114, 105, 111, 32, 115, 101, 32, 103,
									101, 110, 101, 114, 97, 114, 195, 161, 32, 117, 110, 32, 101, 114, 114, 111, 114, 32, 113, 117, 101, 32,
									110, 111, 32, 116, 101, 32, 100, 101, 106, 97, 114, 195, 161, 32, 117, 115, 97, 114, 32, 101, 108, 32, 75,
									97, 114, 97, 32, 69, 102, 102, 101, 99, 116, 111, 114 } )
			)
		elseif table.compare( text.char2byte( script_version ), Decide_No_4 ) == false then
			error( text.byte2char( { 78, 111, 32, 100, 101, 98, 101, 115, 32, 99, 97, 109, 98, 105, 97, 114, 32, 101, 108, 32, 110, 195, 186,
									109, 101, 114, 111, 32, 100, 101, 32, 108, 97, 32, 118, 101, 114, 115, 105, 195, 179, 110, 32, 100, 101,
									108, 32, 83, 99, 114, 105, 112, 116, 44, 32, 100, 101, 32, 108, 111, 32, 99, 111, 110, 116, 114, 97, 114,
									105, 111, 32, 115, 101, 32, 103, 101, 110, 101, 114, 97, 114, 195, 161, 32, 117, 110, 32, 101, 114, 114,
									111, 114, 32, 113, 117, 101, 32, 110, 111, 32, 116, 101, 32, 100, 101, 106, 97, 114, 195, 161, 32, 117,
									115, 97, 114, 32, 101, 108, 32, 75, 97, 114, 97, 32, 69, 102, 102, 101, 99, 116, 111, 114 } )
			)
		elseif table.compare( text.char2byte( effector.GUI_config[ 27 ].label ), Decide_No_5 ) == false then
			error( text.byte2char( { 78, 111, 32, 100, 101, 98, 101, 115, 32, 99, 97, 109, 98, 105, 97, 114, 32, 101, 108, 32, 110, 111, 109,
									98, 114, 101, 32, 100, 101, 108, 32, 65, 117, 116, 111, 114, 32, 100, 101, 108, 32, 75, 97, 114, 97, 32, 69,
									102, 102, 101, 99, 116, 111, 114, 46, 32, 69, 108, 32, 97, 117, 116, 111, 114, 32, 100, 101, 108, 32, 101,
									115, 116, 101, 32, 109, 97, 116, 101, 114, 105, 97, 108, 32, 101, 115, 32, 86, 105, 99, 116, 56, 114, 32,
									75, 97, 114, 97 } )
			)
		end
		--------------------------
		for i = 1, #bytes_table do
			if table.compare( text.char2byte( bytes_table2[ i ] ), bytes_table[ i ] ) == false then
				error( text.byte2char( { 69, 114, 114, 111, 114, 32, 91, 75, 69, 93, 58, 32, 89, 111, 117, 32, 97, 114, 101, 32, 116, 114, 121,
									105, 110, 103, 32, 116, 111, 32, 109, 97, 107, 101, 32, 109, 111, 100, 105, 102, 105, 99, 97, 116, 105, 111,
									110, 115, 32, 116, 111, 32, 116, 104, 101, 32, 75, 97, 114, 97, 32, 69, 102, 102, 101, 99, 116, 111, 114, 44,
									32, 105, 102, 32, 121, 111, 117, 32, 100, 111, 32, 105, 116, 44, 32, 105, 116, 32, 119, 105, 108, 108, 32,
									115, 116, 111, 112, 32, 119, 111, 114, 107, 105, 110, 103, 32, 112, 114, 111, 112, 101, 114, 108, 121, 46,
									32, 78, 111, 32, 115, 101, 32, 112, 117, 101, 100, 101, 32, 109, 111, 100, 105, 102, 105, 99, 97, 114, 32,
									110, 105, 110, 103, 117, 110, 97, 32, 100, 101, 32, 108, 97, 115, 32, 105, 110, 116, 101, 114, 102, 97, 99,
									101, 115, 32, 100, 101, 108, 32, 75, 97, 114, 97, 32, 69, 102, 102, 101, 99, 116, 111, 114, 44, 32, 101, 115,
									116, 111, 32, 97, 102, 101, 99, 116, 97, 32, 101, 108, 32, 98, 117, 101, 110, 32, 114, 101, 110, 100, 105,
									109, 105, 101, 110, 116, 111, 32, 100, 101, 108, 32, 75, 69 } )
				)
			end
		end
		--------------------------
	end

	function effector.print_error( name_argument, type_argument, name_function, pos_argument )
		--shape, text, string, number, table, function, color, alpha, numbertable, numberstring, stringtable, true
		--numberstringtable, numbershapetable, numbertablefunction
		local arg_pos_esp = { "primer", "segundo", "tercero", "cuarto", "quinto", "sexto", "séptimo", "octavo", "noveno", "décimo" }
		local arg_pos_eng = { "first", "second", "thirth", "fourth", "fiveth", "sixth", "seventh", "eigth", "ninth", "tenth" }
		local arg_pos_nm1 = arg_pos_esp[ pos_argument ] or "primer"
		local arg_pos_nm2 = arg_pos_eng[ pos_argument ] or "first"
		if type_argument == "shape" then
			if type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumeto de la función debe ser una shape.
		Este argumento debe ser un string shape, por ejemplo: "m 0 0 l 0 100 l 100 100 l 10 0 ",
		shape.circle, shape.rectangle o cualquier otra figura shape.  Es posible que eso hayas
		intentado, pero cometiste un error en la escritura, como anotar mal un valor u omitir
		las comillas simples o dobles en las que debe ir el código de una shape.
		
		[:error:] The %s argument of the function must be a shape.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "text" then
			if type( name_argument ) ~= "string"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un string de texto.
		Este argumento debe ser un string de texto, por ejemplo: syl.text, word.text, "AbcDE",
		line.text_stripped, word.text, o cualquier otro string de texto. Posiblemente sea eso lo
		que hayas intentado, pero cometiste uno o más errores en la escritura, como escribir
		mal el nombre de la variable u omitir las comillas simples o dobles en las que debe ir
		siempre el string de texto.
		
		[:error:] The %s argument of the function must be a string.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "string" then
			if type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un string.
		Este argumento debe ser un string. Recurda que todo string debe estar entre comillas
		simples o dobles, de otro modo el error persistirá.
		
		[error:] The %s argument of the function must be a string.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "number" then
			if type( name_argument ) ~= "number"
				and type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un número.
		Este argumento debe ser un número. Ningún valor numérico en este argumento debe
		estar entre comillas simples o dobles.  Es probable que hayas ingresado un número en
		este argumento, pero está fuera de rango. Debes consultar la documentación que hay
		de esta función,  o pedir asesoría del tema en el Blog,  en la fanpage,  o en el grupo de
		facebook del Kara Effector.		
		
		[:error:] The %s argument of the function must be a number.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "table" then
			if type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un tabla.
		Este argumento debe ser una tabla.  Recurda que toda tabla debe estar definida entre
		corchetes "{ }". Todos los elementos de una tabla deben estar separados por coma (,)
		o por punto y coma (;). Posiblemente has cometido uno o más errores de los anterior-
		mente mencionados. Si el argumento solicita únicamente una tabla, entonces no hay
		que poner un número o un string en él.
		
		[:error:] The %s argument of the function must be a table.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "function" then
			if type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser una función.
		Este argumento debe ser una función. Este tipo de argumento es uno de los más com-
		plejos de usar,  ya que es necesario el dominio del lenguaje LUA,  para poder formular
		una función válida. Si el error persiste, debes consultar la documentación que haya de
		esta función o pedir asesoría en el Blog, en la fanpage,  o en el grupo de facebook que
		fue creado para ayudar y dar soporte técnico, del Kara Effector.
		
		[:error:] The %s argument of the function must be a function.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "color" then
			if type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un string de color.
		Este argumento debe ser un color en formato .ass ("&HFF00AD&"), HTML ("#00FF00")
		o en el formato VSFilterMod ( "(&HFFFFFF&,&HFFFFFF&,&H000000&,&H000000&)" ).
		Cualquiera de los tres formatos es igualmente válido, todo depende de los resultados
		que se quieran obtener.  Hay funciones en las que un argumento de color puede tener
		la opción de ser remplazado por una tabla en donde cada uno de sus elementos sea un
		string de color  y quizás en esta función sea el caso.  Recomendamos consultar toda la
		documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be a color string.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "alpha" then
			if type( name_argument ) ~= "string"
				and type( name_argument ) ~= "number"
				and type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un string de alpha.
		Este argumento debe ser un alpha en formato .ass ( "&HFF&" ), HTML ( "#0A" ) o en el
		formato VSFilterMod ( "(&HFF&,&HFF&,&H00&,&H00&)" ), incluso hasta un número real.
		Cualquiera de los tres formatos es igualmente válido, todo depende de los resultados
		que se quieran obtener.  Hay funciones en las que un argumento de alpha puede tener
		la opción de ser remplazado por una tabla en donde cada uno de sus elementos sea un
		string de alpha  y quizás en esta función sea el caso.  Recomendamos consultar toda la
		documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be a alpha string.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "numbertable" then
			if type( name_argument ) ~= "number"
				and type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un número o una tabla.
		Este argumento debe ser o un número o una tabla. Es problable que la tabla sea una en
		donde todos sus elementos sean números, para estar seguros de esta condición, debes
		consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be number or table.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "numberstring" then
			if type( name_argument ) ~= "number"
				and type( name_argument ) ~= "string"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un número o un string.
		Este argumento debe ser un número o un string. Para estar seguros de esta condición,
		debes consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be number or string.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "numberstringtable" then
			if type( name_argument ) ~= "number"
				and type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un número, un string o una tabla.
		Este argumento debe ser un número, un string o una tabla. Para estar seguros de esta
		condición, debes consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be number, or string or table.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "numbershapetable" then
			if type( name_argument ) ~= "number"
				and type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un número, una shape o una tabla.
		Este argumento debe ser un número, una shape o una tabla. Para estar seguros de esta
		condición, debes consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be number, or shape or table.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "numbertablefunction" then
			if type( name_argument ) ~= "number"
				and type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un número, una tabla o una función.
		Este argumento debe ser un número, una tabla o una función. Para estar seguros de
		esta condición, debes consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be number, or table or function.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "stringtable" then
			if type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table"
				and type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un string o una tabla.
		Este argumento debe ser un string o una tabla.  Es problable que la tabla sea una en
		donde todos sus elementos sean string, para estar seguros de esta condición, debes
		consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be string or table.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "true" then
			if not name_argument then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función no se puede omitir.
		Este argumento no se puede omitir y debe ser un valor válido para que la función se
		ejecute de manera satisfactoria. Si hay dudas acerca de la función, se debe consultar
		la documentación pertinente a la misma.
		
		[:error:] The %s argument of the function must be a valid value.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		end
	end
	
	function effector.time( Time_i, Time_f )
		local Tim, Hor, Min, Seg
		Tim = Time_f - Time_i
		Seg = Tim % 60
		Min = floor( Tim / 60 )
		Hor = floor( Tim / 3600 )
		if Seg < 10 then
			Seg = format( "0%s", Seg )
		end
		if Min < 10 then
			Min = format( "0%s", Min )
		end
		return format( "%s:%s:%s", Hor, Min, Seg )
	end
	
	function effector.default_val2( )
		local line = linefx[ ii ]
		val_width, val_height, val_text = l.width, l.height, line.text_stripped
		val_center, val_middle, val_left, val_right = l.center, l.middle, l.left, l.right
		val_top, val_bottom, val_dur = l.top, l.bottom, line.duration
		val_start, val_end, val_mid = line.start_time, line.end_time, line.mid_time
		--line.i, line.n = l_counter, maxil_counter
		val_i, val_n = l_counter, maxil_counter --line.i, line.n fix: october 09th 2018
		if fx__.t_type == "Syl"
			or fx__.t_type == "Syl Multi" then --add: october 09th 2018
			val_width, val_height, val_text = syl.width, syl.height, syl.text
			val_center, val_middle, val_left, val_right = syl.center, syl.middle, syl.left, syl.right
			val_top, val_bottom, val_dur = syl.top, syl.bottom, syl.duration
			val_start, val_end, val_mid = syl.start_time, syl.end_time, syl.mid_time
			val_i, val_n = syl.i, syl.n
		elseif fx__.t_type == "Convert to Hiragana" then
			val_width, val_height, val_text = hira.width, hira.height, hira.text
			val_center, val_middle, val_left, val_right = hira.center, hira.middle, hira.left, hira.right
			val_top, val_bottom, val_dur = hira.top, hira.bottom, hira.duration
			val_start, val_end, val_mid = hira.start_time, hira.end_time, hira.mid_time
			val_i, val_n = hira.i, hira.n
		elseif fx__.t_type == "Convert to Katakana" then
			val_width, val_height, val_text = kata.width, kata.height, kata.text
			val_center, val_middle, val_left, val_right = kata.center, kata.middle, kata.left, kata.right
			val_top, val_bottom, val_dur = kata.top, kata.bottom, kata.duration
			val_start, val_end, val_mid = kata.start_time, kata.end_time, kata.mid_time
			val_i, val_n = kata.i, kata.n
		elseif fx__.t_type == "Convert to Romaji" then
			val_width, val_height, val_text = roma.width, roma.height, roma.text
			val_center, val_middle, val_left, val_right = roma.center, roma.middle, roma.left, roma.right
			val_top, val_bottom, val_dur = roma.top, roma.bottom, roma.duration
			val_start, val_end, val_mid = roma.start_time, roma.end_time, roma.mid_time
			val_i, val_n = roma.i, roma.n
		elseif fx__.t_type == "Word"
			or fx__.t_type == "Translation Word" then
			val_width, val_height, val_text = word.width, word.height, word.text
			val_center, val_middle, val_left, val_right = word.center, word.middle, word.left, word.right
			val_top, val_bottom, val_dur = word.top, word.bottom, word.duration
			val_start, val_end, val_mid = word.start_time, word.end_time, word.start_time + word.duration / 2
			val_i, val_n = word.i, word.n
		elseif fx__.t_type == "Furi" then
			val_width, val_height, val_text = furi.width, furi.height, furi.text
			val_center, val_middle, val_left, val_right = furi.center, furi.middle, furi.left, furi.right
			val_top, val_bottom, val_dur = furi.top, furi.bottom, furi.duration
			val_start, val_end, val_mid = furi.start_time, furi.end_time, furi.start_time + furi.duration / 2
			val_i, val_n = furi.i, furi.n
		elseif fx__.t_type == "Char"
			or fx__.t_type == "Translation Char" then
			val_width, val_height, val_text = char.width, char.height, char.text
			val_center, val_middle, val_left, val_right = char.center, char.middle, char.left, char.right
			val_top, val_bottom, val_dur = char.top, char.bottom, char.duration
			val_start, val_end, val_mid = char.start_time, char.end_time, char.start_time + char.duration / 2
			val_i, val_n = char.i, char.n
		end
	end
	
	function effector.pos_config( )
		Nmove = math.max( #move_x, #move_y )
		fx.move_x1 = math.round( move_x[ 1 ] or fx.pos_x, 2 )
		fx.move_y1 = math.round( move_y[ 1 ] or fx.pos_y, 2 )
		fx.move_x2 = math.round( move_x[ 2 ] or fx.move_x1, 2 )
		fx.move_y2 = math.round( move_y[ 2 ] or fx.move_y1, 2 )
		fx.move_x3 = math.round( move_x[ 3 ] or fx.move_x2, 2 )
		fx.move_y3 = math.round( move_y[ 3 ] or fx.move_y2, 2 )
		fx.move_x4 = math.round( move_x[ 4 ] or fx.move_x3, 2 )
		fx.move_y4 = math.round( move_y[ 4 ] or fx.move_y3, 2 )
		fx.angle1 = fx.move_x3
		fx.angle2 = fx.move_x4
		fx.radius1 = math.round( move_x[ 5 ] or fx.pos_x, 2 )
		fx.radius2 = math.round( move_x[ 6 ] or fx.radius1, 2 )
		tb_pos = {
			fx.move_x1, fx.move_y1, fx.move_x2, fx.move_y2, fx.move_x3, fx.move_y3,
			fx.move_x4, fx.move_y4, fx.angle1, fx.angle2, fx.radius1, fx.radius2
		}
		fx.move_l1, fx.move_r1 = fx.move_x1 - val_width / 2,  fx.move_x1 + val_width / 2
		fx.move_t1, fx.move_b1 = fx.move_y1 - val_height / 2, fx.move_y1 + val_height / 2
		fx.move_l2, fx.move_r2 = fx.move_x2 - val_width / 2,  fx.move_x2 + val_width / 2
		fx.move_t2, fx.move_b2 = fx.move_y2 - val_height / 2, fx.move_y2 + val_height / 2
		fx.move_l3, fx.move_r3 = fx.move_x3 - val_width / 2,  fx.move_x3 + val_width / 2
		fx.move_t3, fx.move_b3 = fx.move_y3 - val_height / 2, fx.move_y3 + val_height / 2
		fx.move_l4, fx.move_r4 = fx.move_x4 - val_width / 2,  fx.move_x4 + val_width / 2
		fx.move_t4, fx.move_b4 = fx.move_y4 - val_height / 2, fx.move_y4 + val_height / 2
		fx_start, fx_end, fx_mid, fx_dur = fx.start_time, fx.end_time, fx.start_time + fx.dur / 2, fx.dur
		fx_i, fx_n, fx_x, fx_y = j, maxj, fx.move_x1, fx.move_y1
		fx_left, fx_center, fx_right, fx_width  = fx.move_l1, fx.move_x1, fx.move_r1, fx.move_r1 - fx.move_l1
		fx_top, fx_middle, fx_bottom, fx_height = fx.move_t1, fx.move_y1, fx.move_b1, fx.move_b1 - fx.move_t1
	end

	function effector.run_fx( subs, sett, index )
		local meta, styles = karaskel.collect_head( subs )
		local maxi = #index
		local subtitles = subs
		----------------
		lines_ass = subs
		----------------
		ini_line, count_line_dialogue = 0, 0
		time_iii = tonumber( os.time( ) )
		for i = 1, #subtitles do
			if subtitles[ i ].class == "dialogue"
				and subtitles[ i ].effect ~= "Effector [fx]"
				and subtitles[ i ].effect ~= "fx" then
				count_line_dialogue = count_line_dialogue + 1
			end
			if subtitles[ i ].effect ~= "Effector [fx]"
				and subtitles[ i ].effect ~= "fx" then
				ini_line = ini_line + 1
			end
		end
		count_ln = 1
		idx_line = index
		count_fx = 0
		line_delete = false
		indx_delete = { }
		line_subindex = table.op( idx_line, "add", count_line_dialogue - ini_line )
		for _, i in ipairs( index ) do
			local l = subs[ i ]
			maxi = maxi - 1
			l_counter = #index - maxi
			maxil_counter = #index
			karaskel.preproc_line( subs, meta, styles, l )
			effector.do_fx( subs, meta, l, sett )
			l.comment = lines_comment
			subs[ i ] = l
			count_ln = count_ln + 1
			if line_delete == true then
				--subs.delete( i )
				table.insert( indx_delete, i )
			end 
		end
		if line_delete == true
			and #indx_delete > 0 then
			for i = 1, #indx_delete do
				subs.delete( indx_delete[ 1 ] )
			end
		end
	end

	function effector.preprosses_styles( styles, subtitles, has_selected_lines )
		effector.GUI_config[ 3 ].items = { }
		local subs = subtitles
		local astyles = { }
		for i = 1, #subtitles do
			if subtitles[ i ].class == "dialogue"
				and not subtitles[ i ].comment
				and subtitles[ i ].effect ~= "Effector [fx]"
				and subtitles[ i ].effect ~= "fx" then
				if subtitles[ i ].style ~= ""
					and not astyles[ subtitles[ i ].style ] then 
					astyles[ subtitles[ i ].style ] = true
					table.insert( effector.GUI_config[ 3 ].items, subtitles[ i ].style )
				end
			end
		end
		if #effector.GUI_config[ 3 ].items > 0 then
			table.insert( effector.GUI_config[ 3 ].items, "All Lines" )
		end
		if has_selected_lines
			and #effector.GUI_config[ 3 ].items > 0 then
			table.insert( effector.GUI_config[ 3 ].items, "Selected Lines" )
		end
	end
	
	function effector.preprosses_macro( subtitles, sett, fx__, selected_lines )
		local subs = { }
		if sett.line_style == "Selected Lines" then
			for _, i in ipairs( selected_lines ) do
				if subtitles[ i ].class == "dialogue"
					and not subtitles[ i ].comment
					and subtitles[ i ].effect ~= "Effector [fx]"
					and subtitles[ i ].effect ~= "fx" then
					table.insert( subs, i )
				end
			end
		elseif sett.line_style == "All Lines" then
			for i = 1, #subtitles do
				if subtitles[ i ].class == "dialogue"
					and not subtitles[ i ].comment
					and subtitles[ i ].effect ~= "Effector [fx]"
					and subtitles[ i ].effect ~= "fx" then
					table.insert( subs, i )
				end
			end
		else
			for i = 1, #subtitles do
				if subtitles[ i ].class == "dialogue"
					and not subtitles[ i ].comment
					and subtitles[ i ].effect ~= "Effector [fx]"
					and subtitles[ i ].effect ~= "fx"
					and sett.line_style == subtitles[ i ].style then
					table.insert( subs, i )
				end
			end
		end
		effector.preprosses_lines( subtitles )
		effector.run_fx( subtitles, sett, subs )
	end
	
	function effector.preprosses_lines( subtitles )
		meta, styles = karaskel.collect_head( subtitles )
		linefx = { }
		xres = meta.res_x or 1280
		yres = meta.res_y or 720
		DefaultKE = {
			class = "style";
			section = "[V4+ Styles]";
			raw = "Style: DefaultKE,Arial,25,&H00FFFFFF,&H000000FF,&H00000000,&H00000000,0,0,0,0,100,100,0,0,1,2,2,2,20,20,20,1";
			name = "DefaultKE";
			fontname = "Arial";
			fontsize = 25;
			color1 = "&H00FFFFFF&";
			color2 = "&H000000FF&";
			color3 = "&H00000000&";
			color4 = "&H00000000&";
			bold = false;
			italic = false;
			underline = false;
			strikeout = false;
			scale_x = 100;
			scale_y = 100;
			spacing = 0;
			angle = 0;
			borderstyle = 1;
			outline = 2;
			shadow = 2;
			alignment = 2;
			align = 2;
			margin_l = 20;
			margin_r = 20;
			margin_v = 20;
			margin_b = 20;
			margin_t = 20;
			encoding = 1
		}
		table.insert( styles, 1, DefaultKE )
		for i = 1, #subtitles do
			if subtitles[ i ].class == "dialogue"
				and subtitles[ i ].effect ~= "Effector [fx]"
				and subtitles[ i ].effect ~= "fx" then
				table.insert( linefx, subtitles[ i ] )
			end
		end
		linefx.nn = #linefx
		mmwth, mmdur = { l = { } }, { l = { } }
		for i = 1, #linefx do
			mmwth[ i ] = { wo = { }, sm = { }, sy = { }, ro = { }, hi = { }, ka = { }, ch = { }, pa = { } }
			mmdur[ i ] = { wo = { }, sm = { }, sy = { }, ro = { }, hi = { }, ka = { }, ch = { }, pa = { } }
			linefx[ i ].text = linefx[ i ].text:gsub( "(%b{})([	 ]^*)([\32-\47\58-\64]*%S+[\32-\47\58-\64]*)", " %1%3%2" )
			-- en teoría, la anterior línea corrige el error del timeo en los scripts de dejar separado el texto
			-- de la etiqueta de tags: {\k10} demo, el famoso error de "Hira nil"... ya veremos si se solucionó
			linefx[ i ].text = linefx[ i ].text:gsub( "(}#)( [ ]*{)", "%1{\\k0}%2" )
			linefx[ i ].text = linefx[ i ].text:gsub( "(}＃)( [ ]*{)", "%1{\\k0}%2" )
			l_style = styles[ tostring( linefx[ i ].style ) ] or styles[ 1 ] --> DefaultKE style
			width, height, descent, extlead	= aegisub.text_extents( l_style,
				text.remove_extra_space( text.remove_tags( linefx[ i ].text:gsub( "\\N", " " ):gsub( "  ", " " ) ) )
			)
			options_lft_line = {
				[ 1 ] = l_style.margin_l,
				[ 2 ] = (xres + l_style.margin_l - l_style.margin_r) / 2 - width / 2,
				[ 3 ] = xres - l_style.margin_r - width
			}
			options_top_line = {
				[ 1 ] = yres - l_style.margin_b - height,
				[ 2 ] = yres / 2 - height / 2,
				[ 3 ] = l_style.margin_t
			}
			------------▼ line
			linefx.ii					= i
			linefx[ i ].styleref		= l_style
			linefx[ i ].duration		= linefx[ i ].end_time - linefx[ i ].start_time
			linefx[ i ].dur				= linefx[ i ].duration
			linefx[ i ].mid_time		= linefx[ i ].start_time + linefx[ i ].duration / 2
			linefx[ i ].text_raw		= linefx[ i ].text
			linefx[ i ].text_stripped	= text.remove_extra_space( text.remove_tags( linefx[ i ].text ) )
			linefx[ i ].text			= text.remove_extra_space( text.remove_space_in_tags( linefx[ i ].text ) )
			linefx[ i ].text			= text.remove_syls_nil( linefx[ i ].text, linefx[ i ].duration )
										:gsub( "\\N", " " ):gsub( "  ", " " ):gsub( "KEclip", " " )
			linefx[ i ].width			= width
			linefx[ i ].left			= options_lft_line[ (l_style.align - 1) % 3 + 1 ]
			linefx[ i ].left2			= xres - linefx[ i ].left
			linefx[ i ].center			= linefx[ i ].left + width / 2
			linefx[ i ].center2			= xres - linefx[ i ].center
			linefx[ i ].right			= linefx[ i ].left + width
			linefx[ i ].right2			= xres - linefx[ i ].right
			linefx[ i ].height			= height
			linefx[ i ].top				= options_top_line[ ceil( l_style.align / 3 ) ]
			linefx[ i ].top2			= yres - linefx[ i ].top
			linefx[ i ].middle			= linefx[ i ].top + height / 2
			linefx[ i ].middle2			= yres - linefx[ i ].middle
			linefx[ i ].bottom			= linefx[ i ].top + height
			linefx[ i ].bottom2			= yres - linefx[ i ].bottom
			linefx[ i ].descent			= descent
			linefx[ i ].extlead			= extlead
			----------------------------------------------------------
			linefx[ i ].bold			= l_style.bold
			linefx[ i ].italic			= l_style.italic
			linefx[ i ].underline		= l_style.underline
			linefx[ i ].strikeout		= l_style.strikeout
			linefx[ i ].align			= l_style.align
			linefx[ i ].fontsize		= l_style.fontsize
			linefx[ i ].fontname		= l_style.fontname
			linefx[ i ].outline			= l_style.outline
			linefx[ i ].shadow			= l_style.shadow
			linefx[ i ].angle			= l_style.angle
			linefx[ i ].spacing			= l_style.spacing
			linefx[ i ].scale_x			= l_style.scale_x
			linefx[ i ].scale_y			= l_style.scale_y
			linefx[ i ].margin_l		= l_style.margin_l
			linefx[ i ].margin_r		= l_style.margin_r
			linefx[ i ].margin_t		= l_style.margin_t
			linefx[ i ].margin_v		= l_style.margin_t
			linefx[ i ].margin_b		= l_style.margin_b
			linefx[ i ].color1			= color_from_style( l_style.color1 )
			linefx[ i ].color2			= color_from_style( l_style.color2 )
			linefx[ i ].color3			= color_from_style( l_style.color3 )
			linefx[ i ].color4			= color_from_style( l_style.color4 )
			linefx[ i ].alpha1			= alpha_from_style( l_style.color1 )
			linefx[ i ].alpha2			= alpha_from_style( l_style.color2 )
			linefx[ i ].alpha3			= alpha_from_style( l_style.color3 )
			linefx[ i ].alpha4			= alpha_from_style( l_style.color4 )
			-- linefx[ i ].pretime
			if i == 1 
				or linefx[ i - 1 ].style ~= linefx[ i ].style then
				linefx[ i ].pretime = 0
			else
				linefx[ i ].pretime = linefx[ i ].start_time - linefx[ i - 1 ].end_time
			end
			-- linefx[ i ].posttime
			if i == #linefx
				or linefx[ i + 1 ].style ~= linefx[ i ].style then
				linefx[ i ].posttime = 0
			else
				linefx[ i ].posttime = linefx[ i + 1 ].start_time - linefx[ i ].end_time
			end
			table.insert( mmwth.l, linefx[ i ].width )
			table.insert( mmdur.l, linefx[ i ].duration )
			------------------
			local function tags_in_word( Word )
				-- retorna los tags de cada word
				local tags_word_tbl = { }
				for cap in Word:gmatch( "%b{}" ) do
					table.insert( tags_word_tbl, cap:sub( 2, -2 ) )
				end
				local word_tags_str = table.concat( tags_word_tbl )
				return "{" .. word_tags_str .. "}"
			end --linefx[ ii ].word[ word.i ].text
			------------▼ word
			words_line, words_dur	= text.text2word( linefx[ i ].text, linefx[ i ].duration )
			linefx[ i ].word		= { }
			linefx[ i ].word.n		= #words_line
			linefx[ i ].word.text	= ""
			words_left				= linefx[ i ].left
			words_start				= 0
			for k = 1, #words_line do
				linefx[ i ].word.i					= k
				linefx[ i ].word[ k ]				= { }
				linefx[ i ].word[ k ].text			= text.karaoke_true( words_line )
													and words_line[ k ]:gsub( "KEclip", " " )
													or format( "{\\k%s}%s", math.round( words_dur[ k ] / 10 ), words_line[ k ] ):gsub( "KEclip", " " )
			--	linefx[ i ].word[ k ].tags			= linefx[ i ].word[ k ].text:match( "%b{}" )
				linefx[ i ].word[ k ].tags			= tags_in_word( linefx[ i ].word[ k ].text )
				linefx[ i ].word[ k ].text_raw		= linefx[ i ].word[ k ].text:gsub( "KEclip", " " )
				linefx[ i ].word[ k ].text_stripped	= text.text2stripped( words_line[ k ] )
				linefx[ i ].word[ k ].text1			= text.remove_tags( words_line[ k ] ):gsub( "KEfx", "" )
				linefx[ i ].word[ k ].text2			= linefx[ i ].word[ k ].text_stripped:gsub( "KEfx", "" )
				linefx[ i ].word[ k ].width_t		= aegisub.text_extents( l_style, linefx[ i ].word[ k ].text1 )
				linefx[ i ].word[ k ].width			= aegisub.text_extents( l_style, linefx[ i ].word[ k ].text2 )
				linefx[ i ].word[ k ].left			= words_left
				linefx[ i ].word[ k ].center		= words_left + linefx[ i ].word[ k ].width / 2
				linefx[ i ].word[ k ].right			= words_left + linefx[ i ].word[ k ].width
				linefx[ i ].word[ k ].top			= linefx[ i ].top
				linefx[ i ].word[ k ].middle		= linefx[ i ].middle
				linefx[ i ].word[ k ].bottom		= linefx[ i ].bottom
				linefx[ i ].word[ k ].height		= linefx[ i ].height
				linefx[ i ].word[ k ].duration		= words_dur[ k ]
				linefx[ i ].word[ k ].dur			= words_dur[ k ]
				linefx[ i ].word[ k ].start_time	= words_start
				linefx[ i ].word[ k ].end_time		= linefx[ i ].word[ k ].start_time + linefx[ i ].word[ k ].duration
				linefx[ i ].word[ k ].mid_time		= linefx[ i ].word[ k ].start_time + linefx[ i ].word[ k ].duration / 2
				linefx[ i ].word.text				= linefx[ i ].word.text .. linefx[i].word[k].text:gsub( "KEfx", "" )
				words_left 							= words_left  + linefx[ i ].word[ k ].width_t
				words_start							= words_start + linefx[ i ].word[ k ].duration
				table.insert( mmwth[ i ].wo, linefx[ i ].word[ k ].width )
				table.insert( mmdur[ i ].wo, linefx[ i ].word[ k ].dur )
			end
			--
			linefx[ i ].word.tags		= { }
			linefx[ i ].word.width		= { }
			linefx[ i ].word.left		= { }
			linefx[ i ].word.center		= { }
			linefx[ i ].word.right		= { }
			linefx[ i ].word.top		= { }
			linefx[ i ].word.middle		= { }
			linefx[ i ].word.bottom		= { }
			linefx[ i ].word.height		= { }
			linefx[ i ].word.duration	= { }
			linefx[ i ].word.dur		= { }
			linefx[ i ].word.start_time	= { }
			linefx[ i ].word.end_time	= { }
			for k = 1, #words_line do
				linefx[ i ].word.tags[ k ]			= linefx[ i ].word[ k ].tags
				linefx[ i ].word.width[ k ]			= linefx[ i ].word[ k ].width
				linefx[ i ].word.left[ k ]			= linefx[ i ].word[ k ].left
				linefx[ i ].word.center[ k ]		= linefx[ i ].word[ k ].center
				linefx[ i ].word.right[ k ]			= linefx[ i ].word[ k ].right
				linefx[ i ].word.top[ k ]			= linefx[ i ].word[ k ].top
				linefx[ i ].word.middle[ k ]		= linefx[ i ].word[ k ].middle
				linefx[ i ].word.bottom[ k ]		= linefx[ i ].word[ k ].bottom
				linefx[ i ].word.height[ k ]		= linefx[ i ].word[ k ].height
				linefx[ i ].word.duration[ k ]		= linefx[ i ].word[ k ].duration
				linefx[ i ].word.dur[ k ]			= linefx[ i ].word[ k ].dur
				linefx[ i ].word.start_time[ k ]	= linefx[ i ].word[ k ].start_time
				linefx[ i ].word.end_time[ k ]		= linefx[ i ].word[ k ].end_time
			end
			--
			for k = #words_line + 1, 2 * #words_line do
				linefx[ i ].word[ k ] = linefx[ i ].word[ #words_line ]
			end
			for k = -#words_line + 1, 0 do
				linefx[ i ].word[ k ] = linefx[ i ].word[ 1 ]
			end
			
			------------▼ syl
			syls_line, syls_dur 	= text.text2syl( linefx[ i ].text, linefx[ i ].duration )
			linefx[ i ].syl			= { }
			linefx[ i ].syl.n		= #syls_line
			linefx[ i ].syl.text	= ""
			syls_left				= linefx[ i ].left
			syls_start				= 0
			for k = 1, #syls_line do
				linefx[ i ].syl.i					= k
				linefx[ i ].syl[ k ]				= { }
				linefx[ i ].syl[ k ].text			= text.karaoke_true( syls_line )
													and syls_line[ k ]:gsub( "KEclip", " " )
													or format( "{\\k%s}%s", math.round( syls_dur[ k ] / 10 ), syls_line[ k ] ):gsub( "KEclip", " " )
				linefx[ i ].syl[ k ].tags			= linefx[ i ].syl[ k ].text:match( "%b{}" ) --febraury 20th 2017
				linefx[ i ].syl[ k ].text_raw		= linefx[ i ].syl[ k ].text:gsub( "KEclip", " " )
				linefx[ i ].syl[ k ].text_stripped	= text.text2stripped( syls_line[ k ] )
				linefx[ i ].syl[ k ].text1			= text.remove_tags( syls_line[ k ] ):gsub( "KEfx", "" )
				linefx[ i ].syl[ k ].text2			= linefx[ i ].syl[ k ].text_stripped:gsub( "KEfx", "" )
				linefx[ i ].syl[ k ].width_t		= aegisub.text_extents( l_style, linefx[ i ].syl[ k ].text1 )
				linefx[ i ].syl[ k ].width			= aegisub.text_extents( l_style, linefx[ i ].syl[ k ].text2 )
				linefx[ i ].syl[ k ].left			= syls_left
				linefx[ i ].syl[ k ].center			= syls_left + linefx[ i ].syl[ k ].width / 2
				linefx[ i ].syl[ k ].right			= syls_left + linefx[ i ].syl[ k ].width
				linefx[ i ].syl[ k ].top			= linefx[ i ].top
				linefx[ i ].syl[ k ].middle			= linefx[ i ].middle
				linefx[ i ].syl[ k ].bottom			= linefx[ i ].bottom
				linefx[ i ].syl[ k ].height			= linefx[ i ].height
				linefx[ i ].syl[ k ].duration		= syls_dur[ k ]
				linefx[ i ].syl[ k ].dur			= syls_dur[ k ]
				linefx[ i ].syl[ k ].start_time		= syls_start
				linefx[ i ].syl[ k ].end_time		= linefx[ i ].syl[ k ].start_time + linefx[ i ].syl[ k ].duration
				linefx[ i ].syl[ k ].mid_time		= linefx[ i ].syl[ k ].start_time + linefx[ i ].syl[ k ].duration / 2
				linefx[ i ].syl.text				= linefx[ i ].syl.text .. linefx[ i ].syl[ k ].text:gsub( "KEfx", "" )
				syls_left 							= syls_left  + linefx[ i ].syl[ k ].width_t
				syls_start							= syls_start + linefx[ i ].syl[ k ].duration
				table.insert( mmwth[ i ].sy, linefx[ i ].syl[ k ].width )
				table.insert( mmdur[ i ].sy, linefx[ i ].syl[ k ].dur )
			end
			--
			linefx[ i ].syl.tags		= { }
			linefx[ i ].syl.width		= { }
			linefx[ i ].syl.left		= { }
			linefx[ i ].syl.center		= { }
			linefx[ i ].syl.right		= { }
			linefx[ i ].syl.top			= { }
			linefx[ i ].syl.middle		= { }
			linefx[ i ].syl.bottom		= { }
			linefx[ i ].syl.height		= { }
			linefx[ i ].syl.duration	= { }
			linefx[ i ].syl.dur			= { }
			linefx[ i ].syl.start_time	= { }
			linefx[ i ].syl.end_time	= { }
			for k = 1, #syls_line do
				linefx[ i ].syl.tags[ k ]		= linefx[ i ].syl[ k ].tags
				linefx[ i ].syl.width[ k ]		= linefx[ i ].syl[ k ].width
				linefx[ i ].syl.left[ k ]		= linefx[ i ].syl[ k ].left
				linefx[ i ].syl.center[ k ]		= linefx[ i ].syl[ k ].center
				linefx[ i ].syl.right[ k ]		= linefx[ i ].syl[ k ].right
				linefx[ i ].syl.top[ k ]		= linefx[ i ].syl[ k ].top
				linefx[ i ].syl.middle[ k ]		= linefx[ i ].syl[ k ].middle
				linefx[ i ].syl.bottom[ k ]		= linefx[ i ].syl[ k ].bottom
				linefx[ i ].syl.height[ k ]		= linefx[ i ].syl[ k ].height
				linefx[ i ].syl.duration[ k ]	= linefx[ i ].syl[ k ].duration
				linefx[ i ].syl.dur[ k ]		= linefx[ i ].syl[ k ].dur
				linefx[ i ].syl.start_time[ k ]	= linefx[ i ].syl[ k ].start_time
				linefx[ i ].syl.end_time[ k ]	= linefx[ i ].syl[ k ].end_time
			end
			--
			for k = #syls_line + 1, 2 * #syls_line do
				linefx[ i ].syl[ k ] = linefx[ i ].syl[ #syls_line ]
			end
			for k = -#syls_line + 1, 0 do
				linefx[ i ].syl[ k ] = linefx[ i ].syl[ 1 ]
			end
			linefx[ i ].kara = linefx[ i ].syl
			
			------------▼ syl multi
			sylmulti_line, sylmulti_dur	= text.text2syl( linefx[ i ].text, linefx[ i ].duration )
			linefx[ i ].sylmulti		= { n = #sylmulti_line, text = "" }
			linefx_sylmulti_wdth		= 0
			sylmulti_start				= 0
			for k = 1, #sylmulti_line do
				linefx[ i ].sylmulti.i					= k
				linefx[ i ].sylmulti[ k ]				= { }
				linefx[ i ].sylmulti[ k ].tag			= sylmulti_line[ k ]:match( "%{.-%}" ) or ""
				linefx[ i ].sylmulti[ k ].text			= text.karaoke_true( sylmulti_line )
														and sylmulti_line[ k ]:gsub( "KEclip", " " )
														or format( "{\\k%s}%s",
															math.round( sylmulti_dur[ k ] / 10 ), sylmulti_line[ k ]
														):gsub( "KEclip", " " )
				linefx[ i ].sylmulti[ k ].tags			= linefx[ i ].sylmulti[ k ].text:match( "%b{}" )
				linefx[ i ].sylmulti[ k ].text_raw		= linefx[ i ].sylmulti[ k ].text:gsub( "KEclip", " " )
				linefx[ i ].sylmulti[ k ].text_stripped	= text.text2stripped( linefx[ i ].sylmulti[ k ].text )
				linefx[ i ].sylmulti[ k ].text1			= text.remove_tags( linefx[ i ].sylmulti[ k ].text ):gsub( "KEfx", "" )
				linefx[ i ].sylmulti[ k ].text2			= linefx[ i ].sylmulti[ k ].text_stripped:gsub( "KEfx", "" )
				linefx[ i ].sylmulti[ k ].width_t		= aegisub.text_extents( l_style, linefx[ i ].sylmulti[ k ].text1 )
				linefx[ i ].sylmulti[ k ].width			= aegisub.text_extents( l_style, linefx[ i ].sylmulti[ k ].text2 )
				if linefx[ i ].sylmulti[ k ].text2 == "#"
					or linefx[ i ].sylmulti[ k ].text2 == "＃" then
					linefx[ i ].sylmulti.i					= k - 1
					linefx[ i ].sylmulti[ k ].text			= linefx[ i ].sylmulti[ k - 1 ].text
					linefx[ i ].sylmulti[ k ].text_raw		= linefx[ i ].sylmulti[ k - 1 ].text_raw
					linefx[ i ].sylmulti[ k ].text_stripped	= linefx[ i ].sylmulti[ k - 1 ].text_stripped
					linefx[ i ].sylmulti[ k ].text1			= linefx[ i ].sylmulti[ k - 1 ].text1
					linefx[ i ].sylmulti[ k ].width			= linefx[ i ].sylmulti[ k - 1 ].width
					linefx[ i ].sylmulti[ k ].width_t		= 0
				end
				linefx[ i ].sylmulti.text	= linefx[i].sylmulti.text .. linefx[ i ].sylmulti[ k ].text:gsub( "KEfx", "" )
				linefx_sylmulti_wdth		= linefx_sylmulti_wdth + linefx[ i ].sylmulti[ k ].width_t
			end
			local options_lft_sylmulti = {
				[ 1 ] = l_style.margin_l,
				[ 2 ] = (xres + l_style.margin_l - l_style.margin_r) / 2 - linefx_sylmulti_wdth / 2,
				[ 3 ] = xres - l_style.margin_r - linefx_sylmulti_wdth
			}
			local sylmulti_left = options_lft_sylmulti[ (l_style.align - 1) % 3 + 1 ]
			for k = 1, #sylmulti_line do
				linefx[ i ].sylmulti[ k ].left			= sylmulti_left
				linefx[ i ].sylmulti[ k ].center		= sylmulti_left + linefx[ i ].sylmulti[ k ].width / 2
				linefx[ i ].sylmulti[ k ].right			= sylmulti_left + linefx[ i ].sylmulti[ k ].width
				linefx[ i ].sylmulti[ k ].top			= linefx[ i ].top
				linefx[ i ].sylmulti[ k ].middle		= linefx[ i ].middle
				linefx[ i ].sylmulti[ k ].bottom		= linefx[ i ].bottom
				linefx[ i ].sylmulti[ k ].height		= linefx[ i ].height
				linefx[ i ].sylmulti[ k ].duration		= sylmulti_dur[ k ]
				linefx[ i ].sylmulti[ k ].dur			= sylmulti_dur[ k ]
				linefx[ i ].sylmulti[ k ].start_time	= sylmulti_start
				linefx[ i ].sylmulti[ k ].end_time		= linefx[ i ].sylmulti[ k ].start_time + linefx[ i ].sylmulti[ k ].duration
				linefx[ i ].sylmulti[ k ].mid_time		= linefx[ i ].sylmulti[ k ].start_time + linefx[ i ].sylmulti[ k ].duration / 2
				if linefx[ i ].sylmulti[ k ].text2 == "#"
					or linefx[ i ].sylmulti[ k ].text2 == "＃" then
					linefx[ i ].sylmulti[ k ].text2		= linefx[ i ].sylmulti[ k - 1 ].text2
					linefx[ i ].sylmulti[ k ].left		= linefx[ i ].sylmulti[ k - 1 ].left
					linefx[ i ].sylmulti[ k ].center	= linefx[ i ].sylmulti[ k - 1 ].center
					linefx[ i ].sylmulti[ k ].right		= linefx[ i ].sylmulti[ k - 1 ].right
				end
				sylmulti_left	= sylmulti_left  + linefx[ i ].sylmulti[ k ].width_t
				sylmulti_start	= sylmulti_start + linefx[ i ].sylmulti[ k ].duration
				table.insert( mmwth[ i ].sm, linefx[ i ].sylmulti[ k ].width )
				table.insert( mmdur[ i ].sm, linefx[ i ].sylmulti[ k ].dur )
			end
			--
			linefx[ i ].sylmulti.width		= { }
			linefx[ i ].sylmulti.left		= { }
			linefx[ i ].sylmulti.center		= { }
			linefx[ i ].sylmulti.right		= { }
			linefx[ i ].sylmulti.top		= { }
			linefx[ i ].sylmulti.middle		= { }
			linefx[ i ].sylmulti.bottom		= { }
			linefx[ i ].sylmulti.height		= { }
			linefx[ i ].sylmulti.duration	= { }
			linefx[ i ].sylmulti.dur		= { }
			linefx[ i ].sylmulti.start_time	= { }
			linefx[ i ].sylmulti.end_time	= { }
			for k = 1, #sylmulti_line do
				linefx[ i ].sylmulti.width[ k ]			= linefx[ i ].sylmulti[ k ].width
				linefx[ i ].sylmulti.left[ k ]			= linefx[ i ].sylmulti[ k ].left
				linefx[ i ].sylmulti.center[ k ]		= linefx[ i ].sylmulti[ k ].center
				linefx[ i ].sylmulti.right[ k ]			= linefx[ i ].sylmulti[ k ].right
				linefx[ i ].sylmulti.top[ k ]			= linefx[ i ].sylmulti[ k ].top
				linefx[ i ].sylmulti.middle[ k ]		= linefx[ i ].sylmulti[ k ].middle
				linefx[ i ].sylmulti.bottom[ k ]		= linefx[ i ].sylmulti[ k ].bottom
				linefx[ i ].sylmulti.height[ k ]		= linefx[ i ].sylmulti[ k ].height
				linefx[ i ].sylmulti.duration[ k ]		= linefx[ i ].sylmulti[ k ].duration
				linefx[ i ].sylmulti.dur[ k ]			= linefx[ i ].sylmulti[ k ].dur
				linefx[ i ].sylmulti.start_time[ k ]	= linefx[ i ].sylmulti[ k ].start_time
				linefx[ i ].sylmulti.end_time[ k ]		= linefx[ i ].sylmulti[ k ].end_time
			end
			--
			for k = #sylmulti_line + 1, 2 * #sylmulti_line do
				linefx[ i ].sylmulti[ k ] = linefx[ i ].sylmulti[ #sylmulti_line ]
			end
			for k = -#sylmulti_line + 1, 0 do
				linefx[ i ].sylmulti[ k ] = linefx[ i ].sylmulti[ 1 ]
			end
			for k = 1, #sylmulti_line do
				linefx[ i ].sylmulti[ k ].prespacewidth  = linefx[ i ].sylmulti[ k ].left - linefx[ i ].sylmulti[ k - 1 ].right
				linefx[ i ].sylmulti[ k ].postspacewidth = linefx[ i ].sylmulti[ k + 1 ].left - linefx[ i ].sylmulti[ k ].right
			end
			
			------------▼ text.romaji
			roma_line, roma_dur 	= text.text2syl( linefx[ i ].text, linefx[ i ].duration )
			linefx[ i ].roma		= { }
			linefx[ i ].roma.n		= #roma_line
			linefx[ i ].roma.text	= ""
			linefx_roma_wdth		= 0
			roma_start				= 0
			for k = 1, #roma_line do
				linefx[ i ].roma.i					= k
				linefx[ i ].roma[ k ]				= { }
				linefx[ i ].roma[ k ].tag			= roma_line[ k ]:match( "%{.-%}" ) or ""
				linefx[ i ].roma[ k ].text			= linefx[ i ].roma[ k ].tag:gsub( "KEclip", " " ) .. text.kana2romaji( text.remove_tags( roma_line[ k ] ) )
				linefx[ i ].roma[ k ].tags			= linefx[ i ].roma[ k ].text:match( "%b{}" )
				linefx[ i ].roma[ k ].text_raw		= linefx[ i ].roma[ k ].text:gsub( "KEclip", " " )
				linefx[ i ].roma[ k ].text_stripped	= text.text2stripped( linefx[ i ].roma[ k ].text )
				linefx[ i ].roma[ k ].text1			= text.remove_tags( linefx[ i ].roma[ k ].text ):gsub( "KEfx", "" )
				linefx[ i ].roma[ k ].text2			= linefx[ i ].roma[ k ].text_stripped:gsub( "KEfx", "" )
				linefx[ i ].roma[ k ].width_t		= aegisub.text_extents( l_style, linefx[ i ].roma[ k ].text1 )
				linefx[ i ].roma[ k ].width			= aegisub.text_extents( l_style, linefx[ i ].roma[ k ].text2 )
				linefx[ i ].roma.text				= linefx[ i ].roma.text .. linefx[ i ].roma[ k ].text:gsub( "KEfx", "" )
				linefx_roma_wdth					= linefx_roma_wdth + linefx[ i ].roma[ k ].width_t
			end
			options_lft_roma = {
				[ 1 ] = l_style.margin_l,
				[ 2 ] = (xres + l_style.margin_l - l_style.margin_r) / 2 - linefx_roma_wdth / 2,
				[ 3 ] = xres - l_style.margin_r - linefx_roma_wdth
			}
			roma_left = options_lft_roma[ (l_style.align - 1) % 3 + 1 ]
			for k = 1, #roma_line do
				linefx[ i ].roma[ k ].left			= roma_left
				linefx[ i ].roma[ k ].center		= roma_left + linefx[ i ].roma[ k ].width / 2
				linefx[ i ].roma[ k ].right			= roma_left + linefx[ i ].roma[ k ].width
				linefx[ i ].roma[ k ].top			= linefx[ i ].top
				linefx[ i ].roma[ k ].middle		= linefx[ i ].middle
				linefx[ i ].roma[ k ].bottom		= linefx[ i ].bottom
				linefx[ i ].roma[ k ].height		= linefx[ i ].height
				linefx[ i ].roma[ k ].duration		= roma_dur[ k ]
				linefx[ i ].roma[ k ].dur			= roma_dur[ k ]
				linefx[ i ].roma[ k ].start_time	= roma_start
				linefx[ i ].roma[ k ].end_time		= linefx[ i ].roma[ k ].start_time + linefx[ i ].roma[ k ].duration
				linefx[ i ].roma[ k ].mid_time		= linefx[ i ].roma[ k ].start_time + linefx[ i ].roma[ k ].duration / 2
				roma_left 							= roma_left  + linefx[ i ].roma[ k ].width_t
				roma_start							= roma_start + linefx[ i ].roma[ k ].duration
				table.insert( mmwth[ i ].ro, linefx[ i ].roma[ k ].width )
				table.insert( mmdur[ i ].ro, linefx[ i ].roma[ k ].dur )
			end
			--
			linefx[ i ].roma.width		= { }
			linefx[ i ].roma.left		= { }
			linefx[ i ].roma.center		= { }
			linefx[ i ].roma.right		= { }
			linefx[ i ].roma.top		= { }
			linefx[ i ].roma.middle		= { }
			linefx[ i ].roma.bottom		= { }
			linefx[ i ].roma.height		= { }
			linefx[ i ].roma.duration	= { }
			linefx[ i ].roma.dur		= { }
			linefx[ i ].roma.start_time	= { }
			linefx[ i ].roma.end_time	= { }
			for k = 1, #roma_line do
				linefx[ i ].roma.width[ k ]			= linefx[ i ].roma[ k ].width
				linefx[ i ].roma.left[ k ]			= linefx[ i ].roma[ k ].left
				linefx[ i ].roma.center[ k ]		= linefx[ i ].roma[ k ].center
				linefx[ i ].roma.right[ k ]			= linefx[ i ].roma[ k ].right
				linefx[ i ].roma.top[ k ]			= linefx[ i ].roma[ k ].top
				linefx[ i ].roma.middle[ k ]		= linefx[ i ].roma[ k ].middle
				linefx[ i ].roma.bottom[ k ]		= linefx[ i ].roma[ k ].bottom
				linefx[ i ].roma.height[ k ]		= linefx[ i ].roma[ k ].height
				linefx[ i ].roma.duration[ k ]		= linefx[ i ].roma[ k ].duration
				linefx[ i ].roma.dur[ k ]			= linefx[ i ].roma[ k ].dur
				linefx[ i ].roma.start_time[ k ]	= linefx[ i ].roma[ k ].start_time
				linefx[ i ].roma.end_time[ k ]		= linefx[ i ].roma[ k ].end_time
			end
			--
			for k = #roma_line + 1, 2 * #roma_line do
				linefx[ i ].roma[ k ] = linefx[ i ].roma[ #roma_line ]
			end
			for k = -#roma_line + 1, 0 do
				linefx[ i ].roma[ k ] = linefx[ i ].roma[ 1 ]
			end

			------------▼ text.hiragana
			hira_line, hira_dur 	= text.text2syl( linefx[ i ].text, linefx[ i ].duration )
			linefx[ i ].hira		= { }
			linefx[ i ].hira.n		= #hira_line
			linefx[ i ].hira.text	= ""
			linefx_hira_wdth		= 0
			hira_start				= 0
			for k = 1, #hira_line do
				linefx[ i ].hira.i					= k
				linefx[ i ].hira[ k ]				= { }
				linefx[ i ].hira[ k ].tag			= hira_line[ k ]:match( "%{.-%}" ) or ""
				linefx[ i ].hira[ k ].text			= linefx[ i ].hira[ k ].tag:gsub( "KEclip", " " ) .. text.syl2hiragana( text.remove_tags( hira_line[ k ] ) )
				linefx[ i ].hira[ k ].tags			= linefx[ i ].hira[ k ].text:match( "%b{}" )
				linefx[ i ].hira[ k ].text_raw		= linefx[ i ].hira[ k ].text:gsub( "KEclip", " " )
				linefx[ i ].hira[ k ].text_stripped	= text.text2stripped( linefx[ i ].hira[ k ].text )
				linefx[ i ].hira[ k ].text1			= text.remove_tags( linefx[ i ].hira[ k ].text ):gsub( "KEfx", "" )
				linefx[ i ].hira[ k ].text2			= linefx[ i ].hira[ k ].text_stripped:gsub( "KEfx", "" )
				linefx[ i ].hira[ k ].width_t		= aegisub.text_extents( l_style, linefx[ i ].hira[ k ].text1 )
				linefx[ i ].hira[ k ].width			= aegisub.text_extents( l_style, linefx[ i ].hira[ k ].text2 )
				linefx[ i ].hira.text				= linefx[ i ].hira.text .. linefx[ i ].hira[ k ].text:gsub( "KEfx", "" )
				linefx_hira_wdth					= linefx_hira_wdth + linefx[ i ].hira[ k ].width_t
			end
			options_lft_hira = {
				[ 1 ] = l_style.margin_l,
				[ 2 ] = (xres + l_style.margin_l - l_style.margin_r) / 2 - linefx_hira_wdth / 2,
				[ 3 ] = xres - l_style.margin_r - linefx_hira_wdth
			}
			hira_left = options_lft_hira[ (l_style.align - 1) % 3 + 1 ]
			for k = 1, #hira_line do
				linefx[ i ].hira[ k ].left			= hira_left
				linefx[ i ].hira[ k ].center		= hira_left + linefx[ i ].hira[ k ].width / 2
				linefx[ i ].hira[ k ].right			= hira_left + linefx[ i ].hira[ k ].width
				linefx[ i ].hira[ k ].top			= linefx[ i ].top
				linefx[ i ].hira[ k ].middle		= linefx[ i ].middle
				linefx[ i ].hira[ k ].bottom		= linefx[ i ].bottom
				linefx[ i ].hira[ k ].height		= linefx[ i ].height
				linefx[ i ].hira[ k ].duration		= hira_dur[ k ]
				linefx[ i ].hira[ k ].dur			= hira_dur[ k ]
				linefx[ i ].hira[ k ].start_time	= hira_start
				linefx[ i ].hira[ k ].end_time		= linefx[ i ].hira[ k ].start_time + linefx[ i ].hira[ k ].duration
				linefx[ i ].hira[ k ].mid_time		= linefx[ i ].hira[ k ].start_time + linefx[ i ].hira[ k ].duration / 2
				hira_left 		 					= hira_left  + linefx[ i ].hira[ k ].width_t
				hira_start							= hira_start + linefx[ i ].hira[ k ].duration
				table.insert( mmwth[ i ].hi, linefx[ i ].hira[ k ].width )
				table.insert( mmdur[ i ].hi, linefx[ i ].hira[ k ].dur )
			end
			--
			linefx[ i ].hira.width		= { }
			linefx[ i ].hira.left		= { }
			linefx[ i ].hira.center		= { }
			linefx[ i ].hira.right		= { }
			linefx[ i ].hira.top		= { }
			linefx[ i ].hira.middle		= { }
			linefx[ i ].hira.bottom		= { }
			linefx[ i ].hira.height		= { }
			linefx[ i ].hira.duration	= { }
			linefx[ i ].hira.dur		= { }
			linefx[ i ].hira.start_time	= { }
			linefx[ i ].hira.end_time	= { }
			for k = 1, #hira_line do
				linefx[ i ].hira.width[ k ]			= linefx[ i ].hira[ k ].width
				linefx[ i ].hira.left[ k ]			= linefx[ i ].hira[ k ].left
				linefx[ i ].hira.center[ k ]		= linefx[ i ].hira[ k ].center
				linefx[ i ].hira.right[ k ]			= linefx[ i ].hira[ k ].right
				linefx[ i ].hira.top[ k ]			= linefx[ i ].hira[ k ].top
				linefx[ i ].hira.middle[ k ]		= linefx[ i ].hira[ k ].middle
				linefx[ i ].hira.bottom[ k ]		= linefx[ i ].hira[ k ].bottom
				linefx[ i ].hira.height[ k ]		= linefx[ i ].hira[ k ].height
				linefx[ i ].hira.duration[ k ]		= linefx[ i ].hira[ k ].duration
				linefx[ i ].hira.dur[ k ]			= linefx[ i ].hira[ k ].dur
				linefx[ i ].hira.start_time[ k ]	= linefx[ i ].hira[ k ].start_time
				linefx[ i ].hira.end_time[ k ]		= linefx[ i ].hira[ k ].end_time
			end
			--
			for k = #hira_line + 1, 2 * #hira_line do
				linefx[ i ].hira[ k ] = linefx[ i ].hira[ #hira_line ]
			end
			for k = -#hira_line + 1, 0 do
				linefx[ i ].hira[ k ] = linefx[ i ].hira[ 1 ]
			end

			------------▼ text.katakana
			kata_line, kata_dur 	= text.text2syl( linefx[ i ].text, linefx[ i ].duration )
			linefx[ i ].kata		= { }
			linefx[ i ].kata.n		= #kata_line
			linefx[ i ].kata.text	= ""
			linefx_kata_wdth		= 0
			kata_start				= 0
			for k = 1, #kata_line do
				linefx[ i ].kata.i					= k
				linefx[ i ].kata[ k ]				= { }
				linefx[ i ].kata[ k ].tag			= kata_line[ k ]:match( "%{.-%}" ) or ""
				linefx[ i ].kata[ k ].text			= linefx[ i ].kata[ k ].tag:gsub( "KEclip", " " ) .. text.syl2katakana( text.remove_tags( kata_line[ k ] ) )
				linefx[ i ].kata[ k ].tags			= linefx[ i ].kata[ k ].text:match( "%b{}" )
				linefx[ i ].kata[ k ].text_raw		= linefx[ i ].kata[ k ].text:gsub( "KEclip", " " )
				linefx[ i ].kata[ k ].text_stripped	= text.text2stripped( linefx[ i ].kata[ k ].text )
				linefx[ i ].kata[ k ].text1			= text.remove_tags( linefx[ i ].kata[ k ].text ):gsub( "KEfx", "" )
				linefx[ i ].kata[ k ].text2			= linefx[ i ].kata[ k ].text_stripped:gsub( "KEfx", "" )
				linefx[ i ].kata[ k ].width_t		= aegisub.text_extents( l_style, linefx[ i ].kata[ k ].text1 )
				linefx[ i ].kata[ k ].width			= aegisub.text_extents( l_style, linefx[ i ].kata[ k ].text2 )
				linefx[ i ].kata.text				= linefx[ i ].kata.text .. linefx[ i ].kata[ k ].text:gsub( "KEfx", "" )
				linefx_kata_wdth					= linefx_kata_wdth + linefx[ i ].kata[ k ].width_t
			end
			options_lft_kata = {
				[ 1 ] = l_style.margin_l,
				[ 2 ] = (xres + l_style.margin_l - l_style.margin_r) / 2 - linefx_kata_wdth / 2,
				[ 3 ] = xres - l_style.margin_r - linefx_kata_wdth
			}
			kata_left = options_lft_kata[ (l_style.align - 1) % 3 + 1 ]
			for k = 1, #kata_line do
				linefx[ i ].kata[ k ].left			= kata_left
				linefx[ i ].kata[ k ].center		= kata_left + linefx[ i ].kata[ k ].width / 2
				linefx[ i ].kata[ k ].right			= kata_left + linefx[ i ].kata[ k ].width
				linefx[ i ].kata[ k ].top			= linefx[ i ].top
				linefx[ i ].kata[ k ].middle		= linefx[ i ].middle
				linefx[ i ].kata[ k ].bottom		= linefx[ i ].bottom
				linefx[ i ].kata[ k ].height		= linefx[ i ].height
				linefx[ i ].kata[ k ].duration		= kata_dur[ k ]
				linefx[ i ].kata[ k ].dur			= kata_dur[ k ]
				linefx[ i ].kata[ k ].start_time	= kata_start
				linefx[ i ].kata[ k ].end_time		= linefx[ i ].kata[ k ].start_time + linefx[ i ].kata[ k ].duration
				linefx[ i ].kata[ k ].mid_time		= linefx[ i ].kata[ k ].start_time + linefx[ i ].kata[ k ].duration / 2
				kata_left 							= kata_left  + linefx[ i ].kata[ k ].width_t
				kata_start							= kata_start + linefx[ i ].kata[ k ].duration
				table.insert( mmwth[ i ].ka, linefx[ i ].kata[ k ].width )
				table.insert( mmdur[ i ].ka, linefx[ i ].kata[ k ].dur )
			end
			--
			linefx[ i ].kata.width		= { }
			linefx[ i ].kata.left		= { }
			linefx[ i ].kata.center		= { }
			linefx[ i ].kata.right		= { }
			linefx[ i ].kata.top		= { }
			linefx[ i ].kata.middle		= { }
			linefx[ i ].kata.bottom		= { }
			linefx[ i ].kata.height		= { }
			linefx[ i ].kata.duration	= { }
			linefx[ i ].kata.dur		= { }
			linefx[ i ].kata.start_time	= { }
			linefx[ i ].kata.end_time	= { }
			for k = 1, #kata_line do
				linefx[ i ].kata.width[ k ]			= linefx[ i ].kata[ k ].width
				linefx[ i ].kata.left[ k ]			= linefx[ i ].kata[ k ].left
				linefx[ i ].kata.center[ k ]		= linefx[ i ].kata[ k ].center
				linefx[ i ].kata.right[ k ]			= linefx[ i ].kata[ k ].right
				linefx[ i ].kata.top[ k ]			= linefx[ i ].kata[ k ].top
				linefx[ i ].kata.middle[ k ]		= linefx[ i ].kata[ k ].middle
				linefx[ i ].kata.bottom[ k ]		= linefx[ i ].kata[ k ].bottom
				linefx[ i ].kata.height[ k ]		= linefx[ i ].kata[ k ].height
				linefx[ i ].kata.duration[ k ]		= linefx[ i ].kata[ k ].duration
				linefx[ i ].kata.dur[ k ]			= linefx[ i ].kata[ k ].dur
				linefx[ i ].kata.start_time[ k ]	= linefx[ i ].kata[ k ].start_time
				linefx[ i ].kata.end_time[ k ]		= linefx[ i ].kata[ k ].end_time
			end
			--
			for k = #kata_line + 1, 2 * #kata_line do
				linefx[ i ].kata[ k ] = linefx[ i ].kata[ #kata_line ]
			end
			for k = -#kata_line + 1, 0 do
				linefx[ i ].kata[ k ] = linefx[ i ].kata[ 1 ]
			end

			------------▼ char
			chars_line, chars_dur	= text.text2char( linefx[ i ].text, linefx[ i ].duration )
			linefx[ i ].char		= { }
			linefx[ i ].char.n		= #chars_line
			linefx[ i ].char.text	= ""
			chars_left				= linefx[ i ].left
			chars_start				= 0
			for k = 1, #chars_line do
				linefx[ i ].char.i					= k
				linefx[ i ].char[ k ]				= { }
				linefx[ i ].char[ k ].text			= format( "{\\k%s}%s", math.round( chars_dur[ k ] / 10 ), chars_line[ k ] ):gsub( "KEclip", " " )
				linefx[ i ].char[ k ].tags			= linefx[ i ].char[ k ].text:match( "%b{}" )
				linefx[ i ].char[ k ].text_raw		= linefx[ i ].char[ k ].text:gsub( "KEclip", " " )
				linefx[ i ].char[ k ].text_stripped	= text.text2stripped( chars_line[ k ] )
				linefx[ i ].char[ k ].text1			= text.remove_tags( chars_line[ k ] ):gsub( "KEfx", "" )
				linefx[ i ].char[ k ].text2			= linefx[ i ].char[ k ].text_stripped:gsub( "KEfx", "" )
				linefx[ i ].char[ k ].width_t		= aegisub.text_extents( l_style, linefx[ i ].char[ k ].text1 )
				linefx[ i ].char[ k ].width			= aegisub.text_extents( l_style, linefx[ i ].char[ k ].text2 )
				linefx[ i ].char[ k ].left			= chars_left
				linefx[ i ].char[ k ].center		= chars_left + linefx[ i ].char[ k ].width / 2
				linefx[ i ].char[ k ].right			= chars_left + linefx[ i ].char[ k ].width
				linefx[ i ].char[ k ].top			= linefx[ i ].top
				linefx[ i ].char[ k ].middle		= linefx[ i ].middle
				linefx[ i ].char[ k ].bottom		= linefx[ i ].bottom
				linefx[ i ].char[ k ].height		= linefx[ i ].height
				linefx[ i ].char[ k ].duration		= chars_dur[ k ]
				linefx[ i ].char[ k ].dur			= chars_dur[ k ]
				linefx[ i ].char[ k ].start_time	= chars_start
				linefx[ i ].char[ k ].end_time		= linefx[ i ].char[ k ].start_time + linefx[ i ].char[ k ].duration
				linefx[ i ].char[ k ].mid_time		= linefx[ i ].char[ k ].start_time + linefx[ i ].char[ k ].duration / 2
				linefx[ i ].char.text				= linefx[ i ].char.text .. linefx[ i ].char[ k ].text:gsub( "KEfx", "" )
				chars_left 							= chars_left  + linefx[ i ].char[ k ].width_t
				chars_start							= chars_start + linefx[ i ].char[ k ].duration
				table.insert( mmwth[ i ].ch, linefx[ i ].char[ k ].width )
				table.insert( mmdur[ i ].ch, linefx[ i ].char[ k ].dur )
			end
			--
			linefx[ i ].char.tags		= { }
			linefx[ i ].char.width		= { }
			linefx[ i ].char.left		= { }
			linefx[ i ].char.center		= { }
			linefx[ i ].char.right		= { }
			linefx[ i ].char.top		= { }
			linefx[ i ].char.middle		= { }
			linefx[ i ].char.bottom		= { }
			linefx[ i ].char.height		= { }
			linefx[ i ].char.duration	= { }
			linefx[ i ].char.dur		= { }
			linefx[ i ].char.start_time	= { }
			linefx[ i ].char.end_time	= { }
			for k = 1, #chars_line do
				linefx[ i ].char.tags[ k ]			= linefx[ i ].char[ k ].tags
				linefx[ i ].char.width[ k ]			= linefx[ i ].char[ k ].width
				linefx[ i ].char.left[ k ]			= linefx[ i ].char[ k ].left
				linefx[ i ].char.center[ k ]		= linefx[ i ].char[ k ].center
				linefx[ i ].char.right[ k ]			= linefx[ i ].char[ k ].right
				linefx[ i ].char.top[ k ]			= linefx[ i ].char[ k ].top
				linefx[ i ].char.middle[ k ]		= linefx[ i ].char[ k ].middle
				linefx[ i ].char.bottom[ k ]		= linefx[ i ].char[ k ].bottom
				linefx[ i ].char.height[ k ]		= linefx[ i ].char[ k ].height
				linefx[ i ].char.duration[ k ]		= linefx[ i ].char[ k ].duration
				linefx[ i ].char.dur[ k ]			= linefx[ i ].char[ k ].dur
				linefx[ i ].char.start_time[ k ]	= linefx[ i ].char[ k ].start_time
				linefx[ i ].char.end_time[ k ]		= linefx[ i ].char[ k ].end_time
			end
			--
			for k = #chars_line + 1, 2 * #chars_line do
				linefx[ i ].char[ k ] = linefx[ i ].char[ #chars_line ]
			end
			for k = -#chars_line + 1, 0 do
				linefx[ i ].char[ k ] = linefx[ i ].char[ 1 ]
			end
		end
		for k = -linefx.nn, 0 do
			linefx[ k ] = linefx[ 1 ]
		end
		for k = linefx.nn + 1, 2 * linefx.nn do
			linefx[ k ] = linefx[ linefx.nn ]
		end
	end
	
	function effector.macro_fx( subtitles, selected_lines, active_line )
		effector.decide( )
		effector.preprosses_styles( styles, subtitles, #selected_lines > 0 )
		local meta, styles = karaskel.collect_head( subtitles )
		-------------------
		::style_manager_1::
		::back_select_1::
		-------------------
		---------------------------------------------------------------
		if #effector.GUI_config[ 05 ].items == 6 then
			effector.GUI_config[ 05 ].items[ 7 ] = "Add new config[fx]"
		end --november 17th 2018
		---------------------------------------------------------------
		repeat
			box_res, sett = aegisub.dialog.display( effector.GUI_config,
				{ "Apply Selection", "Cancel", "Style Manager" },
				{ ok = "Apply Selection", cancel = "Cancel" }
			)
			---------------------------------------------------------------
			::back_select_2::
			---------------------------------------------------------------
			if #effector.GUI_config[ 05 ].items == 6 then
				effector.GUI_config[ 05 ].items[ 7 ] = "Add new config[fx]"
			end --november 17th 2018
			---------------------------------------------------------------
			-- ventana para añadir nuevas configuraciones o nuevos efectos
			if box_res == "Apply Selection"
				and sett.effect_mode == "Add new config[fx]" then
				box_ins, configNEW__ = aegisub.dialog.display( effector.GUI_add,
					{ "Apply Add Config", "Cancel" },
					{ ok = "Apply Add Config", cancel = "Cancel" }
				)
				if box_ins == "Apply Add Config" then
					local container_file = configNEW__.lua_file
					effector.savefx( configNEW__.addnewfx .. "\n	", container_file )
					if container_file == "Effector-newlib-3.6.lua" then
						aegisub.debug.out( "\n\nAll the settings have been saved in the Effector-newlib-3.6.lua file, you can access them without having to recharge again the KE.\n\nTodas las configuraciones han sido guardadas en el archivo Effector-newlib-3.6.lua, puedes acceder a ellas sin necesidad de recargar el KE." )
					else
						aegisub.debug.out( "\n\nThe settings have been saved in the Kara Effector, you have to reload the KE to be able to access the changes made.\n\nLas configuraciones han sido guardadas en el Kara Effector, debes recargar el KE para poder acceder a los cambios realizados." )
					end
					aegisub.progress.set( 100 )
				end
				goto config_ini_mode
			end --add: august 18th 2018
			---------------------------------------------------
			if effector.GUI_config[ 22 ]
				and sett.effect_mode then
				if sett.effect_mode == "lead-in[fx]" then
					effector.GUI_config[ 22 ].value = sett.lead_in_fx
				elseif sett.effect_mode == "hi-light[fx]" then
					effector.GUI_config[ 22 ].value = sett.hi_light_fx
				elseif sett.effect_mode == "lead-out[fx]" then
					effector.GUI_config[ 22 ].value = sett.lead_out_fx
				elseif sett.effect_mode == "shape[fx]" then
					effector.GUI_config[ 22 ].value = sett.shape_fx_fx
				elseif sett.effect_mode == "translation[fx]" then
					effector.GUI_config[ 22 ].value = sett.transla_fx_fx
				elseif sett.effect_mode == "function[fx]" then
					effector.GUI_config[ 22 ].value = sett.function_fx_fx
				end
			end --november 10th 2018
			---------------------------------------------------
			if sett.saveconfiguration == true then	--> ventana 1
				effector.GUI_config[ 03 ].value = sett.line_style
				effector.GUI_config[ 05 ].value = sett.effect_mode
				effector.GUI_config[ 11 ].value = sett.color_1c
				effector.GUI_config[ 12 ].value = sett.color_2c
				effector.GUI_config[ 13 ].value = sett.color_3c
				effector.GUI_config[ 14 ].value = sett.color_4c
				effector.GUI_config[ 15 ].value = sett.alpha_1a
				effector.GUI_config[ 16 ].value = sett.alpha_2a
				effector.GUI_config[ 17 ].value = sett.alpha_3a
				effector.GUI_config[ 18 ].value = sett.alpha_4a
				effector.GUI_config[ 19 ].value = sett.linecomment
				effector.GUI_config[ 24 ].value = sett.tags_filter
			end
			---------------------------------------------------
			if box_res == "Style Manager" then	--> ventana 1
				local style_fx_txt = sett.line_style
				if sett.line_style == "Selected Lines"
					or sett.line_style == "All Lines"
					or sett.line_style == "" then
					style_fx_txt = effector.GUI_config[ 3 ].items[ 1 ]
				end
				effector.GUI_config[ 11 ].value = styles[ style_fx_txt ].color1
				effector.GUI_config[ 12 ].value = styles[ style_fx_txt ].color2
				effector.GUI_config[ 13 ].value = styles[ style_fx_txt ].color3
				effector.GUI_config[ 14 ].value = styles[ style_fx_txt ].color4
				effector.GUI_config[ 15 ].value = tonumber( styles[ style_fx_txt ].color1:match( "(%x%x)" ), 16 )
				effector.GUI_config[ 16 ].value = tonumber( styles[ style_fx_txt ].color2:match( "(%x%x)" ), 16 )
				effector.GUI_config[ 17 ].value = tonumber( styles[ style_fx_txt ].color3:match( "(%x%x)" ), 16 )
				effector.GUI_config[ 18 ].value = tonumber( styles[ style_fx_txt ].color4:match( "(%x%x)" ), 16 )
				goto style_manager_1
			end
			---------------------------------------------------
			if box_res == "Apply Selection"
				and sett.line_style ~= "" then
				effector.GUI_config[ 30 ] = { class = "label";	x = 1; y = 15;	height = 1; width = 2; label = " [:: Effect Setting ::]" }
				if  sett.effect_mode == "lead-in[fx]" then
					effector.GUI_config[ 21 ] = { class = "label";	x = 1; y = 16;	height = 1; width = 2; label = " Select lead-in[fx]:" }
					effector.GUI_config[ 22 ] = { name = "lead_in_fx";		class = "dropdown";	x = 1; y = 17;	height = 1; width = 4;
						hint = "Select the Effect lead-in[fx] for Karaoke."; items = leadin_fx; value = sett.lead_in_fx or leadin_fx[ 1 ]
					}
				elseif sett.effect_mode == "hi-light[fx]" then
					effector.GUI_config[ 21 ] = { class = "label";	x = 1; y = 16;	height = 1; width = 2; label = " Select hi-light[fx]:" }
					effector.GUI_config[ 22 ] = { name = "hi_light_fx";		class = "dropdown";	x = 1; y = 17;	height = 1; width = 4;
						hint = "Select the Effect hi-light[fx] for Karaoke."; items = hilight_fx; value = sett.hi_light_fx or hilight_fx[ 1 ]
					}
				elseif sett.effect_mode == "lead-out[fx]" then
					effector.GUI_config[ 21 ] = { class = "label";	x = 1; y = 16;	height = 1; width = 2; label = " Select lead-out[fx]:" }
					effector.GUI_config[ 22 ] = { name = "lead_out_fx"; 	class = "dropdown";	x = 1; y = 17;	height = 1; width = 4;
						hint = "Select the Effect lead-out[fx] for Karaoke."; items = leadout_fx; value = sett.lead_out_fx or leadout_fx[ 1 ]
					}
				elseif sett.effect_mode == "shape[fx]" then
					effector.GUI_config[ 21 ] = { class = "label";	x = 1; y = 16;	height = 1; width = 2; label = " Select shape[fx]:" }
					effector.GUI_config[ 22 ] = { name = "shape_fx_fx"; 	class = "dropdown";	x = 1; y = 17;	height = 1; width = 4;
						hint = "Select the Effect shape[fx] for Karaoke."; items = shape_fx; value = sett.shape_fx_fx or shape_fx[ 1 ]
					}
				elseif sett.effect_mode == "translation[fx]" then
					effector.GUI_config[ 21 ] = { class = "label";	x = 1; y = 16;	height = 1; width = 2; label = " Select translation[fx]:" }
					effector.GUI_config[ 22 ] = { name = "transla_fx_fx"; 	class = "dropdown";	x = 1; y = 17;	height = 1; width = 4;
						hint = "Select the Effect Translation for Karaoke."; items = transla_fx; value = sett.transla_fx_fx or transla_fx[ 1 ]
					}
				elseif sett.effect_mode == "function[fx]" then
					effector.GUI_config[ 21 ] = { class = "label";	x = 1; y = 16;	height = 1; width = 2; label = " Select function[fx]:" }
					effector.GUI_config[ 22 ] = { name = "function_fx_fx";	class = "dropdown";	x = 1; y = 17;	height = 1; width = 4;
						hint = "Select the Effect Function for Karaoke."; items = function_fx; value = sett.function_fx_fx or function_fx[ 1 ]
					}
				end
				---------------------------------------------------------------------------------
				table.remove( effector.GUI_config[ 05 ].items, #effector.GUI_config[ 05 ].items )
				-- elimina el "Add new config[fx]" del listado de fx de la primera ventana del KE
				---------------------------------------------------------------------------------
				
				repeat
					box_res, sett = aegisub.dialog.display( effector.GUI_config, {
						[ 1 ] = "Apply " .. sett.effect_mode,
						[ 2 ] = "Cancel",
						[ 3 ] = "Modify " .. sett.effect_mode,
						[ 4 ] = "Back <" },
						{ ok = "Apply " .. sett.effect_mode, cancel = "Cancel" }
					)
					if sett.saveconfiguration == true then
						if sett.effect_mode == "lead-in[fx]" then
							effector.GUI_config[ 22 ].value = sett.lead_in_fx
							sett.effect = sett.lead_in_fx
						elseif sett.effect_mode == "hi-light[fx]" then
							effector.GUI_config[ 22 ].value = sett.hi_light_fx
							sett.effect = sett.hi_light_fx
						elseif sett.effect_mode == "lead-out[fx]" then
							effector.GUI_config[ 22 ].value = sett.lead_out_fx
							sett.effect = sett.lead_out_fx
						elseif sett.effect_mode == "shape[fx]" then
							effector.GUI_config[ 22 ].value = sett.shape_fx_fx
							sett.effect = sett.shape_fx_fx
						elseif sett.effect_mode == "translation[fx]" then
							effector.GUI_config[ 22 ].value = sett.transla_fx_fx
							sett.effect = sett.transla_fx_fx
						elseif sett.effect_mode == "function[fx]" then
							effector.GUI_config[ 22 ].value = sett.function_fx_fx
							sett.effect = sett.function_fx_fx
						end
					end
				until box_res == "Apply " .. sett.effect_mode
				or box_res == "Cancel"
				or box_res == "Modify " .. sett.effect_mode
				or box_res == "Back <" or true
			end
			---------------------------------------------------
			if box_res == "Back <" then
				effector.GUI_config[ 21 ] = nil
				effector.GUI_config[ 22 ] = nil
				effector.GUI_config[ 30 ] = nil
				goto back_select_1
			end
			---------------------------------------------------
			local modes_fx = {
				[ 1 ] = sett.lead_in_fx,
				[ 2 ] = sett.hi_light_fx,
				[ 3 ] = sett.lead_out_fx,
				[ 4 ] = sett.shape_fx_fx,
				[ 5 ] = sett.transla_fx_fx,
				[ 6 ] = sett.function_fx_fx,
			}
			---------------------------------------------------
			local index1 = table.index( list_mode, sett.effect_mode )
			local index2 = table.index( list_fx[ index1 ], modes_fx[ index1 ] )
			fx_box = list_library[ index1 ][ index2 ]
			fx__ = table.inbox2( fx_box or list_library[ 1 ][ 1 ] )
			---------------------------------------------------
			if box_res == "Apply " .. sett.effect_mode
				and sett.line_style ~= ""  then
				effector.list = { [ 1 ] = fx__ }
				for kik, v in ipairs( effector.list ) do
					fx__ = v
					if #effector.list == 1
						or kik == #effector.list then
						lines_comment = sett.linecomment
					else
						lines_comment = false
					end
					aegisub.progress.title( format( "KE %s: %s", script_version, fx__.effect:gsub( "%S+%[fx%]%: ", "" ) ) )
					effector.preprosses_macro( subtitles, sett, fx__, selected_lines )
				end
				local meta, styles = karaskel.collect_head( subtitles, true )
				aegisub.set_undo_point( script_name )
				aegisub.progress.task( "Script successfully implemented!!" )
			end
			---------------------------------------------------
			if box_res == "Modify " .. sett.effect_mode
				and sett.line_style ~= "" then
				fx_box[ 63 ].value = fx_box[ 63 ].value or sett.effect_mode
				fx_box[ 68 ].label = format( " Style [fx]: %s", sett.line_style )
				buttom_hint = nil
				if sett.effect_mode == "function[fx]" then
					buttom_hint = nil --"Function Hint"
				end
				repeat
					---------------------
					::style_manager_2::
					::change_template_2::
					---------------------
					box_res, fx__ = aegisub.dialog.display( fx_box, {
						[ 1 ] = "Apply " .. sett.effect_mode,
						[ 2 ] = "Cancel",
						[ 3 ] = "Style Manager Colors",
						[ 4 ] = "Change Template Type",
						[ 5 ] = buttom_hint,
						[ 6 ] = "Back <" },
						{ ok = "Apply " .. sett.effect_mode, cancel = "Cancel" }
					)
					fx__.effect = fx_box[ 1 ].label
					if box_res == "Function Hint" then
						include( "Effector-hint-3.2.lua" )
						repeat
							box_ins, config__ = aegisub.dialog.display( conf_insert, { "<< Back" } )
						until box_ins == "<< Back"
					end
					if fx__.saveFX == true then
						fx_box[ 29 ].value, fx_box[ 30 ].value, fx_box[ 31 ].value	= fx__.t_type,   fx__.noblank,  fx__.v_kanji
						fx_box[ 32 ].value, fx_box[ 33 ].value, fx_box[ 34 ].value	= fx__.color1,   fx__.color3,   fx__.color4
						fx_box[ 35 ].value, fx_box[ 36 ].value, fx_box[ 37 ].value	= fx__.alpha1,   fx__.alpha3,   fx__.alpha4
						fx_box[ 38 ].text,  fx_box[ 39 ].text,  fx_box[ 40 ].text	= fx__.start_t,  fx__.end_t,    fx__.fun_x
						fx_box[ 41 ].text,  fx_box[ 42 ].text,  fx_box[ 43 ].text	= fx__.fun_y,    fx__.s_i,      fx__.s_f
						fx_box[ 44 ].text,  fx_box[ 45 ].text,  fx_box[ 46 ].text	= fx__.center_x, fx__.center_y, fx__.scale_x
						fx_box[ 47 ].text,  fx_box[ 48 ].text,  fx_box[ 49 ].text	= fx__.scale_y,  fx__.align,    fx__.layer
						fx_box[ 50 ].text,  fx_box[ 51 ].text,  fx_box[ 52 ].text	= fx__.move_x,   fx__.move_y,   fx__.move_t
						fx_box[ 53 ].text,  fx_box[ 54 ].text,  fx_box[ 55 ].text	= fx__.loops,    fx__.size,     fx__.returnfx
						fx_box[ 56 ].text,  fx_box[ 57 ].text,  fx_box[ 62 ].text	= fx__.addtag,   fx__.variable, fx__.namefx
						fx_box[ 63 ].value, fx_box[ 66 ].value, fx_box[ 67 ].value	= fx__.folderfx, fx__.language, fx__.modify
						fx_box[ 69 ].value, fx_box[ 70 ].value						= fx__.keeptagsfx, fx__.reverfx
					end
					if box_res == "Style Manager Colors" then
						local style_fx_shp = sett.line_style
						if sett.line_style == "Selected Lines"
							or sett.line_style == "All Lines"
							or sett.line_style == "" then
							style_fx_shp = effector.GUI_config[ 3 ].items[ 1 ]
						end
						fx_box[ 32 ].value = styles[ style_fx_shp ].color1
						fx_box[ 33 ].value = styles[ style_fx_shp ].color3
						fx_box[ 34 ].value = styles[ style_fx_shp ].color4
						fx_box[ 35 ].value = tonumber( styles[ style_fx_shp ].color1:match( "(%x%x)" ), 16 )
						fx_box[ 36 ].value = tonumber( styles[ style_fx_shp ].color3:match( "(%x%x)" ), 16 )
						fx_box[ 37 ].value = tonumber( styles[ style_fx_shp ].color4:match( "(%x%x)" ), 16 )
						goto style_manager_2
					end
					if box_res == "Change Template Type" then
						for i = 38, 57 do
							if fx__.t_type == "Char"
								or fx__.t_type == "Translation Char" then
								fx_box[ i ].text = fx_box[ i ].text:gsub( "line%.", "char." ):gsub( "word%.", "char." )
								:gsub( "furi%.", "char." ):gsub( "syl%.",  "char." ):gsub( "hira%.", "char." )
								:gsub( "kata%.", "char." ):gsub( "roma%.", "char." ):gsub( "widtht", "width" )
								:gsub( "_stripped",   "" ):gsub( "char.kara", "line.kara" )
							elseif fx__.t_type == "Syl"
								or fx__.t_type == "Syl Multi" then
								fx_box[ i ].text = fx_box[ i ].text:gsub( "line%.",  "syl." ):gsub( "word%.",  "syl." )
								:gsub( "furi%.",  "syl." ):gsub( "hira%.",  "syl." ):gsub( "kata%.",  "syl." )
								:gsub( "roma%.",  "syl." ):gsub( "char%.",  "syl." ):gsub( "_stripped",   "" )
								:gsub( "syl.kara", "line.kara" )
							elseif fx__.t_type == "Convert to Hiragana" then
								fx_box[ i ].text = fx_box[ i ].text:gsub( "line%.", "hira." ):gsub( "word%.", "hira." )
								:gsub( "furi%.", "hira." ):gsub( "syl%.",  "hira." ):gsub( "kata%.", "hira." )
								:gsub( "roma%.", "hira." ):gsub( "char%.", "hira." ):gsub( "widtht", "width" )
								:gsub( "_stripped",   "" ):gsub( "hira.kara", "line.kara" )
							elseif fx__.t_type == "Convert to Katakana" then
								fx_box[ i ].text = fx_box[ i ].text:gsub( "line%.", "kata." ):gsub( "word%.", "kata." )
								:gsub( "furi%.", "kata." ):gsub( "syl%.",  "kata." ):gsub( "hira%.", "kata." )
								:gsub( "roma%.", "kata." ):gsub( "char%.", "kata." ):gsub( "widtht", "width" )
								:gsub( "_stripped",   "" ):gsub( "kata.kara", "line.kara" )
							elseif fx__.t_type == "Convert to Romaji" then
								fx_box[ i ].text = fx_box[ i ].text:gsub( "line%.", "roma." ):gsub( "word%.", "roma." )
								:gsub( "furi%.", "roma." ):gsub( "syl%.",  "roma." ):gsub( "hira%.", "roma." )
								:gsub( "kata%.", "roma." ):gsub( "char%.", "roma." ):gsub( "widtht", "width" )
								:gsub( "_stripped",   "" ):gsub( "roma.kara", "line.kara" )
							elseif fx__.t_type == "Furi" then
								fx_box[ i ].text = fx_box[ i ].text:gsub( "line%.", "furi." ):gsub( "word%.", "furi." )
								:gsub( "syl%.",  "furi." ):gsub( "hira%.", "furi." ):gsub( "kata%.", "furi." )
								:gsub( "roma%.", "furi." ):gsub( "char%.", "furi." ):gsub( "widtht", "width" )
								:gsub( "_stripped",   "" ):gsub( "furi.kara", "line.kara" )
							elseif fx__.t_type == "Word"
								or fx__.t_type == "Translation Word" then
								fx_box[ i ].text = fx_box[ i ].text:gsub( "line%.", "word." ):gsub( "syl%.",  "word." )
								:gsub( "furi%.", "word." ):gsub( "hira%.", "word." ):gsub( "kata%.", "word." )
								:gsub( "roma%.", "word." ):gsub( "char%.", "word." ):gsub( "widtht", "width" )
								:gsub( "_stripped",   "" ):gsub( "word.kara", "line.kara" )
							elseif fx__.t_type == "Line"
								or fx__.t_type == "Translation Line"
								or fx__.t_type == "Template Line [Word]"
								or fx__.t_type == "Template Line [Syl]"
								or fx__.t_type == "Template Line [Char]" then
								fx_box[ i ].text = fx_box[ i ].text:gsub( "word%.", "line." ):gsub( "syl%.",  "line." )
								:gsub( "furi%.", "line." ):gsub( "hira%.", "line." ):gsub( "kata%.", "line." )
								:gsub( "roma%.", "line." ):gsub( "char%.", "line." ):gsub( "widtht", "width" )
								:gsub( "%.text", "%.text_stripped" ):gsub( "_stripped_stripped", "_stripped" )
								:gsub( "%.[ ]*%.text_stripped", "%.%.text" )
							end
						end
						goto change_template_2
					end
					---------------------------
					-- hace que la segunda ventana regrese a las configuraciones
					-- más recientes que se hayan hecho en la primera ventana
					if box_res == "Back <" then
						--ventana 1 "avanzada"
						box_res, sett = aegisub.dialog.display( effector.GUI_config, {
							[ 1 ] = "Apply " .. sett.effect_mode,
							[ 2 ] = "Cancel",
							[ 3 ] = "Modify " .. sett.effect_mode,
							[ 4 ] = "Back <" },
							{ ok = "Apply " .. sett.effect_mode, cancel = "Cancel" }
						)
						goto back_select_2
					end
					---------------------------
				until box_res == "Apply " .. sett.effect_mode
				or box_res == "Cancel"
				or box_res == "Back <" or true
				if box_res == "Apply " .. sett.effect_mode then
					effector.list = { [ 1 ] = fx__ }
					for kik, v in ipairs( effector.list ) do
						fx__ = v
						if #effector.list == 1
							or kik == #effector.list then
							lines_comment = sett.linecomment
						else
							lines_comment = false
						end
						aegisub.progress.title( format( "KE %s: %s", script_version, fx__.effect:gsub( "%S+%[fx%]%: ", "" ) ) )
						effector.preprosses_macro( subtitles, sett, fx__, selected_lines )
					end
					if fx__.printfx == false then
						local meta, styles = karaskel.collect_head( subtitles, true )
					end
					aegisub.set_undo_point( script_name )
					aegisub.progress.task( "Script successfully implemented!!" )
				end
			end
			---------------------------------------------------
		until box_res == "Apply Selection"
		or box_res == "Cancel"
		or box_res == "Apply " .. sett.effect_mode
		or box_res == "Modify " .. sett.effect_mode or true
		::config_ini_mode::
	end
