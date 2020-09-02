	----------------------------------------------------------------------------------------------------------
	--[[ ( c ) Copyright 2012 - 2020, Vict8r, Karalaura, NatsuoKE & Itachi Akatsuki				  		  ]]--
	----------------------------------------------------------------------------------------------------------
	-- Effector-utils-lib ------------------------------------------------------------------------------------
	Effector_Lib_authors  = "Itachi Akatsuki & Vict8r"
	Effector_Lib_testers  = "NatsuoKE & Vict8r"
	Effector_Lib_version  = "3.6"
	Effector_Lib_modified = "June 16th 2020"
	-- functions abbreviations -------------------------------------------------------------------------------
	sin = math.sin							asin = math.asin						pi = math.pi
	cos = math.cos							acos = math.acos						ln = math.log
	tan = math.tan							atan = math.atan						floor = math.floor
	abs = math.abs							sinh = math.sinh						atan2 = math.atan2
	deg = math.deg							cosh = math.cosh					  	format = string.format
	rad = math.rad							tanh = math.tanh						script_version = "3.6"
	log = math.log10						ceil = math.ceil						script_update = " legacy"
	
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
			time_loop1( Mode, Delay )
			time_loop2( Mode, Delay )
		
		librería table
		-	table.view( Table, Name, indent )
		-	table.inside( Table, e )
		-	table.index( Table, e )
			table.duplicate( Table )
		-	table.compare( Table1, Table2 )
		-	table.disorder( Table )
			table.concat1( Table, ... )
			table.concat2( Table, ... )
			table.concat3( ... )
			table.concat4( ... )
		-	table.filter( Table, Filter )
		-	table.replay( len_table, ... )
		-	table.count( Table, e )
		-	table.pos( Table, e )
		-	table.string( String, n )
		-	table.retire( Table, ... )
		+	table.combine( Table, n )
		-	table.inserttable( Table1, Table2, Index )
		-	table.reverse( Table )
		-	table.cyclic( Table )
		-	table.op( Table, Mode, add )
			table.remember( table_ref, table_val )
			table.random( Table )
		+	table.delete( Table, ... )
		+	table.permute( Table )
		+	table.ipol( Table, Size, Tags, algorithm )
		-	table.capture( String, Capture )
		-	table.gsub( Table, Capture, Replace )
		-	table.match( Table, Capture )
		-	table.unique( Table )
			table.twin( ... )
			table.type( Table )
			table.ipairs( Table )
			table.inpack( Table, Group )
			
		librería string
		+	string.count( String, Capture )
		+	string.toval( String )
		+	string.i( String )
		+	string.change( String, Capture, NoDelete, NoCapture, Change )
		+	string.cap( String, Capture, Extra_Capture, Filter )
		+	string.parts( String, Parts )
			string.match2( String, Capture, Table )
			string.newmatch( String, ... )
			string.moveclip( String, ... )
			string.replace( String, ... )
		
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
		-	math.round( Number, Decimal )
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
			math.bezier2( Shape, Mode, Align_Shape, OffsetB, length )
			math.movebezier( Shapes, t1, t2 )
			math.bezier2move( Shape, Mode, Accel )
		+	math.circle( Shape )
		+	math.rotate( p, axis, angle )
		<	math.matrix_sum( ... )
		<	math.matrix_trans( A )
		<	math.matrix_mul( ... )
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
			math.clamp( Num, Min, Max, Cycle )
			math.cubic( c1, c2, c3, c4 )
			math.count( )
		
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
		-	tag.set( Times, Events )
		-	tag.only( Conditions, ... )
		-	tag.oscill( dur, delay, ... )
		<	tag.oscill2( Times, ... )
		-	tag.glitter( dur, ExtraTags_i, ExtraTags_f )
		-	tag.clip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move )
		-	tag.clip2( left_cx, top_cy, width_clip, height_clip, clip_move )
		*	tag.Rclip( left_cx, top_cy, width_clip, height_clip, Mode )
		+	tag.Pclip( size_clip, left_cx, top_cy, width_clip, height_clip )
		-	tag.clip_shape( Shapes, Center_x, Center_y )
		+	tag.do_tag( String )
		+	tag.to_Auto4( String )
		+	tag.to_temp( String )
		+	tag.v_dollar( String )
		+	tag.coupling( String )
		+	tag.operation( String )
		+	tag.to_vsf( String )
		-	tag.ipol( Ipol_i, ... )
		+	tag.temp2( my_temp )
		+	tag.delete_in_return( return_fx )
		+	tag.cyclic( Dur, Dur_tr, Delay, Fad_i, Fad_f, tags_ini, tags_fin )
		<	tag.sec( Dur, Dur_tr, tags_ini, tags_fin )
		+	tag.filter( String, Tag, Filter )

		librería color
			color.ass( Color )
			color.ass2( Rnum, Gnum, Bnum )
			color.ass3( Hnum, Snum, Vnum )
		-	color.to_RGB( Color )
		-	color.to_HSV( Color )
			color.random( H, S, V )
		-	color.interpolate( Ipol, Color1, Color2 )
		-	color.set( Times, Colors, ... )
		<	color.matrix( Color, ... )
			color.fromstyle( ColorAlpha )
			color.val2ass( val_R, val_G, val_B )
			color.HSV_to_RGB( Hue, Saturation, Value )
		
		librería alpha
			alpha.ass( Alpha )
			alpha.random( Alpha1, Alpha2 )
		-	alpha.interpolate( Ipol, Alpha1, Alpha2 )
		-	alpha.set( Times, Alphas, ... )
			alpha.fromstyle( ColorAlpha )
			alpha.val2ass( val_A )
		
		librería shape
		+	shape.ASSDraw3( Shape )
		-	shape.round( Shape )
		-	shape.info( Shape )
		-	shape.redraw( Shape, tract )
		-	shape.filter( Shape, Split, ... )
		-	shape.length( Shape )
		-	shape.width( Shape )
		-	shape.height( Shape )
		-	shape.from_clip( )
		-	shape.rotate( Shape, Angle, org_x, org_y )
		-	shape.reflect( Shape, Axis )
		-	shape.oblique( Shape, Pixel, Axis )
			shape.to_line( Shape, Tract )
		+	shape.to_bezier( Shape )
		-	shape.reverse( Shape )
		-	shape.displace( Shape, Dx, Dy, Mode )
		-	shape.ratio( Shape, Ratiox, Ratioy, Mode )
		-	shape.size( Shape, SizeX, SizeY, Mode )
		-	shape.array( Shape, loops, Angle_or_mode, Dxy )
		-	shape.lmove( Coor, Times, Times2, Accel )
		-	shape.pmove( F_x, F_y, domainF, t1, t2, Accel, offset_t )
		-	shape.smove( Shape, t1, t2, offset_t, Relative )
		-	shape.rmove( Rx, Ry, t1, t2, Accel, offset_t )
		<	shape.rmove2( Rx, Ry, t, Accel )
		<	shape.rmove3( Rx, Ry, t, Accel, offset_t )
		<	shape.rmove4( Rx, Ry, t1, t2, Accel, offset_t, move4 )
		<	shape.omove( P, t1, t2, Dur, Accel )
		+	shape.lineclip( Mode, Dur, Ini )
		+	shape.setclip( Set_clips, Set_tagfx, Indx_line )
		-	shape.animated( dur, frame_duration, Shapes, Pscale, Random )
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
		-	shape.morphism( Size, Shape1, Shape2, Accel )
		-	shape.bord( Shape, Bord, Size )
		-	shape.from_audio( Audio, Width, Height_scale, Thickness, Offset_time )
		-	shape.to_pixels( Shape, Shape2, Seed, Filter )
		<	shape.bord_to_pixels( Shape, Shape2, Pixel, Seed, Filter )
		+	shape.fxline( P1, P2, Radius )
		+	shape.fxcircle( Shape )
		+	shape.trim( Shape, Lines, Mark, Ratio )
		+	shape.reduce( Shape )
		+	shape.inclip( Tags )
		<	shape.matrix( Shape, ... )
		/	shape.do_shape( Shape1, Shape2, Mode, Split )
		<	shape.to_outline( Shape, Bord )
		/	shape.point( Shape, Pixel )
		<	shape.deformed( Shape, Deformed, Pixel, Axis )
		+	shape.fusion( Shapes, Tags )
		-	shape.deformed2( Shape, Defor_x, Defor_y )
		-	shape.filtershape( Shape, ... )
			shape.intersect( Shape1, Shape2 )
			shape.insert( Shape1, Shape2 )
			shape.parametric( Shape, Pixel )
			shape.cut( Tract, t )
			shape.pointpos( Shape, P1, P2 )
			shape.pos( Shape )
			shape.grid( Shape, Filter, Align, Line, Lines )
			shape.gridr( Width, Height, Mode, Filter, Align, Lines )
		
		librería graph
			graph.polygon( n, Height, Angle, Bord, Space, Tags, Extra  )
			graph.line( Configs, Bord )
			graph.banner( Width, Height, Mode, Bord )
			graph.gear( Radius, n, Dent, Double )
			graph.cake( Radius, Angle, Bord, Space, Tags, Extra )
	
		librería text
		-	text.upper( Text )
		-	text.lower( Text )
		-	text.kara( )
		-	text.infx( syl_in_fx, true_false )
		-	text.outfx( syl_out_fx )
		-	text.tag( ... )
		+	text.rand( Text, num_tran, dur_tran, extra_tags, table_rand, text_all )
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
		-	text.bezier( Shape, Mode, Accel, Offset_time )
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
			text.filter( Text, Split, ... )
			text.move( Text, Dx, Dy, Ox, Oy, Accel )
			text.grid( Text, Filter, Align, Line )
		
		librería image
		+	image.data( bmp_image, Return )
		+	image.to_pixels( bmp_image, Size )
			image.grid( Image, Lines )
		
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
	----------------------------------------------------------------------------------------------------------------------------------
	alpha = { } color = { } effector = { } file = { } graph = { } image = { } recall = { } shape = { } tag = { } temp = { } text = { }
	----------------------------------------------------------------------------------------------------------------------------------
	-- Librería de shapes prediceñadas del Kara Effector -----------------------------------------------------------------------------
	shape.circle	= "m 50 0 b 22 0 0 22 0 50 b 0 78 22 100 50 100 b 78 100 100 78 100 50 b 100 22 78 0 50 0 "
	shape.triangle  = "m 50 0 l 0 86 l 100 86 l 50 0 "
	shape.rectangle = "m 0 0 l 0 100 l 100 100 l 100 0 l 0 0 "
	shape.circangle = "m 20 0 b 8 0 0 8 0 20 l 0 80 b 0 92 8 100 20 100 l 80 100 b 92 100 100 92 100 80 l 100 20 b 100 8 92 0 80 0 l 20 0 "
	shape.pixel		= "m 0 0 l 0 1 l 1 1 l 1 0 "
	shape.pentagon	= "m 50 0 l 0 36 l 19 95 l 81 95 l 100 36 l 50 0 "
	shape.hexagon	= "m 100 43.301 l 75 0 l 25 0 l 0 43.301 l 25 86.602 l 75 86.602 l 100 43.301 "
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
	end
	
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
		local time_HMS = time_HMS or fx.offset.time_HMS or 0 --add: may 31st 2020
		if type( time_HMS ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( time_HMS ) do
				recursion_tbl[ k ] = HMS_to_ms( v )
			end --resursión
			return recursion_tbl
		end
		if type( time_HMS ) == "string"
			and time_HMS:match( "%d+%:%d+%:%d+%.%d+" ) then
			local H, M, S, ms = time_HMS:match( "(%d+)%:(%d+)%:(%d+)%.(%d+)" )
			if ms:len( ) == 2 then
				ms = 10 * ms
			elseif ms:len( ) == 1 then
				ms = 100 * ms
			end
			return H * 3600000 + M * 60000 + S * 1000 + ms
		end --HMS_to_ms( { "0:00:02.325", delay = "0:00:03.105" } )
		if tonumber( time_HMS ) then
			return tonumber( time_HMS )
		end --rewrite: june 14th 2020
		return time_HMS
	end --HMS_to_ms( "0:00:02.325" )

	function ms_to_HMS( time_ms )
		--convierte el tiempo de ms a formato HMS
		if type( time_ms ) == "function" then
			time_ms = time_ms( )
		end
		local time_ms = time_ms or fx.offset.time_ms or 0 --add: may 31st 2020
		if type( time_ms ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( time_ms ) do
				recursion_tbl[ k ] = ms_to_HMS( v )
			end
			return recursion_tbl
		end --recursión
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
		end --ms_to_HMS( { 540.945, 5645, 27432 } )
		return format( "%s:%s:%s.%s", time_H, time_M, time_S, tms )
	end --ms_to_HMS( (j - 1) * 1f )
	
	function time_to_frame( Time )
		--retorna la cantidad de frames que hay en un tiempo determinado
		if type( Time ) == "function" then
			Time = Time( )
		end
		local Time = Time or fx.offset.Time or 0 --add: may 31st 2020
		if type( Time ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Time ) do
				recursion_tbl[ k ] = time_to_frame( v )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( Time, "numberstring", "time_to_frame", 1 )
		local Time = tostring( Time )
		if Time:match( "%d+%:%d+%:%d+%.%d+" ) then
			if type( HMS_to_ms( Time ) ) == "table" then
				Time = HMS_to_ms( Time )[ 1 ]
			else
				Time = HMS_to_ms( Time )
			end
		end --time_to_frame( { 3000, "0:00:25.673" } )
		return ceil( Time / frame_dur )
	end --time_to_frame( 2000 )
	
	function frame_to_ms( frames )
		--convierte la cantidad de frames en un tiempo en formato ms
		if type( frames ) == "function" then
			frames = frames( )
		end
		local frames = frames or fx.offset.frames or 0 --add: may 31st 2020
		if type( frames ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( frames ) do
				recursion_tbl[ k ] = frame_to_ms( v )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( frames, "number", "frame_to_ms", 1 )
		return math.round( frames * frame_dur, 2 )
	end --frame_to_ms( { 2365, 128, 82351 } )
	
	function frame_to_HMS( frames )
		--convierte la cantidad de frames en un tiempo en formato HMS
		if type( frames ) == "function" then
			frames = frames( )
		end
		local frames = frames or fx.offset.frames or 0 --add: may 31st 2020
		if type( frames ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( frames ) do
				recursion_tbl[ k ] = frame_to_HMS( v )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( frames, "number", "frame_to_HMS", 1 )
		return ms_to_HMS( frame_to_ms( frames ) )
	end --frame_to_HMS( { 35, 240, { 4532, { 24, 276 }, 9574 } } )

	function time_mid1( Delay )
		-- sumado en <Line Start Time>, hace que el texto aparezca desde los extremos hacia el centro de
		-- la línea, y restado tiene el efecto contrario: desde el centro hacia los extremos. Sumado o
		-- restado en <Line End Time>, el texto desaparece de forma similar que en <Line Start Time>
		if type( Delay ) == "function" then
			Delay = Delay( )
		end
		local Delay = Delay or fx.offset.Delay or 30 --add: may 31th 2020
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
		local Delay = Delay or fx.offset.Delay or 30 --add: may 31th 2020
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
		local Delay = Delay or fx.offset.Delay or 40 --add: may 31th 2020
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
		local Delay = Delay or fx.offset.Delay or 40 --add: may 31th 2020
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
		local Delay = Delay or fx.offset.Delay or 30 --add: may 31th 2020
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
		local Delay = Delay or fx.offset.Delay or 30 --add: may 31th 2020
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
	-- Ampliación de la Librería "table" -------------------------------------------------------------
	function table.view( Table, Name, indent )
		--retorna en modo string el contenido completo de una tabla
		if type( Table ) == "function" then
			Table = Table( )
		end
		if Table == "" then
			return { }
		end --may 31st 2020
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
		local function addtocart( value, Name, indent, saved, field )
			indent = indent or ""
			saved  = saved or { }
			field  = field or Name
			cart   = cart .. indent .. field
			if type( value ) ~= "table" then
				cart = cart .. " = " .. basicSerialize( value ) .. ";\n"
			else
				if saved[ value ] then
					cart = cart .. " = {}; -- " .. saved[ value ] .. " (self reference)\n"
					autoref = autoref ..  Name .. " = " .. saved[ value ] .. ";\n"
				else
					saved[ value ] = Name
					if isemptytable( value ) then
						cart = cart .. " = {};\n"
					else
						cart = cart .. " = {\n"
						for k, v in pairs( value ) do
							k = basicSerialize( k )
							local fname = format( "%s[ %s ]", Name, k )
							field = format( "[ %s ]", k )
							addtocart( v, fname, indent .. "	", saved, field )
						end
						cart = format( "%s%s};\n", cart, indent )
					end
				end
			end
		end
		Name = Name or "table_unnamed"
		if type( Table ) ~= "table" then
			return format( "%s = %s", Name, basicSerialize( Table ) )
		end
		cart, autoref = "", ""
		addtocart( Table, Name, indent )
		return cart .. autoref
	end
	
	function table.inside( Table, e, str1, str2 )	-- only for indexed table
		--retorna "false" o "true" si un elemento, captura o tipo de elemento está en una tabla
		local repl1 = str1 or ""
		local repl2 = str2 or ""
		effector.print_error( Table, "table",  "table.inside", 1 )
		effector.print_error( repl1, "string", "table.inside", 3 )
		effector.print_error( repl2, "string", "table.inside", 4 )
		local e_types = { --tipos de elementos
			"function", "table", "string", "color", "alpha",
			"shape", "clip", "number", "boolean", "thread", "userdata"
		}
		if type( e ) == "table" then
			for k, v in ipairs( Table ) do
				if table.compare( v, e ) then
					return true
				end
			end --si la tabla "e" está dentro de la tabla
		elseif type( e ) == "string" then
			for k, v in ipairs( Table ) do
				if table.type( { v } ) == e then
					return true --add: march 17th 2020
					--tipo de elemento
				elseif type( v ) == "string" then
					if e == v:gsub( repl1, repl2 ) then
						return true --string modificado
					elseif e:match( "%%" ) then
						if v:match( e ) then
							return true
						end --tag.only( table.inside( { 1, 2, "a4a" }, "%d+[%.%d]*" ), "ok", "not" )
					end --captura en los elementos strings
				elseif v == e then
					return true
				end --strings iguales
			end
		else
			for k, v in ipairs( Table ) do
				if v == e then
					return true
				end --elementos iguales
			end
		end --tag.only( table.inside( { 1, 2, "a", "b", 3 }, "string" ), "ok", "not" )
		return false
	end --mod: march 18th 2020
	
	function table.index( Table, e, str1, str2 )	-- only for indexed table
		--retorna la posición o índice de un elemento o tipo de elemento en una tabla
		local repl1 = str1 or ""
		local repl2 = str2 or ""
		effector.print_error( Table, "table",  "table.index", 1 )
		effector.print_error( repl1, "string", "table.index", 3 )
		effector.print_error( repl2, "string", "table.index", 4 )
		local e_types = { --tipo de elementos
			"function", "table", "string", "color", "alpha",
			"shape", "clip", "number", "boolean", "thread", "userdata"
		}
		if table.inside( Table, e, repl1, repl2 )
			or table.inside( e_types, e ) then
			if type( e ) == "table" then
				for k, v in ipairs( Table ) do
					if table.compare( v, e ) then
						return k
					end
				end --si la tabla "e" está dentro de la tabla
			elseif type( e ) == "string" then
				for k, v in ipairs( Table ) do
					if table.type( { v } ) == e then
						return k --add: march 17th 2020
						--tipo de elemento
					elseif type( v ) == "string" then
						if e == v:gsub( repl1, repl2 ) then
							return k --string modificado
						elseif e:match( "%%" ) then
							if v:match( e ) then
								return k
							end --table.index( { 1, 2, "a4a" }, "%d+[%.%d]*" )
						end --captura en los elementos strings
					elseif v == e then
						return k
					end --strings iguales
				end
			else
				for k, v in ipairs( Table ) do
					if v == e then
						return k
					end --elementos iguales
				end
			end --table.index( { 1, 2, "a", "b", 3 }, "string" )
		end
		return e
	end --mod: march 18th 2020
	
	function table.duplicate( Table )
		--duplica completamente el contenido de una tabla
		if type( Table ) == "function" then
			Table = Table( )
		end
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
		if type( Table1 ) == "function" then
			Table1 = Table1( )
		end
		if type( Table2 ) == "function" then
			Table2 = Table2( )
		end
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

	function table.disorder( Table )
		--desordena aleatoriamente el contenido de una tabla
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "numbertable", "table.disorder", 1 )
		local Table_dis = Table
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
	
	function table.concat1( Table, ... )
		--table.concat1( { "a", "b", "c" }, { 1, 2, 3 } ) = { "1a", "2a", "3a", "1b", "2b", "3b", "1c", "2c", "3c" }
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
	
	function table.concat2( Table, ... )
		--table.concat2( { "a", "b", "c" }, { 1, 2, 3 } ) = { "1a2a3a", "1b2b3b", "1c2c3c" }
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
		--concatena uno a uno los elementos de las tablas ingresadas
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
	end --table.concat3( { "A", "B", "C" }, "1", { "x", "y" } ) = { "A1x", "B1y", "C1x" }
	
	function table.concat4( ... )
		-->table.concat4( { "a", "b", "c", "d" }, { 1, 2, 3 } ) = { "a1", "b2", "c3", "d" }
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

	function table.replay( Len, ... )
		-->Len = 3; t = { a, b, c } -->return { a, b, c, a, b, c, a, b, c }
		--replica n cantidad de veces los elementos de una tabla, o los elementos ingresados
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
				if type( e_val[ k ] ) == "function" then
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
		-- o la cantidad de veces que está una captura o un tipo de elemento en ella
		if type( Table ) == "function" then
			Table = Table( )
		end
		if type( e ) == "function" then
			e = e( )
		end
		effector.print_error( Table, "table", "table.count", 1 )
		effector.print_error( e, "true", "table.count", 2 )
		local Count = 0
		local e_types = {
			"function", "table", "string", "color", "alpha",
			"shape", "clip", "number", "boolean", "thread", "userdata"
		}
		if type( e ) == "table" then
			for k, v in pairs( Table ) do
				if table.compare( v, e ) then
					Count = Count + 1
				end
			end --si la tabla "e" está dentro de la tabla
		elseif type( e ) == "string" then
			if table.inside( e_types, e ) then
				for k, v in pairs( Table ) do
					if table.type( { v } ) == e then
						Count = Count + 1
					end --add: march 17th 2020
				end --tipo de elemento
			else
				for k, v in pairs( Table ) do
					if type( v ) == "string" then
						if v:match( e ) then
							Count = Count + 1
						end --captura en los elementos strings
					elseif v == e then
						Count = Count + 1
					end --strings iguales
				end
			end
		else
			for k, v in pairs( Table ) do
				if v == e then
					Count = Count + 1
				end --elementos iguales
			end
		end --table.count( { 1, 2, "a", "b", 3 }, "number" )
		return Count
	end
	
	function table.pos( Table, e )
		--retorna una tabla con las posiciones del elemento "e"
		--de tipo, captura o de igualdad
		if type( Table ) == "function" then
			Table = Table( )
		end
		if type( e ) == "function" then
			e = e( )
		end
		effector.print_error( Table, "table", "table.pos", 1 )
		effector.print_error( e, "true", "table.pos", 2 )
		local Table_pos = { }
		-------------------------------------------------------
		local e_types = {
			"function", "table", "string", "color", "alpha",
			"shape", "clip", "number", "boolean", "thread", "userdata"
		}
		if type( e ) == "table" then
			for k, v in pairs( Table ) do
				if table.compare( v, e ) then
					Table_pos[ #Table_pos + 1 ] = k
				end
			end --si la tabla "e" está dentro de la tabla
		elseif type( e ) == "string" then
			if table.inside( e_types, e ) then
				for k, v in pairs( Table ) do
					if table.type( { v } ) == e then
						Table_pos[ #Table_pos + 1 ] = k
					end --add: march 17th 2020
				end --tipo de elemento
			else
				for k, v in pairs( Table ) do
					if type( v ) == "string" then
						if v:match( e ) then
							Table_pos[ #Table_pos + 1 ] = k
						end --captura en los elementos strings
					elseif v == e then
						Table_pos[ #Table_pos + 1 ] = k
					end --strings iguales
				end
			end
		else
			for k, v in pairs( Table ) do
				if v == e then
					Table_pos[ #Table_pos + 1 ] = k
				end --elementos iguales
			end
		end --table.pos( { 1, 2, "a", "b", 3 }, "number" )
		return Table_pos
	end
	
	function table.string( String, n )-- ( "String", 2 ) -> { St, tr, ri, in, ng }
		--retorna una tabla con las partes de n tamaño de un string
		if type( String ) == "function" then
			String = String( )
		end
		local Table_string, Chars_string = { }, { }
		local String = String or ""
		local Number = n or 1
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = table.string( v, n )
			end
			return recursion_tbl
		end --recursión
		if type( n ) == "function" then
			n = n( )
		end
		effector.print_error( String, "string", "table.string", 1 )
		effector.print_error( Number, "number", "table.string", 2 )
		local Len_string = unicode.len( String )
		for c in unicode.chars( String ) do
			table.insert( Chars_string, c )
		end
		if Number >= Len_string then
			return { String }
		end
		for i = 1, Len_string - Number + 1 do
			Table_string[ i ] = ""
			for k = 1, Number do
				Table_string[ i ] = Table_string[ i ] .. Chars_string[ i + k - 1 ]
			end
		end
		return Table_string
	end --table.string( { "String", "demo" }, 2 )

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
	
	function table.combine( Table, n )
		--obtiene las combinaciones de n tamaño de una tabla
		if type( Table ) == "function" then
			Table = Table( )
		end
		if type( n ) == "function" then
			n = n( )
		end
		effector.print_error( Table, "table", "table.combine", 1 )
		effector.print_error( n, "number", "table.combine", 2 )
		local Table_com, a, nN = { }, { }, math.round( abs( n ) )
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
	
	function table.inserttable( Table1, Table2, Index ) --(Table1, Table2[, Index])
		--inserta los elementos de la tabla 2 dentro de la tabla 1
		if type( Table1 ) == "function" then
			Table1 = Table1( )
		end
		if type( Table2 ) == "function" then
			Table2 = Table2( )
		end
		if type( Index ) == "function" then
			Index = Index( )
		end
		effector.print_error( Table1, "table", "table.inserttable", 1 )
		effector.print_error( Table2, "table", "table.inserttable", 2 )
		local Table_ins = Table1
		if Index == nil then
			for i = 1, #Table2 do
				Table_ins[ #Table_ins + 1 ] = Table2[ i ]
			end
		else
			for i = 1, #Table2 do
				table.insert( Table_ins, Index, Table2[ #Table2 - i + 1 ] )
			end
		end
		return Table_ins
	end

	function table.reverse( Table )
		--invierte el orden de los elementos de una tabla indexada
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
		--crea un "ciclo" con los elementos de una tabla indexada
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
	
	function table.op( Table, Mode, add )
		--realiza múltiples operaciones con los elementos de la tabla ingresada
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "table", "table.op", 1 )
		local table_sum, table_average, table_concat = 0, 0, ""
		local table_add, table_inverse, table_function = { }, { }, { }
		if type( Mode ) == "function" then
			--retorna una tabla en donde a cada elemento se le aplica la función Mode( val )
			for k, v in pairs( Table ) do
				table_function[ k ] = Mode( v )
			end
			return table_function --may 23rd 2018
		elseif Mode == "sum"
			or Mode == "suma"
			or Mode == nil then
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
		elseif Mode == "pro"
			or Mode == "multi" then
			--retorna una tabla con cada elemento multiplicado por un mismo número
			local table_pro = table.duplicate( Table )
			for i = 1, #Table do
				table_pro[ i ] = Table[ i ] * add
			end
			return table_pro
		elseif Mode == "concat" then
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
		elseif Mode == "average" then
			--retorna un número equivalente al promedio aritmético de los números de la tabla
			for i = 1, #Table do
				table_average = table_average + Table[ i ]
			end
			if #Table > 0 then
				return table_average / #Table
			end
			return 0
		elseif Mode == "min" then
			--retorna el mínimo valor de la tabla ingresada
			local table_min = table.duplicate( Table )
			table.sort( table_min, function( a, b ) return a < b end )
			if table_min[ 1 ] then
				return table_min[ 1 ]
			end
			return 0
		elseif Mode == "max" then
			--retorna el máximo valor de la tabla ingresada
			local table_max = table.duplicate( Table )
			table.sort( table_max, function( a, b ) return a < b end )
			if table_max[ #table_max ] then
				return table_max[ #table_max ]
			end
			return 0
		elseif Mode == "rank" then
			--retorna el rango de los valores de la tabla ingresada
			local table_rank = table.duplicate( Table )
			table.sort( table_rank, function( a, b ) return a < b end )
			if table_rank[ 1 ] then
				return table_rank[ #table_rank ] - table_rank[ 1 ]
			end
			return 0
		elseif Mode == "org" then
			--retorna la tabla con los números organizados ascendentemente
			local table_org = table.duplicate( Table )
			table.sort( table_org, function( a, b )
				if type( a ) == "table" then
					a = a[ 1 ]
				end
				if type( b ) == "table" then
					b = b[ 1 ]
				end
				return a < b end
			) --mod: june 18th 2020
			return table_org
		elseif Mode == "org2" then
			--retorna la tabla con los números organizados descendentemente
			local table_org2 = table.duplicate( Table )
			table.sort( table_org2, function( a, b )
				if type( a ) == "table" then
					a = a[ 1 ]
				end
				if type( b ) == "table" then
					b = b[ 1 ]
				end
				return a > b end
			) --mod: june 18th 2020
			return table_org2
		elseif Mode == "round" then
			--retorna la tabla con todos los números redondeados según el Argumento 3
			local table_round = table.duplicate( Table )
			return math.round( table_round, add )
		elseif Mode == "add" then
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
		elseif Mode == "inverse" then
			--retorna la tabla con los elementos invertidos en el orden en que se ingresaron
			for i = 1, #Table do
				table_inverse[ i ] = Table[ #Table - i + 1 ]
			end
			return table_inverse
		elseif Mode == "idx" then --march 17th 2020
			--organiza por index los elementos de la tabla
			local table_idx = { }
			for k, v in pairs( Table ) do
				if type( k ) == "number" then
					table_idx[ #table_idx + 1 ] = v
				else
					table_idx[ k ] = v
				end
			end
			return table_idx
		elseif Mode == "move" then --july 08th 2020
			--desplaza los índices de la tabla una cantidad entera de posiciones :D
			local add = ceil( add or 0 )
			local table_move = { }
			for i = 1, #Table do
				table_move[ i + add ] = Table[ i ]
			end
			return table_move
		elseif Mode == "move2" then --august 24th 2020
			--desplaza los índices de la tabla una cantidad entera de posiciones
			--y los últimos se convertirán en los primeros elementos de la tabla (ciclo):D
			local add = ceil( add or 0 )
			local table_move2 = { }
			for i = 1, #Table do
				table_move2[ math.i( i + add, #Table )[ "1-->A" ] ] = Table[ i ]
			end
			return table_move2
		elseif Mode == "order" then --august 24th 2020
			--organiza en orden alfabético los elementos de una tabla string
			local table_order = table.duplicate( Table )
			table.sort( table_order,
				function( a, b )
					local pattern = "^(.-)%s*(%d+)$"
					local _, _, col1, num1 = tostring( a ):find( pattern )
					local _, _, col2, num2 = tostring( b ):find( pattern )
					if (col1 and col2)
						and col1 == col2 then
						return tonumber( num1 ) < tonumber( num2 )
					end
					return a < b
				end
			)
			return table_order
		end
	end
	
	table.recall = { }
	function table.remember( table_ref, table_val )
		--similar a "remember" con elementos de una tabla
		for i = 1, #table_ref do
			ref_i = table_ref[ i ]
			table.recall[ ref_i ] = table_val[ i ]
		end
		return unpack( table_val )
	end
	
	function table.random( Table )
		--retorna un elemento aleatoriamente de la tabla ingresada
		--o un número entero al azar entre 1 y el número ingresado
		if type( Table ) == "function" then
			Table = Table( )
		end
		local tbl_or_num = Table or { 1 }
		effector.print_error( tbl_or_num, "numbertable", "table.random", 1 )
		if type( tbl_or_num ) == "number" then
			local Num = tbl_or_num
			tbl_or_num = { }
			for i = 1, Num do
				tbl_or_num[ i ] = i
			end
		end
		if #tbl_or_num == 1 then
			return tbl_or_num[ 1 ]
		end --add: june 18th 2020
		local rand_e = tbl_or_num[ R( #tbl_or_num ) ]
		if rand_e == table_random then
			rand_e = tbl_or_num[ R( #tbl_or_num ) ]
		end
		table_random = rand_e
		return rand_e
	end	--table.random( 9 )
	
	function table.delete( Table, ... )
		--elimina el o los elementos, o una tabla de elementos
		--que estén dentro de una tabla seleccionada "Table"
		if type( Table ) == "function" then
			Table = Table( )
		end
		local tbl_delete, retire_e = table.duplicate( Table ), { ... }
		if type( ... ) == "table" then
			retire_e = ...
		end
		local e_types = {
			"function", "table", "string", "color", "alpha",
			"shape", "clip", "number", "boolean", "thread", "userdata"
		}
		for i = 1, #retire_e do
			if type( retire_e[ i ] ) == "string" then
				if table.inside( e_types, retire_e[ i ] ) then
					for k, v in pairs( Table ) do --add: march 15rd 2020
						if table.type( { v } ) == retire_e[ i ] then
							tbl_delete[ k ] = nil
						end --table.delete( { 1, 2, "a", "b", 3 }, "number" )
					end --tipo de elemento
				else
					for k, v in pairs( Table ) do
						if v == retire_e[ i ] then
							tbl_delete[ k ] = nil
							--si son el mismo string
						elseif type( v ) == "string"
							and v:match( retire_e[ i ] ) then
							tbl_delete[ k ] = nil
						end --capturas en los elementos string
					end
				end
			elseif type( retire_e[ i ] ) == "table" then
				for k, v in pairs( Table ) do
					if table.compare( v, retire_e[ i ] ) then
						tbl_delete[ k ] = nil
					end
				end --tablas
			else
				for k, v in pairs( Table ) do
					if v == retire_e[ i ] then
						tbl_delete[ k ] = nil
					end --si son el mismo elemento
				end
			end
		end
		if table.compare( Table, tbl_delete ) == false then
			tbl_delete = table.op( tbl_delete, "idx" )
		end --table.delete( { 1, 2, x = "a", "b", [ 2 ] = 3 }, "string" )
		return tbl_delete
	end

	function table.permute( Table )
		--retorna una tabla que contiene las tablas con todas las
		--combinaciones posibles que se pueden hacer de la tabla ingresada
		--{ 1, 2, 3 } --> { {2, 3, 1}, {2, 1, 3}, {3, 1, 2}, {3, 2, 1}, {1, 3, 2}, {1, 2, 3} }
		if type( Table ) == "function" then
			Table = Table( )
		end
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
		---------------------
		for i = 1, #Table do
			if type( Table[ i ] ) == "string" then
				if Table[ i ]:match( "\\[%d]*%a+%-?[%d&#]^*[%.%dH&%x]*" ) then
					if Tags == nil then
						Tags = { Table[ i ]:match( "(\\[%d]*%a+)%-?[%d&#]^*[%.%dH&%x]*" ) }
					else
						if not table.inside( Tags, Table[ i ]:match( "(\\[%d]*%a+)%-?[%d&#]^*[%.%dH&%x]*" ) ) then
							table.insert( Tags, Table[ i ]:match( "(\\[%d]*%a+)%-?[%d&#]^*[%.%dH&%x]*" ) )
						end
					end
					Table[ i ] = Table[ i ]:match( "\\[%d]*%a+(%-?[%d&#]^*[%.%dH&%x]*)" )
				elseif Table[ i ]:match( "(\\[%d]*%a+)R[%a]*%b()" ) then
					if Tags == nil then
						Tags = { Table[ i ]:match( "(\\[%d]*%a+)R[%a]*%b()" ) }
					else
						if not table.inside( Tags, Table[ i ]:match( "(\\[%d]*%a+)R[%a]*%b()" ) ) then
							table.insert( Tags, Table[ i ]:match( "(\\[%d]*%a+)R[%a]*%b()" ) )
						end
					end
					Table[ i ] = string.toval( Table[ i ]:match( "\\[%d]*%a+(R[%a]*%b())" ) )
				elseif Table[ i ]:match( "\\[%d]*%a+%b()" ) then
					if Tags == nil then
						Tags = { Table[ i ]:match( "(\\[%d]*%a+)%b()" ) }
					else
						if not table.inside( Tags, Table[ i ]:match( "(\\[%d]*%a+)%b()" ) ) then
							table.insert( Tags, Table[ i ]:match( "(\\[%d]*%a+)%b()" ) )
						end
					end
					Table[ i ] = string.toval( Table[ i ]:match( "\\[%d]*%a+(%b())" ) )
				end
				if tonumber( Table[ i ] ) then
					Table[ i ] = tonumber( Table[ i ] )
				end
			elseif type( Table[ i ] ) == "table" then
				for k = 1, #Table[ i ] do
					if type( Table[ i ][ k ] ) == "string" then
						if Table[ i ][ k ]:match( "\\[%d]*%a+%-?[%d&#]^*[%.%dH&%x]*" ) then
							if Tags == nil then
								Tags = { Table[ i ][ k ]:match( "(\\[%d]*%a+)%-?[%d&#]^*[%.%dH&%x]*" ) }
							else
								if not table.inside( Tags, Table[ i ][ k ]:match( "(\\[%d]*%a+)%-?[%d&#]^*[%.%dH&%x]*" ) ) then
									table.insert( Tags, Table[ i ][ k ]:match( "(\\[%d]*%a+)%-?[%d&#]^*[%.%dH&%x]*" ) )
								end
							end
							Table[ i ][ k ] = Table[ i ][ k ]:match( "\\[%d]*%a+(%-?[%d&#]^*[%.%dH&%x]*)" )
						elseif Table[ i ][ k ]:match( "(\\[%d]*%a+)R[%a]*%b()" ) then
							if Tags == nil then
								Tags = { Table[ i ][ k ]:match( "(\\[%d]*%a+)R[%a]*%b()" ) }
							else
								if not table.inside( Tags, Table[ i ][ k ]:match( "(\\[%d]*%a+)R[%a]*%b()" ) ) then
									table.insert( Tags, Table[ i ][ k ]:match( "(\\[%d]*%a+)R[%a]*%b()" ) )
								end
							end
							Table[ i ][ k ] = string.toval( Table[ i ][ k ]:match( "\\[%d]*%a+(R[%a]*%b())" ) )
						elseif Table[ i ][ k ]:match( "\\[%d]*%a+%b()" ) then
							if Tags == nil then
								Tags = { Table[ i ][ k ]:match( "(\\[%d]*%a+)%b()" ) }
							else
								if not table.inside( Tags, Table[ i ][ k ]:match( "(\\[%d]*%a+)%b()" ) ) then
									table.insert( Tags, Table[ i ][ k ]:match( "(\\[%d]*%a+)%b()" ) )
								end
							end
							Table[ i ][ k ] = string.toval( Table[ i ][ k ]:match( "\\[%d]*%a+(%b())" ) )
						end
						if tonumber( Table[ i ][ k ] ) then
							Table[ i ][ k ] = tonumber( Table[ i ][ k ] )
						end --table.ipol( { { "\\fscx20", 80 }, { "\\blur1", 5 } }, 8 )
					end
				end
			end --january 22nd 2020
		end --table.ipol( { "\\fscx20", "\\fscx80" }, 8 )
		---------------------
		if Size < #Table then
			Size = #Table
		end
		local algorithm = algorithm or "%s"
		if type( algorithm ) == "number" then
			algorithm = "%s ^ " .. tostring( algorithm )
		end --may 20th 2020
		-- algorithm example: "%s ^ 0.5"
		local function tbl_ipol_funct( Table_ipol, Size_ipol, Tags_ipol, algorithm_ipol, Shp_or_Clip )
			---------------------------------------------
			local ipols = { }
			local max_loop = Size_ipol - 1
			local ipol_i, ipol_f, pct_ip
			---------------------------------------------
			-- interpola el valor de dos números
			local function ipol_number( pct_ipol, val_1, val_2 )
				return math.round( val_1 + (val_2 - val_1) * pct_ipol, 3 )
			end
			---------------------------------------------
			-- interpola el valor de dos shapes o dos clips
			local function ipol_shpclip( pct_ipol, val_1, val_2 )
				--table.ipol( { shape.circle .. shape.displace( shape.circle, 200, 0 ), shape.triangle }, 50 )[ j ]
				local val_1, val_2 = shape.insert( val_1, val_2 )
				local tbl_1, tbl_2, k = { }, { }, 0
				for c in val_1:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( tbl_1, tonumber( c ) )
				end
				for c in val_2:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( tbl_2, tonumber( c ) )
				end
				local val_ipol = val_1:gsub( "%-?%d+[%.%d]*",
					function( val )
						k = k + 1
						local val = tbl_1[ k ] + (tbl_2[ k ] - tbl_1[ k ]) * pct_ipol
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
			for i = 1, max_loop do
				--algoritmos de interpolación :D
				ipol_i = Table_ipol[ floor( (i - 1) / (max_loop / (#Table_ipol - 1)) ) + 1 ]
				ipol_f = Table_ipol[ floor( (i - 1) / (max_loop / (#Table_ipol - 1)) ) + 2 ]
				pct_ip = floor( (i - 1) % (max_loop / (#Table_ipol - 1)) ) / (max_loop / (#Table_ipol - 1))
				ipols[ i ] = ipol_function( math.format( algorithm_ipol, pct_ip ), ipol_i, ipol_f )
			end --table.ipol( { 12, 31 }, 11, "\\fscy", "sin( pi * %s )" )
			--------------------------------------------
			if algorithm_ipol:match( "m%s+%-?%d+[%.%d]*%s+%-?%d+[%.%-%dmlb ]*" ) then --si el algoritmo es una shape
				pct_ip = math.clamp( math.format( algorithm_ipol, 1 ) ) * #Table_ipol
				--table.ipol( { 0, 100 }, 50, nil, shape.trajectory( ) )
				--table.ipol( { 0, 100 }, 40, nil, shape.circle .. shape.displace( shape.circle, 100 ) )
			else -- si el algoritmo es un módulo de varianza enre 0 y 1
				pct_ip = math.clamp( math.format( algorithm_ipol, 1 ) ) * (#Table_ipol - 1)
			end --fixed: january 28th 2020
			ipol_i = Table_ipol[ floor( pct_ip ) ] or Table_ipol[ 1 ]
			ipol_f = Table_ipol[ floor( pct_ip ) + 1 ] or Table_ipol[ floor( pct_ip ) ]
			ipols[ #ipols + 1 ] = ipol_function( math.clamp( math.format( algorithm_ipol, 1 ) ), ipol_i, ipol_f )
			--------------------------------------------
			--concatena los valores con los Tags_ipol, si lo hay
			if Tags_ipol then
				return table.concat2( ipols, Tags_ipol )
			end --add: december 05th 2018
			--------------------------------------------
			return ipols --rewrite: october 11th 2018
			--table.ipol( { 12, 31, 20, 13, 47 }, 16, "\\fscy" )
		end
		------------------------------------------------
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
	
	function table.capture( String, Capture )
		--crea una tabla con las capturas de un String o los strings de una tabla
		--genera una tabla independiente por cada uno de los strings
		if type( String ) == "function" then
			String = String( )
		end
		local tbl_cap = { }
		local String = String or ""
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = table.capture( v, Capture )
			end
			return recursion_tbl
		end --recursión
		if type( Capture ) == "function" then
			Capture = Capture( )
		end
		local Capture = Capture or ""
		effector.print_error( String, "string", "table.capture", 1 )
		effector.print_error( Capture, "stringtable", "table.capture", 2 )
		local special_cap = {
			[ "color" ] = "[\\%dvc]*[&#]^*H?%x%x%x%x%x%x&?",
			[ "alpha" ] = "[\\%dvc]*[&#]^*H?%x%x&?",
			[ "number" ] = "%-?%d+[%.%d]*",
			[ "shape" ] = "m%s+%-?%d+[%.%-%d blm]*",
			[ "clip" ] = "\\i?clip%b()",
			[ "word" ] = "%S+",
		}--add: may 10th 2020
		local captbl
		if type( Capture ) == "table" then
			for i = 1, #Capture do
				captbl = Capture[ i ]
				if special_cap[ captbl ] then
					captbl = special_cap[ captbl ]
				end --add may 09th 2020
				for cap in String:gmatch( captbl ) do
					table.insert( tbl_cap, cap )
				end
			end
		else
			captbl = Capture
			if special_cap[ captbl ] then
				captbl = special_cap[ captbl ]
			end
			for cap in String:gmatch( captbl ) do
				table.insert( tbl_cap, cap )
			end
		end
		return tbl_cap --table.capture( { "line demo", "string word fx" }, "o" )
	end --may 12th 2018

	function table.gsub( Table, Capture, Replace )
		-- genera reemplazos en los elementos string de una tabla
		local Replace = Replace or ""
		local Capture = Capture or "KEfx"
		if type( Table ) == "function" then
			Table = Table( )
		end
		if type( Capture ) == "function" then
			Capture = Capture( )
		end
		if type( Replace ) == "function" then
			Replace = Replace( )
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
		end --table.gsub( { "line demo", x = "string word fx" }, "o", "O" )
		return tbl_gsub
	end --may 27th 2018

	function table.match( Table, Capture )
		--genera una tabla con las coincidencias que encuentre, de igualdad, de tipo o de captura
		if type( Table ) == "function" then
			Table = Table( )
		end
		if type( Capture ) == "function" then
			Capture = Capture( )
		end
		effector.print_error( Table, "table", "table.match", 1 )
		effector.print_error( Capture, "stringtable", "table.match", 2 )
		local tbl_match = { }
		local table_mch = table.duplicate( Table )
		local e_types = {
			"function", "table", "string", "color", "alpha",
			"shape", "clip", "number", "boolean", "thread", "userdata"
		}
		if type( Capture ) == "table" then
			for i = 1, #Capture do
				for k, val in pairs( table_mch ) do
					if table.inside( e_types, Capture[ i ] ) then
						--si el elemento de la tabla es del mismo tipo que el indicado
						if table.type( { val } ) == Capture[ i ] then
							tbl_match[ k ] = val
							--table.match( { "a", "b", x = "c", [ 5 ] = 1, 2, { 3 } }, { "string", 1 } )
						end --march 17th 2020
					elseif Capture[ i ] == val then
						--si la captura es el valor de un elemento en la tabla
						tbl_match[ k ] = Capture[ i ]
					elseif type( val ) == "string"
						and type( Capture[ i ] ) == "string" then
						--si el elemento es un string con la captura indicada
						if val:match( Capture[ i ] ) then
							tbl_match[ k ] = val
						end --table.match( { "aba", "b", x = "c", [ 5 ] = 1, 2, { 3 } }, { "a", 1 } )
					elseif table.compare( val, Capture[ i ] ) then
						--si la tabla (Capture[ i ]) es uno de los elementos de la tabla
						tbl_match[ k ] = val
					end
				end
			end
		else
			for k, val in pairs( table_mch ) do
				if table.inside( e_types, Capture ) then
					--si el elemento de la tabla es del mismo tipo que el indicado
					if table.type( { val } ) == Capture then
						tbl_match[ k ] = val
					end
				elseif Capture == val then
					--si la captura es el valor de un elemento en la tabla
					tbl_match[ k ] = Capture
				elseif type( val ) == "string"
					and type( Capture ) == "string" then
					--si el elemento es un string con la captura indicada
					if val:match( Capture ) then
						tbl_match[ k ] = val
					end
				end
			end --table.match( { "a", "b", x = "c", [ 5 ] = 1, 2, 3 }, "c" )
		end
		return tbl_match
	end --may 30th 2018

	function table.unique( Table )
		--elimina los elementos repetidos de una tabla
		if type( Table ) == "function" then
			Table = Table( )
		end
		local tbl_uni = { }
		effector.print_error( Table, "table", "table.unique", 1 )
		local tbl_cop = table.duplicate( Table )
		while #tbl_cop > 0 do
			table.insert( tbl_uni, tbl_cop[ 1 ] )
			tbl_cop = table.retire( tbl_cop, tbl_cop[ 1 ] )
		end --table.unique( { 1, 2, 2, 2, 5, 6, 7, 7, 8 } )
		return tbl_uni
	end --may 12th 2018
	
	function table.twin( ... )
		--crea una tabla con los emparejamientos uno a uno posibles de los elementos de las tablas ingresadas
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
		--effector.print_error( Table, "table", "table.type", 1 )
		if type( Table ) ~= "table" then
			return Table
		end --february 01st 2020
		if #Table > 0 then
			::go_to_ini::
			if type( Table[ 1 ] ) == "string" then
				--shape mod: march 20th 2020
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
			end
			--string
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
	
	function table.ipairs( Table )
		--convierte una tabla no indexada en indexada :D
		if type( Table ) == "function" then
			Table = Table( )
		end
		effector.print_error( Table, "table", "table.ipairs", 1 )
		local Table_i = { }
		for _, val in pairs( Table ) do
			Table_i[ #Table_i + 1 ] = type( val ) ~= "table" and val or table.ipairs( val )
		end
		return Table_i --table.ipairs( tbldemo )
	end --june 10th 2020
	
	function table.inpack( Table, Group )
		--empaqueta los elementos de la tabla ingresada, en grupos
		if type( Table ) == "function" then
			Table = Table( )
		end
		if type( Group ) == "function" then
			Group = Group( )
		end
		effector.print_error( Table, "table", "table.inpack", 1 )
		local parts = Group or 2
		if type( Group ) == "table" then
			parts = ceil( #Table / Group[ 1 ] )
		end
		local inpacks = { }
		for i = 1, ceil( #Table / parts ) do
			inpacks[ i ] = { }
			for k = 1, parts do
				inpacks[ i ][ k ] = Table[ (i - 1) * parts + k ]
			end
		end
		return inpacks
	end --june 10th 2020
	
	--------------------------------------------------------------------------------------------------
	-- Ampliación de la Librería "string" ------------------------------------------------------------
	function string.count( String, Capture )
		-- cantidad de veces que una captura o familia de capturas aparecen en un string
		if type( String ) == "function" then
			String = String( )
		end
		local String = String or ""
		local Capture = Capture or "KE"
		local str_count = 0
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = string.count( v, Capture )
			end
			return recursion_tbl
		end --recursión
		if type( Capture ) == "function" then
			Capture = Capture( )
		end
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
		--convierte un string al valor real que representa
		if type( String ) == "function" then
			String = String( )
		end
		local String = String or ""
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = string.toval( v )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( String, "string", "string.toval", 1 )
		local line, str_to_val = linefx[ ii ]
		if type( String ) == "string" then
			-- march 15th 2018 ----------------------
			String = String:gsub( "%.line", ".LINE" )
			String = String:gsub( "meta%.res_x", "xres" ):gsub( "meta%.res_y", "yres" )
			:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_count" )
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
					:gsub( "l_counter", "line.i" ):gsub( "maxil_count", "line.n" )
					:gsub( "linefx%[  ii  %]%.", "line." )
					:gsub( "\"(&H%x+&)\"", "%1" )--> deja al string tal cual
					--fix: may 11th 2018 --> modify the String before to return
					return String
				end --string.toval( "line.nil + 2" )
			end
			String = String:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
			:gsub( "l_counter", "line.i" ):gsub( "maxil_count", "line.n" )
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
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = string.i( v )
			end
			return recursion_tbl
		end --recursión
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
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = string.change( v, Capture, NoChange, NoCapture, Change )
			end
			return recursion_tbl
		end --recursión
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
				end --"\\[%d]*%a+[%(%-,%.%w &%x%)]*" captura un tag completo
			)
		end
		return String
	end --string.change( "\\c&H0000FF&\\t(\\c&HFF00AA&)\\c&H00FFFF&ru", "\\c&H%x+&", 1, "\\t%b()" )
	
	function string.cap( String, Capture, Extra_Capture, Filter )
		-- ampliación de string.sub y string.gsub con la opción de capturas extras
		--string.cap( line.text_stripped, 4, 10 )
		local String = String or ""
		local Filter = Filter or ""
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = string.cap( v, Capture, Extra_Capture, Filter )
			end
			return recursion_tbl
		end --recursión
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
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = string.parts( v, Parts )
			end
			return recursion_tbl
		end --recursión
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
			end --string.parts( { linefx[ 5 ].text_stripped, linefx[ 7 ].text_stripped },5 )
			i = i + 1
		end --string.parts( nil, { 1, 3 } )
		return Parts_tbl
		-- retorna una tabla con las partes de n tamaño de un string
		-- string.parts( "por ejemplo", 2 ) --> { "po", "r ", "ej", "em", "pl", "o" }
	end --june 23rd 2018
	
	function string.match2( String, Capture, Table )
		--realiza captura múltiple de un patrón determinado
		if type( String ) == "function" then
			String = String( )
		end
		local String = String or ""
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = string.match2( v, Capture, Table )
			end
			return recursion_tbl
		end --recursión
		local Capture = Capture or "KE"
		if type( Capture ) == "function" then
			Capture = Capture( )
		end
		effector.print_error( String, "string", "string.match2", 1 )
		effector.print_error( Capture, "stringtable", "string.match2", 2 )
		local match_multi, i = "", -1
		repeat
			match_multi = match_multi .. Capture
			i = i + 1
		until String:match( match_multi ) == nil
		match_multi = match_multi:gsub( Capture, "", 1 )
		if Table then
			return { match_multi, i }
		end
		return match_multi, i --string.match2( "frsfxfxfx456tr", "fx" )
	end	--may 15th 2020
	
	function string.newmatch( String, ... )
		--realiza capturas múltiples hasta que ya no encuentre conicidencias
		local String = String or ""
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = string.newmatch( v, ... )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( String, "string", "string.newmatch", 1 )
		local Captures = { ... }
		if type( ... ) == "table" then
			Captures = ...
		end
		local i, newcaps = 1
		local capture = Captures[ 1 ]
		while String:match( capture ) do
			newcaps = { String:match( capture ) }
			capture = capture .. (Captures[ i + 1 ] or "")
			if not Captures[ i + 1 ] then
				break
			end
			i = i + 1
		end --string.newmatch( "\\1a&HFF&\\xshad-3.4\\t(45,50,\\blur4)", "\\[%d]*%a[%-%.%w&]*", "\\[%d]*%a[%-%.%w&]*" )
		return unpack( newcaps )
	end --june 15th 2020
	
	function string.replace( String, ... )
		--genera remplazos por medio de capturas (modificación de string.gsub) las capturas son válidas de
		--forma consecutiva, hasta que la concatenación de las mismas ya no exista como una captura válida
		local String = String or ""
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = string.replace( v, ... )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( String, "string", "string.replace", 1 )
		local Captures = { ... }
		if type( ... ) == "table" then
			Captures = ...
		end
		local Filter = ""
		if #Captures > 1 then
			Filter = Captures[ #Captures ]
			table.remove( Captures, #Captures )
		end
		local i = 0
		local newcap = ""
		while i < #Captures do
			newcap = newcap .. Captures[ i + 1 ]
			i = i + 1
			if String == String:gsub( newcap, Filter ) then
				i = i - 1
				break
			end
		end
		if i == 1 then
			String = String:gsub( newcap, Filter )
			return String
		end
		local new_capture = ""
		for k = 1, i do
			new_capture = new_capture .. Captures[ k ]
		end
		String = String:gsub( new_capture, Filter )
		return String--string.replace( "x(34,54,\\1a&HFF&)(8)(0)(9)", "x%b()", "%b()", "%b()", "%d+", "%b()", "yes " )
	end --june 16th 2020
	
	function string.moveclip( String, ... )
		--hace que un \\i?clip se mueva acorde a las distancias y tiempo del \\move del KE o con configuraciones asignadas
		local String = String or ""
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = string.moveclip( v, ... )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( String, "string", "string.moveclip", 1 )
		local function new_clips( String, ... )
			if not String:match( "\\i?clip%([ ]*%-?%d[%.%d ]*,[ ]*%-?%d[%.%d ]*,[ ]*%-?%d[%.%d ]*,[ ]*%-?%d[%.%d ]*%)" ) then
				return ""
			end
			local moves = ...
			if not moves then
				moves = { }
			end
			local Configs = { moves }
			if table.type( Configs ) == "table"
				and #Configs == 1 then
				Configs = moves
			end --solución (...) :D
			local newclip = ""
			if table.type( Configs ) == "table" then
				for i = 1, #Configs do
					newclip = newclip .. new_clips( String, Configs[ i ] )
				end
			else
				Configs = Configs or { [ 5 ] = 1 }
				if #Configs == 1 then
					Configs = { [ 5 ] = Configs[ 1 ] } --Accel
				end
				local Tag, x1, y1, x2, y2 = String:match( "\\(i?clip)%([ ]*(%-?%d[%.%d ]*),[ ]*(%-?%d[%.%d ]*),[ ]*(%-?%d[%.%d ]*),[ ]*(%-?%d[%.%d ]*)%)" )
				x1, y1, x2, y2 = tonumber( x1 ), tonumber( y1 ), tonumber( x2 ), tonumber( y2 )
				local Dx = Configs[ 1 ] or fx.move_l2 - fx.move_l1
				local Dy = Configs[ 2 ] or fx.move_t2 - fx.move_t1
				local t1 = Configs[ 3 ] or fx.movet_i
				local t2 = Configs[ 4 ] or fx.movet_f
				newclip = format( "\\t(%s,%s,%s,\\%s(%s,%s,%s,%s))", t1, t2, (Configs[ 5 ] or 1), Tag, x1 + Dx, y1 + Dy, x2 + Dx, y2 + Dy )
			end --tag.clip( ):moveclip( )
			return newclip --tag.clip( ):moveclip( 1.5 )
		end --tag.clip( ):moveclip( { -200, 0, 0, 1400 }, { 0, 0, 1400, 2800 } )
		return String .. new_clips( String, ... )
	end --june 17th 2020

	--------------------------------------------------------------------------------------------------
	-- Ampliación de la Librería "math" --------------------------------------------------------------
	function math.R( Rand_i, Rand_f )
		local Offset_r = tonumber( tostring( os.time( ) ):sub( -3, -1 ) )
		local rand_i, rand_f = Rand_i, Rand_f
		if Rand_f == nil
			and Rand_i == nil then
			return math.round( math.random( ), 4 )
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
		return R_i + (math.random( R_i, R_f ) + Offset_r - 1) % (R_f - R_i + 1)
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
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = math.format( v, ... )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( String, "string", "math.format", 1 )
		effector.print_error( Values, "table", "math.format", 2 )
		------------------------------------------------------------------
		if String:match( "m%s+%-?%d+[%.%d]*%s+%-?%d+[%.%-%dmlb ]*" ) then
			local function shape_to_t( Shape, t )
				--convierte las coordenadas "y" de una shape en el parámetro t
				local Shape = shape.displace( shape.size( Shape, 100 ), "origin" )
				local Point = shape.point( Shape, 2 )
				local n = #Point
				local t = math.round( math.clamp( t ) * n )
				if type( t ) == "number" then
					if t < 1 then
						t = 1
					elseif t > n then
						t = n
					end
				end
				return math.round( Point[ t ].y / 100, 3 )
			end --"m%s+%-?%d+[%.%d]*%s+%-?%d+[%.%-%dmlb ]*"
			local Shape = shape.ASSDraw3( String )
			return shape_to_t( Shape, Values[ 1 ] )
		end --january 27th 2020
		------------------------------------------------------------------
		local line = linefx[ ii ]
		local max_index = string.count( String, "%%[aAcdeEfgGioqsuxX]^*" ) --modos del string.format
		local str_mathf = format( String, unpack( table.replay( ceil( max_index / #Values ), Values ) ) )
		------------------------------------------------------------------
		--convierte los strings de variables a sus valores reales :D
		local str_mathformat
		str_mathf = str_mathf:gsub( "%.line", ".LINE" ) -->save the var.line.val
		:gsub( "meta%.res_x", "xres" ):gsub( "meta%.res_y", "yres" )
		:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_count" )
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
				:gsub( "l_counter", "line.i" ):gsub( "maxil_count", "line.n" )
				:gsub( "linefx%[  ii  %]%.", "line." )
				:gsub( "\"(&H%x+&)\"", "%1" )
				return str_mathf
			end --math.format( "%s + %s * line.i + 2", 5, 7 )
		end
		str_mathf = str_mathf:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
		:gsub( "l_counter", "line.i" ):gsub( "maxil_count", "line.n" )
		:gsub( "linefx%[  ii  %]%.", "line." )
		:gsub( "\"(&H%x+&)\"", "%1" )
		--rewrite: january 17th 2019
		------------------------------------------------------------------
		return str_mathf
	end

	function math.round( Number, Decimal )
		--redondea un número o una tabla de números a la
		--cantidad de decimales indicados o al entero más cercano
		local Number = Number or nil
		if type( Number ) == "function" then
			Number = Number( )
		end
		if type( Number ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Number ) do
				recursion_tbl[ k ] = math.round( v, Decimal )
			end
			return recursion_tbl
		end --recursión
		local Decimal = Decimal or 0
		if type( Decimal ) == "function" then
			Decimal = Decimal( )
		end
		effector.print_error( Number, "true", "math.round", 1 )
		effector.print_error( Decimal, "number", "math.round", 2 )
		if tonumber( Number ) then
			Number = tonumber( Number )
			return floor( Number * (10 ^ Decimal) + 0.5 ) / (10 ^ Decimal)
		end --math.round( { 1.6, 1.2, x = "&HFF&", } )
		return Number
	end --rewrite june 21st 2020

	function math.distance( px1, py1, px2, py2 )
		--mide la distancia entre dos puntos o entre un punto y el origen ( 0, 0 )
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
		local x1, x2, y1, y2
		if type( px1 ) == "table" then
			--si el primer parámetro es tabla
			x1, y1 = px1[ 1 ], px1[ 2 ]
			if px1[ 3 ]
				and px1[ 4 ] then
				x2, y2 = px1[ 3 ], px1[ 4 ]
			else
				x2, y2 = tonumber( py1 ), tonumber( px2 )
			end
		end
		if type( py1 ) == "table" then
			--si el segund parámetro es tabla
			x2, y2 = py1[ 1 ], py1[ 2 ]
		end
		if type( px2 ) == "table" then
			--si el tercer parámetro es tabla
			x2, y2 = px2[ 1 ], px2[ 2 ]
		end
		if type( px1 ) == "string"
			and px1:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) then --"-5 6"
			--si el primer parámetro es un punto o segmento shape
			if px1:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+[blm ]*%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) then --"0 0 l 0 0"
				x1, y1, x2, y2 = px1:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)%s+[blm ]*(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
			else
				x1, y1 = px1:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
				x2, y2 = py1, px2
			end
			x1, y1, x2, y2 = tonumber( x1 ), tonumber( y1 ), tonumber( x2 ), tonumber( y2 )
		end
		if type( py1 ) == "string"
			and py1:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) then
			--si el segundo parámetro es un punto o segmento shape
		   x2, y2 = py1:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
		   x2, y2 = tonumber( x2 ), tonumber( y2 )
		end
		if type( px2 ) == "string"
			and px2:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) then
			--si el tercer parámetro es un punto o segmento shape
		   x2, y2 = px2:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
		   x2, y2 = tonumber( x2 ), tonumber( y2 )
		end
		if type( tonumber( px1 ) ) == "number"
			and type( tonumber( py1 ) ) == "number" then
			--si los dos primeros parámetros son number/string
			x1 = tonumber( px1 )
			y1 = tonumber( py1 )
		end
		if type( tonumber( px1 ) ) == "number"
			and type( tonumber( py1 ) ) == "number" then 
			if type( tonumber( px2 ) ) == "number" then
				x2 = tonumber( px2 )
			end
			if type( tonumber( py2 ) ) == "number" then
				y2 = tonumber( py2 )
			end
		end
		if x2 == nil then
			x2, y2 = 0, 0
		end
		if not x1 then
			return 0
		end
		return math.round( ((x2 - x1) ^ 2 + (y2 - y1) ^ 2) ^ 0.5, 3 )
	end --rewrite: april 27th 2020
	
	function math.angle( px1, py1, px2, py2 )
		--mide el ángulo entre dos puntos o entre el origen ( 0, 0 ) y un punto
		--este ángulo es medido según las coordenadas del ASSDraw3
		if px1 then
			if type( px1 ) == "function" then
				px1 = px1( )
			end
			effector.print_error( px1, "numberstringtable", "math.angle", 1 )
		end
		if py1 then
			if type( py1 ) == "function" then
				py1 = py1( )
			end
			effector.print_error( py1, "numberstringtable", "math.angle", 2 )
		end
		if px2 then
			if type( px2 ) == "function" then
				px2 = px2( )
			end
			effector.print_error( px2, "numberstringtable", "math.angle", 3 )
		end
		if py2 then
			if type( py2 ) == "function" then
				py2 = py2( )
			end
			effector.print_error( py2, "numberstringtable", "math.angle", 4 )
		end
		local x1, x2, y1, y2
		if type( px1 ) == "table" then
			--si el primer parámetro es tabla
			x1, y1 = px1[ 1 ], px1[ 2 ]
			if px1[ 3 ]
				and px1[ 4 ] then
				x2, y2 = px1[ 3 ], px1[ 4 ]
			else
				x2, y2 = tonumber( py1 ), tonumber( px2 )
			end
		end
		if type( py1 ) == "table" then
			--si el segund parámetro es tabla
			x2, y2 = py1[ 1 ], py1[ 2 ]
		end
		if type( px2 ) == "table" then
			--si el tercer parámetro es tabla
			x2, y2 = px2[ 1 ], px2[ 2 ]
		end
		if type( px1 ) == "string"
			and px1:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) then
			--si el primer parámetro es un punto o segmento shape
			if px1:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+[blm ]*%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) then
				x1, y1, x2, y2 = px1:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)%s+[blm ]*(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
			else
				x1, y1 = px1:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
				x2, y2 = py1, px2
			end
			x1, y1, x2, y2 = tonumber( x1 ), tonumber( y1 ), tonumber( x2 ), tonumber( y2 )
		end
		if type( py1 ) == "string"
			and py1:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) then
			--si el segundo parámetro es un punto o segmento shape
		   x2, y2 = py1:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
		   x2, y2 = tonumber( x2 ), tonumber( y2 )
		end
		if type( px2 ) == "string"
			and px2:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) then
			--si el tercer parámetro es un punto o segmento shape
		   x2, y2 = px2:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
		   x2, y2 = tonumber( x2 ), tonumber( y2 )
		end
		if type( tonumber( px1 ) ) == "number"
			and type( tonumber( py1 ) ) == "number" then
			--si los dos primeros parámetros son number/string
			x1 = tonumber( px1 )
			y1 = tonumber( py1 )
		end
		if type( tonumber( px1 ) ) == "number"
			and type( tonumber( py1 ) ) == "number" then 
			if type( tonumber( px2 ) ) == "number" then
				x2 = tonumber( px2 )
			end
			if type( tonumber( py2 ) ) == "number" then
				y2 = tonumber( py2 )
			end
		end
		if x2 == nil then
			x2, y2 = x1, y1
			x1, y1 = 0, 0
		end
		if x2 == nil
			or (x1 == x2 and y1 == y2) then
			return 0
		end
		local Ang = deg( atan( (y2 - y1) / (x2 - x1) ) )
		if x2 > x1
			and y2 == y1 then
			angle = 0
		elseif x2 > x1
			and y2 > y1 then
			angle = 360 - Ang
		elseif x2 == x1
			and y2 > y1 then
			angle = 270
		elseif x2 < x1
			and y2 > y1 then
			angle = 180 - Ang
		elseif x2 < x1
			and y2 == y1 then
			angle = 180
		elseif x2 < x1
			and y2 < y1 then
			angle = 180 - Ang
		elseif x2 == x1
			and y2 < y1 then
			angle = 90
		elseif x2 > x1
			and y2 < y1 then
			angle = -Ang
		end
		--para coordenadas cartesianas angle = 360 - angle, si angle = 360 entocens angle = 0
		return math.round( angle, 3 )
	end --rewrite: april 27th 2020
	
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
			if Retrurn == "table" then
				return MBpos_x, MBpos_y
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

	function math.bezier2( Shape, Mode, Align_Shape, OffsetB, length )
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
			if Mode == nil
				or Mode == 1 then -- modo por default (centro de la shape)
				bezier_offset = (bezier_length - return_length) / 2 + B_actor_offset
			elseif Mode == 2 then -- desde la izquierda de la shape
				bezier_offset = B_actor_offset
			elseif Mode == 3 then -- desde la derecha de la shape
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
					if Mode == 4 then -- justifica en toda la longitud de la shape
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
			if Mode == 4 then -- justifica en toda la longitud de la shape
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
			Shape = shape.displace( Shape, "incenter" )
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
		if Mode == nil
			or Mode == 1 then -- modo por default (centro de la shape)
			lineoffset = (Blength - l_width) / 2 + actor_offset
		elseif Mode == 2 then -- alinea el texto desde la izquierda
			lineoffset = actor_offset
		elseif Mode == 3 then -- alinea el texto desde la derecha
			lineoffset = Blength - l_width - actor_offset
		elseif Mode == 4 then -- justifica el texto en toda la longitud de la shape, equidistantemente
			lineoffset = (Blength - l_width) * (val_i - 1) / (val_n - 1)
		end
		targetLength, rot_Bezier = 0, 0
		PtNo, targetLength = pyointa.length2PtNo( cont_point, lineoffset + val_center - l_left, nN )
		if Mode == 5 then -- para trazar una curva por medio de shapes
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
	
	function math.movebezier( Shapes, t1, t2, Mode )
		local MmBSh = Shapes
		local t2 = t2 or fx.movet_f
		local t1 = t1 or fx.movet_i
		local dur = t2 - t1
		if type( Shapes ) == "string" then
			MmBSh = { Shapes }
		end
		local MmBTb, MmBtm, MmBps, MmBfr, MmBco, MmBfx = { }, { }, { }, { }, { }, ""
		for i = 1, #MmBSh do
			MmBTb[ i ] = math.bezier2( MmBSh[ i ], Mode )
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
		else
			MmBfx = format( "\\move(%s,%s,%s,%s,%s,%s)%s", MmBco[ 1 ], MmBco[ 2 ], MmBco[ 3 ], MmBco[ 4 ], t1, t2, MmBrz )
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
		--retorna las coordenadas del centro y el radio de un círculo a partir de tres puntos en un clip/shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = { math.circle( v ) }
			end
			return recursion_tbl
		end --recursión
		local coor, center = { }, { }
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
		--rota un punto p( x, y, z ) en el espacio, respecto al eje seleccionado
		if type( p ) == "function" then
			p = p( )
		end
		if table.type( p ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( p ) do
				recursion_tbl[ k ] = math.rotate( v, axis, angle )
			end
			return recursion_tbl
		end --recursión
		if type( angle ) == "function" then
			angle = angle( )
		end
		effector.print_error( p, "stringtable", "math.rotate", 1 )
		effector.print_error( angle, "number", "math.rotate", 3 )
		local rot_p = { }
		if type( p ) == "string"
			and p:match( "%-?%d[%.%d]*%s+%-?%d[%.%d]*" ) then
			rot_p = p:gsub( "(%-?%d[%.%d]*)%s+(%-?%d[%.%d]*)",
				function( x, y )
					--local rot = math.rotate( { x, y }, axis, -angle ) en z
					local rot = math.rotate( { x, y }, axis, angle )
					return format( "%s %s", rot[ 1 ], rot[ 2 ] )
				end --math.rotate( shape.rectangle, "z", 20 )
			) --add: may 14th 2020
		else
			local angle = rad( angle )
			local axisr = axis or "z"
			--local rot_p = { }
			local coo_x = tonumber( p[ 1 ] ) or 0
			local coo_y = tonumber( p[ 2 ] ) or 0
			local coo_z = tonumber( p[ 3 ] ) or 0 --add tonumber: may 14th 2020
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
		end
		return rot_p
	end
	
	function math.matrix_sum( ... )
		--suma los elementos de las tablas entre sí, o con un número dado
		local function sum_matrix( A, B )
			effector.print_error( A, "numbertable", "math.matrix_sum", 1 )
			effector.print_error( B, "numbertable", "math.matrix_sum", 2 )
			local sum = { }
			if type( A ) == "table" then
				for _, v in ipairs( A ) do
					if type( v ) ~= "number" then
						error( "<<Error: math.matrix_sum>> La primera matriz solo debe contener números\nmatrix must contain only numbers", 2 )
					end
				end
			end
			if type( B ) == "table" then
				for _, v in ipairs( B ) do
					if type( v ) ~= "number" then
						error( "<<Error: math.matrix_sum>> La segunda matriz solo debe contener números\nmatrix must contain only numbers", 2 )
					end
				end
			end
			if type( A ) == "table" then
				if type( B ) == "table" then
					for i = 1, #A do
						sum[ i ] = A[ i ] + B[ (i - 1) % #A + 1 ]
					end
				else
					for i = 1, #A do
						sum[ i ] = A[ i ] + B
					end
				end
			else
				if type( B ) == "table" then
					for i = 1, #B do
						sum[ i ] = A + B[ i ]
					end
				else
					sum = A + B
				end
			end
			return sum
		end
		local arrays = { ... }
		local sumx = arrays[ 1 ]
		for i = 2, #arrays do
			sumx = sum_matrix( sumx, arrays[ i ] )
		end
		return sumx
	end
	
	function math.matrix_trans( A )
		--calcula la matriz transpuesta de un array cuadrado
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

	function math.matrix_mul( ... )
		--multiplica los valores de los arrays
		local function mul_matrix( A, B ) --math.matrix_mul( { 1, -3, 0, 2 }, 2, { 2, 4, -2, 5 } )
			effector.print_error( A, "numbertable", "math.matrix_mul", 1 )
			effector.print_error( B, "numbertable", "math.matrix_mul", 2 )
			if type( A ) == "table" then
				for _, v in ipairs( A ) do
					if type( v ) ~= "number" then
						error( "<<Error: math.matrix_mul>> La primera matriz solo debe contener números\nmatrix must contain only numbers", 2 )
					end
				end
			end
			if type( B ) == "table" then
				for _, v in ipairs( B ) do
					if type( v ) ~= "number" then
						error( "<<Error: math.matrix_mul>> La segunda matriz solo debe contener números\nmatrix must contain only numbers", 2 )
					end
				end
			end
			local mul, trans = { }, { }
			if type( A ) == "table"
				and type( B ) == "table" then
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
			elseif type( A ) == "table" then
				for i = 1, #A do
					mul[ i ] = A[ i ] * B
				end
			else
				mul = A * B
			end
			return mul
		end
		local arrays = { ... }
		local mulx = arrays[ 1 ]
		for i = 2, #arrays do
			mulx = mul_matrix( mulx, arrays[ i ] )
		end
		return mulx
	end
	
	function math.matrix_cof( A, Return )
		--calcula la matriz de cofactores de una matriz 3x3
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
			inv = math.matrix_mul( adj, 1 / det )
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
		--calucla el determinante de una matriz 3x3
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
		--calcula la matriz adjunta de una matriz 3x3
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
		--calcula la matriz inversa (si la hay) de una matriz 3x3
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
		--genera una matriz de desplazamiento 3x3 (en 2D)
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
		--genera una matriz de rotación 3x3 (en 3D)
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
		end --shape.matrix( shape.rectangle, math.matrix_rot( 50, "y" ) )
		local Rot1 = math.matrix_mul( math.matrix_dis( Orgx, Orgy ), Rot )
		return math.matrix_mul( Rot1, math.matrix_dis( -Orgx, -Orgy ) )
	end
	
	function math.matrix_rat( Ratx, Raty, Orgx, Orgy ) --> ratio
		--genera una matriz de proporción 3x3
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
		--genera una matriz de reflejo 3x3
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
		--genera una matriz de afilamento 3x3
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
		--genera una sucesión de números basado en algoritmos predeterminados
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
			[ 16 ] = A - A * ceil( idx / A ) + idx,									-->( 1-->A )
			[ 17 ] = A * ceil( idx / A ) - idx + 1,									-->( A-->1 )
			[ 18 ] = (A - A * ceil( idx / A ) + idx) * (-1) ^ (ceil( idx / A ) + 1),-->( 1-->A,-1-->-A )
			[ 19 ] = (A - 1 - (A - 1) * ceil( idx / (A - 1) ) + idx) * (-1) ^ (ceil( idx / (A - 1) ) + 1) + (A + 1) * (1 + (-1) ^ ceil( idx / (A - 1) )) / 2,
			--[ 19 ]																-->( 1-->A-->1 )
			[ 20 ] = A + 1 - ((A - 1 - (A - 1) * ceil( idx / (A - 1) ) + idx) * (-1) ^ (ceil( idx / (A - 1) ) + 1) + (A + 1) * (1 + (-1) ^ ceil( idx / (A - 1) )) / 2),
			--[ 20 ]																-->( A-->1-->A )
			[ 21 ] = (( A > B )
				and B + D - ((D - 1 - (D - 1) * ceil( idx / (D - 1) ) + idx) * (-1) ^ (ceil( idx / (D - 1) ) + 1) + (D + 1) * (1 + (-1) ^ ceil( idx / (D - 1) )) / 2)
				or  A + (E - 1 - (E - 1) * ceil( idx / (E - 1) ) + idx) * (-1) ^ (ceil( idx / (E - 1) ) + 1) + (E + 1) * (1 + (-1) ^ ceil( idx / (E - 1) )) / 2 - 1
			),--[ 21 ]																-->( A-->B-->A )
			[ 22 ] = (A <= B) and (idx - 1) % (B - A + 1) + A or -1 * ((idx - 1) % (A - B + 1) - A), -- ( A-->B ) may 20th 2020
			[ 23 ] = 1 - floor( 1 / idx ),											-->( 0,11 ) primer 0 y el resto 1
			[ 24 ] = floor( 1 / idx ),												-->( 1,00 ) primer 1 y el resto 0
			[ 25 ] = A * (1 - floor( 1 / idx )),									-->( 0,AA ) primer 0 y el resto A
			[ 26 ] = A * floor( 1 / idx ),											-->( A,00 ) primero A y el resto 0
			[ 27 ] = A * floor( 1 / idx ) + B * (1 - floor( 1 / idx )),				-->( A,BB" ) primero A y el resto B
			[ 28 ] = 1 - floor( (A * ceil( idx / A ) - idx + 1) / A ),				-->( 0<->11 ) primer 0 y (A-1)veces 1
			[ 29 ] = floor( (A - A * ceil( idx / A ) + idx) / A ),					-->( 00<->1 ) (A-1)veces 0 el un 1
			[ 30 ] = floor( (A * ceil( idx / A ) - idx + 1) / A ),					-->( 1<->00 ) primer 1 y (A-1)veces 0
			[ 31 ] = 1 - floor( (A - A * ceil( idx / A ) + idx) / A ),				-->( 11<->0 ) (A-1)veces 1 el un 0
			[ 32 ] = A * (1 - floor( (B * ceil( idx / B ) - idx + 1) / B )),		-->( 0<->AA ) primer 0 y (B-1)veces A
			[ 33 ] = A * floor( (B - B * ceil( idx / B ) + idx) / B ),				-->( 00<->A ) (B-1)veces 0 y un A
			[ 34 ] = A * floor( (B * ceil( idx / B ) - idx + 1) / B ),				-->( A<->00 ) primer A y (B-1)veces 0
			[ 35 ] = A * (1 - floor( (B - B * ceil( idx / B ) + idx) / B )),		-->( AA<->0 ) (B-1)veces A y un 0
			[ 36 ] = A * floor( (C * ceil( idx / C ) - idx + 1) / C ) + B * (1 - floor( (C * ceil( idx / C ) - idx + 1) / C )),	-->( A<->BB ) primer A y (C-1)veces B
			[ 37 ] = A * (1 - floor( (C - C * ceil( idx / C ) + idx) / C )) + B * floor( (C - C * ceil( idx / C ) + idx) / C ),	-->( AA<->B ) (C-1)veces A y un B
			[ 38 ] = floor( (idx - 1) / A ) + 1,									-->( N,n ) los Naturales n-veces cada uno
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
			[ "1-->A" ]			= A - A * ceil( idx / A ) + idx,
			[ "A-->1" ]			= A * ceil( idx / A ) - idx + 1,
			[ "1-->A,-1-->-A" ]	= (A - A * ceil( idx / A ) + idx) * (-1) ^ (ceil( idx / A ) + 1),
			[ "1-->A-->1" ]		= (A - 1 - (A - 1) * ceil( idx / (A - 1) ) + idx) * (-1) ^ (ceil( idx / (A - 1) ) + 1) + (A + 1) * (1 + (-1) ^ ceil( idx / (A - 1) )) / 2,
			[ "A-->1-->A" ]		= A + 1 - ((A - 1 - (A - 1) * ceil( idx / (A - 1) ) + idx) * (-1) ^ (ceil( idx / (A - 1) ) + 1) + (A + 1) * (1 + (-1) ^ ceil( idx / (A - 1) )) / 2),
			[ "A-->B-->A" ]		= (( A > B )
								and B + D - ((D - 1 - (D - 1) * ceil( idx / (D - 1) ) + idx) * (-1) ^ (ceil( idx / (D - 1) ) + 1) + (D + 1) * (1 + (-1) ^ ceil( idx / (D - 1) )) / 2)
								or  A + (E - 1 - (E - 1) * ceil( idx / (E - 1) ) + idx) * (-1) ^ (ceil( idx / (E - 1) ) + 1) + (E + 1) * (1 + (-1) ^ ceil( idx / (E - 1) )) / 2 - 1
								),
			[ "A-->B" ]			= (A <= B) and (idx - 1) % (B - A + 1) + A or -1 * ((idx - 1) % (A - B + 1) - A), --may 20th 2020 math.i( j, 5, 7 )[ "A-->B" ]
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
		for k, val in pairs( algorithms ) do
			if tostring( val ) == "-0" then
				algorithms[ k ] = 0
			end
		end --october 11th 2019
		return algorithms
	end
	
	function math.picas( )
		--jugar picas y fijas :D
		local digits = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" }
		digits = table.disorder( digits )
		local function picasyfijas( Number )
			local number_false = "Debes ingresar un número de 4 cifras y que todas ellas sean diferentes entre sí"
			local Number = Number or fx.offset[ 1 ]
			local number_str = tostring( Number )
			if number_str:len( ) ~= 4 then
				return number_false
			end
			local table_pyf, table_numb = { }, { }
			for i = 1, 4 do
				table_pyf[ i ] = number4:sub( i, i )
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
		return digits[ 2 ] .. digits[ 4 ] .. digits[ 6 ] .. digits[ 8 ], picasyfijas
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
		--convierte un archivo .wav en valores o transformaciones para shapes :D
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
	end --math.audio( )

	function math.to16( Num )
		--convierte un número de base decimal a hexadecimal
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
		end --recursión
		return dec_to_hex --august 03rd 2019
	end --math.to16( 255 )

	function math.clamp( Num, Min, Max, Cycle )
		--restringe un número entre un mínimo y un máximo
		if type( Num ) == "function" then
			Num = Num( )
		end
		local Num = Num or 0.5
		if type( Num ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Num ) do
				recursion_tbl[ k ] = math.clamp( v, Min, Max, Cycle )
			end
			return recursion_tbl
		end --recursión
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
		if Cycle then --se restringe en forma cíclica
			Num = math.round( Num * 10000 )
			c_min = math.round( c_min * 10000 )
			c_max = math.round( c_max * 10000 )
			return math.round( math.i( Num - c_min, c_min, c_max )[ "A-->B-->A" ] / 10000, 3 )
		end
		if Num < c_min then
			return c_min
		elseif Num > c_max then
			return c_max
		end
		return Num --rewrite: june 30th 2020
	end --math.clamp( 3, 5, 10 )
	
	function math.cubic( c1, c2, c3, c4 )
		--calcula la raíz o raíces de una ecuación cúbica
		local a = c2 / c1
		local b = c3 / c1
		local c = c4 / c1
		local Q = (3 * b - a ^ 2) / 9
		local P = (-2 * a ^ 3 + 9 * a * b - 27 * c) / 54
		local D = Q ^ 3 + P ^ 2
		local x, S, T = { }
		if D == 0 then --math.cubic( 1, -4, 5, -2 )
			S = P ^ (1 / 3)
			T = P ^ (1 / 3)
			if P < 0 then
				S = -1 * abs( P ) ^ (1 / 3)
				T = -1 * abs( P ) ^ (1 / 3)
			end
			x[ 1 ] = math.round( -a / 3 + S + T, 3 )
			x[ 2 ] = math.round( -a / 3 - 0.5 * (S + T), 3 )
			if x[ 2 ] == x[ 1 ] then
				x[ 2 ] = nil
			end
		elseif D > 0 then --math.cubic( 1, -4, 5, 2 )
			S = (P + D ^ 0.5) ^ (1 / 3)
			T = (P - D ^ 0.5) ^ (1 / 3)
			if (P + D ^ 0.5) < 0 then
				S = -1 * abs( P + D ^ 0.5 ) ^ (1 / 3)
			end
			if (P - D ^ 0.5) < 0 then
				T = -1 * abs( P - D ^ 0.5 ) ^ (1 / 3)
			end
			x[ 1 ] = math.round( -a / 3 + S + T, 3 )
		else --math.cubic( 1, -2, -1, 2 )
			local A = acos( P / ((-Q) ^ 1.5) )
			x[ 1 ] = math.round( 2 * ((-Q) ^ 0.5) * cos( (2 * pi * 0 + A) / 3 ) - a / 3, 3 )
			x[ 2 ] = math.round( 2 * ((-Q) ^ 0.5) * cos( (2 * pi * 1 + A) / 3 ) - a / 3, 3 )
			x[ 3 ] = math.round( 2 * ((-Q) ^ 0.5) * cos( (2 * pi * 2 + A) / 3 ) - a / 3, 3 )
		end
		return x
	end --may 12th 2020
	
	function math.count( )
		--genera un contador independiente a cada variable asignada :D
		local i = 0
		return function( )
			i = i + 1
			return i
		end
	end --june 10th 2020
	
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
				if false_exit then
					false_exit = string.toval( false_exit:sub( 2, -2 ) ):gsub( "\\", "\\\\" ):gsub( "%&", "↓" )
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
						Tag, alpha.interpolate( (j - 1) / maxj, Val_ini, Val_fin ),
						Tag, alpha.interpolate( (j - 0) / maxj, Val_ini, Val_fin )
					)
				end --"\\1a0::255"
				if Tag:match( "\\%d+v?c" ) then
					return format( "%s%s\\t(%s%s)",
						Tag, color.interpolate( (j - 1) / maxj, Val_ini, Val_fin ),
						Tag, color.interpolate( (j - 0) / maxj, Val_ini, Val_fin )
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
				return format( "%s( color.random%s )", Tag, Random_funct )
			end
		) --"\\1cR( ** )" --> "\\1c .. color.random( ** )"
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
		:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_count" )
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
		:gsub( "l_counter", "line.i" ):gsub( "maxil_count", "line.n")
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
						local tag_idx, tag_nam, tag_val = 0, nil, 0
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
		local function tag_roundfx( TagString )
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
		return tag_roundfx( string.change( Text, "\\org%b()", 1 ) ) --april 20th 2018
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
		:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_count" )
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
		:gsub( "l_counter", "line.i" ):gsub( "maxil_count", "line.n" )
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
						shape_modify = shape.displace( shape_modify, fx.move_x1, fx.move_y1, "center" )
					elseif capture:match( "%,[%d ]*%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*" ) then
						--"\\clip(shape.circle, 1, 120, -86)" relativo a la posición x, y
						local pos_clip_x, pos_clip_y = capture:match( "%,[%d ]*%,[ ]*(%-?%d+[%.%d ]*)%,[ ]*(%-?%d+[%.%d ]*)" )
						shape_modify = shape.displace(
							shape_modify,
							fx.pos_x + tonumber( pos_clip_x ),
							fx.pos_y + tonumber( pos_clip_y ), "center"
						)
					elseif capture:match( "%,[ ]*%-?%d+[%.%d ]*%,[ ]*%-?%d+[%.%d ]*" ) then
						--"\\clip(shape.circle, 120, -86)" relativo al 0, 0
						local pos_clip_x, pos_clip_y = capture:match( "%,[ ]*(%-?%d+[%.%d ]*)%,[ ]*(%-?%d+[%.%d ]*)" )
						shape_modify = shape.displace( shape_modify, tonumber( pos_clip_x ), tonumber( pos_clip_y ), "center" )
					else
						--"\\clip(shape.circle, true)"
						shape_modify = shape.displace( shape_modify, fx.pos_x, fx.pos_y, "center" )
						--shape_modify = shape.displace( shape_modify, fx.move_x1, fx.move_y1, "center" ) --fix: august 04th 2018
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
		effector.print_error( String, "string", "tag.default2", 1 )
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
		-------------------------------------------------------------------------
		String = String:gsub( "%.line", ".LINE" ) --> var.line.val
		:gsub( "meta%.res_x", "xres" ):gsub( "meta%.res_y", "yres" )
		:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_count" )
		:gsub( "line%.", "linefx[  ii  ]." )
		:gsub( "(&H%x+&)", "\"" .. "%1" .. "\"" )
		:gsub( "%.LINE", ".line" ) --add: january 18th 2019
		-------------------------------------------------------------------------
		String = String:gsub( "(\\%w+%-?%b{})",
			function( capture )
				local line = linefx[ ii ]
				local tags_capture = tag.operation( capture:match( "(\\%w+)%-?%b{}" ) )
				local vals_capture = capture:match( "\\%w+%-?%{(.+)%}" )
				if pcall( loadstring( format( "return function( meta, line, x, y ) return { %s } end", vals_capture ) ) ) then
					local fun_ipol = loadstring( format( "return function( meta, line, x, y ) return { %s } end", vals_capture ) )( )
					if pcall( fun_ipol ) then
						local tbl_ipol = fun_ipol( meta, line, x, y )
						if tbl_ipol then
							if capture:match( "(\\%w+%-)%b{}" ) then
								--\\tag-{ values } interpola respecto a j
								return format( "%s%s", tags_capture, tag.ipol( module, tbl_ipol ) )
							end
							--\\tag{ values } interpola respecto a val_i
							return format( "%s%s", tags_capture, tag.ipol( module1, tbl_ipol ) )
						end
					end
				end
				return capture
			end
		)
		-------------------------------------------------------------------------
		String = String:gsub( "xres", "meta.res_x" ):gsub( "yres", "meta.res_y" )
		:gsub( "l_counter", "line.i" ):gsub( "maxil_count", "line.n" )
		:gsub( "linefx%[  ii  %]%.", "line." )
		:gsub( "\"(&H%x+&)\"", "%1" ) --add: january 18th 2019
		-------------------------------------------------------------------------
		return String
	end --mod:june 18th 2020
	
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
					[ 22 ] = ":move",				[ 23 ] = ":filter",				[ 24 ] = ":move",
					[ 25 ] = ":grid",
				}
				local functions_fun = {
					[ 01 ] = "text.upper",			[ 02 ] = "text.lower",			[ 03 ] = "text.tag",
					[ 04 ] = "text.rand",			[ 05 ] = "text.infx",			[ 06 ] = "text.outfx",
					[ 07 ] = "text.kana2romaji",	[ 08 ] = "text.syl2hiragana",	[ 09 ] = "text.syl2katakana",
					[ 10 ] = "text.to_kara",		[ 11 ] = "text.text2stripped",	[ 12 ] = "text.inclip",
					[ 13 ] = "text.outclip",		[ 14 ] = "text.deformed",		[ 15 ] = "text.deformed2",
					[ 16 ] = "text.do_shape",		[ 17 ] = "text.to_shape",		[ 18 ] = "text.bord_to_shape",
					[ 19 ] = "text.to_pixels",		[ 20 ] = "text.to_clip",		[ 21 ] = "text.bord_to_pixels",
					[ 22 ] = "text.move",			[ 23 ] = "text.filter",			[ 24 ] = "text.move",
					[ 25 ] = "text.grid",
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
		String = String:gsub( "(%-?%d+[%.%d]*)([jJ]^*)",
			function( capture, variable )
				local varx = j
				if variable == "J" then
					varx = J
				end
				return tonumber( capture ) * varx
			end
		)--add: may 10th 2020
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
		:gsub( "line%.i", "l_counter" ):gsub( "line%.n", "maxil_count" )
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
		:gsub( "l_counter", "line.i" ):gsub( "maxil_count", "line.n" )
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
	
	function tag.set( Times, Events, Tags )
		if type( Times ) == "function" then
			Times = Times( )
		end
		effector.print_error( Times, "table", "tag.set", 1 )
		effector.print_error( Events, "stringtable", "tag.set", 2 )
		local Times = HMS_to_ms( Times )
		local Events = Events
		if type( Events ) == "table"
			and Tags then
			Events = table.concat2( Events, Tags )
		end
		local event_tbl = { }
		for i = 1, #Times do
			if type( Events ) == "function" then
				event_tbl[ i ] = Events( )
			elseif type( Events ) == "table" then
				if type( Events[ (i - 1) % #Events + 1 ] ) == "function" then
					event_tbl[ i ] = Events[ (i - 1) % #Events + 1 ]( )
				else
					event_tbl[ i ] = Events[ (i - 1) % #Events + 1 ]
				end
			else
				event_tbl[ i ] = Events
			end
		end
		for i = 1, #event_tbl do
			event_tbl[ i ] = string.change( event_tbl[ i ], "\\[%d]*%a+[%(%-,%.%w &%x%)\\]*", nil, "\\t%b()",
				function( cap )
					return format( "\\t(0,1,%s)", cap )
				end
			)
			:gsub( "\\t%b()",
				function( tagst )
					local time1, time2
					tagst = tagst:gsub( "\\t%([ ]*(%d[%.%d ]*),[ ]*(%d[%.%d]*)",
						function( t1, t2 )
							time1 = tonumber( t1 ) + Times[ i ] - fx.start_time
							time2 = tonumber( t2 ) + Times[ i ] - fx.start_time
							return format( "\\t(%s,%s", time1, time2 )
						end
					)
					if time1 >= fx.end_time then
						return ""
					end
					return tagst
				end --:match( "\\[%d]*%a+[%(%-,%.%w &%x%)]*" )
			)
		end
		return table.concat( event_tbl )
	end --rewrite: june 15th 2020

	function tag.only( Conditions, ... )
		if type( Conditions ) == "function" then
			Conditions = Conditions( )
		end
		local Conditions = Conditions or nil
		local TrueExits = { ... }
		if type( ... ) == "table" then
			TrueExits = ...
		end
		if type( Conditions ) == "table" then
			for i = 1, #Conditions do
				if Conditions[ i ] == true then
					return TrueExits[ i ]
				end
			end
			if #TrueExits > #Conditions then
				return TrueExits[ #Conditions + 1 ]
			end
			return ( type( TrueExits[ #TrueExits ] ) == "number" ) and 0 or ""
		end
		if Conditions then
			return TrueExits[ 1 ]
		end
		return TrueExits[ 2 ] or ( (type( TrueExits[ 1 ] ) == "number") and 0 or "" )
	end --rewrite: june 14th 2020

	function tag.oscill( DurTotal, DurDelay, ... )
		--DurDelay = DurDelay, or: DurDelay = { DurDelay, accel }, or: DurDelay = function
		--DurDelay = { DurDelay, accel, dilatation }, or: DurDelay = { { DurDelay, Dur_trans }, accel, dilatation }
		--DurDelay = { { DurDelay, Dur_trans }, accel, dilatation, offset_time }
		------------------------------------------------------------------------
		effector.print_error( DurTotal, "numbertablefunction", "tag.oscill", 1 )
		effector.print_error( DurDelay, "numbertablefunction", "tag.oscill", 2 )
		local time_ini, time_fin, time_tot = 0, DurTotal
		local index_ii, dur_del1, dur_del2 = 1, DurDelay
		local accel, dilat, offset_t, time_off, Tags = 1, 0, 0, 0, { ... }
		------------------------------------------------------------------------
		if type( DurTotal ) == "table"
			and type( DurTotal[ 1 ] ) ~= "table" then
			time_ini = DurTotal[ 1 ] or 0			--tiempo de inicio
			time_fin = DurTotal[ 2 ] or fx.dur		--tiempo final
			index_ii = DurTotal[ 3 ] or 1			--índice en caso de table
		elseif type( DurTotal ) == "function" then
			time_ini = DurTotal( )[ 1 ] or 0		--tiempo de inicio
			time_fin = DurTotal( )[ 2 ] or fx.dur	--tiempo final
			index_ii = DurTotal( )[ 3 ] or 1		--índice en caso de table
		end --tag.oscill( 800, { {200, 5 } }, "\\1cR( )" )
		--colores = table.ipol( { shape.color1, shape.color3, shape.color1 }, char.n, "\\1c" )
		--colores[ char.i ], tag_oscill( { 0, fx.dur, char.i + 1 }, 1f, colores )
		------------------------------------------------------------------------
		if retime_mode then
			time_ini, time_fin = retimettag( retime_mode, time_ini, time_fin )
		end --september 09th 2017
		time_tot = time_fin - time_ini				--tiempo total
		------------------------------------------------------------------------
		if type( DurDelay ) == "table" then
			dur_del1 = DurDelay[ 1 ]
			if type( DurDelay[ 1 ] ) == "table" then
				dur_del1 = DurDelay[ 1 ][ 1 ]
				if DurDelay[ 1 ][ 2 ] then
					dur_del2 = DurDelay[ 1 ][ 2 ]
				end
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
		------------------------------------------------------------------------
		if type( ... ) == "function" then
			Tags = Tags[ 1 ]( )
			if type( Tags ) ~= "table" then
				Tags = { Tags }
			end
		end --tag.oscill( fx.dur, 400, function( ) return "\\blurR( 4 )" end )
		if type( ... ) == "table" then
			Tags = ...
		end
		------------------------------------------------------------------------
		local time_i, time_f, tags_fx = 0, 1, ""
		local indicator, tag_osc = 1, ""
		if type( DurDelay ) == "number" then
			dur_del1 = dur_del1 - dilat
		elseif type( DurDelay ) == "function" then
			dur_del1 = 0
		end
		if not dur_del2 then
			dur_del2 = dur_del1
		end
		------------------------------------------------------------------------
		if floor( time_tot / dur_del1 ) * dur_del1 + dur_del2 ~= time_tot then
			time_tot = floor( time_tot / dur_del1 ) * dur_del1 + dur_del2
		end --ajusta los tiempos para que las tranformaciones sean exactas
		local time_tot2 = time_tot
		local dur_func, dur_tag2 = 0, 0
		------------------------------------------------------------------------
		if type( DurTotal ) == "table"
			and type( DurTotal[ 1 ] ) == "table" then
			local multi_oscill = { }
			for i = 1, #DurTotal do
				multi_oscill[ i ] = tag.oscill( DurTotal[ i ], DurDelay, ... )
			end --recursión
			return table.concat( multi_oscill ) --january 25th 2020
		end --tag.oscill( { { 0, 500 }, { fx.dur - 500, fx.dur } }, 100, "\\1cR( )" )
		------------------------------------------------------------------------
		i = 0
		while time_tot > 0 do
			time_i = math.round( dur_del1 * i + time_ini + time_off, 2 )
			time_f = math.round( (dur_del1 + dilat) * (i + 1) + time_ini + time_off, 2 )
			if type( DurDelay ) == "table" and
				type( DurDelay[ 1 ] ) == "table" then
				time_f = time_i + dur_del2
			end
			if type( DurDelay ) == "function" then
				dur_func = DurDelay( i )
				time_i = math.round( dur_tag2 + time_ini + time_off, 2 )
				time_f = math.round( time_i + dur_func, 2 )
			end
			---------------------------------------------------------------------------
			indicator = #Tags - #Tags * ceil( (i + index_ii) / #Tags ) + i + index_ii
			tag_osc = Tags[ indicator ]
			---------------------------------------------------------------------------
			if oscill_random then
				tag_osc = table.random( Tags )
				if type( tag_osc ) == "function" then
					tag_osc = tag_osc( i )
				end
			end --tag.oscill( fx.dur, 1000, { "\\blur1", "\\blur2", "\\blur3" } )
			if type( Tags[ indicator ] ) == "function" then
				tag_osc = Tags[ indicator ]( i )
			end
			---------------------------------------------------------------------------
			if oscill_default
				and time_tot - dur_del1 <= 0 then
				--hace que los tags de la último \\t retornen a sus valores por default
				tag_osc = tag.default( tag_osc )
				-- oscill_default = true <-- en la celda variables
				-- tag.oscill( { 0, 400 }, 80, "\\fscxyrRc( 0.75, 1.25 )" )
			end
			---------------------------------------------------------------------------
			if time_tot - dur_del1 <= 0 then
				time_f = time_ini + time_tot2
				--hace que la última transfo termine en su tiempo exacto
			end --add: august 05th 2018
			---------------------------------------------------------------------------
			tags_fx = tags_fx .. format( "\\t(%s,%s,%s,%s)", time_i, time_f, accel, tag_osc )
			tags_fx = tags_fx:gsub( "\\t%(%d+[%.%d]*%,%d+[%.%d]*%,[%d%.%,]*%)", "" )
			if type( DurDelay ) == "function" then
				dur_tag2 = dur_tag2 + dur_func
				dur_del1 = dur_func
			else
				dur_del1 = dur_del1 + dilat
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
			time_tot = math.round( time_tot - dur_del1, 2 ) -- april 13th 2018
			i = i + 1
		end
		-------------------------------------------------------------------------------
		tags_fx = tags_fx:gsub( "\\t%b()",
			function( capture )
				if type( tonumber( capture:match( "\\t%((%d+[%.%d]*)" ) ) ) == "number"
					and tonumber( capture:match( "\\t%((%d+[%.%d]*)" ) ) > time_ini + time_tot2 then
					return ""
				end
				return capture
			end
		) --august 22nd 2016
		-------------------------------------------------------------------------------
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
		local left_x, top_y, clip_W, clip_H, size_W, size_H, Mode
		local loop_W, loop_H = fx.loop_h, fx.loop_v
		local offset = l.outline + l.shadow
		if type( left_cx ) == "string" then
			clip_move = left_cx
			left_x, top_y  = fx.move_l1 - offset, fx.move_t1 - offset
			clip_W, clip_H = val_width + 2 * offset, val_height + 2 * offset
			Mode = 79
		else
			left_x = (left_cx or fx.move_l1) - offset
			top_y = (top_cy or fx.move_t1) - offset
			clip_W, clip_H = (width_clip or val_width) + 2 * offset, (height_clip or val_height) + 2 * offset
			Mode = Mode or 79
		end
		size_W, size_H = clip_W / loop_W, clip_H / loop_H
		local cx1, cx2, cy1, cy2
		if table.inside( { 13, 17, 31, 39, 71, 79, 93, 97 }, Mode ) == false then
			Mode = 79
		end
		if Mode == 17
			or Mode == 71 then
			cx1 = left_x + (ceil( j / loop_H ) - 1) * size_W
			cx2 = left_x + (ceil( j / loop_H ) - 0) * size_W
		elseif Mode == 13
			or Mode == 79 then
			cx1 = left_x + ((j - 1) % loop_W + 0) * size_W
			cx2 = left_x + ((j - 1) % loop_W + 1) * size_W
		elseif Mode == 39
			or Mode == 93 then
			cx1 = left_x + clip_W - (ceil( j / loop_H ) - 0) * size_W
			cx2 = left_x + clip_W - (ceil( j / loop_H ) - 1) * size_W
		elseif Mode == 31
			or Mode == 97 then
			cx1 = left_x + clip_W - ((j - 1) % loop_W + 1) * size_W
			cx2 = left_x + clip_W - ((j - 1) % loop_W + 0) * size_W
		end
		if Mode == 79 or
			Mode == 97 then
			cy1 = top_y + (ceil( j / loop_W ) - 1) * size_H
			cy2 = top_y + (ceil( j / loop_W ) - 0) * size_H
		elseif Mode == 71
			or Mode == 93 then
			cy1 = top_y + ((j - 1) % loop_H + 0) * size_H
			cy2 = top_y + ((j - 1) % loop_H + 1) * size_H
		elseif Mode == 13
			or Mode == 31 then
			cy1 = top_y + clip_H - (ceil( j / loop_W ) - 0) * size_H
			cy2 = top_y + clip_H - (ceil( j / loop_W ) - 1) * size_H
		elseif Mode == 17
			or Mode == 39 then
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
	end --tag.clip( syl.left, syl.top, syl.width, syl.height, 79, "shape.rmove( 0.4 * line.height )" )

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
	end --tag.clip2( syl.left, syl.top, syl.width, syl.height, "shape.rmove( 0.4 * line.height)" )
	
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
		local Mode = Mode or 79
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
		if table.inside( { 13, 17, 31, 39, 71, 79, 93, 97 }, Mode ) == false then
			Mode = 79
		end
		if Mode == 17
			or Mode == 71 then
			cx1 = left_x + pixelW[ ceil( j / loop_H ) - 2 ]
			cx2 = left_x + pixelW[ ceil( j / loop_H ) - 1 ]
		elseif Mode == 13
			or Mode == 79 then
			cx1 = left_x + pixelW[ (j - 1) % loop_W - 1 ]
			cx2 = left_x + pixelW[ (j - 1) % loop_W - 0 ]
		elseif Mode == 39
			or Mode == 93 then
			cx1 = left_x + clip_W - pixelW[ ceil( j / loop_H ) - 1 ]
			cx2 = left_x + clip_W - pixelW[ ceil( j / loop_H ) - 2 ]
		elseif Mode == 31
			or Mode == 97 then
			cx1 = left_x + clip_W - pixelW[ (j - 1) % loop_W - 0 ]
			cx2 = left_x + clip_W - pixelW[ (j - 1) % loop_W - 1 ]
		end
		if Mode == 79
			or Mode == 97 then
			cy1 = top_y + pixelH[ ceil( j / loop_W ) - 2 ]
			cy2 = top_y + pixelH[ ceil( j / loop_W ) - 1 ]
		elseif Mode == 71
			or Mode == 93 then
			cy1 = top_y + pixelH[ (j - 1) % loop_H - 1 ]
			cy2 = top_y + pixelH[ (j - 1) % loop_H - 0 ]
		elseif Mode == 13
			or Mode == 31 then
			cy1 = top_y + clip_H - pixelH[ ceil( j / loop_W ) - 1 ]
			cy2 = top_y + clip_H - pixelH[ ceil( j / loop_W ) - 2 ]
		elseif Mode == 17
			or Mode == 39 then
			cy1 = top_y + clip_H - pixelH[ (j - 1) % loop_H - 0 ]
			cy2 = top_y + clip_H - pixelH[ (j - 1) % loop_H - 1 ]
		end
		return format( "\\clip(%s,%s,%s,%s)",
			math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 )
		)
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
			Shp_tbl = remember( "shpx", shape.divide( shape.displace( Shapes, fx.pos_x + Center_x, fx.pos_y + Center_y, "center" ) ) )
		end
		return format( "\\clip(%s)", Shp_tbl[ (j - 1) % #Shp_tbl + 1 ] )
	end --Add: august 04th 2018

	function tag.do_tag( String )
		if type( String ) == "function" then
			String = String( )
		end
		effector.print_error( String, "string", "tag.do_tag", 1 )
		local func_tag = {
			[ 01 ] = "\\tag.set%b()",			[ 02 ] = "\\tag.only%b()",			[ 03 ] = "\\tag.oscill%b()",
			[ 04 ] = "\\tag.oscill2%b()",		[ 05 ] = "\\tag.glitter%b()",		[ 06 ] = "\\tag.clip%b()",
			[ 07 ] = "\\tag.clip2%b()",			[ 08 ] = "\\tag.Rclip%b()",			[ 09 ] = "\\tag.Pclip%b()",
			[ 10 ] = "\\tag.clip_shape%b()",	[ 11 ] = "\\tag.cyclic%b()",		[ 12 ] = "\\tag.sec%b()",
			[ 13 ] = "\\shape.lmove%b()",		[ 14 ] = "\\shape.pmove%b()",		[ 15 ] = "\\shape.smove%b()",
			[ 16 ] = "\\shape.rmove%b()",		[ 17 ] = "\\shape.rmove2%b()",		[ 18 ] = "\\shape.rmove3%b()",
			[ 19 ] = "\\shape.rmove4%b()",		[ 20 ] = "\\shape.omove%b()",
		}
		local func_rep = {
			[ 01 ] = tag.set,					[ 02 ] = tag.only,					[ 03 ] = tag.oscill,
			[ 04 ] = tag.oscill2,				[ 05 ] = tag.glitter,				[ 06 ] = tag.clip,
			[ 07 ] = tag.clip2,					[ 08 ] = tag.Rclip,					[ 09 ] = tag.Pclip,
			[ 10 ] = tag.clip_shape,			[ 11 ] = tag.cyclic,				[ 12 ] = tag.sec,
			[ 13 ] = shape.lmove,				[ 14 ] = shape.pmove,				[ 15 ] = shape.smove,
			[ 16 ] = shape.rmove,				[ 17 ] = shape.rmove2,				[ 18 ] = shape.rmove3,
			[ 19 ] = shape.rmove4,				[ 20 ] = shape.omove,
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

	function tag.to_vsf( String, Is_Table )
		local function from_error( String )
			local error_tags_vsf = {
				[ 1 ] = "(\\[%d]*c)(%b())",
				[ 2 ] = "(\\%da)(%b())",
				[ 3 ] = "(\\alpha)(%b())",
			}
			local error_func_vsf = {
				[ 1 ] = color.ass,
				[ 2 ] = alpha.ass,
				[ 3 ] = alpha.ass,
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
			return String
		end
		local String = from_error( String )
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
						col_alp1 = color.interpolate( 0.5, coloralphas[ 1 ], coloralphas[ 4 ] )
						col_alp2 = color.interpolate( 0.5, coloralphas[ 2 ], coloralphas[ 3 ] )
						colalpvf = color.interpolate( 0.5, col_alp1, col_alp2 )
					elseif  #coloralphas == 4 then
						col_alp1 = alpha.interpolate( 0.5, coloralphas[ 1 ], coloralphas[ 4 ] )
						col_alp2 = alpha.interpolate( 0.5, coloralphas[ 2 ], coloralphas[ 3 ] )
						colalpvf = alpha.interpolate( 0.5, col_alp1, col_alp2 )
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
	
	function tag.ipol( Ipol_i, ... )
		local valors = { ... }
		if type( ... ) == "table" then
			valors = ...
		end
		---------------------------------------------
		-- interpola el valor de dos números
		local function ipol_number( pct_ipol, val_1, val_2 )
			local val_1 = val_1 or 0
			local val_2 = val_2 or val_1
			return math.round( val_1 + (val_2 - val_1) * pct_ipol, 3 )
		end
		---------------------------------------------
		-- interpola el valor de dos shapes o dos clips
		local function ipol_shpclip( pct_ipol, val_1, val_2 )
			local val_1, val_2 = shape.insert( val_1, val_2 )
			local tbl_1, tbl_2, k = { }, { }, 0
			for c in val_1:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( tbl_1, tonumber( c ) )
			end
			for c in val_2:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( tbl_2, tonumber( c ) )
			end
			local val_ipol = val_1:gsub( "%-?%d+[%.%d]*",
				function( val )
					k = k + 1
					local val = tbl_1[ k ] + (tbl_2[ k ] - tbl_1[ k ]) * pct_ipol
					return math.round( val, 3 )
				end
			)
			return val_ipol
		end --may 19th 2020
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
		if type( Ipol_i ) == "table" then
			Ipol_i = math.format( Ipol_i[ 1 ], Ipol_i[ 2 ] )
			--{ shape.circle, 1m }
		end --add: june 19th 2020
		if tostring( Ipol_i ) == "nan" then -- #/0 división por cero :D
			return valors[ 1 ]
		end --add: june 16th 2020
		effector.print_error( Ipol_i, "number", "tag.ipol", 1 )
		Ipol_i = math.clamp( Ipol_i ) * (#valors - 1)
		local valor_i = valors[ floor( Ipol_i ) + 1 ]
		local valor_f = valors[ floor( Ipol_i ) + 2 ] or valors[ floor( Ipol_i ) + 1 ]
		return ipol_function( Ipol_i - floor( Ipol_i ), valor_i, valor_f )
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
			local function tag_inbar( String )
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
			return format( "{%s}%s", tag_inbar( my_temp_bar ), temp_line )
		end
		return temp_line
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
					{ "%b{}%.", "%b{}[ ]*m%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*[%-?%d%.mlb ]*", "\\t[cdefirswx%~%-%d]*%b()" }
				) 
				--mod: july 27th 2020
				--esta modificación protege los tags en los siguientes casos:
				--tags de la función text.move
				--tags agregados de las shapes
				--tags que estén dentro de las transfos \\t[cdefirswx%~%-%d]*
			end --■ ·
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
		local String = String or ""
		if type( String ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( String ) do
				recursion_tbl[ k ] = tag.filter( v, Tag, Filter )
			end
			return recursion_tbl
		end --recursión
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
	function color.ass( Color )
		--le da el formato xy-vsfilter a los colores, ya sea que estén en formato HTML o MOD
		if type( Color ) == "function" then
			Color = Color( )
		end
		local Colorfx
		if type( Color ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Color ) do
				recursion_tbl[ k ] = color.ass( v )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( Color, "color", "ass", 1 )
		if Color:match( "%#(%x%x)(%x%x)(%x%x)" ) then
			Colorfx = Color:gsub( "%#(%x%x)(%x%x)(%x%x)",
				function( r_ass, g_ass, b_ass )
					return color.val2ass( tonumber( r_ass, 16 ), tonumber( g_ass, 16 ), tonumber( b_ass, 16 ) )
				end
			) --HTML to ass
		else
			Colorfx = Color:gsub( "[%&Hh]*(%x%x%x%x%x%x)[%&]*", "&H%1&" )
		end
		if Color:match( "%([ &H]*%x+[ &]*,[ &H]*%x+[ &]*,[ &H]*%x+[ &]*,[ &H]*%x+[ &]*%)" ) then
			local c1, c2, c3, c4 = Color:match( "%([ &H]*(%x+)[ &]*,[ &H]*(%x+)[ &]*,[ &H]*(%x+)[ &]*,[ &H]*(%x+)[ &]*%)" )
			c1, c2, c3, c4 = "&H" .. c1 .. "&", "&H" .. c2 .. "&", "&H" .. c3 .. "&", "&H" .. c4 .. "&"
			Colorfx = color.interpolate( 0.5, color.interpolate( 0.5, c1, c4 ), color.interpolate( 0.5, c2, c3 ) )
		end --VSFilterMod to ass
		return Colorfx --color.ass( { "(FF0000,00FF00,0000FF,FF00FF)", "#AA00FF" } )
	end	--rewrite: june 19th 2020
	
	function color.ass2( Rnum, Gnum, Bnum )
		--convierte tres números en base decimal en un color en formato .ass
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
	end --"\\1c" .. color.ass2( 255, 0, 0 )
	
	function color.ass3( Hnum, Snum, Vnum )
		--convierte tres números (H, S, V) en un color en formato.ass
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
	end --"\\1c" .. color.ass3( 15 * val_i, 1, 1 )
	
	function color.to_RGB( Color )
		--retorna una tabla con los valores RGB del color ingresado
		if type( Color ) == "function" then
			Color = Color( )
		end
		local Color = color.ass( Color or text.color1 )
		if type( Color ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Color ) do
				recursion_tbl[ k ] = color.to_RGB( v )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( Color, "color", "color.to_RGB", 1 )
		local b_RGB, g_RGB, r_RGB = Color:match( "(%x%x)(%x%x)(%x%x)" )
		return { tonumber( r_RGB, 16 ), tonumber( g_RGB, 16 ), tonumber( b_RGB, 16 ) }
	end --color.to_RGB( { shape.color1, x = "&HFF00CC&" } )
	
	function color.to_HSV( Color )
		--retorna una tabla con los valores HSV del color ingresado
		if type( Color ) == "function" then
			Color = Color( )
		end
		local Color = color.ass( Color or text.color1 )
		if type( Color ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Color ) do
				recursion_tbl[ k ] = color.to_HSV( v )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( Color, "color", "color.to_HSV", 1 )
		local H, S, V = 0, 0, 0
		local Red, Green, Blue = unpack( color.to_RGB( Color ) )
		local Rcol, Gcol, Bcol = Red / 255 + 0.000001, Green / 255, Blue / 255
		local Cmax = math.max( Rcol, Gcol, Bcol )
		local Cmin = math.min( Rcol, Gcol, Bcol )
		local Dval = Cmax - Cmin
		H = math.round( 60 * (((Rcol - Gcol) / Dval) + 4), 3 )
		if Cmax == Rcol then
			H = math.round( 60 * (((Gcol - Bcol) / Dval) % 6), 3 )
		elseif Cmax == Gcol then
			H = math.round( 60 * (((Bcol - Rcol) / Dval) + 2), 3 )
		end
		S = math.round( Dval / Cmax, 3 )
		V = math.round( Cmax, 3 )
		return { H, S, V }
	end --color.to_HSV( { my_color = shape.color3, "&HAAf0B7&" } )
	
	function color.random( H, S, V )
		local Hrc, Src, Vrc = R( 360 ), 100, 100
		if type( H ) == "function" then
			H = H( )
		end
		if type( S ) == "function" then
			S = S( )
		end
		if type( V ) == "function" then
			V = V( )
		end
		local H = H or Hrc
		local S = S or Src
		local V = V or Vrc
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
	
	function color.interpolate( Ipol, Color1, Color2 )
		--interpolate_color
		if type( Color1 ) == "function" then
			Color1 = Color1( )
		end
		if type( Color2 ) == "function" then
			Color2 = Color2( )
		end
		local Color1 = Color1 or text.color1
		local Color2 = Color2 or text.color2
		---------------------------------
		if type( Color1 ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Color1 ) do
				if type( Color2 ) == "table" then
					recursion_tbl[ k ] = { }
					for i, w in pairs( Color2 ) do
						recursion_tbl[ k ][ i ] = color.interpolate( Ipol, v, w )
					end
				else
					recursion_tbl[ k ] = color.interpolate( Ipol, v, Color2 )
				end
			end
			return recursion_tbl
		end --resursión 1
		if type( Color2 ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Color2 ) do
				if type( Color1 ) == "table" then
					recursion_tbl[ k ] = { }
					for i, w in pairs( Color1 ) do
						recursion_tbl[ k ][ i ] = color.interpolate( Ipol, w, v )
					end
				else
					recursion_tbl[ k ] = color.interpolate( Ipol, Color1, v )
				end
			end
			return recursion_tbl
		end --resursión 2
		---------------------------------
		effector.print_error( Color1, "color", "color.interpolate", 2 )
		effector.print_error( Color2, "color", "color.interpolate", 3 )
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
		local Ipol = Ipol or 0.5
		if type( Ipol ) == "function" then
			Ipol = Ipol( )
		end
		if type( Ipol ) == "table" then
			Ipol = math.format( Ipol[ 1 ], Ipol[ 2 ] )
			--{ shape.circle, 1m }
		end
		if tostring( Ipol ) == "nan" then -- #/0 división por cero :D
			return valors[ 1 ]
		end --add: june 22nd 2020
		effector.print_error( Ipol, "number", "color.interpolate", 1 )
		Ipol = math.clamp( Ipol )
		local ipol_R = math.round( col_R1 + (col_R2 - col_R1) * Ipol )
		local ipol_G = math.round( col_G1 + (col_G2 - col_G1) * Ipol )
		local ipol_B = math.round( col_B1 + (col_B2 - col_B1) * Ipol )
		return color.val2ass( ipol_R, ipol_G, ipol_B ) --rewrite: june 20th 2020
		--color.interpolate( 0.6, { shape.color1, "&H0000FF&" }, "&H000000&" )
	end --color.interpolate( 0.5, "&HFFFFFF&", "&H0000FF&" )
	
	function color.set( Times, Colors, ... )
		-- ... = \\1c, \\3c or \\4c
		if type( Times ) == "function" then
			Times = Times( )
		end
		if type( Colors ) == "function" then
			Colors = Colors( )
		end
		local Concats = { ... }
		local Colors = color.ass( Colors or { text.color2 } )
		local Times = Times or { linefx[ ii ].start_time + linefx[ ii ].duration / 2 }
		effector.print_error( Times, "table", "color.set", 1 )
		effector.print_error( Colors, "table", "color.set", 2 )
		local function table_complete( Table )
			local Table = HMS_to_ms( Table )	--convierte los tiempos a milisegundos (ms)
			Table[ #Table + 1 ] = fx.start_time	--ingresa el tiempo inicial de la línea fx
			Table[ #Table + 1 ] = fx.end_time	--ingresa el tiempo final de la línea fx
			return table.op( Table, "org" )		--organiza todos los tiempos ascendentemente
		end
		Times = table_complete( Times )
		-----------------------------------------------------------
		local indx_i, indx_f = table.index( Times, fx.start_time ), table.index( Times, fx.end_time )
		local Times_aux = table.duplicate( Times )
		Colors[ 0 ] = text.color1
		if #Colors >= #Times - 1 then
			Colors[ 0 ] = Colors[ #Times - 1 ]
		end
		local i = indx_i + 1
		local event, t1, t2, Offset, Accel, Colorset = "", 0, 1, 1, 1, table.duplicate( Colors )
		for i = 0, #Colorset do
			if type( Colorset[ i ] ) == "table" then
				Colors[ i ] = Colorset[ i ][ (val_i - 1) % #Colors[ i ] + 1 ]
			elseif type( Colorset[ i ] ) == "function" then
				Colors[ i ] = Colorset[ i ]( )
			end
		end
		local Tags = ""
		if #Concats == 0 then
			Tags = "\\1c" .. Colors[ i - 2 ]
		else
			for k = 1, #Concats do
				if i - 2 == 0
					and Concats[ k ]:match( "\\%d+c" ) then
					Colors[ 0 ] = "TC" .. Concats[ k ]:match( "\\(%d)[%d]*c" )
				end
				Tags = Tags .. Concats[ k ] .. Colors[ i - 2 ]
			end
		end
		for i = 1, #Times do
			if type( Times[ i ] ) == "table" then
				Times[ i ] = Times[ i ][ 1 ]
			end
		end
		if indx_i + 1 ~= indx_f then
			while Times[ i ] < fx.end_time do
				if type( Times_aux[ i ] ) == "table" then
					Offset = Times_aux[ i ][ 2 ]
					Accel = Times_aux[ i ][ 3 ] or 1
				end
				t1 = math.clamp( Times[ i ] - fx.start_time - frame_dur / 2, 0, math.huge )
				t2 = t1 + Offset
				Accel = tostring( Accel ) .. ","
				if #Concats == 0 then
					Tags = Tags .. format( "\\t(%s,%s,%s\\1c%s)", t1, t2, Accel, Colors[ i - 1 ] )
				else
					event = ""
					for k = 1, #Concats do
						event = event .. Concats[ k ] .. Colors[ i - 1 ]
					end
					Tags = Tags .. format( "\\t(%s,%s,%s%s)", t1, t2, Accel, event )
				end
				Offset, Accel = 1, 1
				i = i + 1
			end
		end
		return Tags
	end --mod: june 03rd 2020
	
	function color.matrix( Color, ... )
		if type( Color ) == "function" then
			Color = Color( )
		end
		local Color = Color or text.color1
		if type( Color ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Color ) do
				recursion_tbl[ k ] = color.matrix( v, ... )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( Color, "color", "color.matrix", 1 )
		local configs = ...
		local Matrixes = { configs }
		if type( configs ) == "table"
			and table.type( configs ) == "table" then
			Matrixes = configs
		end
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
		return color.ass2( math.matrix_mul( color.to_RGB( Color ), unpack( Matrixes ) ) )
	end
	
	function color.fromstyle( ColorAlpha )
		--color from style
		if type( ColorAlpha ) == "function" then
			ColorAlpha = ColorAlpha( )
		end
		if type( ColorAlpha ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( ColorAlpha ) do
				recursion_tbl[ k ] = color.fromstyle( v )
			end
			return recursion_tbl
		end --recursión
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
		if tonumber( val_R ) then
			val_R = tonumber( val_R )
		end
		if tonumber( val_G ) then
			val_G = tonumber( val_G )
		end
		if tonumber( val_B ) then
			val_B = tonumber( val_B )
		end
		val_R = math.clamp( val_R, 0, 255 )
		val_G = math.clamp( val_G, 0, 255 )
		val_B = math.clamp( val_B, 0, 255 )
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
	function alpha.ass( Alpha )
		--le da el formato xy-vsfilter a los alphas
		if type( Alpha ) == "function" then
			Alpha = Alpha( )
		end
		local Alphafx
		if type( Alpha ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Alpha ) do
				recursion_tbl[ k ] = alpha.ass( v )
			end
			return recursion_tbl
		end --recursión
		effector.print_error( Alpha, "alpha", "ass", 1 )
		Alphafx = Alpha:gsub( "[%#%&Hh]*(%x%x)[%&]*", "&H%1&" )
		if Alpha:match( "%([ &H]*%x+[ &]*,[ &H]*%x+[ &]*,[ &H]*%x+[ &]*,[ &H]*%x+[ &]*%)" ) then
			local a1, a2, a3, a4 = Alpha:match( "%([ &H]*(%x+)[ &]*,[ &H]*(%x+)[ &]*,[ &H]*(%x+)[ &]*,[ &H]*(%x+)[ &]*%)" )
			a1, a2, a3, a4 = "&H" .. a1 .. "&", "&H" .. a2 .. "&", "&H" .. a3 .. "&", "&H" .. a4 .. "&"
			Alphafx = alpha.interpolate( 0.5, alpha.interpolate( 0.5, a1, a4 ), alpha.interpolate( 0.5, a2, a3 ) )
		end --VSFilterMod to ass
		return Alphafx --alpha.ass( { "(FF,00,AA,0F)", "#F0" } )
	end	--june 20th 2020
	
	function alpha.random( Alpha1, Alpha2 )
		if type( Alpha1 ) == "function" then
			Alpha1 = Alpha1( )
		end
		if type( Alpha2 ) == "function" then
			Alpha2 = Alpha2( )
		end
		local ra_i, ra_f = 0, 255
		local Alpha1 = Alpha1 or ra_i
		local Alpha2 = Alpha2 or ra_f
		if type( Alpha1 ) == "string" then
			ra_i = tonumber( Alpha1:match( "(%x%x)" ), 16 )
		elseif type( Alpha1 ) == "number" then
			ra_i = math.i( Alpha1 + 1, 0, 255 )[ "A-->B-->A" ]
		end
		if type( Alpha2 ) == "string" then
			ra_f = tonumber( Alpha2:match( "(%x%x)" ), 16 )
		elseif type( Alpha2 ) == "number" then
			ra_f = math.i( Alpha2 + 1, 0, 255 )[ "A-->B-->A" ]
		end
		return alpha.val2ass( R( ra_f, ra_i ) )
	end
	
	function alpha.interpolate( Ipol, Alpha1, Alpha2 )
		--interpolate_alpha
		if type( Alpha1 ) == "function" then
			Alpha1 = Alpha1( )
		end
		if type( Alpha2 ) == "function" then
			Alpha2 = Alpha2( )
		end
		local Alpha1 = Alpha1 or text.alpha1
		local Alpha2 = Alpha2 or text.alpha2
		---------------------------------
		if type( Alpha1 ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Alpha1 ) do
				if type( Alpha2 ) == "table" then
					recursion_tbl[ k ] = { }
					for i, w in pairs( Alpha2 ) do
						recursion_tbl[ k ][ i ] = alpha.interpolate( Ipol, v, w )
					end
				else
					recursion_tbl[ k ] = alpha.interpolate( Ipol, v, Alpha2 )
				end
			end
			return recursion_tbl
		end --resursión 1
		if type( Alpha2 ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Alpha2 ) do
				if type( Alpha1 ) == "table" then
					recursion_tbl[ k ] = { }
					for i, w in pairs( Alpha1 ) do
						recursion_tbl[ k ][ i ] = alpha.interpolate( Ipol, w, v )
					end
				else
					recursion_tbl[ k ] = alpha.interpolate( Ipol, Alpha1, v )
				end
			end
			return recursion_tbl
		end --resursión 2
		---------------------------------
		effector.print_error( Alpha1, "alpha", "alpha.interpolate", 2 )
		effector.print_error( Alpha2, "alpha", "alpha.interpolate", 3 )
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
		local Ipol = Ipol or 0.5
		if type( Ipol ) == "function" then
			Ipol = Ipol( )
		end
		if type( Ipol ) == "table" then
			Ipol = math.format( Ipol[ 1 ], Ipol[ 2 ] )
			--{ shape.circle, 1m }
		end
		if tostring( Ipol ) == "nan" then -- #/0 división por cero :D
			return valors[ 1 ]
		end --add: june 22nd 2020
		effector.print_error( Ipol, "number", "alpha.interpolate", 1 )
		Ipol = math.clamp( Ipol ) --rewrite: june 20th 2020
		return alpha.val2ass( math.round( alpha_i + (alpha_f - alpha_i) * Ipol ) )
		--alpha.interpolate( 0.6, { shape.alpha1, shape.alpha3 }, { "&H0F&", "&HFF&" } )
	end --alpha.interpolate( 0.5, "&HFF&", 55 )
	
	function alpha.set( Times, Alphas, ... )
		-- ... = \\1a, \\3a or \\4a
		if type( Times ) == "function" then
			Times = Times( )
		end
		if type( Alphas ) == "function" then
			Alphas = Alphas( )
		end
		local Concats = { ... }
		local Alphas = alpha.ass( Alphas or { text.alpha2 } )
		local Times = Times or { linefx[ ii ].start_time + linefx[ ii ].duration / 2 }
		effector.print_error( Times, "table", "alpha.set", 1 )
		effector.print_error( Alphas, "table", "alpha.set", 2 )
		local function table_complete( Table )
			local Table = HMS_to_ms( Table )	--convierte los tiempos a milisegundos (ms)
			Table[ #Table + 1 ] = fx.start_time	--ingresa el tiempo inicial de la línea fx
			Table[ #Table + 1 ] = fx.end_time	--ingresa el tiempo final de la línea fx
			return table.op( Table, "org" )		--organiza todos los tiempos ascendentemente
		end
		Times = table_complete( Times )
		-----------------------------------------------------------
		local indx_i, indx_f = table.index( Times, fx.start_time ), table.index( Times, fx.end_time )
		local Times_aux = table.duplicate( Times )
		Alphas[ 0 ] = text.alpha1
		if #Alphas >= #Times - 1 then
			Alphas[ 0 ] = Alphas[ #Times - 1 ]
		end
		local i = indx_i + 1
		local event, t1, t2, Offset, Accel, Alphaset = "", 0, 1, 1, 1, table.duplicate( Alphas )
		for i = 0, #Alphaset do
			if type( Alphaset[ i ] ) == "table" then
				Alphas[ i ] = Alphaset[ i ][ (val_i - 1) % #Alphas[ i ] + 1 ]
			elseif type( Alphaset[ i ] ) == "function" then
				Alphas[ i ] = Alphaset[ i ]( )
			end
		end
		local Tags = ""
		if #Concats == 0 then
			Tags = "\\1a" .. Alphas[ i - 2 ]
		else
			for k = 1, #Concats do
				if i - 2 == 0
					and Concats[ k ]:match( "\\%d+a" ) then
					Alphas[ 0 ] = "TA" .. Concats[ k ]:match( "\\(%d)[%d]*a" )
				end
				Tags = Tags .. Concats[ k ] .. Alphas[ i - 2 ]
			end
		end
		for i = 1, #Times do
			if type( Times[ i ] ) == "table" then
				Times[ i ] = Times[ i ][ 1 ]
			end
		end
		if indx_i + 1 ~= indx_f then
			while Times[ i ] < fx.end_time do
				if type( Times_aux[ i ] ) == "table" then
					Offset = Times_aux[ i ][ 2 ]
					Accel = Times_aux[ i ][ 3 ] or 1
				end
				t1 = math.clamp( Times[ i ] - fx.start_time - frame_dur / 2, 0, math.huge )
				t2 = t1 + Offset
				Accel = tostring( Accel ) .. ","
				if #Concats == 0 then
					Tags = Tags .. format( "\\t(%s,%s,%s\\1a%s)", t1, t2, Accel, Alphas[ i - 1 ] )
				else
					event = ""
					for k = 1, #Concats do
						event = event .. Concats[ k ] .. Alphas[ i - 1 ]
					end
					Tags = Tags .. format( "\\t(%s,%s,%s%s)", t1, t2, Accel, event )
				end
				Offset, Accel = 1, 1
				i = i + 1
			end
		end
		return Tags
	end --mod: june 14th 2020
	
	function alpha.fromstyle( ColorAlpha )
		--alpha from style
		if type( ColorAlpha ) == "function" then
			ColorAlpha = ColorAlpha( )
		end
		if type( ColorAlpha ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( ColorAlpha ) do
				recursion_tbl[ k ] = alpha.fromstyle( v )
			end
			return recursion_tbl
		end --recursión
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
	-- [%#%&Hh]^* <-- son opcionales, pero mínimo debe haber una de ellas :)
	
	--------------------------------------------------------------------------------------------------
	--Librería de las Funciones shapes ---------------------------------------------------------------
	function shape.ASSDraw3( Shape, Round )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = Shape or nil
		if not Shape
			and linefx[ ii ].text:match( "\\i?clip%b()" ) then
			Shape = linefx[ ii ].text:match( "\\i?clip%b()" )
		end --add: april 28th 2020
		Shape = Shape or "m 0 0 l 0 100 l 100 100 l 100 0 l 0 0 "
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.ASSDraw3( v, Round )
			end --shape.ASSDraw3( { shape.circle, x = "\\clip( m 0 0 l 0 1 l 1 1 l 1 0 )" } )
			return recursion_tbl
		end --recursión: september 08th 2019
		local Round = Round or 2 --cifras decimales a redondear los números en la shape
		if type( Round ) == "function" then
			Round = Round( )
		end
		effector.print_error( Shape, "shape", "shape.ASSDraw3", 1 )
		effector.print_error( Round, "number", "shape.ASSDraw3", 2 )
		local segments, coor2 = { }, { }
		Shape = Shape:gsub( "  ", " " ) --elimina los espacios múltiples
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
		return Shape
	end
	
	function shape.round( Shape, Round )
		--redondea los valores numéricos de la Shape a las cifras decimales indicadas o al entero más cercano
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.round( v, Round )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		local Round = Round or 0
		if type( Round ) == "function" then
			Round = Round( )
		end
		effector.print_error( Shape, "shape",  "shape.round", 1 )
		effector.print_error( Round, "number", "shape.round", 2 )
		Shape = Shape:gsub( "%-?%d+[%.%d]*",
			function( num )
				return math.round( tonumber( num ), Round )
			end
		)
		return Shape
	end --shape.round( { "m 0.8 9 l 0 0 ", x = "m 5 6.2 l 8 8 " } )
	
	function shape.info( Shape )
		--genera variables con la información notable de la Shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.info", 1 )
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
	
	function shape.redraw( Shape, tract, Section, Continued )
		--redibuja la shape en secciones rectas de longitudes indicadas
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape ) or shape.circle
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.redraw( v, tract, Section, Continued )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		local tract = tract or 2
		if type( tract ) == "function" then
			tract = tract( )
		end
		effector.print_error( Shape, "shape", "shape.redraw", 1 )
		effector.print_error( tract, "number", "shape.redraw", 2 )
		if Continued then
			Shape = "m" .. Shape:gsub( "m", "l" ):sub( 2, -1 )
		end --la convierte en una shape contínua
		local segments, segm_tbl, c = { }
		local Section = Section or "all"
		local shape_new = recall.shprd
		if j == 1 then
			for c in Shape:gmatch( "[blm]^*%s+%-?%d+[%-%.%d ]*" ) do
				segments[ #segments + 1 ] = c .. "x"
			end
			segm_tbl = { [ 1 ] = segments[ 1 ]:gsub( "x", "" ) }
			if Section == "line" then
				for i = 2, #segments do
					segm_tbl[ i ] = segments[ i ]:gsub( "l%s+(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)%s+x",
						function( x2, y2 )
							local x2, y2 = tonumber( x2 ), tonumber( y2 )
							local x1, y1 = segments[ i - 1 ]:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)%s+x" )
							x1, y1 = tonumber( x1 ), tonumber( y1 )
							local angle = math.angle( x1, y1, x2, y2 )
							local length = math.distance( x1, y1, x2, y2 )
							local parts = length / math.round( length / tract )
							local newline = ""
							for k = 1, math.round( length / parts ) do
								newline = newline .. format( "l %s %s ",
									x1 + math.polar( angle, parts * k, "x" ),
									y1 + math.polar( angle, parts * k, "y" )
								)
							end --shape.redraw( "m -5 -5 l -5 20 l 20 20 l 20 -5 l -5 -5 ", 10, "line" )
							return newline
						end
					)
				end
			elseif Section == "bezier" then
				for i = 2, #segments do
					segm_tbl[ i ] = segments[ i ]:gsub( "b%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+x",
						function( Bezier )
							local Bezier = segments[ i - 1 ]:match( "(%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+)x" ) .. Bezier
							local length = math.length_bezier( Bezier )
							local parts = length / math.round( length / tract )
							local newbezier, n = "", math.round( length / parts )
							for k = 1, n do
								newbezier = newbezier .. format( "l %s %s ",
									math.confi_bezier( 4, Bezier, nil, k / n )
								)
							end
							return newbezier
						end
					)
				end
			else
				for i = 2, #segments do
					segm_tbl[ i ] = segments[ i ]:gsub( "l%s+(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)%s+x",
						function( x2, y2 )
							local x2, y2 = tonumber( x2 ), tonumber( y2 )
							local x1, y1 = segments[ i - 1 ]:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)%s+x" )
							x1, y1 = tonumber( x1 ), tonumber( y1 )
							local angle = math.angle( x1, y1, x2, y2 )
							local length = math.distance( x1, y1, x2, y2 )
							local parts = length / math.round( length / tract )
							local newline = ""
							for k = 1, math.round( length / parts ) do
								newline = newline .. format( "l %s %s ",
									x1 + math.polar( angle, parts * k, "x" ),
									y1 + math.polar( angle, parts * k, "y" )
								) --shape.redraw( "m -5 -5 l -5 20 l 20 20 l 20 -5 l -5 -5 " )
							end
							return newline
						end
					)
					:gsub( "b%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+x",
						function( Bezier )
							local Bezier = segments[ i - 1 ]:match( "(%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+)x" ) .. Bezier
							local length = math.length_bezier( Bezier )
							local parts = length / math.round( length / tract )
							local newbezier, n = "", math.round( length / parts )
							for k = 1, n do
								newbezier = newbezier .. format( "l %s %s ",
									math.confi_bezier( 4, Bezier, nil, k / n )
								)
							end
							return newbezier
						end
					)
				end --shape.redraw( "m 15 0 b 0 0 0 20 15 20 l 45 20 b 60 20 60 0 45 0 l 15 0 " )
			end
			shape_new = table.concat( segm_tbl ):gsub( "x", "" )
			Shape = remember( "shprd", shape_new )
		end --shape.redraw( { shape.circle, shp = shape.rectangle }, 3 )
		return Shape --shape.redraw( shape.circle, 3 )
	end --rewrite: march 30th 2020
	
	function shape.filter( Shape, Split, ... )
		--aplica uno o más filtros a la shape, previamente seccionada en trozos rectos
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.filter( v, Split, ... )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		if type( Split ) == "function" then
			Split = Split( )
		end
		effector.print_error( Shape, "shape", "shape.filter", 1 )
		local filters = { ... }
		if ...
			and type( ... ) == "table" then
			filters = ...
		end
		if #filters == 0 then
			filters[ 1 ] = function( x, y )
				return x, y
			end
		end
		if Split
			and Split ~= 0 then
			local Split3 = abs( Split )
			effector.print_error( Split3, "number", "shape.filter", 2 )
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
		Shape = shape.ASSDraw3( Shape )
		return Shape
	end
	
	function shape.length( Shape, parts )
		--retorna la longitud de la Shape ingresada o una tabla
		--con los valores de cada una de las secciones de la Shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.length( v, parts )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		effector.print_error( Shape, "shape", "shape.length", 1 )
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
		Shape = shape_length --shape.length( { shape.circle, shape.rectangle } )
		return Shape
		--return shape_length
	end --shape.length( shape.circle )
	
	function shape.width( Shape, Height )
		--retorna el ancho en pixeles de la Shape ingresada
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.width( v, Height )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		effector.print_error( Shape, "shape", "shape.width", 1 )
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
		Shape = shape_width --shape.width( { shape.circle, shape.rectangle } )
		return Shape
	end
	
	function shape.height( Shape )
		--retorna la altura en pixeles de la Shape ingresada
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
		if type( org_x ) == "function" then
			org_x = org_x( )
		end
		if type( org_y ) == "function" then
			org_y = org_y( )
		end
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.rotate", 1 )
		local Ang = Angle or 0
		local cx = org_x or 0
		local cy = org_y or 0
		effector.print_error( Ang, "numbertable", "shape.rotate", 2 )
		effector.print_error( cx, "numberstring", "shape.rotate", 3 )
		effector.print_error( cy, "numberstring", "shape.rotate", 4 )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.rotate( Shape[ i ], Angle, org_x, org_y )
			end
		else --recursividad: september 08th 2019
			if type( Angle ) == "table" then --add: may 01st 2020
				--Ang depende del ángulo entre dos puntos o un punto y el origen
				if Angle[ 1 ]
					and type( Angle[ 1 ] ) ~= "table" then
					Angle[ 1 ] = { Angle[ 1 ] }
				end
				if not Angle[ 1 ] then
					Angle[ 1 ] = { }
					Angle[ 1 ][ 1 ] = Shape:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" )
					Angle[ 1 ][ 2 ] = Shape:sub( -20, -1 ):reverse( )
					Angle[ 1 ][ 2 ] = Angle[ 1 ][ 2 ]:match( "%d+[%.%d%-]*%s+%d+[%.%d%-]*" ):reverse( )
				end
				Ang = Angle[ 2 ] - math.angle( Angle[ 1 ][ 1 ], Angle[ 1 ][ 2 ] )
			end
			if cx == "center" then
				shape.info( Shape )
				cx = c_shape
				cy = m_shape
			end
			if type( cx ) == "string"
				and cx:match( "%-?%d+[%.%d]* %-?%d+[%.%d]*" ) then
				cy = tonumber( cx:match( "%-?%d+[%.%d]* (%-?%d+[%.%d]*)" ) )
				cx = tonumber( cx:match( "(%-?%d+[%.%d]*) %-?%d+[%.%d]*" ) )
			end --add: may 18th 2020
			------------
			local Rotate
			shape.info( Shape )
			local i = math.count( )
			------------
			Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
				function( x, y )
					local new_ang = math.angle( cx, cy, x, y )
					local new_rad = math.distance( cx, cy, x, y )
					-- adaptación para rotar con un Filter( )
					-- august 27th 2020 -------------------------
					Cx = c_shape						-- coordenada "x" del centro de la shape
					Cy = m_shape						-- coordenada "y" del centro de la shape
					Do = math.distance( x, y )			-- distancia del punto al origen
					Dc = math.distance( Cx, Cy, x, y )	-- distancia del punto al centro de la shape
					Ao = math.angle( x, y )				-- ángulo del origen al punto
					Ac = math.angle( Cx, Cy, x, y )		-- ángulo del centro al punto
					Pn = n_points						-- cantidad total de puntos en la shape
					Pk = i( )							-- contador de los puntos de la shape
					Mx = (y - miny ) / h_shape			-- módulo de varianza respecto a "x", Mx = [0, 1]
					My = (x - minx ) / w_shape			-- módulo de varianza respecto a "y", My = [0, 1]
					Mp = (Pk - 1) / (Pn - 1)			-- módulo de varianza respecto a los puntos, Mp = [0, 1]
					---------------------------------------------
					Rotate = type( Ang ) == "function" and Ang( ) or Ang
					x = cx + math.polar( new_ang + Rotate, new_rad, "x" )
					y = cy + math.polar( new_ang + Rotate, new_rad, "y" )
					return format( "%s %s", x, y )
				end --shape.rotate( shape.redraw( shape.rectangle, 5 ), function( ) return tag.ipol( Mp, 0, 60 ) end )
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
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.reflect( v, Axis, Relative )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		if type( Axis ) == "function" then
			Axis = Axis( )
		end
		if type( Relative ) == "function" then
			Relative = Relative( )
		end
		effector.print_error( Shape, "shape",  "shape.reflect", 1 )
		local Reltv = Relative or 0
		if type( Relative ) == "string" then
			Relative = Relative:gsub( "(%d)x", "%1 * x" ):gsub( "x", shape.width( Shape ) )
			Relative = Relative:gsub( "(%d)y", "%1 * y" ):gsub( "y", shape.height( Shape ) )
			Reltv = string.toval( Relative )
		end --add: may 03rd 2020
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
		return Shape
	end
	
	function shape.oblique( Shape, Pixel, Axis )
		--le aplica un fx tipo "cursiva" a la Shape ingresada
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.oblique( v, Pixel, Axis )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		if type( Pixel ) == "function" then
			Pixel = Pixel( )
		end
		if type( Axis ) == "function" then
			Axis = Axis( )
		end
		effector.print_error( Shape, "shape", "shape.oblique", 1 )
		effector.print_error( Pixel, "numbertable", "shape.oblique", 2 )
		shape.info( Shape )
		local pxl1, pxl2 = Pixel, 0
		if type( Pixel ) == "table" then
			pxl1 = Pixel[ 1 ]
			pxl2 = Pixel[ 2 ] or 0
			Axis = Axis or "xy" --fix: april 04th 2020
			if type( pxl1 ) == "string" then
				pxl1 = pxl1:gsub( "(%d)x", "%1 * x" ):gsub( "x", shape.width( Shape ) )
				pxl1 = pxl1:gsub( "(%d)y", "%1 * y" ):gsub( "y", shape.height( Shape ) )
				pxl1 = string.toval( pxl1 )
			elseif type( pxl1 ) == "table"
				and type( pxl1[ 1 ] ) == "string" then
				pxl1[ 1 ] = pxl1[ 1 ]:gsub( "(%d)x", "%1 * x" ):gsub( "x", shape.width( Shape ) )
				pxl1[ 1 ] = pxl1[ 1 ]:gsub( "(%d)y", "%1 * y" ):gsub( "y", shape.height( Shape ) )
				pxl1[ 1 ] = string.toval( pxl1[ 1 ] )
			end
			if type( pxl2 ) == "string" then
				pxl2 = pxl2:gsub( "(%d)x", "%1 * x" ):gsub( "x", shape.width( Shape ) )
				pxl2 = pxl2:gsub( "(%d)y", "%1 * y" ):gsub( "y", shape.height( Shape ) )
				pxl2 = string.toval( pxl2 )
			elseif type( pxl2 ) == "table"
				and type( pxl2[ 1 ] ) == "string" then
				pxl2[ 1 ] = pxl2[ 1 ]:gsub( "(%d)x", "%1 * x" ):gsub( "x", shape.width( Shape ) )
				pxl2[ 1 ] = pxl2[ 1 ]:gsub( "(%d)y", "%1 * y" ):gsub( "y", shape.height( Shape ) )
				pxl2[ 1 ] = string.toval( pxl2[ 1 ] )
			end --add: may 03rd 2020
		end
		local funct
		if Axis == "x"
			or Axis == nil then
			if type( pxl1 ) == "table" then
				--mod: april 04th 2020
				funct = function( x, y )
					local signx = abs( x - minx - w_shape / 2 ) / (x - minx - w_shape / 2)
					local propx = abs( (x - minx - w_shape / 2) / (minx + w_shape / 2) )
					local x = x + signx * propx * pxl1[ 1 ] * (y - miny) / h_shape
					return format( "%s %s", x, y )
				end --shape.oblique( shape.rectangle, { { 20 } }, "x" )		<--->
			else
				funct = function( x, y )
					local x = x + pxl1 * (y - miny) / h_shape
					return format( "%s %s", x, y )
				end --shape.oblique( shape.rectangle, { 20 }, "x" )			--->
			end
		elseif Axis == "y" then
			if type( pxl1 ) == "table" then
				funct = function( x, y )
					local signy = abs( y - miny - h_shape / 2 ) / (y - miny - h_shape / 2)
					local propy = abs( (y - miny - h_shape / 2) / (miny + h_shape / 2) )
					local y = y + signy * propy * pxl1[ 1 ] * (x - minx) / w_shape
					return format( "%s %s", x, y )
				end
			else
				funct = function( x, y )
					local y = y + pxl1 * (x - minx) / w_shape
					return format( "%s %s", x, y )
				end
			end
		else
			if type( pxl1 ) == "table"
				and type( pxl2 ) == "table" then
				funct = function( x, y )
					local signx = abs( x - minx - w_shape / 2 ) / (x - minx - w_shape / 2)
					local propx = abs( (x - minx - w_shape / 2) / (minx + w_shape / 2) )
					local signy = abs( y - miny - h_shape / 2 ) / (y - miny - h_shape / 2)
					local propy = abs( (y - miny - h_shape / 2) / (miny + h_shape / 2) )
					local x = x + signx * propx * pxl1[ 1 ] * (y - miny) / h_shape
					local y = y + signy * propy * pxl2[ 1 ] * (x - minx) / w_shape
					return format( "%s %s", x, y )
				end
			elseif type( pxl1 ) == "table"
				and type( pxl2 ) == "number" then
				funct = function( x, y )
					local signx = abs( x - minx - w_shape / 2 ) / (x - minx - w_shape / 2)
					local propx = abs( (x - minx - w_shape / 2) / (minx + w_shape / 2) )
					local x = x + signx * propx * pxl1[ 1 ] * (y - miny) / h_shape
					local y = y + pxl2 * (x - minx) / w_shape
					return format( "%s %s", x, y )
				end
			elseif type( pxl1 ) == "number"
				and type( pxl2 ) == "table" then
				funct = function( x, y )
					local signy = abs( y - miny - h_shape / 2 ) / (y - miny - h_shape / 2)
					local propy = abs( (y - miny - h_shape / 2) / (miny + h_shape / 2) )
					local x = x + pxl1 * (y - miny) / h_shape
					local y = y + signy * propy * pxl2[ 1 ] * (x - minx) / w_shape
					return format( "%s %s", x, y )
				end
			else
				funct = function( x, y )
					local x = x + pxl1 * (y - miny) / h_shape
					local y = y + pxl2 * (x - minx) / w_shape
					return format( "%s %s", x, y )
				end
			end
		end
		Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)", funct )
		Shape = shape.ASSDraw3( Shape ) --shape.oblique( shape.rectangle, { { 20 } }, "y" )
		return Shape
	end
	
	function shape.to_line( Shape, Tract )
		--convierte las secciones "bezier" de la Shape, en "line"
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.to_line( v, Tract )
			end
			return recursion_tbl
		end --recursión
		if type( Tract ) == "function" then
			Tract = Tract( )
		end
		local Tract = Tract or 5 * ratio
		effector.print_error( Shape, "shape", "shape.to_line", 1 )
		effector.print_error( Tract, "number", "shape.to_line", 2 )
		return shape.redraw( Shape, Tract, "bezier" )
	end --august 30th 2020
	
	function shape.to_bezier( Shape )
		--convierte las secciones "line" de la Shape, en "bezier"
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.to_bezier( v )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		effector.print_error( Shape, "shape", "shape.to_bezier", 1 )
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
		return Shape
	end --shape.to_bezier( shape.rectangle )
	
	function shape.reverse( Shape )
		--revierte el sentido en que fue dibujada la Shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.reverse( v )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		effector.print_error( Shape, "shape", "shape.reverse", 1 )
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
		return Shape
	end
	
	function shape.displace( Shape, Dx, Dy, Mode )
		--desplaza la Shape a las coordenadas seleccionadas
		-->shape.origin		= shape.displace( Shape, 0, 0, "origin" ) or shape.displace( Shape, "origin" )
		-->shape.incenter	= shape.displace( Shape, 0, 0, "center" ) or shape.displace( Shape, "incenter" )
		-->shape.centerpos	= shape.displace( Shape, Dx, Dy, "center" )	--> move respect to center shape
		-->shape.firstpos	= shape.displace( Shape, Dx, Dy, "first" )	--> move respect to first point shape
		-->new mode displace: shape.displace( Shape, Dx, Dy, "last" )	--> move respect to last point shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.displace( v, Dx, Dy, Mode )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		if type( Dx ) == "function" then
			Dx = Dx( )
		end
		if type( Dy ) == "function" then
			Dy = Dy( )
		end
		effector.print_error( Shape, "shape", "shape.displace", 1 )
		local Dx = Dx or 0
		local Dy = Dy or 0
		if type( Dx ) == "string" --shape.displace( shape.rectangle, "m 20 20 " )
			and Dx:match( "%-?%d+[%.%d]* %-?%d+[%.%d]*" ) then
			Dy = tonumber( Dx:match( "%-?%d+[%.%d]* (%-?%d+[%.%d]*)" ) )
			Dx = tonumber( Dx:match( "(%-?%d+[%.%d]*) %-?%d+[%.%d]*" ) )
		end --add: may 18th 2020
		if type( Dx ) == "table" then
			--movimiento polar, indicando ángulo y radio
			Dx, Dy = math.polar( Dx[ 1 ], Dx[ 2 ] )
		end --add: april 12th 2020
		---------------------------
		if type( Dx ) == "string"
			or type( Dy ) == "string"
			or Mode then
			shape.info( Shape )
			if Dx == "origin" then
				Dx, Dy, Mode = 0, 0, "origin"
			elseif Dx == "incenter" then
				Dx, Dy, Mode = 0, 0, "center"
			end
			if type( Dx ) == "string" then
				Dx = Dx:gsub( "(%d)x", "%1 * x" ):gsub( "x", w_shape )
				Dx = Dx:gsub( "(%d)y", "%1 * y" ):gsub( "y", h_shape )
				Dx = string.toval( Dx )
			end
			if type( Dy ) == "string" then
				Dy = Dy:gsub( "(%d)x", "%1 * x" ):gsub( "x", w_shape )
				Dy = Dy:gsub( "(%d)y", "%1 * y" ):gsub( "y", h_shape )
				Dy = string.toval( Dy )
			end
			--Mode: "origin", "center", "first", "last"
			if Mode == "origin" then			-->shape.origin( Shape ) = shape.displace( Shape, 0, 0, "origin" )
				Dx = Dx - minx
				Dy = Dy - miny
			elseif Mode == "center" then
				Dx = Dx - minx - 0.5 * w_shape	-->shape.incenter( Shape ) = shape.displace( Shape, 0, 0, "center" )
				Dy = Dy - miny - 0.5 * h_shape	-->shape.centerpos( Shape, Dx, Dy ) = shape.displace( Shape, Dx, Dy, "center" )
			elseif Mode == "first" then			-->shape.firstpos( Shape, Dx, Dy ) = shape.displace( Shape, Dx, Dy, "first" )
				local px, py = Shape:match( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)" )
				px, py = tonumber( px ), tonumber( py )
				Dx = Dx - px
				Dy = Dy - py
			elseif Mode == "last" then
				local px, py = shape.reverse( Shape ):match( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)" )
				px, py = tonumber( px ), tonumber( py )
				Dx = Dx - px
				Dy = Dy - py
			end --add: june 24th 2020
		end
		-- add: may 02nd 2020 -----
		effector.print_error( Dx, "number", "shape.displace", 2 )
		effector.print_error( Dy, "number", "shape.displace", 3 )
		Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)", 
			function( x, y )
				return format( "%s %s", x + Dx, y + Dy )
			end
		)
		Shape = shape.ASSDraw3( Shape )
		return Shape
	end --shape.displace( shape.circle, 20, 10 )
	
	function shape.ratio( Shape, Ratiox, Ratioy, Mode )
		--modifica el tamaño de la Shape respecto a una proporción (Ratio)
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.ratio( v, Ratiox, Ratioy, Mode )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		local Mode = Mode or 0
		if type( Ratiox ) == "function" then
			Ratiox = Ratiox( )
		end
		if type( Ratioy ) == "function" then
			Ratioy = Ratioy( )
		end
		if type( Mode ) == "function" then
			Mode = Mode( )
		end --add: january 05th 2019
		effector.print_error( Shape, "shape", "shape.ratio", 1 )
		effector.print_error( Mode, "number", "shape.ratio", 4 )
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
				if #Ratiox == 2 then --add: may 01st 2020
					--Rx depende de la distancia entre dos puntos o un punto y el origen
					if Ratiox[ 1 ]
						and type( Ratiox[ 1 ] ) ~= "table" then
						Ratiox[ 1 ] = { Ratiox[ 1 ] }
					end
					if not Ratiox[ 1 ] then
						Ratiox[ 1 ] = { }
						Ratiox[ 1 ][ 1 ] = Shape:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" )
						Ratiox[ 1 ][ 2 ] = Shape:sub( -20, -1 ):reverse( )
						Ratiox[ 1 ][ 2 ] = Ratiox[ 1 ][ 2 ]:match( "%d+[%.%d%-]*%s+%d+[%.%d%-]*" ):reverse( )
					end
					Rx = Ratiox[ 2 ] / math.distance( Ratiox[ 1 ][ 1 ], Ratiox[ 1 ][ 2 ] )
					if math.distance( Ratiox[ 1 ][ 1 ], Ratiox[ 1 ][ 2 ] ) == 0 then
						Rx = Ratiox[ 2 ] / shape.width( Shape )
					end
				else
					Rx = Ratiox[ 1 ] / shape.width( Shape )
				end
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
			Shape = shape.displace( shape.displace( Shape, "origin" ), shpx1, shpy2 - shape.height( Shape ) )
		elseif Mode == 2 then
			Shape = shape.displace( shape.displace( Shape, "origin" ), shpx1 + 0.5 * shp_w - 0.5 * shape.width( Shape ), shpy2 - shape.height( Shape ) )
		elseif Mode == 3 then
			Shape = shape.displace( shape.displace( Shape, "origin" ), shpx2 - shape.width( Shape ), shpy2 - shape.height( Shape ) )
		elseif Mode == 4 then
			Shape = shape.displace( shape.displace( Shape, "origin" ), shpx1, shpy1 + 0.5 * shp_h - 0.5 * shape.height( Shape ) )
		elseif Mode == 5 then
			Shape = shape.displace( shape.displace( Shape, "origin" ), shpx1 + 0.5 * shp_w - 0.5 * shape.width( Shape ), shpy1 + 0.5 * shp_h - 0.5 * shape.height( Shape ) )
		elseif Mode == 6 then
			Shape = shape.displace( shape.displace( Shape, "origin" ), shpx2 - shape.width( Shape ), shpy1 + 0.5 * shp_h - 0.5 * shape.height( Shape ) )
		elseif Mode == 7 then
			Shape = shape.displace( shape.displace( Shape, "origin" ), shpx1, shpy1 )
		elseif Mode == 8 then
			Shape = shape.displace( shape.displace( Shape, "origin" ), shpx1 + 0.5 * shp_w - 0.5 * shape.width( Shape ), shpy1 )
		elseif Mode == 9 then
			Shape = shape.displace( shape.displace( Shape, "origin" ), shpx2 - shape.width( Shape ), shpy1 )
		end --add: january 05th 2019
		--------------------------------------------------------------------------------
		return Shape --> Mode = 0
	end
	
	function shape.size( Shape, SizeX, SizeY, Mode )
		--modifica el tamaño de la Shape respecto a valores determinados
		--si SizeX es una tabla, SizeX[ 1 ] se sumará al ancho de la Shape
		--si SizeY es una tabla, SizeY[ 1 ] se sumará al alto de la Shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "table" then
			local recursion_tbl = { }
			for k, v in pairs( Shape ) do
				recursion_tbl[ k ] = shape.size( v, SizeX, SizeY, Mode )
			end
			return recursion_tbl
		end --recursión: september 08th 2019
		local Mode = Mode or 0
		if type( SizeX ) == "function" then
			SizeX = SizeX( )
		end
		if type( SizeY ) == "function" then
			SizeY = SizeY( )
		end
		if type( Mode ) == "function" then
			Mode = Mode( )
		end
		effector.print_error( Shape, "shape", "shape.size", 1 )
		effector.print_error( Mode, "number", "shape.size", 4 )
		local Szx = SizeX or shape.width( Shape )
		local Szy = SizeY or Szx
		if type( Szx ) == "table" then
			Szx = shape.width( Shape ) + Szx[ 1 ]
		end
		if type( Szy ) == "table" then
			Szy = shape.height( Shape ) + Szy[ 1 ]
		end
		if type( Szx ) == "string" then
			Szx = Szx:gsub( "(%d)x", "%1 * x" ):gsub( "x", shape.width( Shape ) )
			Szx = Szx:gsub( "(%d)y", "%1 * y" ):gsub( "y", shape.height( Shape ) )
			Szx = string.toval( Szx )
		end
		if type( Szy ) == "string" then
			Szy = Szy:gsub( "(%d)x", "%1 * x" ):gsub( "x", shape.width( Shape ) )
			Szy = Szy:gsub( "(%d)y", "%1 * y" ):gsub( "y", shape.height( Shape ) )
			Szy = string.toval( Szy )
		end --add: may 03rd 2020
		effector.print_error( Szx, "numbertable", "shape.size", 2 )
		effector.print_error( Szy, "numbertable", "shape.size", 3 )
		if Szx == 0 then
			--la dimensión en "x" se modifica proporcionalmente según como se modifique en "y"
			Shape = shape.ratio( Shape, nil, { Szy }, Mode )
		elseif Szy == 0 then
			--la dimensión en "y" se modifica proporcionalmente según como se modifique en "x"
			Shape = shape.ratio( Shape, { Szx }, nil, Mode )
		else
			local ratio_x = shape.width( Shape ) > 0 and Szx / shape.width( Shape ) or 1
			local ratio_y = shape.height( Shape ) > 0 and Szy / shape.height( Shape ) or 1 --add: april 12th 2020
			Shape = shape.ratio( Shape, ratio_x, ratio_y, Mode )
		end --mod: january 05th 2019
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
		end --shape.array( "m 0 0 l 0 10 l 10 10 l 10 0 ", 8, "radial", 20 )
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
					shape.rotate( shape.displace( Shapes[ (i - 1) % #Shapes + 1 ], "incenter" ), configs_pos[ i ][ 3 ] ),
					configs_pos[ i ][ 1 ], configs_pos[ i ][ 2 ]
				)
				-- la opción de que la shape rote o no
			end --shape.array( shape.size( shape.rectangle, 15, 45 ), 20, "shape", shape.circle )
			return shape.displace( shp_array, "origin" ) --add: december 08th 2018
		elseif An_mo == "shape2"
			or An_mo == "shape3" then
			local configs_pos = math.shape( disxy, nil, nil, loop1 * loop2 )
			local shp_array = ""
			for i = 1, #configs_pos do
				if i % 2 == 0 then
					Shapes[ (i - 1) % #Shapes + 1 ] = shape.reverse( Shapes[ (i - 1) % #Shapes + 1 ] )
				end
				shp_array = shp_array .. shape.displace(
					shape.rotate( shape.displace( Shapes[ (i - 1) % #Shapes + 1 ], "incenter" ), configs_pos[ i ][ 3 ] ),
					configs_pos[ i ][ 1 ], configs_pos[ i ][ 2 ]
				)
			end --shape.array( shape.size( shape.rectangle, 15, 45 ), 24, "shape2", shape.circle )
			return shape.displace( shp_array, "origin" ) --add: december 08th 2018
		elseif An_mo == "radial3" then
			local radio_array, arcox
			for i = 1, #Shapes do
				shape_array[ i ] = ""
				widths[ i ] = shape.width( Shapes[ i ] ) + distance_r
				shp_lefts[ i ] = shp_lefts[ i - 1 ] + widths[ i - 1 ]
				for k = 1, loop2 do
					shape_array[ i ] = shape_array[ i ] .. shape.displace( shape.displace( Shapes[ i ], "origin" ),
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
			return shape.displace( shape_radial_fx, "origin" )	--radial3
		elseif An_mo == "radial"
			or An_mo == "radial1"
			or An_mo == "radial2" then
			local radio_array, arcox
			for i = 1, loop2 do
				idx = (i - 1) % #Shapes + 1
				shape_array[ i ] = shape.displace( shape.displace( Shapes[ idx ], "origin" ), 0, -0.5 * shape.height( Shapes[ idx ] ) )
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
			return shape.displace( shape_radial_fx, "origin" )	--radial1, radial2
		elseif An_mo == "array" then
			for i = 1, loop2 do
				idx = (i - 1) % #Shapes + 1
				Shapes[ idx ] = shape.displace( Shapes[ idx ], "origin" )
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
			shape_lineal[ i ] = shape.displace( shape.rotate( Shapes[ idx ], angle_shape - angle_array ), "origin" )
			shape_lineal[ i ] = shape.displace( shape_lineal[ i ], 0, -0.5 * shape.height( shape_lineal[ i ] ) )
			widths[ i ] = shape.width( shape_lineal[ i ] ) + distance_x
			shp_lefts[ i ] = shp_lefts[ i - 1 ] + widths[ i - 1 ]
			shape_lineal_fx = shape_lineal_fx .. shape.displace( shape_lineal[ i ], shp_lefts[ i ] )
		end
		return shape.displace( shape.rotate( shape_lineal_fx, angle_array ), "origin" )
	end
	
	function shape.lmove( Coor, Times, Times2, Accel ) -- Shape Lineal Move
		--genera un movimiento en secciones rectas según las coordenadas indicadas
		if type( Coor ) == "function" then
			Coor = Coor( )
		end
		if type( Times ) == "function" then
			Times = Times( )
		end
		if type( Times2 ) == "function" then
			Times2 = Times2( )
		end
		if type( Accel ) == "function" then
			Accel = Accel( )
		end
		local Accel = Accel or 1
		effector.print_error( Coor, "table", "shape.lmove", 1 )
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
		effector.print_error( Times, "table", "shape.lmove", 2 )
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
			tags1 = tags1 .. format( "\\t(%s,%s,%s,\\fscx%s\\fscy%s)",
				Times[ 2 * (i - 1) - 1 ], Times[ 2 * (i - 1) ], Accel, coorx[ i ], coory[ i ]
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
	end --shape.lmove( { -l.width / 2, fx.pos_y, fx.pos_x, fx.pos_y, xres + l.width / 2, fx.pos_y }, { 0, 200, fx.dur - 200, fx.dur } )
	
	function shape.pmove( F_x, F_y, domainF, t1, t2, Accel, offset_t ) -- Shape Parametric Move
		--genera un movimiento de acuerdo con las funciones paraméticas ingresadas
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
		effector.print_error( F_x, "string", "shape.pmove", 1 )
		effector.print_error( F_y, "string", "shape.pmove", 2 )
		effector.print_error( domainF, "numbertable", "shape.pmove", 3 )
		local offset_t = offset_t or 0
		local accel = Accel or 1
		local time2 = t2 or fx.movet_f
		local time1 = t1 or fx.movet_i
		local tgdur
		effector.print_error( time1, "number", "shape.pmove", 4 )
		effector.print_error( time2, "number", "shape.pmove", 5 )
		----------------------------------------------------------
		if retime_mode then
			time1, time2 = retimettag( retime_mode, time1, time2 )
		end --september 09th 2017
		----------------------------------------------------------
		local dur_t = time2 - time1
		if Accel then
			effector.print_error( Accel, "number", "shape.pmove", 6 )
		end
		effector.print_error( offset_t, "numbertable", "shape.pmove", 7 )
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
	end --shape.pmove( "100 * cos( %s )", "100 * sin( %s )", { 0, 2 * pi } )

	function shape.smove( Shape, t1, t2, Relative ) -- Shape Shape Move
		--genera un movimiento siguiendo el contorno de la shape ingresada
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( t1 ) == "function" then
			t1 = t1( )
		end
		if type( t2 ) == "function" then
			t2 = t2( )
		end
		local time2 = t2 or fx.movet_f
		local time1 = t1 or fx.movet_i
		effector.print_error( time1, "number", "shape.smove", 2 )
		effector.print_error( time2, "number", "shape.smove", 3 )
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
		effector.print_error( Shape, "stringtable", "shape.smove", 1 )
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
	end --shape.smove( shape.trebol )
	
	function shape.rmove( Rx, Ry, t1, t2, Accel, offset_t, Counter2 ) -- Shape Random Move
		--genera un movimiento aleatorio
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
		effector.print_error( Rx, "numbershapetable", "shape.rmove", 1 )
		effector.print_error( Ry, "numbershapetable", "shape.rmove", 2 )
		effector.print_error( time1, "number", "shape.rmove", 3 )
		effector.print_error( time2, "number", "shape.rmove", 4 )
		----------------------------------------------------------------
		if retime_mode then
			time1, time2 = retimettag( retime_mode, time1, time2 )
		end --september 09th 2017
		----------------------------------------------------------------
		local dur_t = time2 - time1
		effector.print_error( accel, "numberstring", "shape.rmove", 5 )
		effector.print_error( offset_t, "numbertable", "shape.rmove", 6 )
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
						randx = Rrd( Rx[ 1 ], Rx[ 2 ], 0.05, i, Counter2 ) --january 15th 2020	1 --> 0.05
					end
				elseif type( Rx ) == "function" then
					Rx_func = Rx( )
					randx = Rrd( -Rx_func, Rx_func, 0.05, i, Counter2 )
				else
					randx = Rrd( -Rx, Rx, 0.05, i, Counter2 )
				end
				if type( Ry ) == "table" then
					if type( Ry[ 1 ] ) == "table" then
						randy = tostring( Ry[ 1 ][ 1 ] ) .. ">" .. tostring( Ry[ 1 ][ 2 ] )
					else
						randy = Rrd( Ry[ 1 ], Ry[ 2 ], 0.05, -pi * i, Counter2 )
					end
				elseif type( Ry ) == "function" then
					Ry_func = Ry( )
					randy = Rrd( -Ry_func, Ry_func, 0.05, -pi * i, Counter2 )
				else
					randy = Rrd( -Ry, Ry, 0.05, -pi * i, Counter2 )
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
	end --shape.rmove( 10, 20 )
	
	function shape.rmove2( Rx, Ry, t, Accel ) -- Shape Random Move
		--genera un movimiento aleatorio, con tiempos off aleatorios
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
			tag_tbl[ i ] = shape.rmove( Rx, Ry, tag_tm1, tag_tm2, Accel, { time_tag }, i )
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
	end --shape.rmove2( 12, 12 )
	
	function shape.rmove3( Rx, Ry, t, Accel, offset_t )
		--genera un movimiento aleatorio en segmentos de tiempos determinados
		if type( t ) == "function" then
			t = t( )
		end
		local times = t or { 0, fx.dur }
		effector.print_error( times, "table", "shape.rmove3", 3 )
		local rmove3_tgfx = ""
		local rmove3_tags = shape.rmove( Rx, Ry, times[ 1 ], times[ 2 ], Accel, offset_t )
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
			rmove3_tag3[ i - 1 ] = shape.rmove( Rx, Ry, times[ 2 * i - 1 ], times[ 2 * i ], rmove3_accl, rmove3_offt, i )
			for tr in rmove3_tag3[ i - 1 ]:gmatch( "\\t%(%d+[%.%d]*%,%d+[%.%d]*%,[%d%.%,]*\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*%)" ) do
				table.insert( rmove3_tbl3[ i - 1 ], tr )
			end
			rmove3_tag3[ i - 1 ] = table.op( rmove3_tbl3[ i - 1 ], "concat" )
		end
		rmove3_tag3 = table.op( rmove3_tag3, "concat" )
		rmove3_tgfx = rmove3_tags:gsub( "\\p1", format( "%s\\p1", rmove3_tag3 ) )
		return rmove3_tgfx
	end --shape.rmove3( nil, nil, { 0, 500, fx.dur - 500, fx.dur }, 1, { 2f } )
	
	function shape.rmove4( Rx, Ry, t1, t2, Accel, offset_t, move4 )
		--genera un movimiento aleatorio con doble shake
		if type( move4 ) == "function" then
			move4 = move4( )
		end
		local time1 = t1 or fx.movet_i
		local time2 = t2 or fx.movet_f
		local dur_t = time2 - time1
		local move4 = move4 or { 1.5 * frame_dur, 25 * ratio }	--move4 = { t, dx, acc }
		move4[ 3 ] = move4[ 3 ] or 1
		effector.print_error( move4, "table", "shape.rmove4", 7 )
		local tag_r = shape.rmove( Rx, Ry, time1, time2, Accel, offset_t )
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
	end --shape.rmove4( 20, 20, 0, fx.dur, 1, { 460 }, { 3f, { 20, 40 } } )
	
	function shape.omove( P, t1, t2, Dur, Accel ) -- Shape Oscill Move
		--genera un movimiento oscilante entre los puntos ingresados
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
	end --shape.omove( { 0, 30, 0, -30 } )
	
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
			Shape = shape.displace( Shape, 0, 0, "first" )
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
		--alpica los fx solo a los objetos karaokes que estén dentro del clip o clips
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
	
	function shape.animated( dur, frame_duration, Shapes, Pscale, Random )
		--genera una animación con las shapes ingresadas
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
		effector.print_error( dur, "number", "shape.animated", 1 )
		effector.print_error( frame_duration, "number", "shape.animated", 2 )
		effector.print_error( Shapes, "table", "shape.animated", 3 )
		effector.print_error( prop, "numberstring", "shape.animated", 4 )
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
	shape.animated2 = shape.animated
	
	function shape.divide( Shape, Mark )
		-- retorna una tabla con las shapes que conforman una shape
		-- si se quiere, retorna cada una de esas shapes con un marco
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Mark ) == "function" then
			Mark = Mark( )
		end
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.divide", 1 )
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
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.retire", 1 )
		local coor, c = { }
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
		--genera una shape aleatoria con un trazo en beziers de forma fluida
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
		--genera una shape aleatoria con un trazo en beziers de forma fluida, en trayectoria recta
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
		local loops, Rand, px, py = 3 * Loop_Lt, ratio_y, { }, { }
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
		--genera una shape aleatoria con un trazo en beziers de forma fluida, sinexceder un radio determinado
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
		--genera una shape aleatoria con un trazo en beziers
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
		--genera una shape aleatoria con trazos rectos
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
		--retorna shapes cuadradas concéntricas
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
			Shape = remember( "shape_multi1", shape.displace( Shape, "origin" ) )
		end
		return shape.ASSDraw3( Shape ) --shape.multi1( 100, { 10, { 4 } } )
	end
	
	function shape.multi2( Width, Height, Pixel )
		--crea shapes diagonales dentro de un rectángulo con medidas dadas
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
	end
	
	function shape.multi3( Size, Bord, Shape )
		--si no se pone "Shape", retorna círculos concéntricos, o shapes concéntricas de la que se haya ingresado
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
			Shape3 = shape.displace( shape.size( Shape, Bord[ 1 ] ), "incenter" )
			while Size_max <= Size do
				if type( Bord ) == "table" then
					Brd_i = Bord[ i % #Bord + 1 ]
				end
				Size_max = Size_max + 2 * ((type( Brd_i ) == "table") and Brd_i[ 1 ] or Brd_i)
				if type( Brd_i ) == "number" then
					Shpfx1 = shape.displace( shape.size( Shape, Size_max ), "incenter" )
					Shpfx2 = shape.displace( shape.reverse( shape.size( Shape, Size_max - 2 * Brd_i ) ):gsub( "m", "l", 1 ), "incenter" )
					Shape3 = Shape3 .. Shpfx1 .. Shpfx2
				end
				i = i + 1
			end --mod: january 03rd 2019
			Shape3 = remember( "shape_multi3", shape.displace( Shape3, "origin" ) )
		end --shape.multi3( 100, { 8, { 5 } } )
		return shape.ASSDraw3( Shape3 )
	end
	
	function shape.multi4( Size, Loop1, Loop2, n )
		--retorna un polígono regular de Loop1 lados, con un arreglo de Loop2. n es la cantidad de arreglos tomados en cuenta
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
				and shape.displace( shape.rotate( Shape, ((-1) ^ ((Loop1 - 1) / 2)) * 90 / Loop1 ), "origin" )
				or shape.displace( Shape, "origin" )
			)
		end
		return Shapefx --shape.multi4( 100, 6, 4, 3 )
	end
	
	function shape.multi5( Shapes, Width, Height, Dxy )
		--retorna un arreglo matricial rectangular de las shapes ingresadas
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
							shape.displace( Shapes[ (k - i) % #Shapes + 1 ], "incenter" ), (k - 1) * max_W, (i - #Shapes) * max_H
						)
					end
				end
				Shape = shape.displace( table.op( ShapeT, "concat" ), "origin" )
			else
				Shape = Shapes or shape.size( shape.rectangle, 8 * ratio )
				Shape = shape.displace( Shape, "origin" )
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
	end
	
	function shape.multi6( Size, Bord, Part ) -- december 30th 2016
		--retorna el perímetro de un cuadrado formado de rectángulos individuales
		if type( Size ) == "function" then
			Size = Size( )
		end
		if type( Bord ) == "function" then
			Bord = Bord( )
		end
		if type( Part ) == "function" then
			Part = Part( )
		end
		local Size = Size or 104
		local Bord = Bord or 4
		local Part = Part or 20
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
	end
	
	function shape.multi7( Part, Radius )
		--retorna un círculo o el perímetro de un círculo hecho con segmentos individuales
		if type( Part ) == "function" then
			Part = Part( )
		end
		if type( Radius ) == "function" then
			Radius = Radius( )
		end
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
			Shape = remember( "shape_multi7", shape.displace( Shape, "origin" ) )
		end
		return shape.ASSDraw3( Shape ) --shape.multi7( 12, { 20, 40, 60 } )
	end
	
	function shape.multi8( Shape, Size_ini, Size_fin, Loop )
		--retorna shapes concéntricas desde una tamaño inicial hasta un tamaño final
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
		Shape = shape.displace( Shape, "origin" )
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
				Shp_mul8 = Shp_mul8 .. shape.displace( shape.size( Shp_init, Size_max - (Size_max - Size_min) * (i - 1) / (Loop_s - 1), 0 ), Shp_cent, Shp_midd, "center" )
			end
			Shp_mul8 = remember( "shape8", Shp_mul8 )
		end
		-------------------------------------------------------------------------------------------
		return Shp_mul8 --shape.multi8( shape.rectangle, 100, 10, 10 )
		--january 11th 2018
	end
	
	function shape.multi9( Shape, Loop, Tags, Vertical )
		--crea una shape formada por una secuencia de shapes en una única línea de fx
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
				Tags_s[ i ] = format( "{\\1c%s}", color.random( nil, 82 ) )
			end
		end
		effector.print_error( Tags_s, "table", "shape.multi9", 3 )
		if table.type( Tags_s ) == "table" then
			Tags_s = table.concat4( Tags_s )
		end --december 06th 2019
		local tag_N = "{"
		if Vertical then
			tag_N = "{\\p0}\\N{\\p1"
		end --add: december 05th 2018
		local Shps_9 = "{\\p1}"
		if type( Shape ) == "string" then
			Shape = shape.displace( Shape, "origin" )
			for i = 1, Loop_s do
				Shps_9 = Shps_9 .. tag_N .. Tags_s[ (i - 1) % #Tags_s + 1 ] .. "}" .. Shape
			end
		elseif type( Shape ) == "function" then
			for i = 1, Loop_s do
				Shps_9 = Shps_9 .. tag_N .. Tags_s[ (i - 1) % #Tags_s + 1 ] .. "}" .. shape.displace( Shape( i, Loop_s ), "origin" )
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
			tags = table.ipol( { "\\1a255", 80, 255 }, Loop )
			shape.multi9( my_filter, Loop, tags )
			--]]
		end
		-- elimina el primer salto de línea \N de la shape
		Shps_9 = Shps_9:gsub( "{\\p0}\\N{\\p1", "{", 1 )
		--------------------------------------------------
		return Shps_9
	end --january 13th 2018
	
	function shape.morphism( Size, Shape1, Shape2, Accel )
		--retorna una tabla con la interpolación entre las dos shapes ingresadas
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
		local Accel = Accel or 1
		local Shapes = recall.shape_morphism
		effector.print_error( Size,  "number", "shape.morphism", 1 )
		effector.print_error( Shape1, "shape", "shape.morphism", 2 )
		effector.print_error( Shape2, "shape", "shape.morphism", 3 )
		effector.print_error( Accel, "numberstring", "shape.morphism", 4 )
		if type( Accel ) == "number" then
			Accel = "%s ^ " .. tostring( Accel )
		end
		if j == 1 then
			--table.ipol( Table, Size, Tags, algorithm )
			Shapes = remember( "shape_morphism", table.ipol( { Shape1, Shape2 }, Size, nil, Accel ) )
		end --rewrite: may 20th 2020
		return Shapes --shape.morphism( 6, shape.to_bezier( shape.rectangle ), shape.circle )
	end
	
	function shape.bord( Shape, Bord, Size )
		--genera el borde la shape con un espesor definido
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Bord ) == "function" then
			Bord = Bord( )
		end
		if type( Size ) == "function" then
			Size = Size( )
		end
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.bord", 1 )
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
			Shape_1 = shape.displace( shape.size( Shape, Size_x, Size_y ), "incenter" )
			Shape_2 = shape.displace( shape.size( shape.reverse( Shape ), Size_x - 2 * Bord, Size_y - 2 * Bord ), "incenter" )
			Shape_2 = "l" .. Shape_2:sub( 2, -1 )
			Shape_B = Shape_1 .. Shape_2
			Shape = shape.displace( Shape_B, P_first.x, P_first.y, "first" )
		end
		return Shape
	end --shape.bord( shape.circle, 8, 120 )
	
	function shape.from_audio( Audio_wav, Width_wav, Height_scale_wav, Thickness_wav, Offset_time )
		--genera el gráfico del aundio en formato .wav ingresado
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
	
	function shape.to_pixels( Shape, Shape2, Seed, Filter, Table )
		--convierte en pixeles la shape ingresada
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Shape2 ) == "function" then
			Shape2 = Shape2( )
		end
		if type( Seed ) == "function" then
			Seed = Seed( )
		end
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.to_pixels", 1 )
		shape.info( Shape )
		local shape_pixel, pixel_table
		local pixel_datas, pixel, pixel_pos = { }, recall.pxl, ""
		if j == 1 then
			pixel_table = Yutils.shape.to_pixels( Shape )
			pixel = remember( "pxl", { } )
			for i = 1, #pixel_table do
				pixel_datas[ i ] = { }
				for k, v in pairs( pixel_table[ i ] ) do
					table.insert( pixel_datas[ i ], v )
				end
			end
			if type( Table ) == "table" then
				pixel.x, pixel.y, pixel.a = { }, { }, { }
				for i = 1, #pixel_table do
					pixel.x[ i ] = pixel_datas[ i ][ 2 ] + 1
					pixel.y[ i ] = pixel_datas[ i ][ 1 ] + 1
					pixel.a[ i ] = alpha.val2ass( 255 - pixel_datas[ i ][ 3 ] )
				end --shape.to_pixels( shape.size( shape.rectangle, 10 ), nil, nil, nil, { 1 } )
				return pixel --add: may 20th 2020
			end
			if not Table then
				for i = 1, #pixel_table do
					pixel[ i ] = { }
					pixel[ i ].x = fx.move_x1 - w_shape / 2 + pixel_datas[ i ][ 2 ]
					pixel[ i ].y = fx.move_y1 - h_shape / 2 + pixel_datas[ i ][ 1 ]
					pixel[ i ].a = alpha.val2ass( 255 - pixel_datas[ i ][ 3 ] )
				end
				maxloop( #pixel_datas )
			end
		end
		pixel_pos = effector.new_pos( pixel[ j ].x, pixel[ j ].y )
		if Filter then
			pixel_pos = Filter( pixel )
		end
		fx.pos_x, fx.pos_y = pixel[ j ].x, pixel[ j ].y
		if Table then
			return pixel
		end
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
		--convierte el borde de la shape ingresada en pixeles
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
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.bord_to_pixels", 1 )
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
		--genera una recta-shape dados dos puntos, o un punto, un ángulo y un radio
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
		--genera un círculo-shape con los tres primeros puntos de la shape o clip ingresado
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
			ShapeC = shape.displace( shape.size( shape.circle, 2 * Radius ), Cpx, Cpy, "center" )
			ShapeC = format( "{\\an7\\pos(0,0)}%s", ShapeC )
		elseif type( Shape ) == "table" then
			ShapeC = shape.displace( shape.size( shape.circle, 2 * Shape[ 3 ] ), Shape[ 1 ], Shape[ 2 ], "center" )
			ShapeC = format( "{\\an7\\pos(0,0)}%s", ShapeC )
		end
		return ShapeC
	end --shape.fxcircle( )
	
	function shape.trim( Shape, Lines, Mark, Ratio )
		--divide en partes una shape según las rectas ingresadas
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
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.trim", 1 )
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
		--elimina los puntos que le sobren a una shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.reduce", 1 )
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
		--convierte el clip ingresado en una shape
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
		--aplica una transformación por medio de una o más matrices
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
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
		local Matrix = math.matrix_mul( unpack( Matrixes ) )
		if type( Shape ) == "table" then
			for i = 1, #Shape do
				Shape[ i ] = shape.matrix( Shape[ i ], ... )
			end
		else --recursividad: september 08th 2019
			Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
				function( x, y )
					local Points = { tonumber( x ), tonumber( y ), 0 } --> coordenadas homogéneas
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
	
	function shape.do_shape( Shape1, Shape2, Mode, Split )
		--hace que la shape1 adopte  la forma de la shape2 sin perder sus características
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
		local Mode  = Mode or 1
		local Shape1 = shape.ASSDraw3( Shape1 )
		local Shape2 = shape.ASSDraw3( Shape2 )
		effector.print_error( Shape1, "shape", "shape.do_shape", 1 )
		effector.print_error( Shape2, "shape", "shape.do_shape", 2 )
		effector.print_error( Mode,  "number", "shape.do_shape", 3 )
		effector.print_error( Split, "number", "shape.do_shape", 4 )
		local Shape1 = shape.filter( Shape1, Split, nil )
		local Ratio = math.round( shape.width( Shape1 ) / shape.length( Shape2 ), 3 )
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
		--convierte una shape en el borde de ella misma
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
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape",  "shape.point", 1 )
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
		--deforma la shape adoptando la forma de la función seno
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
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.deformed", 1 )
		effector.print_error( Deformed1, "number", "shape.deformed", 2 )
		effector.print_error( Pixel1, "number", "shape.deformed", 3 )
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
		return format( "{\\p1}%s", shape.displace( shape.filter( Shape, 2, shape_filter ), "origin" ) )
	end --shape.deformed( shape.rectangle, 8, 5, "y" )
	
	function shape.fusion( Shapes, Tags )
		--fusiona las shapes ingresadas para que ocupen una única línea fx
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
				Shapes_tbl = shape.divide( shape.displace( Shapes_tbl, "origin" ) )
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
				Shapes_tbl[ i ] = shape.displace( Shapes_tbl[ i ], 0.5 * shp_mark_x + (#Shapes_tbl - i) * shp_mark_x, 0.5 * shp_mark_y, "center" )
				Shapes_tbl[ i ] = shape.displace( Shapes_tbl[ i ], -0.5 * #Shapes_tbl * shp_mark_x + 0.5 * shp_mark_x )
			end
			local shp_tags = Tags
			if Tags == nil then
				shp_tags = { }
				for i = 1, #Shapes_tbl do
					shp_tags[ i ] = format( "{\\1c%s}", color.random( nil, 82 ) )
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
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Defor_x ) == "function" then
			Defor_x = Defor_x( )
		end
		if type( Defor_y ) == "function" then
			Defor_y = Defor_y( )
		end
		local Shape = Shape or shape.rectangle
		local coors = { }
		local deforx = Defor_x or 6 * ratio
		local defory = Defor_y or deforx
		effector.print_error( Shape, "shape", "shape.deformed2", 1 )
		effector.print_error( deforx, "number", "shape.deformed2", 2 )
		effector.print_error( defory, "number", "shape.deformed2", 3 )
		local maxx, maxy = shape.width( Shape ), shape.height( Shape )
		Shape = shape.displace( Shape, "origin" )
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
		local Shape = shape.ASSDraw3( Shape )
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
	
	function shape.insert( Shape1, Shape2 )
		--inserta mutuamente el código de una shape en la otra
		if type( Shape1 ) == "function" then
			Shape1 = Shape1( )
		end
		if type( Shape2 ) == "function" then
			Shape2 = Shape2( )
		end
		local Shape1 = Shape1 or shape.rectangle
		local Shape2 = Shape2 or shape.circle
		effector.print_error( Shape1, "shape", "shape.insert", 1 )
		effector.print_error( Shape2, "shape", "shape.insert", 2 )
		Shape1 = shape.divide( Shape1 )
		Shape2 = shape.divide( Shape2 )
		local Shape1_D = table.duplicate( Shape1 )
		local Shape2_D = table.duplicate( Shape2 )
		local dif, idx, i
		if #Shape1 > #Shape2 then
			dif = #Shape1 - #Shape2
			i = 1
			while i <= dif do
				idx = math.i( i, #Shape2 )[ "1-->A" ]
				Shape2[ idx ] = Shape2[ idx ] .. Shape2_D[ idx ]
				i = i + 1
			end
		elseif #Shape2 > #Shape1 then
			dif = #Shape2 - #Shape1
			i = 1
			while i <= dif do
				idx = math.i( i, #Shape1 )[ "1-->A" ]
				Shape1[ idx ] = Shape1[ idx ] .. Shape1_D[ idx ]
				i = i + 1
			end
		end
		-----------------------------------------------
		local function shape_iso( Shape1, Shape2 )
			--shape_iso( shape.circle, "m 0 0 l 0 20 l 30 20 l 0 0 " )
			local Shape1 = shape.to_bezier( Shape1 )
			local Shape2 = shape.to_bezier( Shape2 )
			local bezier1, b1 = { }
			for b1 in Shape1:gmatch( "[bm]^* %-?%d[%.%-%d ]*" ) do
				bezier1[ #bezier1 + 1 ] = b1
			end
			local bezier2, b2 = { }
			for b2 in Shape2:gmatch( "[bm]^* %-?%d[%.%-%d ]*" ) do
				bezier2[ #bezier2 + 1 ] = b2
			end
			local dif, idx, newb, i
			if #bezier1 > #bezier2 then
				dif = #bezier1 - #bezier2
				i = 1
				while i <= dif do
					idx = math.i( i, 2, #bezier2 )[ "A-->B" ]
					newb = bezier2[ idx ]:reverse( ):match( "%d[%.%-%d]* %d[%.%-%d]*" ):reverse( )
					bezier2[ idx ] = bezier2[ idx ] .. format( "b %s %s %s ", newb, newb, newb )
					i = i + 1
				end
			elseif #bezier2 > #bezier1 then
				dif = #bezier2 - #bezier1
				i = 1
				while i <= dif do
					idx = math.i( i, 2, #bezier1 )[ "A-->B" ]
					newb = bezier1[ idx ]:reverse( ):match( "%d[%.%-%d]* %d[%.%-%d]*" ):reverse( )
					bezier1[ idx ] = bezier1[ idx ] .. format( "b %s %s %s ", newb, newb, newb )
					i = i + 1
				end
			end
			Shape1 = table.concat( bezier1 )
			Shape2 = table.concat( bezier2 )
			return Shape1, Shape2
		end
		-----------------------------------------------
		Shape1 = shape.divide( table.concat( Shape1 ) )
		Shape2 = shape.divide( table.concat( Shape2 ) )
		for i = 1, #Shape1 do
			Shape1[ i ], Shape2[ i ] = shape_iso( Shape1[ i ], Shape2[ i ] )
		end
		Shape1 = table.concat( Shape1 )
		Shape2 = table.concat( Shape2 )
		return Shape1, Shape2
	end --rewrite: may 19th 2020

	function shape.parametric( Shape, Pixel )
		--convierte una shape en posiciones de la función paramétrica
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Pixel ) == "function" then
			Pixel = Pixel( )
		end
		local Pixel = Pixel or 4 * ratio
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.parametric", 1 )
		effector.print_error( Pixel, "number", "shape.parametric", 2 )
		local shpxy = recall.pxy
		if j == 1 then
			shpxy = remember( "pxy", shape.point( Shape, Pixel ) )
		end
		maxloop( #shpxy )
		return shpxy[ j ] --march 31st 2020
	end --shape.parametric( shape.circle )

	function shape.cut( Shape, t, AddPoint )
		--shape.cut( shape.circle, 0.65 )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( t ) == "function" then
			t = t( )
		end
		local t = t or 0.85
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.cut", 1 )
		effector.print_error( t, "numbertable", "shape.cut", 2 )
		local function shape_cut( Shape, t, AddPoint )
			local function cut_tract( Shape, t )
				--segmenta en partes a una Shape
				if math.round( t, 3 ) == 0 then
					return { "", Shape }
				elseif math.round( t, 3 ) == 1 then
					return { Shape, "" }
				end
				local function xcut( tract, t )
					local Shp_parts
					local tract = shape.ASSDraw3( tract )
					if math.round( t, 3 ) == 0 then
						return { "", tract }
					elseif math.round( t, 3 ) == 1 then
						return { tract, "" }
					end
					if tract:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+l%s+%-?%d+[%.%d]*%s+%-?%d+[%.%d]*%s+" ) then
						local x1, y1, x2, y2 = tract:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)%s+l%s+(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)%s+" )
						local Angle = math.angle( x1, y1, x2, y2 )
						local Dista = math.distance( x1, y1, x2, y2 )
						local x3, y3 = math.polar( Angle, Dista * t )
						Shp_parts = {
							[ 1 ] = format( "m %s %s l %s %s ", x1, y1, x1 + x3, y1 + y3 ),
							[ 2 ] = format( "m %s %s l %s %s ", x1 + x3, y1 + y3, x2, y2 )
						}
					else
						local Parts, x, y = { }
						for x, y in tract:gmatch( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*%s+)" ) do
							Parts[ #Parts + 1 ] = {
								x = tonumber( x ),
								y = tonumber( y )
							}
						end
						for i = 1, 3 do --longitudes y ángulos de las tres rectas principales
							Parts[ i ].l = math.distance( Parts[ i ].x, Parts[ i ].y, Parts[ i + 1 ].x, Parts[ i + 1 ].y )
							Parts[ i ].a =    math.angle( Parts[ i ].x, Parts[ i ].y, Parts[ i + 1 ].x, Parts[ i + 1 ].y )
						end
						for i = 5, 7 do --coordenadas de los tres puntos de corte principales
							Parts[ i ] = {
								x = Parts[ i - 4 ].x + math.polar( Parts[ i - 4 ].a, t * Parts[ i - 4 ].l, "x" ),
								y = Parts[ i - 4 ].y + math.polar( Parts[ i - 4 ].a, t * Parts[ i - 4 ].l, "y" )
							}
						end
						for i = 4, 5 do --longitudes y ángulos de las dos rectas secundarias
							Parts[ i ].l = math.distance( Parts[ i + 1 ].x, Parts[ i + 1 ].y, Parts[ i + 2 ].x, Parts[ i + 2 ].y )
							Parts[ i ].a =    math.angle( Parts[ i + 1 ].x, Parts[ i + 1 ].y, Parts[ i + 2 ].x, Parts[ i + 2 ].y )
						end
						for i = 8, 9 do --coordenadas de los dos puntos de corte secundarios
							Parts[ i ] = {
								x = Parts[ i - 3 ].x + math.polar( Parts[ i - 4 ].a, t * Parts[ i - 4 ].l, "x" ),
								y = Parts[ i - 3 ].y + math.polar( Parts[ i - 4 ].a, t * Parts[ i - 4 ].l, "y" )
							}
						end
						--longitud de la última recta
						Parts[ 6 ].l = math.distance( Parts[ 8 ].x, Parts[ 8 ].y, Parts[ 9 ].x, Parts[ 9 ].y )
						Parts[ 6 ].a =    math.angle( Parts[ 8 ].x, Parts[ 8 ].y, Parts[ 9 ].x, Parts[ 9 ].y )
						--coordenadas del último punto
						Parts[ 10 ] = {
							x = Parts[ 8 ].x + math.polar( Parts[ 6 ].a, t * Parts[ 6 ].l, "x" ),
							y = Parts[ 8 ].y + math.polar( Parts[ 6 ].a, t * Parts[ 6 ].l, "y" )
						}
						Shp_parts = {
							[ 1 ] = format( "m %s %s b %s %s %s %s %s %s ",
								Parts[ 1 ].x, Parts[ 1 ].y, Parts[ 5 ].x, Parts[ 5 ].y,
								Parts[ 8 ].x, Parts[ 8 ].y, Parts[ 10 ].x, Parts[ 10 ].y
							),
							[ 2 ] = format( "m %s %s b %s %s %s %s %s %s ",
								Parts[ 10 ].x, Parts[ 10 ].y, Parts[ 9 ].x, Parts[ 9 ].y,
								Parts[ 7 ].x, Parts[ 7 ].y, Parts[ 4 ].x, Parts[ 4 ].y
							)
						}
					end
					return Shp_parts
				end
				local parts, c = { }
				for c in Shape:gmatch( "[blm]^* %-?%d+[%.%-%d ]*" ) do
					parts[ #parts + 1 ] = { s = c }
				end
				local frequence_ra = 0
				for i = 2, #parts do
					parts[ i ].s = parts[ i - 1 ].s:reverse( ):match( "%s+%d[%.%-%d]*%s+%d[%.%-%d]*" ):reverse( ) .. parts[ i ].s
					parts[ i ].l = shape.length( "m " .. parts[ i ].s )
					parts[ i ].m = frequence_ra + parts[ i ].l
					frequence_ra = parts[ i ].m
				end
				table.remove( parts, 1 )
				local xlength = t * shape.length( Shape )
				local k = 0
				repeat
					k = k + 1
				until parts[ k ].m >= xlength
				local new_t = (xlength - parts[ k ].m + parts[ k ].l) / parts[ k ].l
				local cuts = xcut( "m " .. parts[ k ].s, new_t )
				local shape_i = Shape:match( "m%s+%-?%d+[%.%-%d]*%s+%-?%d+[%.%-%d]* " )
				for i = 1, k - 1 do
					shape_i = shape_i .. parts[ i ].s:gsub( "%-?%d+[%.%-%d]*%s+%-?%d+[%.%-%d]* ", "", 1 )
				end
				shape_i = shape_i .. cuts[ 1 ]:gsub( "m%s+%-?%d+[%.%-%d]*%s+%-?%d+[%.%-%d]* ", "", 1 )
				local shape_f = cuts[ 2 ]
				for i = k + 1, #parts do
					shape_f = shape_f .. parts[ i ].s:gsub( "%-?%d+[%.%-%d]*%s+%-?%d+[%.%-%d]* ", "", 1 )
				end
				if shape_f:match( "m" ) == nil then
					shape_f = "m" .. shape_i:reverse( ):match( "%s+%d[%.%-%d]*%s+%d[%.%-%d]* " ):reverse( ) .. shape_f
				end
				return { shape_i, shape_f }
			end
			local parts_shp, c = { }
			for c in Shape:gmatch( "m%s+%-?%d+[%.%-%d bl]*" ) do
				parts_shp[ #parts_shp + 1 ] = { s = c }
			end
			local frequence_ra = 0
			for i = 1, #parts_shp do
				parts_shp[ i ].l = shape.length( parts_shp[ i ].s )
				parts_shp[ i ].m = frequence_ra + parts_shp[ i ].l
				frequence_ra = parts_shp[ i ].m
			end
			local xlength = t * shape.length( Shape )
			local k = 0
			repeat
				k = k + 1
			until parts_shp[ k ].m >= xlength
			local new_t = (xlength - parts_shp[ k ].m + parts_shp[ k ].l) / parts_shp[ k ].l
			local cuts = cut_tract( parts_shp[ k ].s, new_t )
			local shape_i = ""
			for i = 1, k - 1 do
				shape_i = shape_i .. parts_shp[ i ].s
			end
			shape_i = shape_i .. cuts[ 1 ]
			local shape_f = cuts[ 2 ]
			for i = k + 1, #parts_shp do
				shape_f = shape_f .. parts_shp[ i ].s
			end
			return { shape_i, shape_f }
		end
		if type( t ) == "number" then
			if t < 0 then
				t = 0
			elseif t > 1 then
				t = 1
			end
			return shape_cut( Shape, t )
			--shape.cut( "m 50 0 b 22 0 0 22 0 50 ", 0.5 )
		elseif type( t ) == "table" then
			local total_parts = recall.parts
			if j == 1 then --fix: may 21st 2020
				total_parts = remember( "parts", { } )
				local n = abs( ceil( t[ 1 ] ) )
				if n < 3 then
					n = 3
				end
				local xParts = { [ 1 ] = shape.cut( Shape, 1 / n ) }
				for i = 2, n - 1 do
					xParts[ i ] = shape.cut( xParts[ i - 1 ][ 2 ], 1 / (n - i + 1) )
				end --shape.pos( table.concat( shape.cut( shape.circle, { 5 }, 1 ) ) )
				for i = 1, #xParts do
					total_parts[ i ] = xParts[ i ][ 1 ]
				end
				total_parts[ n ] = xParts[ #xParts ][ 2 ]
				--return total_parts
				----------------
				local Px, Py, Pa
				if AddPoint then
					shape.info( Shape )
					Px, Py = c_shape, m_shape
					if type( AddPoint ) == "table" then
						Px, Py = AddPoint[ 1 ], AddPoint[ 2 ]
						if type( Px ) == "string" then
							Px = Px:gsub( "(%d)x", "%1 * x" ):gsub( "x", c_shape )
							Px = Px:gsub( "(%d)y", "%1 * y" ):gsub( "y", m_shape )
							Px = string.toval( Px )
						end
						if type( Py ) == "string" then
							Py = Py:gsub( "(%d)x", "%1 * x" ):gsub( "x", c_shape )
							Py = Py:gsub( "(%d)y", "%1 * y" ):gsub( "y", m_shape )
							Py = string.toval( Py )
						end
					end
					Pa = format( " %s %s ", Px, Py )
					for i = 1, #total_parts do
						total_parts[ i ] = "m" .. Pa .. total_parts[ i ]:gsub( "m", "l", 1 ) .."l" .. Pa
					end
				end --shape.cut( shape.rectangle, { 3 }, 1 )
				----------------
			end
			return total_parts --shape.cut( shape.circle, { 5 }, 1 )
		end
	end --may 10th 2020
	
	function shape.pointpos( Shape, P1, P2 )
		--desplaza la shape respecto a uno de sus puntos, al punto indicado
		--shape.pointpos( shape.circle, 2, { 0, 0 } )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( P1 ) == "function" then
			P1 = P1( )
		end
		if type( P2 ) == "function" then
			P2 = P2( )
		end
		local Shape = shape.ASSDraw3( Shape )
		local P1 = P1 or Shape
		local P2 = P2 or Shape
		effector.print_error( Shape, "shape", "shape.pointpos", 1 )
		effector.print_error( P1, "numberstringtable", "shape.pointpos", 2 )
		effector.print_error( P2, "stringtable", "shape.pointpos", 3 )
		local points, c = { }
		local x1, y1, x2, y2 = 0, 0, 0, 0
		if type( P1 ) == "string"
			and P1:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) then
			x1, y1 = P1:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
			x1, y1 = tonumber( x1 ), tonumber( y1 )
		elseif type( P1 ) == "table" then
			if P1.x and P1.y then
				x1, y1 = P1.x, P1.y
			else
				x1, y1 = P1[ 1 ], P1[ 2 ]
			end
		elseif type( P1 ) == "number" then
			for c in Shape:gmatch( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) do
				points[ #points + 1 ] = c
			end
			if points[ P1 ] then
				P1 = points[ P1 ]
			else
				P1 = points[ 1 ]
			end
			x1, y1 = P1:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
			x1, y1 = tonumber( x1 ), tonumber( y1 )
		end
		if type( P2 ) == "string"
			and P2:match( "%-?%d+[%.%d]*%s+%-?%d+[%.%d]*" ) then
			x2, y2 = P2:match( "(%-?%d+[%.%d]*)%s+(%-?%d+[%.%d]*)" )
			x2, y2 = tonumber( x2 ), tonumber( y2 )
		elseif type( P2 ) == "table" then
			if P2.x and P2.y then
				x2, y2 = P2.x, P2.y
			else
				x2, y2 = P2[ 1 ], P2[ 2 ]
			end
		end
		local Dx, Dy = x2 - x1, y2 - y1
		return shape.displace( Shape, Dx, Dy )
	end --april 30th 2020
	
	function shape.pos( Shape )
		--asigna la posición de cada una de las shapes individuales que conforman una shape
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.pos", 1 )
		Shapes = shape.divide( Shape )
		shape.info( Shape )
		local cx, cy = c_shape, m_shape
		maxloop( #Shapes )
		shape.info( Shapes[ j ] )
		local nx, ny = c_shape, m_shape
		local pixel_pos = effector.new_pos( fx.pos_x + nx - cx, fx.pos_y + ny - cy )
		return format( "{%s}", pixel_pos ) .. shape.displace( Shapes[ j ], "origin" )
	end --may 21st 2020
	
	function shape.grid( Shape, Filter, Align, Line, Lines )
		--convierte la shape ingresada en pixeles que ocupan una única línea fx
		--shape.grid( shape.size( shape.circle, 50 ), function( ) return "\\1c" .. tag.ipol( py / 50, "&HFF0000&", "&H0000FF&" ) end )
		if type( Shape ) == "function" then
			Shape = Shape( )
		end
		if type( Align ) == "function" then
			Align = Align( )
		end
		local Shape = shape.displace( Shape or shape.size( shape.circle, 32 ), "origin" )
		local Filter = Filter or function( ) return "" end
		local Align = Align or 7					--alineación, en caso de ingresar imagen
		local x_max, y_max = shape.width( Shape ), shape.height( Shape )
		-----------------------------------
		local lines_shp
		local Reduc = function( String )
			--reduce los colores y alphas repetidos
			local lines_in_shp, l = { }
			--recolecta cada línea de la shape
			for l in String:gmatch( "%b{}m %d+[ %l%d%x&H/{/}\\]*N" ) do
				l = l:match( "\\p1" ) and l or "{\\p1}" .. l --agrega el \\p1 en caso de que no haya
				local k = 1
				local parts_lines, p = { [ 0 ] = "" } --partes de una línea
				for p in l:gmatch( "%b{}m %d+[ %dl]*" ) do
					parts_lines[ #parts_lines + 1 ] = p
				end
				l = l:gsub( "%b{}m %d+[ %dl]*",
					function( capture )
						capture = (capture == parts_lines[ k - 1 ]) and "G" or capture
						k = k + 1
						return capture
					end
				)
				:gsub( "m %d+[ %dl]*(G[G]*)",
					function( Mark )
						local n = unicode.len( Mark ) + 1
						return format( "m 0 0 l 0 1 l %s 1 l %s 0 ", n, n )
					end
				)--si una parte es igual a la anterior, la elimina
				local alphas_lines, a = { [ 0 ] = "" }
				for a in l:gmatch( "\\1a&H%x+&" ) do
					alphas_lines[ #alphas_lines + 1 ] = a
				end
				k = 1
				l = l:gsub( "\\1a&H%x+&",
					function( alphax )
						alphax = (alphax == alphas_lines[ k - 1 ]) and "\\x" or alphax
						k = k + 1
						return alphax
					end
				)
				local colors_lines, c = { [ 0 ] = "" }
				for c in l:gmatch( "\\1c&H%x+&" ) do
					colors_lines[ #colors_lines + 1 ] = c
				end
				k = 1
				l = l:gsub( "\\1c&H%x+&",
					function( colorx )
						colorx = (colorx == colors_lines[ k - 1 ]) and "\\x" or colorx
						k = k + 1
						return colorx
					end
				)
				:gsub( "\\x\\", "\\" )
				:gsub( "&\\x", "&" )
				lines_in_shp[ #lines_in_shp + 1 ] = l
			end
			return table.concat( lines_in_shp )
		end --july 02nd 2020
		-------------------------------
		local function image_info( Image )
			local get_info = image.to_pixels( Image, nil, true )
			local an_x = floor( ((Align - 1) % 3) * (x_max - get_info.width) / 2 )
			local an_y = floor( (3 - ceil( Align / 3 ) ) * (y_max - get_info.height) / 2 )
			local img_table, indx = { }, ""
			for i = 1, get_info.width * get_info.height do
				indx = tostring( math.i( i, get_info.width )[ "1-->A" ] + an_x ) .. "," .. tostring( math.i( i, get_info.width )[ "N,n" ] + an_y )
				img_table[ indx ] = format( "\\1c%s\\1a%s", get_info.color[ i ], get_info.alpha[ i ] )
			end
			return img_table, an_x, an_y, get_info.width, get_info.height
		end
		local is_image, img_info
		if type( Filter ) == "string" then			--si es una imagen .bmp
			is_image = true
			img_info, xi, yi, wi, hi = image_info( Filter )
			Filter = function( i )
				local x1, y1 = i:match( "(%-?%d+),(%-?%d+)" )
				x1, y1 = tonumber( x1 ), tonumber( y1 )
				local xr = math.i( x1 - xi, xi + 1, xi + wi )[ "A-->B" ]
				local yr = math.i( y1 - yi, yi + 1, yi + hi )[ "A-->B" ]
				local k = format( "%s,%s", xr, yr )
				return img_info[ i ] or img_info[ k ] or "\\r"
			end
		end
		-----------------------------------
		local function min_alpha( String )
			--elige al alpha más transparente y elimina al resto :D
			local alphas, a = { }
			for a in String:gmatch( "\\1a&H(%x%x)&" ) do
				alphas[ #alphas + 1 ] = a
			end
			if #alphas > 1 then
				for i = 1, #alphas do
					alphas[ i ] = tonumber( alphas[ i ], 16 )
				end
				table.sort( alphas, function( a, b ) return a < b end )
				String = String:gsub( "\\1a&H%x%x&", "" ) .. format( "\\1a&H%s&", math.to16( alphas[ #alphas ] ) )
			end
			return String
		end	--min_alpha( "\\1a&H00&\\1c&H3B3540&\\1a&H60&" )
		-----------------------------------
		local tbl = shape.to_pixels( Shape, nil, nil, nil, { true } )
		local tblx, str, c = { }
		for i = 1, #tbl.x do
			tblx[ tostring( tbl.x[ i ] ) .. "," .. tostring( tbl.y[ i ] ) ] = tbl.a[ i ]
		end
		local tbl_shp, id, is_shape = { }
		for i = 1, y_max do
			tbl_shp[ i ] = "{\\p1}"
			for k = 1, x_max do
				id = tostring( k ) .. "," .. tostring( i )
				is_shape = format( "{\\1a%s\\%s}m 0 0 l 0 1 l 1 1 l 1 0 ", tblx[ id ] or 0, id )
				tbl_shp[ i ] = tbl_shp[ i ] .. ( tblx[ id ] and is_shape or "{\\x}m 0 0 l 1 1 " )
			end
			if not tbl_shp[ i ]:match( "1a" ) then
				tbl_shp[ i ] = format( "{\\p1}m 0 0 l %s 1 ", x_max )
			end
			tbl_shp[ i ] = tbl_shp[ i ] .. "{\\p0}\\N"
			while string.match2( tbl_shp[ i ], "{\\x}m 0 0 l 1 1 ", true )[ 2 ] > 1 do
				str, c = string.match2( tbl_shp[ i ], "{\\x}m 0 0 l 1 1 " )
				tbl_shp[ i ] = tbl_shp[ i ]:gsub( str, format( "{\\x}m 0 0 l %s 1 ", c ) )
			end		
		end
		local shape_px = table.concat( tbl_shp )
		local k = 1
		if is_image and Line then
			shape_px = shape_px:gsub( "(\\1a&H%x%x&)\\(%d+,%d+)",
				function( isalpha, capture )
					px = tonumber( capture:match( "(%d+),%d+" ) )
					py = tonumber( capture:match( "%d+,(%d+)" ) )
					cx = x_max / 2
					cy = y_max / 2
					rx = floor( px + val_left - l.left )
					d = math.distance( cx, cy, px, py )
					a = math.angle( cx, cy, px, py )
					i = k
					n = #tbl.x
					k = k + 1
					capture = capture:gsub( "(%d+)(,%d+)",
						function( x, y )
							local x = tonumber( x )
							x = floor( x + val_left - l.left )
							return tostring( x ) .. y
						end
					)
					local replaces = min_alpha( isalpha .. Filter( capture ) )
					return replaces
				end
			)
		else
			shape_px = shape_px:gsub( "(\\1a&H%x%x&)\\(%d+,%d+)",
				function( isalpha, capture )
					px = tonumber( capture:match( "(%d+),%d+" ) )
					py = tonumber( capture:match( "%d+,(%d+)" ) )
					cx = x_max / 2
					cy = y_max / 2
					rx = floor( px + val_left - l.left )
					d = math.distance( cx, cy, px, py )
					a = math.angle( cx, cy, px, py )
					i = k
					n = #tbl.x
					k = k + 1
					local replaces = min_alpha( isalpha .. Filter( capture ) )
					return replaces
				end
			)
		end
		shape_px = shape_px:gsub( "{\\p1}{\\x}", "{\\p1}" )
		if reduce_lines then
			shape_px = Reduc( shape_px )
		end
		if Lines then
			local lines_in_shape, l = { }
			local parts = Lines
			for l in shape_px:gmatch( "%b{}m %d+[ %l%d%x&H/{/}\\]*N" ) do
				lines_in_shape[ #lines_in_shape + 1 ] = "{\\p1}" .. l:gsub( "(1c)&H(%x+)&", "%1%2" )
			end
			if type( Lines ) == "table" then
				parts = ceil( #lines_in_shape / Lines[ 1 ] )
			end
			lines_shp = table.inpack( lines_in_shape, parts )
			for i = 1, #lines_shp do
				lines_shp[ i ] = format( "{\\bs0\\p1}m 0 0 l 1 %s {\\p0}\\N%s{\\p1}m 0 0 l 1 %s ",
					(i - 1) * parts, table.concat( lines_shp[ i ] ), #lines_in_shape - i * parts
				)
			end
			return lines_shp
		end
		shape_px = shape_px:gsub( "(1c)&H(%x+)&", "%1%2" )
		return shape_px --shape.grid( )
	end --may 14th 2020
	
	function shape.gridr( Width, Height, Mode, Filter, Align, Lines )
		--genera un rectángulo en pixeles que ocupan una única línea fx
		if type( Width ) == "function" then
			Width = Width( )
		end
		if type( Height ) == "function" then
			Height = Height( )
		end
		if type( Mode ) == "function" then
			Mode = Mode( )
		end
		if type( Align ) == "function" then
			Align = Align( )
		end
		local Width = ceil( Width or val_width )	--ancho del rectángulo
		local Height = ceil( Height or val_height )	--alto del rectángulo
		local Align = Align or 7					--alineación, en caso de ingresar imagen
		local Filter = Filter or function( i ) return "\\x" end
		----------------------------------
		local Shape, lines_img
		local Reduc = function( String )
			--reduce los colores y alphas repetidos
			local lines_in_shp, l = { }
			--recolecta cada línea de la shape
			for l in String:gmatch( "%b{}m %d+[ %l%d%x&H/{/}\\]*N" ) do
				l = l:match( "\\p1" ) and l or "{\\p1}" .. l --agrega el \\p1 en caso de que no haya
				local k = 1
				local parts_lines, p = { [ 0 ] = "" } --partes de una línea
				for p in l:gmatch( "%b{}m %d+[ %dl]*" ) do
					parts_lines[ #parts_lines + 1 ] = p
				end
				l = l:gsub( "%b{}m %d+[ %dl]*",
					function( capture )
						capture = (capture == parts_lines[ k - 1 ]) and "G" or capture
						k = k + 1
						return capture
					end
				)
				:gsub( "m %d+[ %dl]*(G[G]*)",
					function( Mark )
						local n = unicode.len( Mark ) + 1
						return format( "m 0 0 l 0 1 l %s 1 l %s 0 ", n, n )
					end
				)--si una parte es igual a la anterior, la elimina
				local alphas_lines, a = { [ 0 ] = "" }
				for a in l:gmatch( "\\1a&H%x+&" ) do
					alphas_lines[ #alphas_lines + 1 ] = a
				end
				k = 1
				l = l:gsub( "\\1a&H%x+&",
					function( alphax )
						alphax = (alphax == alphas_lines[ k - 1 ]) and "\\x" or alphax
						k = k + 1
						return alphax
					end
				)
				local colors_lines, c = { [ 0 ] = "" }
				for c in l:gmatch( "\\1c&H%x+&" ) do
					colors_lines[ #colors_lines + 1 ] = c
				end
				k = 1
				l = l:gsub( "\\1c&H%x+&",
					function( colorx )
						colorx = (colorx == colors_lines[ k - 1 ]) and "\\x" or colorx
						k = k + 1
						return colorx
					end
				)
				:gsub( "\\x\\", "\\" )
				:gsub( "&\\x", "&" )
				lines_in_shp[ #lines_in_shp + 1 ] = l
			end
			return table.concat( lines_in_shp )
		end --july 02nd 2020
		-------------------------------
		local function image_info( Image )
			local get_info = image.to_pixels( Image, nil, true )
			local img_table, indx = { }, ""
			local an_x = floor( ((Align - 1) % 3) * (Width - get_info.width) / 2 )
			local an_y = floor( (3 - ceil( Align / 3 ) ) * (Height - get_info.height) / 2 )
			for i = 1, get_info.width * get_info.height do
				indx = tostring( math.i( i, get_info.width )[ "1-->A" ] + an_x ) .. "," .. tostring( math.i( i, get_info.width )[ "N,n" ] + an_y )
				img_table[ indx ] = format( "\\1c%s\\1a%s", get_info.color[ i ], get_info.alpha[ i ] )
			end
			return img_table, an_x, an_y, get_info.width, get_info.height
		end
		if type( Filter ) == "string" then			--si es una imagen .bmp
			if Filter:match( "%.bmp" ) then
				local img_info, xi, yi, wi, hi = image_info( Filter )
				Filter = function( i )
					local x1, y1 = i:match( "(%-?%d+),(%-?%d+)" )
					x1, y1 = tonumber( x1 ), tonumber( y1 )
					local xr = math.i( x1 - xi, xi + 1, xi + wi )[ "A-->B" ]
					local yr = math.i( y1 - yi, yi + 1, yi + hi )[ "A-->B" ]
					local k = format( "%s,%s", xr, yr )
					return img_info[ i ] or img_info[ k ] or "\\r"
				end
			else
				local rtn = Filter
				Filter = function( i ) return rtn end
			end
		end
		----------------------------------
		Shape = ""
		local mx, maxn
		if Mode == "h" then --barras horizontales
			for i = 1, Height do
				Shape = Shape .. format( "{\\p1\\pix}m 0 0 l 0 1 l %s 1 l %s 0 {\\p0}\\N", Width, Width )
			end
			mx, maxn = 1, Height
		elseif Mode == "v" then --barras verticales
			Shape = "{\\p1}"
			for i = 1, Width do
				Shape = Shape .. format( "{\\pix}m 0 0 l 0 %s l 1 %s l 1 0 ", Height, Height )
			end
			maxn = Width
		else --cuadrícula
			Shape = "{\\p1}"
			for i = 1, Width do
				Shape = Shape .. "{\\pix}m 0 0 l 0 1 l 1 1 l 1 0 "
			end
			Shape = Shape .. "{\\p0}\\N"
			local shp = Shape
			for i = 1, Height - 1 do
				Shape = Shape .. shp
			end
			maxn = Width * Height
		end
		local k = 1
		Shape = Shape:gsub( "\\pix",
			function( capture )
				px = mx or math.i( k, Width )[ "1-->A" ]
				py = mx and k or math.i( k, Width )[ "N,n" ]
				id = format( "%s,%s", px, py )
				cx = Width / 2
				cy = Height / 2
				d = math.distance( cx, cy, px, py )
				a = math.angle( cx, cy, px, py )
				i = k
				n = maxn
				k = k + 1
				return Filter( id )
			end
		)
		local str, c
		while string.match2( Shape, "{\\x}m 0 0 l 0 1 l 1 1 l 1 0 ", true )[ 2 ] > 1 do
			str, c = string.match2( Shape, "{\\x}m 0 0 l 0 1 l 1 1 l 1 0 " )
			Shape = Shape:gsub( str, format( "{\\x}m 0 0 l 0 1 l %s 1 l %s 0 ", c, c ) )
		end
		--Shape = Reduc( Shape )
		if reduce_lines then
			Shape = Reduc( Shape )
		end
		if Lines then
			local Lshp, l = { }
			local parts = Lines
			if Shape:match( "%b{}m %d+[ %l%d%x&H/{/}\\]*N" ) then
				for l in Shape:gmatch( "%b{}m %d+[ %l%d%x&H/{/}\\]*N" ) do
					Lshp[ #Lshp + 1 ] = "{\\p1}" .. l:gsub( "(1c)&H(%x+)&", "%1%2" )
				end
				if type( Lines ) == "table" then
					parts = ceil( #Lshp / Lines[ 1 ] )
				end
				lines_img = table.inpack( Lshp, parts )
				for i = 1, #lines_img do
					lines_img[ i ] = format( "{\\bs0\\p1}m 0 0 l 1 %s {\\p0}\\N%s{\\p1}m 0 0 l 1 %s ",
						(i - 1) * parts, table.concat( lines_img[ i ] ), #Lshp - i * parts
					)
				end
			else
				for l in Shape:gmatch( "%b{}m %d+[ %l%d%x&H\\]*" ) do
					Lshp[ #Lshp + 1 ] = l:gsub( "(1c)&H(%x+)&", "%1%2" )
				end
				if type( Lines ) == "table" then
					parts = ceil( #Lshp / Lines[ 1 ] )
				end
				lines_img = table.inpack( Lshp, parts )
				for i = 1, #lines_img do
					lines_img[ i ] = format( "{\\bs0\\p1}m 0 0 l %s 1 %s{\\x}m 0 0 l %s 1 ",
						(i - 1) * parts, table.concat( lines_img[ i ] ), #Lshp - i * parts
					)
				end
			end
			return lines_img
		end --shape.gridr( 50, 50, nil, "test.bmp" )
		Shape = Shape:gsub( "(1c)&H(%x+)&", "%1%2" )
		return Shape --shape.gridr( )
	end --may 14th 2020

	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "graph" -- add: may 18th 2020 ------------------------------------------
	function graph.polygon( n, Height, Angle, Bord, Space, Tags, Extra  )
		if type( n ) == "function" then
			n = n( )
		end
		if type( Height ) == "function" then
			Height = Height( )
		end
		if type( Angle ) == "function" then
			Angle = Angle( )
		end
		if type( Bord ) == "function" then
			Bord = Bord( )
		end
		if type( Space ) == "function" then
			Space = Space( )
		end
		if type( Tags ) == "function" then
			Tags = Tags( )
		end
		if type( n ) == "function" then
			Extra = Extra( )
		end
		local n = n or 6
		local Height, Width = Height or 100 * ratio
		if type( Height ) == "table" then
			Width = Height[ 2 ] or 0
			Height = Height[ 1 ] or 100 * ratio
		end
		local Angle = Angle or 360
		local Bord = Bord or nil
		local Bord_i, Anglex, multi_polygon = 0, 0, ""
		local Space = Space or 0
		effector.print_error( n, "number", "graph.polygon", 1 )
		effector.print_error( Height, "numbertable", "graph.polygon", 2 )
		effector.print_error( Angle, "numbertable", "graph.polygon", 3 )
		effector.print_error( Space, "number", "graph.polygon", 5 )
		n = abs( ceil( n ) )
		if n < 3 then
			n = 3
		end
		local Theta = 90 * (n - 2) / n
		local function graph_polygon( n, Height, Angle, Bord, Extra, Width )
			local function do_polygon( n, Radius, Angle )
				local Radius = Radius or 50 * ratio
				local Anglex = 360 / n
				local Thetax = 90 * (n - 2) / n
				local Anglix = 90 - Anglex * floor( 90 / Anglex )
				local Poly = ""
				if  n % 2 == 0 then --n par
					for i = 1, n + 1 do
						Poly = Poly .. format( "l %s %s ", math.polar( Anglex * (i - 1), Radius ) )
					end
					Poly = Poly:gsub( "l", "m", 1 )
					if Angle then
						local Parts, c = { }
						for c in Poly:gmatch( "[ml]^* %-?%d+[%.%d]* %-?%d+[%.%d]* " ) do
							Parts[ #Parts + 1 ] = c
						end
						local N = ceil( Angle / Anglex ) + 1
						Poly = ""
						for i = 1, N - 1 do
							Poly = Poly .. Parts[ i ]
						end
						local t = (Angle % Anglex) / Anglex
						if t == 0 then
							t = 1
						end
						Parts[ N ] = shape.cut( Parts[ N - 1 ]:gsub( "l", "m" ) .. Parts[ N ], t )[ 1 ]:match( "l %-?%d+[%.%d]* %-?%d+[%.%d]* " )
						Poly = "m 0 0 " .. Poly:gsub( "m", "l" ) .. Parts[ N ]
					else
						Poly = "m 0 0 " .. Poly:gsub( "m", "l" )
					end
				else --n impar
					local fakex = Radius * sin( rad( Thetax ) ) / sin( rad( 180 - Thetax - Anglix ) )
					local fakey = Radius * sin( rad( Anglix ) ) / sin( rad( 180 - Thetax - Anglix ) )
					Poly = format( "l %s 0 ", fakex )
					for i = 1, n do
						Poly = Poly .. format( "l %s %s ", math.polar( Anglix + Anglex * (i - 1), Radius ) )
					end
					Poly = Poly .. format( "l %s 0 ", fakex )
					Poly = Poly:gsub( "l", "m", 1 )
					if Angle then
						if Angle <= Anglix then
							Poly = format( "m 0 0 l %s 0 l %s %s ", fakex,
								fakex + math.polar( Thetax + Anglix, fakey * Angle / Anglix, "x" ),
								math.polar( 180 - Thetax - Anglix, fakey * Angle / Anglix, "y" )
							)
						else
							local Parts, c = { }
							for c in Poly:gmatch( "[ml]^* %-?%d+[%.%d]* %-?%d+[%.%d]* " ) do
								Parts[ #Parts + 1 ] = c
							end
							local N = ceil( (Angle - Anglix) / Anglex ) + 2
							Poly = format( "m 0 0 l %s 0 ", fakex )
							for i = 2, N - 1 do
								Poly = Poly .. Parts[ i ]
							end
							local t = ((Angle - Anglix) % Anglex) / Anglex
							if t == 0 then
								t = 1
							end
							if N == #Parts then
								Parts[ N ] = Parts[ 2 ]
							end
							Parts[ N ] = shape.cut( Parts[ N - 1 ]:gsub( "l", "m" ) .. Parts[ N ], t )[ 1 ]:match( "l %-?%d+[%.%d]* %-?%d+[%.%d]* " )
							Poly = Poly .. Parts[ N ]
						end
					else
						Poly = "m 0 0 " .. Poly:gsub( "m", "l" )
					end
				end
				return Poly
			end --graph.polygon( 8, 40, 300 )
			local Height = Height or 100 * ratio
			local n = n or 6
			n = abs( ceil( n ) )
			if n < 3 then
				n = 3
			end
			local Theta = 90 * (n - 2) / n
			local Radius_1 = Height / (1 + sin( rad( Theta ) )) --n impar
			-------------------------------------------------------------
			local Radius = Height / ((sin( rad( Theta ) )) ^ (n % 2) + sin( rad( Theta ) ))
			if type( Width ) == "number"
				and Width > 2 * Radius * sin( rad( 360 / n ) ) ^ (n % 2) then
				local function movepoint( Shape, Dx )
					local Parts, c = { }
					for c in Shape:gmatch( "[blm]* %-?%d+[%.%d]* %-?%d+[%.%d]*" ) do
						Parts[ #Parts + 1 ] = c
					end
					Parts[ 1 ] = Parts[ 1 ]:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)", 
						function( x, y )
							local x, y = tonumber( x ), tonumber( y )
							if x == 0 then
								return format( "0 %s l %s %s", y, x + Dx, y )
							elseif x > 0 then
								return format( "%s %s", x + Dx, y )
							end
						end
					)
					for i = 2, #Parts do
						Parts[ i ] = Parts[ i ]:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)", 
							function( x, y )
								local x, y = tonumber( x ), tonumber( y )
								if math.round( x ) == 0 then
									local p1 = Parts[ i - 1 ]:match( "%-?%d+[%.%d]* %-?%d+[%.%d]*" )
									if Parts[ i - 1 ]:match( "%-?%d+[%.%d]* %-?%d+[%.%d]* l %-?%d+[%.%d]* %-?%d+[%.%d]*" ) then
										p1 = Parts[ i - 1 ]:match( "(%-?%d+[%.%d]* %-?%d+[%.%d]*) l %-?%d+[%.%d]* %-?%d+[%.%d]*" )
										if p1:match( "(0 %-?%d+[%.%d]*)" ) then
											p1 = Parts[ i - 1 ]:match( "%-?%d+[%.%d]* %-?%d+[%.%d]* l (%-?%d+[%.%d]* %-?%d+[%.%d]*)" )
										end
									end
									local Angle = math.angle( p1, x, y )
									if Angle <= 90 or Angle >= 270 then
										return format( "0 %s l %s %s", y, x + Dx, y )
									end
									return format( "%s %s l 0 %s", x + Dx, y, y )
								elseif x > 0 then
									return format( "%s %s", x + Dx, y )
								end
							end
						)
					end
					return table.concat( Parts, " " )
				end
			end
			-------------------------------------------------------------
			if n % 2 == 0 then --n par
				Radius_1 = Height / (2 * sin( rad( Theta ) ))
			end
			local S1, S2, shp_polygon
			if not Bord then
				S1 = do_polygon( n, Radius_1, Angle )
				shp_polygon = S1 .. "l 0 0 "
				if type( Width ) == "number"
					and Width > 2 * Radius * sin( rad( 360 / n ) ) ^ (n % 2) then
					return movepoint( shp_polygon, Width - 2 * Radius * sin( rad( 360 / n ) ) ^ (n % 2) )
				end
				return shp_polygon
			end
			local Radius_2 = Radius_1 + Bord / sin( rad( Theta ) )
			S1 = do_polygon( n, Radius_2, Angle )
			if n % 2 == 0 then --n par
				S1 = S1:gsub( "m 0 0 ", format( "m %s 0 ", Radius_1 ) ):gsub( "l", "ll", 1 )
			end
			S2 = shape.reverse( do_polygon( n, Radius_1, Angle ) )
			S2 = S2:gsub( "m", "lll" )
			S2 = S2:reverse( ):gsub( " %d+[%.%-%d]* %d+[%.%-%d]* l", "", 1 )
			if n % 2 == 1 then --n impar
				local last_p = S2:match( " %d+[%.%d%-]* %d+[%.%d%-]* " ):reverse( )
				S1 = S1:gsub( "m 0 0 ", format( "m%s", last_p ) ):gsub( "l", "ll", 1 )
			end
			shp_polygon = S1 .. S2:reverse( )
			------------------
			local puntas = {
				[ "\\" ] = "m 0 0 l 0 28.86 l 100 0 ",
				[ "/" ] = "m 0 0 l 100 28.86 l 100 0 ",
				[ "<" ] = "m 0 0 l 50 -28.86 l 100 0 ",
				[ ">" ] = "m 0 0 l 50 28.86 l 100 0 ",
				[ "(" ] = "m 0 0 b 0 28 22 50 50 50 b 78 50 100 28 100 0 ",
				[ ")" ] = "m 0 0 b 0 -28 22 -50 50 -50 b 78 -50 100 -28 100 0 ",
				[ "v" ] = "m 0 0 l -25 0 l 25 29 l 75 0 l 50 0 "
			}
			if Extra then
				local Anglex = 360 / n
				local Thetax = 90 * (n - 2) / n
				local Anglix = 90 - Anglex * floor( 90 / Anglex )
				if Extra[ 1 ] then --añadir longitud extra al inicio
					shp_polygon = shp_polygon:gsub( " (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ll (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
						function( x1, y1, x2, y2 ) --graph.polygon( 6, 200, 270, 20, nil, nil, { 50 } )
							local nx1 = x2 + math.polar( (450 - Thetax) / 2, Bord / cos( rad( (90 - Theta) / 2 ) ), "x" )
							local ny1 = y2 + math.polar( (450 - Thetax) / 2, Bord / cos( rad( (90 - Theta) / 2 ) ), "y" )
							if n % 2 == 1 then --graph.polygon( 5, 200, 270, 20, nil, nil, { 50 } )
								nx1 = x2 + math.polar( (270 + Anglix + Thetax) / 2, Bord / sin( rad( (90 + Anglix + Theta) / 2 ) ), "x" )
								ny1 = y2 + math.polar( (270 + Anglix + Thetax) / 2, Bord / sin( rad( (90 + Anglix + Theta) / 2 ) ), "y" )
							end
							local add = " %s %s l %s %s ll %s %s l %s %s "
							return format( add, nx1, ny1, nx1, y1 + Extra[ 1 ], x2, y2 + Extra[ 1 ], x2, y2 )
						end
					)
					shp_polygon = shp_polygon:reverse( ):gsub( " %d+[%.%d%-]* %d+[%.%d%-]*", "", 1 ):reverse( ) --elimina el último punto
					shp_polygon = shp_polygon .. shp_polygon:match( "%-?%d+[%.%d]* %-?%d+[%.%d]* " ) --añade el primer punto al final :D
				end
				if Extra[ 2 ] then --añadir longitud extra al final
					shp_polygon = shp_polygon:gsub( " (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) l (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) lll (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
						function( x0, y0, x1, y1, x2, y2 )
							local Angle = Angle + 90
							--graph.polygon( 6, 200, 210, 20, nil, nil, { 40, 80, ">", "v" } )
							if n % 2 == 1 then
								Angle = math.angle( format( "%s %s l %s %s", x0, y0, x1, y1 ) ) -- 90
							end --graph.polygon( 5, 200, 270, 20, nil, nil, { nil, 80, "v", "v" } )
							local x3 = tonumber( x1 ) + math.polar( Angle, Extra[ 2 ], "x" )
							local y3 = tonumber( y1 ) + math.polar( Angle, Extra[ 2 ], "y" )
							local x4 = tonumber( x2 ) + math.polar( Angle, Extra[ 2 ], "x" )
							local y4 = tonumber( y2 ) + math.polar( Angle, Extra[ 2 ], "y" )
							local add = " %s %s l %s %s l %s %s lll %s %s l %s %s "
							return format( add, x0, y0, x1, y1, x3, y3, x4, y4, x2, y2 )
						end
					)
				end
				if Extra[ 3 ] then
					local tip = Extra[ 3 ]
					if puntas[ tip ] then
						tip = puntas[ tip ]
					end
					shp_polygon = shp_polygon:gsub( " (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ll (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
						function( x1, y1, x2, y2 )
							local x1, y1 = tonumber( x1 ), tonumber( y1 )
							--graph.polygon( 7, 200, 270, 20, nil, nil, { nil, nil, "v" } )
							local Shape = shape.rotate( shape.ratio( tip, { nil, x2 - x1 } ), { nil, 0 } )
							return shape.displace( Shape, x1, y1, "first" ):gsub( "m", "" )
							--graph.polygon( 6, 200, 270, 20, nil, nil, { 60, nil, "v" } )
						end
					)
				end
				if Extra[ 4 ] then
					local tip = Extra[ 4 ]
					if puntas[ tip ] then
						tip = puntas[ tip ]
					end
					shp_polygon = shp_polygon:gsub( " (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) l (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) lll (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
						function( x0, y0, x1, y1, x2, y2 )
							local x1, y1 = tonumber( x1 ), tonumber( y1 )
							local Shape = shape.rotate( shape.ratio( tip, { nil, Bord } ), { nil, 0 } )
							local Angle = Angle - 180
							if n % 2 == 1 then
								Angle = math.angle( format( "%s %s l %s %s", x0, y0, x1, y1 ) ) + 90
							end --graph.polygon( 5, 200, 270, 20, nil, nil, { 60, nil, "v", "v" } )
							Shape = shape.displace( shape.rotate( Shape, Angle ), x1, y1, "first" ):gsub( "m", "" )
							return format( " %s %s l ", x0, y0 ) .. Shape
						end
					)
				end
			end
			------------------
			if type( Width ) == "number"
				and Width > 2 * Radius * sin( rad( 360 / n ) ) ^ (n % 2) then
				return movepoint( shp_polygon, Width - 2 * Radius * sin( rad( 360 / n ) ) ^ (n % 2) )
			end
			return shp_polygon
		end --graph.polygon( 5, 200, 250, 20 )
		if type( Angle ) == "number" then
			return shape.displace( graph_polygon( n, Height, Angle, Bord, Extra, Width ), "origin" )
			--graph.polygon( 6, 300, 320, 10 )
		end
		if type( Angle ) == "table" then
			--una concéntrica a la otra
			for i = 1, #Angle do
				multi_polygon = multi_polygon .. graph_polygon( n, Height + Bord_i, Angle[ i ], Bord, Extra, Width )
				Bord_i = Bord_i + 2 * (Bord + Space / sin( rad( Theta ) ))
			end --graph.polygon( 6, 40, { 240, 180, 200, 100, 80 }, 20, 5 )
		end
		multi_polygon = shape.displace( multi_polygon, "origin" )
		if Tags then
			multi_polygon = shape.fusion( multi_polygon, Tags )
		end --graph.polygon( 10, 50, { 240, 180, 200, 100, 80, 300, 200, 100 }, 15, 4, table.ipol( { "\\1c&H00FF00&", "\\1c&H0000FF&" }, 8 ) )
		return multi_polygon
	end --may 02nd 2020
	
	function graph.line( Configs, Bord )
		--crea trayectos lineales consecutivos de ancho específico
		--Configs = { { a1, l1 }, { a2, l2 }, { a3, l3 },... } or Shape
		if type( Configs ) == "function" then
			Configs = Configs( )
		end
		if type( Bord ) == "function" then
			Bord = Bord( )
		end
		local Configs = Configs or nil
		local Bord = Bord or 5 * ratio
		if not Configs
			and linefx[ ii ].text:match( "\\i?clip%b()" ) then
			Configs = shape.ASSDraw3( linefx[ ii ].text:match( "\\i?clip%b()" ) )
		end
		effector.print_error( Configs, "stringtable", "graph.line", 1 )
		effector.print_error( Bord, "number", "graph.line", 2 )
		local function graph_line( Configs, Bord )
			local x_i, y_i = 0, 0
			local Points, is_shape, letters = { }
			if type( Configs ) == "string" then
				local Shape = shape.ASSDraw3( Configs )
				Points = shape.point( Shape )
				x_i, y_i = Points[ 1 ].x, Points[ 1 ].y
				Configs = { }
				for i = 1, #Points - 1 do
					Configs[ i ] = {
						[ 1 ] = math.angle( Points[ i ].x, Points[ i ].y, Points[ i + 1 ].x, Points[ i + 1 ].y ),
						[ 2 ] = math.distance( Points[ i ].x, Points[ i ].y, Points[ i + 1 ].x, Points[ i + 1 ].y ),
					}
				end
				is_shape = true
				letters = { }
				local c
				for c in Shape:gmatch( "[blm]* %-?%d+[%.%d]* %-?%d+[%.%d]*" ) do
					letters[ #letters + 1 ] = c
				end
			end
			local n = #Configs
			local p1 = { [ 0 ] = { x = x_i, y = y_i, a = Configs[ 1 ][ 1 ], l = 0 } }
			for i = 1, n do
				p1[ i ] = {
					x = p1[ i - 1 ].x + math.polar( Configs[ i ][ 1 ], Configs[ i ][ 2 ], "x" ),
					y = p1[ i - 1 ].y + math.polar( Configs[ i ][ 1 ], Configs[ i ][ 2 ], "y" ),
					a = Configs[ i ][ 1 ],
					l = Configs[ i ][ 2 ]
				}
			end
			local Lines, Coord = { [ 1 ] = format( "m %s %s ", x_i, y_i ) }
			for i = 1, n do
				Lines[ 1 ] = Lines[ 1 ] .. format( "l %s %s ", p1[ i ].x, p1[ i ].y )
			end
			local Segments, new_shp_1, new_shp_2, s = { }, "", ""
			if is_shape then
				for s in Lines[ 1 ]:gmatch( "%-?%d+[%.%d]* %-?%d+[%.%d]* " ) do
					Segments[ #Segments + 1 ] = s
				end
				for i = 1, #Segments do
					new_shp_1 = new_shp_1 .. letters[ i ]:sub( 1, 1 ) .. " " .. Segments[ i ]
				end
				Lines[ 1 ] = new_shp_1:gsub( "  ", " " )
			end
			local angle_int = { }
			for i = 1, n do
				angle_int[ i ] = 180 + p1[ i - 1 ].a - p1[ i ].a
				if angle_int[ i ] < 0 then
					angle_int[ i ] = angle_int[ i ] + 360
				elseif angle_int[ i ] > 360 then
					angle_int[ i ] = angle_int[ i ] - 360
				end
			end
			local p2 = { [ n + 1 ] = { a = p1[ n ].a + 90 } }
			for i = 1, n do
				p2[ i ] = {
					a = p1[ i ].a + angle_int[ i ] / 2
				}
				if p2[ i ].a < 0 then
					p2[ i ].a = p2[ i ].a + 360
				elseif p2[ i ].a > 360 then
					p2[ i ].a = p2[ i ].a - 360
				end
			end
			for i = 1, #p2 do
				if p2[ i ].a > 360 then
					p2[ i ].a = p2[ i ].a - 360
				end
				p2[ i ].b = p2[ i ].a - p1[ i - 1 ].a
				if p2[ i ].b < 0 then
					p2[ i ].b = p2[ i ].b + 360
				end
				if p2[ i ].b <= 90
					or (angle_int[ i ] or 270) < 180 then
					p2[ i ].r = abs( Bord / sin( rad( p2[ i ].b ) ) )
				else
					p2[ i ].r = abs( Bord / cos( rad( p2[ i ].b ) ) )
				end
			end
			for i = 1, n + 1 do
				p2[ i ].x = p1[ i - 1 ].x + math.polar( p2[ i ].a, -p2[ i ].r, "x" )
				p2[ i ].y = p1[ i - 1 ].y + math.polar( p2[ i ].a, -p2[ i ].r, "y" )
				-- -p2[ i ].r el signo menos hace que el borde se haga hacia la parte
				-- exterior de las shapes "positivas" dibajadas en sentido antihorario
			end
			Lines[ 2 ] = format( "m %s %s ", p2[ 1 ].x, p2[ 1 ].y )
			for i = 2, n + 1 do
				Lines[ 2 ] = Lines[ 2 ] .. format( "l %s %s ", p2[ i ].x, p2[ i ].y )
			end
			if is_shape then
				Segments = { }
				for s in Lines[ 2 ]:gmatch( "%-?%d+[%.%d]* %-?%d+[%.%d]* " ) do
					Segments[ #Segments + 1 ] = s
				end
				for i = 1, #Segments do
					new_shp_2 = new_shp_2 .. letters[ i ]:sub( 1, 1 ) .. " " .. Segments[ i ]
				end
				Lines[ 2 ] = new_shp_2:gsub( "  ", " " )
			end
			local shp_line = Lines[ 1 ] .. shape.reverse( Lines[ 2 ] ):gsub( "m", "l" )
			if is_shape then
				return shp_line
			end --graph.line( { { 0, 20 }, { 30, 20 }, { 0, 50 }, { 330, 20 }, { 0, 20 } }, 8 )
			return shape.displace( shp_line, "origin" )
		end --april 18th 2020
		if type( Configs ) == "string" then
			local Shapes = shape.divide( Configs )
			local multi_line = ""
			for i = 1, #Shapes do
				multi_line = multi_line .. graph_line( Shapes[ i ], Bord )
			end
			return multi_line
		end --graph.line( shape.circle, 5 )
		return graph_line( Configs, Bord )
	end --april 28th 2020

	function graph.banner( Width, Height, Mode, Bord )
		if type( Width ) == "function" then
			Width = Width( )
		end
		if type( Height ) == "function" then
			Height = Height( )
		end
		if type( Mode ) == "function" then
			Mode = Mode( )
		end
		if type( Bord ) == "function" then
			Bord = Bord( )
		end
		local Mode_i = Mode:sub( 1, 1 ) or "["
		local Mode_f = Mode:sub( 2, 2 ) or "]"
		local Width = Width or 200
		local Height = Height or 50
		local Mode = Mode or "[]"
		local Bord = Bord or nil
		effector.print_error( Width, "number", "graph.banner", 1 )
		effector.print_error( Height, "number", "graph.banner", 2 )
		effector.print_error( Mode, "string", "graph.banner", 3 )
		local function graph_banner( Width, Height, Mode )
			local Shapes = {
				[ 1 ] = { --inicios del banner
					[ "[" ]  = "m 0 0 l 0 100 ",
					[ "]" ]  = "m 0 0 l 0 100 ",
					[ "<" ]  = "m 28.86 0 l 0 50 l 28.86 100 ",
					[ ">" ]  = "m 0 0 l 28.86 50 l 0 100 ",
					[ "/" ]  = "m 28.86 0 l 0 100 ",
					[ "\\" ] = "m 0 0 l 28.86 100 ",
					[ "(" ]  = "m 50 0 b 22 0 0 22 0 50 b 0 78 22 100 50 100 ",
					[ ")" ]  = "m 0 0 b 17.591 9.974 28.88 28.447 28.88 50 b 28.88 71.553 17.591 90.026 0 100 "
				},
				[ 2 ] = { --finales del banner
					[ "]" ]  = "m 0 100 l 0 0 ",
					[ "[" ]  = "m 0 100 l 0 0 ",
					[ "<" ]  = "m 0 100 l -28.86 50 l 0 0 ",
					[ ">" ]  = "m -28.86 100 l 0 50 l -28.86 0 ",
					[ "/" ]  = "m -28.86 100 l 0 0 ",
					[ "\\" ] = "m 0 100 l -28.86 0 ",
					[ "(" ]  = "m 0 100 b -17.591 90.026 -28.88 71.553 -28.88 50 b -28.88 28.447 -17.591 9.974 0 0 ",
					[ ")" ]  = "m -50 100 b -22 100 0 78 0 50 b 0 22 -22 0 -50 0 "
				}
			}
			if not Shapes[ 1 ][ Mode_i ] then
				Mode_i = "["
			end
			if not Shapes[ 2 ][ Mode_f ] then
				Mode_f = "]"
			end
			local ini = shape.ratio( Shapes[ 1 ][ Mode_i ], nil, { Height } )
			local fin = shape.displace( shape.ratio( Shapes[ 2 ][ Mode_f ], nil, { Height } ), Width, 0 ):gsub( "m", "l" )
			return ini .. fin --graph.banner( 300, 40, ")<" )
		end
		local shp_banner = graph_banner( Width, Height, Mode )
		local mov_x1, mov_x2 = Bord, Bord
		if Mode_i == "\\"
			or Mode_i == "/" then
			mov_x1 = 1.5 * Bord
		elseif Mode_i == ">" then
			mov_x1 = 2 * Bord
		end
		if Mode_f == "\\"
			or Mode_f == "/" then
			mov_x2 = 1.5 * Bord
		elseif Mode_f == "<" then
			mov_x2 = 2 * Bord
		end
		if Bord then
			shp_border = graph_banner( Width + mov_x1 + mov_x2, Height + 2 * Bord, Mode )
			shp_banner = shape.displace( shape.reverse( shp_banner ), mov_x1, Bord )
			shp_banner = shp_border .. shp_banner
		end
		return shp_banner --graph.banner( 300, 40, "<>", 4 )
	end --april 13th 2020

	function graph.gear( Radius, n, Dent, Double )
		if type( Radius ) == "function" then
			Radius = Radius( )
		end
		if type( n ) == "function" then
			n = n( )
		end
		if type( Dent ) == "function" then
			Dent = Dent( )
		end
		local Radius = Radius or 100
		local n = n or 8
		local Dent = Dent or "m 0 0 l 100 0 "
		Dent = shape.displace( shape.rotate( Dent, { nil, 0 } ), "incenter" )
		effector.print_error( Radius, "number", "graph.gear", 1 )
		effector.print_error( n, "number", "graph.gear", 2 )
		effector.print_error( Dent, "shape", "graph.gear", 3 )
		local function graph_gear( Radius, n, Dent )
			local Ratio = 0.34
			local angle = 360 / n
			local arc1 = Ratio * angle
			local arc2 = 0.5 * (1 + Ratio) * angle
			local length = 2 * pi * Radius * angle / 360
			local parts = {
				[ 1 ] = shape.cut( shape.size( "m 50 0 b 50 -28 28 -50 0 -50 ", Radius ), arc1 / 90 )[ 1 ],
				[ 2 ] = shape.displace(
					shape.rotate(
						shape.ratio( Dent, { nil, 0.3 * length } )	--size
						, 90 + arc2									--rotation
					)
					, { arc2, Radius + 0.45 * length - shape.height( Dent ) / 5 }	--polar position
				)
			}
			local dent = parts[ 1 ] .. parts[ 2 ]:gsub( "m", "l" )
			local gear_shp = ""
			for i = 1, n do
				gear_shp = gear_shp .. shape.rotate( dent, angle * (i - 1) )
			end
			gear_shp = "m" .. gear_shp:gsub( "m", "l" ):sub( 2, -1 ) .. format( "l %s 0 ", Radius )
			return shape.rotate( gear_shp, -arc2 ) --graph.gear( 100, 8 )
		end --april 12th 2020
		local circle = {
			[ "-" ] = shape.reverse( "m 0 -50 b -28 -50 -50 -28 -50 0 b -50 28 -28 50 0 50 b 28 50 50 28 50 0 b 50 -28 28 -50 0 -50 " ),
			[ "+" ] = "m 0 -50 b -28 -50 -50 -28 -50 0 b -50 28 -28 50 0 50 b 28 50 50 28 50 0 b 50 -28 28 -50 0 -50 "
		}
		local circle_add1 = shape.size( circle[ "-" ], 1.8 * Radius ) .. shape.size( circle[ "+" ], 1.5 * Radius )
		local circle_add2 = shape.size( circle[ "-" ], 0.5 * Radius )
		local shp_gear = graph_gear( Radius, n, Dent )
		if Double then
			shp_gear = shp_gear .. shape.reverse( graph_gear( 0.7 * Radius, n, Dent ) )
			circle_add1 = shape.size( circle[ "+" ], 1.1 * Radius ) .. shape.size( circle[ "-" ], 0.9 * Radius )
			circle_add2 = shape.size( circle[ "+" ], 0.5 * Radius )
		end --graph.gear( 80, 8, "m -45 -16 l -20 0 l 20 0 l 45 -16 ", true )
		return shape.displace( shp_gear .. circle_add1 .. circle_add2, "origin" )
	end --april 12th 2020

	function graph.cake( Radius, Angle, Bord, Space, Tags, Extra )
		if type( Radius ) == "function" then
			Radius = Radius( )
		end
		if type( Angle ) == "function" then
			Angle = Angle( )
		end
		if type( Bord ) == "function" then
			Bord = Bord( )
		end
		if type( Space ) == "function" then
			Space = Space( )
		end
		if type( Tags ) == "function" then
			Tags = Tags( )
		end
		if type( Extra ) == "function" then
			Extra = Extra( )
		end
		local Radius = Radius or 50
		local Angle = Angle or 225
		local Bord = Bord or nil--10 * ratio
		local Space = Space or 0
		effector.print_error( Radius, "number", "graph.cake", 1 )
		effector.print_error( Angle, "number", "graph.cake", 2 )
		effector.print_error( Space, "number", "graph.cake", 3 )
		local function graph_cake( Radius, Angle, Bord, Extra )
			local function do_cake( Radius, Angle )
				local Shape = "m 0 0 l 50 0 b 50 -28 28 -50 0 -50 b -28 -50 -50 -28 -50 0 b -50 28 -28 50 0 50 b 28 50 50 28 50 0 "
				Shape = shape.size( Shape, Radius )
				while Angle < 0 do
					Angle = Angle + 360
				end
				if Angle == 360 then
					return Shape
				end
				Angle = Angle % 360
				if Angle % 90 == 0 then
					Angle = Angle + 90
				end
				local n = ceil( Angle / 90 ) + 2
				local t = math.round( (Angle % 90) / 90, 3 )
				local Beziers, c = { }
				for c in Shape:gmatch( "[blm]^* %-?%d+[%-%.%d ]*" ) do
					Beziers[ #Beziers + 1 ] = c .. "x"
				end
				Beziers[ n ] = Beziers[ n - 1 ]:match( "(%-?%d+[%.%d]* %-?%d+[%.%d]* )x" ) .. Beziers[ n ]
				Beziers[ n ] = shape.cut( "m " .. Beziers[ n ], t )[ 1 ]
				local shpx = ""
				for i = 1, n - 1 do
					shpx = shpx .. Beziers[ i ]:gsub( "x", "" )
				end
				return shpx .. Beziers[ n ]:gsub( "m %-?%d+[%.%d]* %-?%d+[%.%d]* ", "" )
			end --april 02nd 2020
			local S1, S2, cake_circle
			if not Bord then
				S1 = do_cake( 2 * Radius, Angle )
				cake_circle = S1 .. "l 0 0 "
				return cake_circle
			end
			Radius = Radius + Bord
			S1 = do_cake(  2 * Radius, Angle )
			S1 = S1:gsub( "m 0 0 ", format( "m %s 0 ", Radius - Bord ) ):gsub( "l", "ll" )
			S2 = shape.reverse( do_cake( 2 * ( Radius - Bord ), Angle ) )
			S2 = S2:gsub( "l %-?%d+[%.%d]* %-?%d+[%.%d]* ", "" ):gsub( "m", "lll" )
			cake_circle = S1 .. S2
			-------------
			local puntas = {
				[ "\\" ] = "m 0 0 l 0 28.86 l 100 0 ",
				[ "/" ] = "m 0 0 l 100 28.86 l 100 0 ",
				[ "<" ] = "m 0 0 l 50 -28.86 l 100 0 ",
				[ ">" ] = "m 0 0 l 50 28.86 l 100 0 ",
				[ "(" ] = "m 0 0 b 0 28 22 50 50 50 b 78 50 100 28 100 0 ",
				[ ")" ] = "m 0 0 b 0 -28 22 -50 50 -50 b 78 -50 100 -28 100 0 ",
				[ "v" ] = "m 0 0 l -25 0 l 25 29 l 75 0 l 50 0 "
			}
			if Extra then
				if Extra[ 1 ] then
					cake_circle = cake_circle:gsub( " (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ll (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
						function( x1, y1, x2, y2 )
							local add = " %s %s l %s %s ll %s %s l %s %s "
							return format( add, x1, y1, x1, y1 + Extra[ 1 ], x2, y2 + Extra[ 1 ], x2, y2 )
						end
					)
				end
				if Extra[ 2 ] then
					cake_circle = cake_circle:gsub( " (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) lll (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
						function( x1, y1, x2, y2 )
							local x3 = tonumber( x1 ) + math.polar( Angle + 90, Extra[ 2 ], "x" )
							local y3 = tonumber( y1 ) + math.polar( Angle + 90, Extra[ 2 ], "y" )
							local x4 = tonumber( x2 ) + math.polar( Angle + 90, Extra[ 2 ], "x" )
							local y4 = tonumber( y2 ) + math.polar( Angle + 90, Extra[ 2 ], "y" )
							local add = " %s %s l %s %s lll %s %s l %s %s "
							return format( add, x1, y1, x3, y3, x4, y4, x2, y2 )
						end
					)
				end
				if Extra[ 3 ] then
					local tip = Extra[ 3 ]
					if puntas[ tip ] then
						tip = puntas[ tip ]
					end
					cake_circle = cake_circle:gsub( " (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ll %-?%d+[%.%d]* %-?%d+[%.%d]* ",
						function( x, y )
							local x, y = tonumber( x ), tonumber( y )
							local Shape = shape.rotate( shape.ratio( tip, { nil, Bord } ), { nil, 0 } )
							return shape.displace( Shape, x, y, "first" ):gsub( "m", "" )
						end
					)
				end
				if Extra[ 4 ] then
					local tip = Extra[ 4 ]
					if puntas[ tip ] then
						tip = puntas[ tip ]
					end
					cake_circle = cake_circle:gsub( " (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) lll %-?%d+[%.%d]* %-?%d+[%.%d]* ",
						function( x, y )
							local x, y = tonumber( x ), tonumber( y )
							local Shape = shape.rotate( shape.ratio( tip, { nil, Bord } ), { nil, 0 } )
							return shape.displace( shape.rotate( Shape, Angle - 180 ), x, y, "first" ):gsub( "m", "" )
						end
					)
				end
			end --add: april 29th 2020
			-------------
			return cake_circle
		end
		--------------------------
		if type( Angle ) == "number" then
			return shape.displace( graph_cake( Radius, Angle, Bord, Extra ), "origin" )
			--graph.cake( 100, 300, 10, nil, nil, { 100 } )
		end --retorna el cake sin borde :D
		local Bord_i, Anglex, multi_cake = 0, 0, ""
		if type( Angle[ 1 ] ) == "table" then
			--una seguida de la otra
			for i = 1, #Angle[ 1 ] do
				multi_cake = multi_cake .. shape.rotate( graph_cake( Radius, Angle[ 1 ][ i ], Bord, Extra ), Anglex )
				Anglex = Anglex + Space + Angle[ 1 ][ i ]
			end --graph.cake( 40, {{ 40, 40, 40, 60 }}, 10, 5 )
		else
			--una concéntrica a la otra
			for i = 1, #Angle do
				multi_cake = multi_cake .. graph_cake( Radius + Bord_i, Angle[ i ], Bord, Extra )
				Bord_i = Bord_i + Bord + Space
			end --graph.cake( 40, { 240, 180, 200, 100, 80 }, 10 )
		end
		multi_cake = shape.displace( multi_cake, "origin" )
		if Tags then
			multi_cake = shape.fusion( multi_cake, Tags )
		end --graph.cake( 50, { 240, 180, 200, 100, 80, 300, 200, 100 }, 15, 4, table.ipol( { "\\1c&H00FF00&", "\\1c&H0000FF&" }, 8 ) )
		return multi_cake
	end --april 11th 2020

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
			local function ipol_number( pct_ipol, val_1, val_2 )
				return math.round( val_1 + (val_2 - val_1) * pct_ipol, 3 )
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
				tags_ipol[ i ] = ipol_function( pct_ip, ipol_i, ipol_f )
			end --text.tag( { "\\fscy", 100, 200, 50 } ) = text.tag( "\\fscy{ 100, 200, 50 }" )
			tags_ipol[ #tags_ipol + 1 ] = copy_tbl[ #copy_tbl ]
			---------------------------------------------------
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
	
	function text.rand( Text, num_tran, dur_tran, extra_tags, table_rand, text_all )
		local Text_ran = Text or val_text
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

	function text.text2char2( line_text_str, line_text_dur )
	--text.text2char2( line.text, fx.dur )
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
		return { chars_in_text, chars_in_text_dur }
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
	
	function text.bezier( Shape, Mode, Accel, Offset_time )
		if Shape == nil then
			Shape = shape.displace( format( "m 0 0 l %d 0", l_width ), l_left, l_middle )
			if linefx[ ii ].text:match( "\\i?clip%b()" ) then
				Shape = linefx[ ii ].text:match( "\\i?clip%b()" )
			end
		end
		local Mode = Mode or fx.offset.Mode or 2
		Mode = ceil( abs( Mode ) )
		if type( Shape ) == "string" then
			if l_effect:match( "circle" )
				and Shape:match( "\\i?clip%b()" ) then
				local center_x, center_y, Radius = math.circle( Shape )
				local Coor = { }
				for c in Shape:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( Coor, tonumber( c ) )
				end
				local ang_x, ang_y = Coor[ 1 ], Coor[ 2 ]
				local angle = math.angle( center_x, center_y, ang_x, ang_y )
				local shape_crc = shape.displace( shape.size( shape.circle, 2 * (Radius + (fx.offset[ 1 ] or 0)) ), "center" )
				shape_crc = shape.displace( shape.rotate( shape_crc, angle - 90 + (fx.offset[ 2 ] or 0) ), center_x, center_y )
				if l_effect:match( "icircle" ) then
					shape_crc = shape.reverse( shape_crc )
				end
				if Mode >= 5 then
					Mode = (Mode - 1) % 5 - 3
					return math.bezier2move( shape_crc, Mode, Accel, Offset_time )
					--modo 5 = 1
					--modo 6 o más = 2
				end
				return math.bezier2( shape_crc, Mode )
			end
			if Mode >= 5 then
				Mode = (Mode - 1) % 5 - 3
				return math.bezier2move( Shape, Mode, Accel, Offset_time )
			end
			return math.bezier2( Shape, Mode )
		elseif type( Shape ) == "table" then
			local t1 = Aceel
			local t2 = Offset_time
			if Mode >= 5 then
				Mode = (Mode - 1) % 5 + 1
			end
			return math.movebezier( Shape, t1, t2, Mode )
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
	
	function text.to_shape( Text, Scale, Tags, Offset )
		local Text = Text or val_text
		while Text:sub( -1, -1 ) == " " do
			Text = Text:sub( 1, -2 )
		end
		local text_scale = Scale or 1
		local shape_scale = math.round( math.log( text_scale, 2 ) + 1 )
		--------------------
		local tags_configs, tagx = { }
		if Text:match( "%b{}" ) then --extrae la configuración de los tags del texto
			tagx = Text:match( "%b{}" )
			Text = Text:gsub( "%b{}", "" )
			tags_configs.font = tagx:match( "\\fn(%S+[^\\]*)" ) and tagx:match( "\\fn(%S+[^\\]*)" ) or nil
			tags_configs.bold = tagx:match( "\\b%d" ) and (tagx:match( "\\b(%d)" ) == "1" and true or false) or nil
			tags_configs.ital = tagx:match( "\\i%d" ) and (tagx:match( "\\i(%d)" ) == "1" and true or false) or nil
			tags_configs.unde = tagx:match( "\\u%d" ) and (tagx:match( "\\u(%d)" ) == "1" and true or false) or nil
			tags_configs.stri = tagx:match( "\\s%d" ) and (tagx:match( "\\s(%d)" ) == "1" and true or false) or nil
			tags_configs.size = tagx:match( "\\fs(%d+[%.%d]*)" ) and tonumber( tagx:match( "\\fs(%d+[%.%d]*)" ) ) or nil
			tags_configs.sc_x = tagx:match( "\\fscx(%d+[%.%d]*)" ) and tonumber( tagx:match( "\\fscx(%d+[%.%d]*)" ) ) or nil
			tags_configs.sc_y = tagx:match( "\\fscy(%d+[%.%d]*)" ) and tonumber( tagx:match( "\\fscy(%d+[%.%d]*)" ) ) or nil
			tags_configs.spac = tagx:match( "\\fsp(%-?%d+[%.%d]*)" ) and tonumber( tagx:match( "\\fsp(%-?%d+[%.%d]*)" ) ) or nil
		end --add: may 13th 2020 thank to Zeref Sama :D
		--------------------
		local text_confi = {
			[ 1 ] = tags_configs.font or l.fontname,
			[ 2 ] = tags_configs.bold or l.bold,
			[ 3 ] = tags_configs.ital or l.italic,
			[ 4 ] = tags_configs.unde or l.underline,
			[ 5 ] = tags_configs.stri or l.strikeout,
			[ 6 ] = tags_configs.size or l.fontsize,
			[ 7 ] = text_scale * (tags_configs.sc_x or l.scale_x) / 100,
			[ 8 ] = text_scale * (tags_configs.sc_y or l.scale_y) / 100,
			[ 9 ] = tags_configs.spac or l.spacing,
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
		local text_shape = shape.filter( text.to_shape( Text, text_scale, nil, true ), Split * text_scale, nil )
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
			local text_shp2 = shape.filter( text_shp1, 6, text_fltr )
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

	function text.to_pixels( Text, Mode, Shape, Space, Ratio, Table )
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
			local txt_w, txt_h = aegisub.width( text_2pixel ), aegisub.height( text_2pixel )
			if type( Table ) == "table" then
				pixel.x, pixel.y, pixel.a = { }, { }, { }
				for i = 1, #pixel_table do
					pixel.x[ i ] = pixel_datas[ i ][ 2 ] - 0.5 * (Ratio - 1) * txt_w
					pixel.y[ i ] = pixel_datas[ i ][ 1 ] - 0.5 * (Ratio - 1) * txt_h
					pixel.a[ i ] = alpha.val2ass( 255 - pixel_datas[ i ][ 3 ] )
				end
				return pixel
			end
			if not Table then
				for i = 1, #pixel_table do
					pixel[ i ] = { }
					pixel[ i ].x = fx.pos_l + pixel_datas[ i ][ 2 ] - 0.5 * (Ratio - 1) * txt_w
					pixel[ i ].y = fx.pos_t + pixel_datas[ i ][ 1 ] - 0.5 * (Ratio - 1) * txt_h
					pixel[ i ].a = alpha.val2ass( 255 - pixel_datas[ i ][ 3 ] )
				end
				maxloop( #pixel_datas )
				Px, Py = remember( "PPx", { } ), remember( "PPy", { } )
				for i = 1, 5 do
					Px[ i ] = Rrs( 20, 50 )
					Py[ i ] = Rrs( 20, 50 )
				end
			end
		end
		if Table then --text.to_pixels( "i", nil, nil, nil, nil, true )
			return pixel
		end --january 15th 2020
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
		local tagsx, angle, org_x, org_y
		if Text:match( "%b{}" ) then
			tagsx = Text:match( "%b{}" )
			angle = tagsx:match( "\\fr[z]*%-?%d[%.%d]*" ) and tonumber( tagsx:match( "\\fr[z]*(%-?%d[%.%d]*)" ) ) or nil
			--org_x = tagsx:match( "\\org%b()" ) and tonumber( tagsx:match( "\\fr[z]*(%-?%d[%.%d]*)" ) ) or nil
		end --add may 18th 2020
		local text_clip = text.to_shape( Text, text_scale, nil, true )
		if angle then
			text_clip = shape.rotate( text_clip, angle, "center" )
		end
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
		local text_scale = Scale or 1
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
		local shp_w = (tonumber( fx.offset[ 1 ] or 0 ) > 0) and tonumber( fx.offset[ 1 ] or 0 ) or 2
		local Shape, cn = "", ceil( val_width / shp_w )
		local gradh = table.ipol( { ... }, cn )
		for i = 1, cn do
			Shape = Shape .. format( "{\\1c%s\\p1}%s", gradh[ i ], shape.size( shape.rectangle, shp_w, ceil( val_height ) ) )
		end
		return format( "{%s\\bs0}%s", text.to_clip( ), Shape )
	end --text.gradienth( "&H00FFFF&", "&H0000FF&" )
	
	function text.gradienth2( ... )
		local shp_w = (tonumber( fx.offset[ 1 ] or 0 ) > 0) and tonumber( fx.offset[ 1 ] or 0 ) or 2
		local Shape, cn2 = "", ceil( val_width / shp_w )
		local Shmod = shape.size( shape.rectangle, shp_w, ceil( 1.8 * val_height ) )
		local count, gradh = recall.countline, recall.gradienth
		if j == 1 then
			count = remember( "countline", ceil( (l.width + 4 * shp_w) / shp_w ) )
			gradh = remember( "gradienth", table.ipol( { ... }, count ) )
		end
		for i = 1, cn2 do
			Shape = Shape .. format( "{\\1c%s\\p1}%s", gradh[ floor( val_left - l.left ) + i ], Shmod )
		end
		return format( "{%s\\bs0}%s", text.to_clip( ), Shape )
	end --text.gradienth2( "&H00FFFF&", "&H0000FF&" )
	
	function text.gradientv( ... )
		local shp_h = (tonumber( fx.offset[ 1 ] or 0 ) > 0) and tonumber( fx.offset[ 1 ] or 0 ) or 2
		local Shape, cn = "", ceil( val_height / shp_h )
		local gradv = table.ipol( { ... }, cn )
		for i = 1, cn do
			Shape = Shape .. format( "{\\1c%s\\p1}%s{\\p0}\\N", gradv[ i ], shape.size( shape.rectangle, ceil( val_width ), shp_h ) )
		end
		return format( "{%s\\bs0}%s", text.to_clip( ), Shape )
	end --text.gradientv( "&H00FFFF&", "&H0000FF&" )
	
	function text.gradientangle( Angle, ... )
		local shp_s = (tonumber( fx.offset[ 1 ] or 0 ) > 0) and tonumber( fx.offset[ 1 ] or 0 ) or 2
		local Angle = Angle or 0
		local shp_w = math.round( abs( val_width * cos( rad( Angle ) ) + val_height * sin( rad( Angle ) ) + 1 ) )
		local shp_h = math.round( abs( val_width * sin( rad( Angle ) ) + val_height * cos( rad( Angle ) ) + 1 ) )
		local Shape, cn = format( "{\\fr%s}", Angle % 361 ), ceil( shp_w / shp_s )
		local grada = table.ipol( { ... }, cn )
		for i = 1, cn do
			Shape = Shape .. format( "{\\1c%s\\p1}%s", grada[ i ], shape.size( shape.rectangle, shp_s, shp_h ) )
		end
		return format( "{%s\\bs0}%s", text.to_clip( ), Shape )
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
			-----------------------------------------------
			local function table_mask( Color_or_Alpha, Maskfx, Mode, First )
				if type( Color_or_Alpha ) == "function" then
					Color_or_Alpha = Color_or_Alpha( )
				end
				if type( Maskfx ) == "function" then
					Maskfx = Maskfx( )
				end
				if type( Mode ) == "function" then
					Mode = Mode( )
				end
				if type( First ) == "function" then
					First = First( )
				end
				local vectorMask = color.ass( Color_or_Alpha or text.color1 )
				if type( vectorMask ) ~= "table" then
					vectorMask = { vectorMask }
				end
				local Mask = Maskfx or { "&HFF&", "&H00&" }
				local func_ipol = alpha.interpolate
				if vectorMask[ 1 ]:match( "&H(%x+)&" ):len( ) == 6 then
					Mask = color.ass( Maskfx or { "&H5A5A5A&", "&H000000&" } )
					func_ipol = color.interpolate
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
						Hue[ k ][ i ] = func_ipol( ind[ i ], msk[ i ], vectorMask[ k ] )
					end
					for i = 1, 2 do
						table.insert( Hue[ k ], Hue[ k ][ i ] )
					end
					for i = 1, 12 * val_n + 1 do
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
					end
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
			end --table_mask( "&H00FFFF&", "&H000000&", "\\1c" )
			-----------------------------------------------
			Horizontal = remember( "horiz", { [ 0 ] = 0 } )
			Vertical = remember( "verti", { } )
			Colors = remember( "color", { } )
			Shapes = remember( "shapes", { } )
			local i = 0
			local shwidth
			while Horizontal[ i ] <= l.width do
				shwidth = Rr( 18, 36 )
				Horizontal[ i + 1 ] = (i == 0) and 0 or Horizontal[ i ] + R( 0.5 * shwidth, 1.5 * shwidth * Space )
				Colors[ i + 1 ] = colortag and colorm1 or table_mask( colorm1, colorm2, "\\1c" )
				Shapes[ i + 1 ] = shape.size( shape.displace( shape.rotate( Shape, R( 360 ) ), "origin" ), shwidth, Rr( 18, 36 ) )
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
					shape.displace( Shapes[ R( #Shapes ) ], val_center - l.left, l.middle, "center" )
				)
			end
			maxloop( #decide3 )
			return format( "{\\an7\\pos(%s,%s)%s\\3c%s\\bord2\\blur4%s%s\\p1}%s",
				l.left, l.top, Colors[ decide3[ j ][ 1 ] ], shape.color3, text.to_clip( ), fxMask,
				shape.displace( Shapes[ decide3[ j ][ 1 ] ], decide3[ j ][ 2 ], Vertical[ decide3[ j ][ 1 ] ], "center" )
			)
		end
		return format( "{\\1a&HFF&%s}%s", fxBord, val_text )
	end --text.maskclip( )
	
	function text.filter( Text, Split, ... )
		if type( Text ) == "function" then
			Text = Text( )
		end
		if type( Split ) == "function" then
			Split = Split( )
		end
		local Text = Text or val_text
		effector.print_error( Text, "stringtable", "text.filter", 1 )
		local filters = { ... }
		if ...
			and type( ... ) == "table" then
			filters = ...
		end
		if #filters == 0 then
			filters[ 1 ] = function( x, y )
				return x, y
			end
		end
		if type( Text ) == "table" then
			for i = 1, #Text do
				Text[ i ] = shape.filter( Text[ i ], Split, ... )
			end
		else
			Text = text.to_shape( Text, 1 )
			if Split
				and Split ~= 0 then
				local Split = abs( Split )
				effector.print_error( Split, "number", "text.filter", 2 )
				Text = Yutils.shape.split( Text, Split )
				Text = Yutils.shape.flatten( Text, Split )
			end
			shape.info( Text )
			for i = 1, #filters do
				if type( filters[ i ] ) == "table"
					or type( filters[ i ] ) == "string" then
					local do_shapefx, mode_fx = filters[ i ]
					if type( filters[ i ] ) == "table" then
						do_shapefx, mode_fx = filters[ i ][ 1 ], filters[ i ][ 2 ]
					end
					Text = shape.do_shape( Text, do_shapefx, mode_fx )
				else
					if type( filters[ i ] ) ~= "function" then
						filters[ i ] = function( x, y )
							return x, y
						end
					end
					Pk = 0
					Text = Yutils.shape.filter( Text,
						function( x, y )
							Cx = c_shape						-- coordenada "x" del centro de la texto
							Cy = m_shape						-- coordenada "y" del centro de la texto
							Do = math.distance( x, y )			-- distancia del punto al origen
							Dc = math.distance( Cx, Cy, x, y )	-- distancia del punto al centro de la texto
							Ao = math.angle( x, y )				-- ángulo del origen al punto
							Ac = math.angle( Cx, Cy, x, y )		-- ángulo del centro al punto
							Pn = n_points						-- cantidad total de puntos en la texto
							Pk = Pk + 1							-- contador de los puntos de la texto
							Mx = (y - miny ) / h_shape			-- módulo de varianza respecto a "x", Mx = [0, 1]
							My = (x - minx ) / w_shape			-- módulo de varianza respecto a "y", My = [0, 1]
							Mp = (Pk - 1) / (Pn - 1)			-- módulo de varianza respecto a los puntos, Mp = [0, 1]
							return filters[ i ]( x, y )
						end
					)
				end
				shape.info( Text )
			end
		end
		Text = shape.ASSDraw3( Text )
		return Text
	end --may 27th 2020
	
	function text.move( Text, Dx, Dy, Ox, Oy, Accel )
		local Textm = Text or val_text
		local function count_space_end( String )
			--cuenta los espacios que haya al final del texto
			local space, i = 0, 1
			while String:sub( -i, -i ) == " " do
				space = space + 1
				i = i + 1
			end
			return space
		end
		local Off_x = Ox or 0 --\\fsp
		local Off_y = Oy or 0 --\\fscy
		local Ini_x = aegisub.width( "." )
		local Tag_t = format( "{\\p0}\\N{\\r%s\\p1}%s", tags_style .. fx.add_tags, Textm )
		local Tag_a = "\\p0\\r\\alpha255"
		if table.type( { Textm } ) ~= "shape" then
			Ini_x = aegisub.width( "." ) + count_space_end( Textm ) * aegisub.width( " " )
			Tag_t = format( "{\\p0}\\N{\\r%s\\q2}%s", tags_style .. fx.add_tags, Textm )
			Tag_a = "\\r\\alpha255"
		end --table.type( { shape.circle } )
		local Tag_x = Dx or linefx[ ii ].text--""
		local Tag_y = Dy or ""
		fx.add_tags = "" -->variable de Effector-3.6.lua
		tags_style  = "" -->variable de Effector-3.6.lua
		------------------------------------------------------------------
		if Tag_x:match( "\\i?clip%b()" ) then
			Tag_x = shape.displace( shape.ASSDraw3( Tag_x:match( "\\i?clip%b()" ) ), -fx.move_x1, -fx.move_y1 )
		end
		if table.type( { Tag_x } ) == "shape" then
			--------------------------------------
			local function cap_shp( Shape, Time_i, Time_f, Accel )
				local parts, c = { }
				local Shape = Shape or shape.circle
				local algorithm = Accel or "%s"
				local Time_i = Time_i or 0
				local Time_f = Time_f or fx.dur
				local Time = Time_f - Time_i
				if type( algorithm ) == "number" then
					algorithm = "%s ^ " .. algorithm
				end
				if Accel then
					Shape = shape.redraw( Shape, 5, "line", true ) --secciona las rectas en partes de 5px aprox.
				end
				Shape = shape.redraw( Shape, 4.2, "bezier", true  ) --secciona las beziers en rectas de 5px aprox.
				local shp_length = shape.length( Shape ) --longitud de la shape
				for c in Shape:gmatch( "[lm]^*%s+%-?%d+[%.%d]*%s+%-?%d+[%-%.%d ]*" ) do
					parts[ #parts + 1 ] = c
				end
				local segments = { [ 1 ] = parts[ 1 ] }
				for i = 2, #parts do
					if parts[ i ]:match( "l" ) then
						segments[ #segments + 1 ] = parts[ i ]
					end
				end
				local points = {
					[ 1 ] = {
						x = tonumber( segments[ 1 ]:match( "(%-?%d+[%.%d]*)%s+%-?%d+[%.%d]*" ) ),
						y = tonumber( segments[ 1 ]:match( "%-?%d+[%.%d]*%s+(%-?%d+[%.%d]*)" ) )
					}
				}
				local t, l, x, y, d = 0, 0
				for i = 2, #segments do
					points[ #points + 1 ] = {
						x = tonumber( segments[ i ]:match( "(%-?%d+[%.%d]*)%s+%-?%d+[%.%d]*" ) ),
						y = tonumber( segments[ i ]:match( "%-?%d+[%.%d]*%s+(%-?%d+[%.%d]*)" ) )
					}
					points[ #points ].d = math.distance( points[ #points - 1 ].x, points[ #points - 1 ].y, points[ #points ].x, points[ #points ].y )
					l = l + points[ #points ].d
					points[ #points ].t1 = Time_i + t
					points[ #points ].t2 = Time_i + Time * math.format( algorithm, l / shp_length )
					t = points[ #points ].t2
					if points[ #points ].d == 0 then
						points[ #points ] = nil
					end
				end
				--info para text.move --
				local off_x = points[ 1 ].x
				local off_y = points[ 1 ].y
				local transfos = { x = "", y = "" }
				for i = 2, #points do
					if points[ i ].x ~= points[ i - 1 ].x then
						transfos.x = transfos.x .. format( "\\t(%s,%s,\\fsp%s)", points[ i ].t1, points[ i ].t2, points[ i ].x )
					end
					if points[ i ].y ~= points[ i - 1 ].y then
						transfos.y = transfos.y .. format( "\\t(%s,%s,\\fscy%s)", points[ i ].t1, points[ i ].t2, points[ i ].y )
					end
				end
				------------------------
				return off_x, off_y, transfos.x, transfos.y
			end
			--------------------------------------
			local accel = Accel or fx.offset[ 1 ]
			if accel <= 0 then
				accel = 1
			end
			Off_x, Off_y, Tag_x, Tag_y = cap_shp( Tag_x, fx.movet_i, fx.movet_f, accel )
			--text.move( nil, shape.circle )
		end
		Off_y = 2 * Off_y --todos los valores en "y" deben duplicarse
		------------------------------------------------------------------
		if type( Tag_x ) == "number" then
			Tag_x = format( "\\t(%s,%s,\\fsp%s)", fx.movet_i, fx.movet_f, Tag_x )
		end
		if type( Tag_y ) == "number" then
			Tag_y = format( "\\t(%s,%s,\\fscy%s)", fx.movet_i, fx.movet_f, Tag_y )
		end
		------------------------------------------------------------------
		local Mov_x = format( "%s\\fsp%s", Tag_a, -Ini_x - 2 * Off_x )
		if type( Tag_x ) == "table" then
			local transfo_cap_x = table.match( Tag_x, "\\t%(" )
			if #transfo_cap_x > 0 then
				Tag_x = table.concat( Tag_x )
			elseif table.type( Tag_x ) == "number" then
				Mov_x = format( "%s\\fsp%s", Tag_a, -Ini_x - 2 * Tag_x[ 1 ] )
				if #Tag_x > 1 then
					local dur = fx.dur / (#Tag_x - 1)
					for i = 2, #Tag_x do
						Mov_x = Mov_x .. format( "\\t(%s,%s,\\fsp%s)", (i - 2) * dur, (i - 1) * dur, -Ini_x - 2 * Tag_x[ i ] )
					end
				end
				Tag_x = ""
			elseif table.type( Tag_x ) == "table" then
				Mov_x = format( "%s\\fsp%s", Tag_a, -Ini_x - 2 * Tag_x[ 1 ][ 1 ] )
				if #Tag_x[ 1 ] > 1 then
					for i = 2, #Tag_x[ 1 ] do
						Mov_x = Mov_x .. format( "\\t(%s,%s,\\fsp%s)", Tag_x[ 2 ][ i - 1 ], Tag_x[ 2 ][ i ], -Ini_x - 2 * Tag_x[ 1 ][ i ] )
					end
				end
				Tag_x = ""
			end
		else
			Tag_x = Tag_x:gsub( "\\fsp(%-?%d+[%.%d]*)",
				function( val )
					local val = -Ini_x - 2 * tonumber( val )
					return "\\fsp" .. val
				end
			)
			:gsub( "\\fsp(R[%a]*%b())",
				function( val )
					local val = -Ini_x - 2 * string.toval( val )
					return "\\fsp" .. val
				end
			)
			:gsub( "\\fsp(%b())",
				function( val )
					local val = -Ini_x - 2 * string.toval( val )
					return "\\fsp" .. val
				end
			)
		end
		local Mov_H = format( "{%s%s}.", Mov_x, Tag_x )
		------------------------------------------------------------------
		local Mov_y1 = format( "\\r\\fscy%s", (Off_y >= 0 ) and Off_y or 0 )
		if type( Tag_y ) == "table" then
			Tag_y = table.concat( Tag_y )
		end
		Tag_y = Tag_y:gsub( "\\fscy(R[%a]*%b())",
			function( val )
				return "\\fscy" .. string.toval( val )
			end
		)
		:gsub( "\\fscy(%b())",
			function( val )
				return "\\fscy" .. string.toval( val )
			end
		)
		:gsub( "\\fscy(%-?%d+[%.%d]*)",
			function( val )
				return "\\fscy" .. 2 * tonumber( val )
			end
		)
		local valsy, t = { }
		for t in Tag_y:gmatch( "\\t%b()" ) do
			valsy[ #valsy + 1 ] = tonumber( t:match( "\\fscy(%-?%d+[%.%d]*)" ) )
		end
		valsy[ 0 ] = Off_y
		local k, transfo = 1, { p = { }, n = { } }
		local t1, t2, vy, Dy
		for t in Tag_y:gmatch( "\\t%b()" ) do
			t1 = tonumber( t:match( "\\t%([ ]*(%d+[%.%d ]*)%,[ ]*%d+[%.%d ]*%," ) )
			t2 = tonumber( t:match( "\\t%([ ]*%d+[%.%d ]*%,[ ]*(%d+[%.%d ]*)%," ) )
			vy = tonumber( t:match( "\\fscy(%-?%d+[%.%d]*)" ) )
			if vy < 0 then
				if vy * valsy[ k - 1 ] >= 0 then
					transfo.n[ #transfo.n + 1 ] = t:gsub( "(\\fscy)%-(%d+[%.%d]*)", "%1%2" )
				else
					Dy = valsy[ k - 1 ] - vy
					transfo.p[ #transfo.p + 1 ] = format( "\\t(%s,%s,\\fscy0)", t1, t1 - (t2 - t1) * vy / Dy )
					transfo.n[ #transfo.n + 1 ] = format( "\\t(%s,%s,\\fscy%s)", t1 - (t2 - t1) * vy / Dy, t2, -vy )
				end
			else
				if vy * valsy[ k - 1 ] >= 0 then
					transfo.p[ #transfo.p + 1 ] = t
				else
					Dy = vy - valsy[ k - 1 ]
					transfo.n[ #transfo.n + 1 ] = format( "\\t(%s,%s,\\fscy0)", t1, t1 + (t2 - t1) * vy / Dy )
					transfo.p[ #transfo.p + 1 ] = format( "\\t(%s,%s,\\fscy%s)", t1 + (t2 - t1) * vy / Dy, t2, vy )
				end
			end
			k = k + 1
		end
		local Mov_V1 = format( "{%s%s\\p1}m 0 0 m 0 100 ", Mov_y1, table.concat( transfo.p ) )
		------------------------------------------------------------------
		local Mov_y2 = format( "\\r\\fscy%s", (Off_y <= 0) and ((Off_y == 0) and 0 or -Off_y) or 0 )
		local Mov_V2 = format( "\\N{%s%s\\p1}m 0 0 m 0 100 ", Mov_y2, table.concat( transfo.n ) )
		------------------------------------------------------------------
		return Mov_V1 .. Tag_t .. Mov_H .. Mov_V2 --may 31st 2020
	end	--text.move( nil, tag.oscill( fx.dur, 2f, "\\fspRs( 10 )" ), tag.oscill( fx.dur, 2f, "\\fscyRs( 10 )" ) )
	
	function text.grid( Text, Filter, Align, Line )
		if type( Text ) == "function" then
			Text = Text( )
		end
		if type( Align ) == "function" then
			Align = Align( )
		end
		local Text = Text or val_text
		local Filter = Filter or function( ) return "" end
		local Align = Align or 7 --alineación, en caso de ingresar imagen
		local x_max, y_max = aegisub.width( Text ), aegisub.height( Text )
		-----------------------------------
		local text_px
		local Reduc = function( String )
			--reduce los colores y alphas repetidos
			local lines_in_shp, l = { }
			--recolecta cada línea de la shape
			for l in String:gmatch( "%b{}m %d+[ %l%d%x&H/{/}\\]*N" ) do
				l = "{\\p1}" .. l:gsub( "\\p1", "\\x" )
				local k = 1
				local parts_lines, p = { [ 0 ] = "" } --partes de una línea
				for p in l:gmatch( "%b{}m %d+[ %dl]*" ) do
					parts_lines[ #parts_lines + 1 ] = p
				end
				l = l:gsub( "%b{}m %d+[ %dl]*",
					function( capture )
						capture = (capture == parts_lines[ k - 1 ]) and "G" or capture
						k = k + 1
						return capture
					end
				)
				:gsub( "m %d+[ %dl]*(G[G]*)",
					function( Mark )
						local n = unicode.len( Mark ) + 1
						return format( "m 0 0 l 0 1 l %s 1 l %s 0 ", n, n )
					end
				)--si una parte es igual a la anterior, la elimina
				local alphas_lines, a = { [ 0 ] = "" }
				for a in l:gmatch( "\\1a&H%x+&" ) do
					alphas_lines[ #alphas_lines + 1 ] = a
				end
				k = 1
				l = l:gsub( "\\1a&H%x+&",
					function( alphax )
						alphax = (alphax == alphas_lines[ k - 1 ]) and "\\x" or alphax
						k = k + 1
						return alphax
					end
				)
				local colors_lines, c = { [ 0 ] = "" }
				for c in l:gmatch( "\\1c&H%x+&" ) do
					colors_lines[ #colors_lines + 1 ] = c
				end
				k = 1
				l = l:gsub( "\\1c&H%x+&",
					function( colorx )
						colorx = (colorx == colors_lines[ k - 1 ]) and "\\x" or colorx
						k = k + 1
						return colorx
					end
				)
				:gsub( "\\x\\", "\\" )
				:gsub( "&\\x", "&" )
				:gsub( "{\\p1}{\\x", "{\\p1" )
				lines_in_shp[ #lines_in_shp + 1 ] = l
			end
			return table.concat( lines_in_shp )
		end --july 02nd 2020
		-------------------------------
		local function image_info( Image )
			local get_info = image.to_pixels( Image, nil, true )
			local an_x = floor( ((Align - 1) % 3) * (x_max - get_info.width) / 2 )
			local an_y = floor( (3 - ceil( Align / 3 ) ) * (y_max - get_info.height) / 2 )
			local img_table, indx = { }, ""
			for i = 1, get_info.width * get_info.height do
				indx = tostring( math.i( i, get_info.width )[ "1-->A" ] + an_x ) .. "," .. tostring( math.i( i, get_info.width )[ "N,n" ] + an_y )
				img_table[ indx ] = format( "\\1c%s\\1a%s", get_info.color[ i ], get_info.alpha[ i ] )
			end
			return img_table, an_x, an_y, get_info.width, get_info.height
		end
		local is_image, img_info
		if type( Filter ) == "string" then --si es una imagen .bmp
			is_image = true
			img_info, xi, yi, wi, hi = image_info( Filter )
			Filter = function( i )
				local x1, y1 = i:match( "(%-?%d+),(%-?%d+)" )
				x1, y1 = tonumber( x1 ), tonumber( y1 )
				local xr = math.i( x1 - xi, xi + 1, xi + wi )[ "A-->B" ]
				local yr = math.i( y1 - yi, yi + 1, yi + hi )[ "A-->B" ]
				local k = format( "%s,%s", xr, yr )
				return img_info[ i ] or img_info[ k ] or "\\r"
			end
		end
		-----------------------------------
		local function min_alpha( String )
			--elige al alpha más transparente y elimina al resto :D
			local alphas, a = { }
			for a in String:gmatch( "\\1a&H(%x%x)&" ) do
				alphas[ #alphas + 1 ] = a
			end
			if #alphas > 1 then
				for i = 1, #alphas do
					alphas[ i ] = tonumber( alphas[ i ], 16 )
				end
				table.sort( alphas, function( a, b ) return a < b end )
				String = String:gsub( "\\1a&H%x%x&", "" ) .. format( "\\1a&H%s&", math.to16( alphas[ #alphas ] ) )
			end
			return String
		end
		-----------------------------------
		local tbl = text.to_pixels( Text, nil, nil, nil, nil, { true } )
		local x = table.op( tbl.x, "rank" )
		local y = table.op( tbl.y, "rank" )
		local tblx, str, c = { }
		for i = 1, #tbl.x do
			tblx[ tostring( tbl.x[ i ] ) .. "," .. tostring( tbl.y[ i ] ) ] = tbl.a[ i ]
		end
		local x_min, y_min = table.op( tbl.x, "min" ), table.op( tbl.y, "min" )
		local x_max, y_max = x_min + x, y_min + y
		local tbl_shp, id, is_shape = { }
		for i = y_min, y_max do
			tbl_shp[ i - y_min + 1 ] = ""
			for k = x_min, x_max do
				id = tostring( k ) .. "," .. tostring( i )
				is_shape = format( "{\\p1\\1a%s\\%s}m 0 0 l 0 1 l 1 1 l 1 0 ", tblx[ id ] or 0, id )
				tbl_shp[ i - y_min + 1 ] = tbl_shp[ i - y_min + 1 ] .. ( tblx[ id ] and is_shape or "{\\p1}m 0 0 l 1 1 " )
			end
			if not tbl_shp[ i - y_min + 1 ]:match( "1a" ) then
				tbl_shp[ i - y_min + 1 ] = format( "{\\p1}m 0 0 l %s 1 ", x_max )
			end
			tbl_shp[ i - y_min + 1 ] = tbl_shp[ i - y_min + 1 ] .. "{\\p0}\\N"
			while string.match2( tbl_shp[ i - y_min + 1 ], "{\\p1}m 0 0 l 1 1 ", true )[ 2 ] > 1 do
				str, c = string.match2( tbl_shp[ i - y_min + 1 ], "{\\p1}m 0 0 l 1 1 " )
				tbl_shp[ i - y_min + 1 ] = tbl_shp[ i - y_min + 1 ]:gsub( str, format( "{\\p1}m 0 0 l %s 1 ", c ) )
			end		
		end
		text_px = table.concat( tbl_shp )
		local k = 1
		if is_image and Line then
			text_px = text_px:gsub( "(\\1a&H%x%x&)\\(%d+,%d+)",
				function( isalpha, capture )
					px = tonumber( capture:match( "(%d+),%d+" ) )
					py = tonumber( capture:match( "%d+,(%d+)" ) )
					cx = x_max / 2
					cy = l.fontsize / 2
					rx = floor( px + val_left - l.left )
					d = math.distance( cx, cy, px, py )
					a = math.angle( cx, cy, px, py )
					i = k
					n = #tbl.x
					k = k + 1
					capture = capture:gsub( "(%d+)(,%d+)",
						function( x, y )
							local x = tonumber( x )
							x = floor( x + val_left - l.left )
							return tostring( x ) .. y
						end
					)
					local replaces = min_alpha( isalpha .. Filter( capture ) )
					return replaces
				end
			)
		else
			text_px = text_px:gsub( "(\\1a&H%x%x&)\\(%d+,%d+)",
				function( isalpha, capture )
					px = tonumber( capture:match( "(%d+),%d+" ) )
					py = tonumber( capture:match( "%d+,(%d+)" ) )
					cx = x_max / 2
					cy = l.fontsize / 2
					rx = floor( px + val_left - l.left ) --x relative
					d = math.distance( cx, cy, px, py )
					a = math.angle( cx, cy, px, py )
					i = k
					n = #tbl.x
					k = k + 1
					local replaces = min_alpha( isalpha .. Filter( capture ) )
					return replaces
				end
			) --text.grid( syl.text, function( ) return "\\1c" .. tag.ipol( math.clamp( math.distance( Dx, Dy, px, py ), 0, Dr ) / Dr, shape.color1, shape.color3 ) end )
		end
		local shape_i = format( "{\\p1}m 0 0 l %s %s {\\p0}\\N", x, y_min - 1 )
		local shape_f = format( "{\\p1}m 0 0 l %s %s {\\p0}\\N", x, l.height - y_max - 1 )
		text_px = shape_i .. text_px .. shape_f
		text_px = text_px:gsub( "(1c)&H(%x+)&", "%1%2" )
		if reduce_lines then
			text_px = Reduc( text_px )
		end
		--text.grid( "demo" )
		return text_px --text.grid( )
	end --may 14th 2020

	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "image" ----------------------------------------------------------------
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
	
	function image.to_pixels( bmp_image, Size, Table )
		local bmp_color, bmp_alpha = recall.clr, recall.alp
		local bmp_image = bmp_image or "test.bmp"
		local Size = Size or 1
		local bmp_wth, bmp_hht = recall.w, recall.h
		if j == 1 then
			bmp_color = remember( "clr", image.data( bmp_image, "color" ) )
			bmp_alpha = remember( "alp", image.data( bmp_image, "alpha" ) )
			bmp_wth = remember( "w", Yutils.decode.create_bmp_reader( bmp_image ).width( ) )
			bmp_hht = remember( "h", Yutils.decode.create_bmp_reader( bmp_image ).height( ) )
		end
		if Table then
			return { color = bmp_color, alpha = bmp_alpha, width = bmp_wth, height = bmp_hht }
		end --image.to_pixels( "test.bmp", nil, true )
		maxloop( #bmp_color )
		local posx = fx.pos_x + math.i( j, bmp_wth )[ "1-->A" ] * Size - bmp_wth * Size / 2 + Size / 2
		local posy = fx.pos_y + math.i( j, bmp_wth )[ "N,n" ] * Size - bmp_hht * Size / 2 + Size / 2
		if bmp_alpha[ j ] == "&HFF&" then
			return nil
		end
		local bmp_tag = effector.new_pos( posx, posy )
		bmp_tag = format( "{%s\\1c%s\\1a%s}", bmp_tag, bmp_color[ j ], bmp_alpha[ j ] )
		return format( "%s{\\bord0\\shad0\\fscx%s\\fscy%s\\p1}%s", bmp_tag, 100 * Size, 100 * Size, shape.pixel )
	end --image.to_pixels( ) --image.to_pixels( "pngbar.png" )
	
	function image.grid( Image, Lines )
		local Image = Image or "test.bmp"
		local get_info = image.to_pixels( Image, nil, true )
		local indx, id = "", ""
		local img_table, image_px, lines_img
		-------------------------------
		local function reduce( String )
			--reduce los colores y alphas repetidos
			local coloralpha, c, a = { }
			for c, a in String:gmatch( "\\1c(&H%x+&)\\1a(&H%x+&)" ) do
				coloralpha[ #coloralpha + 1 ] = { c, a }
			end
			String = String:gsub( "(\\1c&H%x+&)(\\1a&H%x+&)", 
				function( c, a )
					return "cfx" .. "afx"
				end
			):gsub( "(cfx)(afx)",
				function( c, a )
					return format( "\\1c%s\\1a%s", coloralpha[ 1 ][ 1 ], coloralpha[ 1 ][ 2 ] )
				end, 1
			)
			local i = math.count( )
			String = String:gsub( "(cfx)(afx)",
				function( c, a )
					local k, c, a = i( ) + 1
					c = coloralpha[ k ][ 1 ] == coloralpha[ k - 1 ][ 1 ] and "" or "\\1c" .. coloralpha[ k ][ 1 ]
					a = coloralpha[ k ][ 2 ] == coloralpha[ k - 1 ][ 2 ] and "" or "\\1a" .. coloralpha[ k ][ 2 ]
					return c .. a == "" and "\\x" or c .. a
				end
			)
			return String
		end --june 13th 2020
		-------------------------------
		img_table = { }
		for i = 1, get_info.width * get_info.height do
			indx = tostring( math.i( i, get_info.width )[ "1-->A" ] ) .. "," .. tostring( math.i( i, get_info.width )[ "N,n" ] )
			img_table[ indx ] = format( "\\1c%s\\1a%s", get_info.color[ i ], get_info.alpha[ i ] )
		end
		image_px = { }
		for i = 1, get_info.height do
			image_px[ i ] = "{\\p1}"
			for k = 1, get_info.width do
				id = tostring( k ) .. "," .. tostring( i )
				image_px[ i ] = image_px[ i ] .. format( "{%s}m 0 0 l 0 1 l 1 1 l 1 0 ", img_table[ id ] )
			end
			image_px[ i ] = reduce( image_px[ i ] ):gsub( "(1c)&H(%x+)&", "%1%2" ) .. "{\\p0}\\N"
		end
		if Lines then
			local parts = Lines
			if type( Lines ) == "table" then
				parts = ceil( #image_px / Lines[ 1 ] )
			end
			lines_img = table.inpack( image_px, parts )
			for i = 1, #lines_img do
				lines_img[ i ] = format( "{\\bs0\\p1}m 0 0 l 1 %s {\\p0}\\N%s{\\p1}m 0 0 l 1 %s ",
					(i - 1) * parts, table.concat( lines_img[ i ] ), #image_px - i * parts
				)
			end
			return lines_img
		end
		local image_pix = table.concat( image_px )
		return image_pix --image.grid( )
	end --may 14th 2020

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
		local is_match = false
		for line in File:lines( ) do
			if n == "r" then --todas las líneas
				Lines_tbl[ #Lines_tbl + 1 ] = line
			elseif type( n ) == "number" then --number
				if count == n then
					Lines_tbl[ #Lines_tbl + 1 ] = line
				end
				count = count + 1
			elseif type( n ) == "table"
				and type( n[ 1 ] ) == "table" then --number lines
				if table.inside( n[ 1 ], count ) then
					Lines_tbl[ #Lines_tbl + 1 ] = line
				end
				count = count + 1
			elseif type( n ) == "table" then --ini & fin
				if type( n[ 1 ] ) == "number"
					and type( n[ 2 ] ) == "number" then --number & number
					if count >= n[ 1 ]
						and count <= n[ 2 ] then
						Lines_tbl[ #Lines_tbl + 1 ] = line
					end
				elseif type( n[ 1 ] ) == "number"
					and type( n[ 2 ] ) == "string" then --number & match
					if count >= n[ 1 ] then
						Lines_tbl[ #Lines_tbl + 1 ] = line
						if line:match( n[ 2 ] ) then
							break
						end
					end
				elseif type( n[ 1 ] ) == "string"
					and type( n[ 2 ] ) == "number" then --match & number
					if line:match( n[ 1 ] ) then
						is_match = true
					end
					if is_match == true then
						Lines_tbl[ #Lines_tbl + 1 ] = line
						if count == n[ 2 ] then
							break
						end
					end
				elseif type( n[ 1 ] ) == "string"
					and type( n[ 2 ] ) == "string" then --match & match
					if line:match( n[ 1 ] ) then
						is_match = true
					end
					if is_match == true then
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
		[ 24 ] = { name = "tags_filter";		class = "dropdown";	x = 1; y = 3;	height = 1; width = 4;	hint  = "Select the Filter to be used for the Tags Colors and Alpha of Text.";	items = { "XY-VSFilter", "No Tags Color and Alpha" };	value = "XY-VSFilter" },
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
	effector.GUI_modify[ 32 ].hint = "shape.color1 or SC1: Primary Color Shape \\1c"
	effector.GUI_modify[ 33 ].hint = "shape.color3 or SC3: Border Color Shape \\3c"
	effector.GUI_modify[ 34 ].hint = "shape.color4 or SC4: Shadow Color Shape \\4c"
	effector.GUI_modify[ 35 ].hint = "shape.alpha1 or SA1: Primary Alpha Shape \\1a"
	effector.GUI_modify[ 36 ].hint = "shape.alpha3 or SA3: Border Alpha Shape \\3a"
	effector.GUI_modify[ 37 ].hint = "shape.alpha4 or SA4: Shadow Alpha Shape \\4a"
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
	effector.GUI_modify[ 56 ].hint = "Line Effect Add Tags, example: \"\\\\bord0\"; format( \"\\\\3c%s\", shape.color3 ) in lua Language, or: !maxloop( $width / $syln )!!retime( \"start2syl\", -1000 + $si * 50, 0 )!{\\1c!color.random( )!} in Automation Auto-4 Language"
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
		table__.effect		= table_data[ 01 ].label			table__.t_type		= table_data[ 29 ].value
		table__.noblank		= table_data[ 30 ].value			table__.v_kanji		= table_data[ 31 ].value
		table__.color1		= table_data[ 32 ].value			table__.color3		= table_data[ 33 ].value
		table__.color4		= table_data[ 34 ].value			table__.alpha1		= table_data[ 35 ].value
		table__.alpha3		= table_data[ 36 ].value			table__.alpha4		= table_data[ 37 ].value
		table__.start_t		= table_data[ 38 ].text				table__.end_t		= table_data[ 39 ].text
		table__.fun_x		= table_data[ 40 ].text				table__.fun_y		= table_data[ 41 ].text
		table__.s_i			= table_data[ 42 ].text				table__.s_f			= table_data[ 43 ].text
		table__.center_x	= table_data[ 44 ].text				table__.center_y	= table_data[ 45 ].text
		table__.scale_x		= table_data[ 46 ].text				table__.scale_y		= table_data[ 47 ].text
		table__.align		= table_data[ 48 ].text				table__.layer		= table_data[ 49 ].text
		table__.move_x		= table_data[ 50 ].text				table__.move_y		= table_data[ 51 ].text
		table__.move_t		= table_data[ 52 ].text				table__.loops		= table_data[ 53 ].text
		table__.size		= table_data[ 54 ].text				table__.returnfx	= table_data[ 55 ].text
		table__.addtag		= table_data[ 56 ].text				table__.variable	= table_data[ 57 ].text
		table__.namefx		= table_data[ 62 ].text				table__.folderfx	= table_data[ 63 ].value
		table__.language	= table_data[ 66 ].value or "Lua"	table__.modify		= table_data[ 67 ].value or false
		table__.keeptagsfx	= table_data[ 69 ].value			table__.reverfx		= table_data[ 70 ].value or false
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
		elseif t_move >= 2 then
			pos = format( "\\move(%s,%s,%s,%s)", t_pos[ 1 ], t_pos[ 2 ], t_pos[ 3 ], tostring( t_pos[ 4 ] ) .. t_time )
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
		if Nmove >= 2 then
			newpos = format( "\\move(%s,%s,%s,%s)",
				math.round( posx + fx.move_x1 - fx.pos_x, 3 ), math.round( posy + fx.move_y1 - fx.pos_y, 3 ),
				math.round( posx + fx.move_x2 - fx.pos_x, 3 ), math.round( posy + fx.move_y2 - fx.pos_y, 3 ) .. tags_times
			)
		end
		--fx.pos_x, fx.pos_y = posx, posy
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
		fx.offset = { }
		local line = linefx[ ii ]
		if pcall( loadstring( format( "return function( meta, line, x, y ) return { %s } end", l_actor ) ) ) then
			local linefx_to_function = loadstring( format( "return function( meta, line, x, y ) return { %s } end", l_actor ) )( )
			fx.offset = linefx_to_function( meta, line, x, y )
		end
	end --rewrite: may 31st 2020

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
			[ 13 ] = { 74, 117, 110, 101, 32, 49, 54, 116, 104, 32, 50, 48, 50, 48 },
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
			[ 48 ] = { 74, 117, 110, 101, 32, 49, 54, 116, 104, 32, 50, 48, 50, 48 },
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
		val_i, val_n = l_counter, maxil_count
		if fx__.t_type == "Syl"
			or fx__.t_type == "Syl Multi" then
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
			val_i, val_n, val_ii = char.i, char.n, char.ii
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
			maxil_count = #index
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
			--líneas seleccionadas
			for _, i in ipairs( selected_lines ) do
				if subtitles[ i ].class == "dialogue"
					--and not subtitles[ i ].comment --june 02nd 2020
					and subtitles[ i ].effect ~= "Effector [fx]"
					and subtitles[ i ].effect ~= "fx" then
					table.insert( subs, i )
				end
			end
		elseif sett.line_style == "All Lines" then
			for i = 1, #subtitles do
				--todas las líneas (no comentadas)
				if subtitles[ i ].class == "dialogue"
					and not subtitles[ i ].comment
					and subtitles[ i ].effect ~= "Effector [fx]"
					and subtitles[ i ].effect ~= "fx" then
					table.insert( subs, i )
				end
			end
		else
			for i = 1, #subtitles do
				--estilo seleccionado (líneas no comentadas)
				if sett.line_style == subtitles[ i ].style
					and subtitles[ i ].class == "dialogue"
					and not subtitles[ i ].comment
					and subtitles[ i ].effect ~= "Effector [fx]"
					and subtitles[ i ].effect ~= "fx" then
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
			linefx[ i ].color1			= color.fromstyle( l_style.color1 )
			linefx[ i ].color2			= color.fromstyle( l_style.color2 )
			linefx[ i ].color3			= color.fromstyle( l_style.color3 )
			linefx[ i ].color4			= color.fromstyle( l_style.color4 )
			linefx[ i ].alpha1			= alpha.fromstyle( l_style.color1 )
			linefx[ i ].alpha2			= alpha.fromstyle( l_style.color2 )
			linefx[ i ].alpha3			= alpha.fromstyle( l_style.color3 )
			linefx[ i ].alpha4			= alpha.fromstyle( l_style.color4 )
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
				linefx[ i ].word.text				= linefx[ i ].word.text .. linefx[ i ].word[ k ].text:gsub( "KEfx", "" )
				words_left 							= words_left  + linefx[ i ].word[ k ].width_t
				words_start							= words_start + linefx[ i ].word[ k ].duration
				table.insert( mmwth[ i ].wo, linefx[ i ].word[ k ].width )
				table.insert( mmdur[ i ].wo, linefx[ i ].word[ k ].dur )
			end
			--
			linefx[ i ].words = {
				tags			= { },
				width			= { },
				left			= { },
				center			= { },
				right			= { },
				top				= { },
				middle			= { },
				bottom			= { },
				height			= { },
				duration		= { },
				dur				= { },
				start_time		= { },
				end_time		= { },
				text			= { },
				text_stripped	= { }
			}
			for k = 1, #words_line do
				linefx[ i ].words.tags[ k ]				= linefx[ i ].word[ k ].tags
				linefx[ i ].words.width[ k ]			= linefx[ i ].word[ k ].width
				linefx[ i ].words.left[ k ]				= linefx[ i ].word[ k ].left
				linefx[ i ].words.center[ k ]			= linefx[ i ].word[ k ].center
				linefx[ i ].words.right[ k ]			= linefx[ i ].word[ k ].right
				linefx[ i ].words.top[ k ]				= linefx[ i ].word[ k ].top
				linefx[ i ].words.middle[ k ]			= linefx[ i ].word[ k ].middle
				linefx[ i ].words.bottom[ k ]			= linefx[ i ].word[ k ].bottom
				linefx[ i ].words.height[ k ]			= linefx[ i ].word[ k ].height
				linefx[ i ].words.duration[ k ]			= linefx[ i ].word[ k ].duration
				linefx[ i ].words.dur[ k ]				= linefx[ i ].word[ k ].dur
				linefx[ i ].words.start_time[ k ]		= linefx[ i ].word[ k ].start_time
				linefx[ i ].words.end_time[ k ]			= linefx[ i ].word[ k ].end_time
				linefx[ i ].words.text[ k ]				= linefx[ i ].word[ k ].text
				linefx[ i ].words.text_stripped[ k ]	= linefx[ i ].word[ k ].text_stripped
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
				linefx[ i ].syl[ k ].tags			= linefx[ i ].syl[ k ].text:match( "%b{}" )
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
			linefx[ i ].syls = {
				tags			= { },
				width			= { },
				left			= { },
				center			= { },
				right			= { },
				top				= { },
				middle			= { },
				bottom			= { },
				height			= { },
				duration		= { },
				dur				= { },
				start_time		= { },
				end_time		= { },
				text			= { },
				text_stripped	= { }
			}
			for k = 1, #syls_line do
				linefx[ i ].syls.tags[ k ]			= linefx[ i ].syl[ k ].tags
				linefx[ i ].syls.width[ k ]			= linefx[ i ].syl[ k ].width
				linefx[ i ].syls.left[ k ]			= linefx[ i ].syl[ k ].left
				linefx[ i ].syls.center[ k ]		= linefx[ i ].syl[ k ].center
				linefx[ i ].syls.right[ k ]			= linefx[ i ].syl[ k ].right
				linefx[ i ].syls.top[ k ]			= linefx[ i ].syl[ k ].top
				linefx[ i ].syls.middle[ k ]		= linefx[ i ].syl[ k ].middle
				linefx[ i ].syls.bottom[ k ]		= linefx[ i ].syl[ k ].bottom
				linefx[ i ].syls.height[ k ]		= linefx[ i ].syl[ k ].height
				linefx[ i ].syls.duration[ k ]		= linefx[ i ].syl[ k ].duration
				linefx[ i ].syls.dur[ k ]			= linefx[ i ].syl[ k ].dur
				linefx[ i ].syls.start_time[ k ]	= linefx[ i ].syl[ k ].start_time
				linefx[ i ].syls.end_time[ k ]		= linefx[ i ].syl[ k ].end_time
				linefx[ i ].syls.text[ k ]			= linefx[ i ].syl[ k ].text
				linefx[ i ].syls.text_stripped[ k ]	= linefx[ i ].syl[ k ].text_stripped
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
			linefx[ i ].sylmultis = {
				tags			= { },
				width			= { },
				left			= { },
				center			= { },
				right			= { },
				top				= { },
				middle			= { },
				bottom			= { },
				height			= { },
				duration		= { },
				dur				= { },
				start_time		= { },
				end_time		= { },
				text			= { },
				text_stripped	= { }
			}
			for k = 1, #sylmulti_line do
				linefx[ i ].sylmultis.width[ k ]			= linefx[ i ].sylmulti[ k ].width
				linefx[ i ].sylmultis.left[ k ]				= linefx[ i ].sylmulti[ k ].left
				linefx[ i ].sylmultis.center[ k ]			= linefx[ i ].sylmulti[ k ].center
				linefx[ i ].sylmultis.right[ k ]			= linefx[ i ].sylmulti[ k ].right
				linefx[ i ].sylmultis.top[ k ]				= linefx[ i ].sylmulti[ k ].top
				linefx[ i ].sylmultis.middle[ k ]			= linefx[ i ].sylmulti[ k ].middle
				linefx[ i ].sylmultis.bottom[ k ]			= linefx[ i ].sylmulti[ k ].bottom
				linefx[ i ].sylmultis.height[ k ]			= linefx[ i ].sylmulti[ k ].height
				linefx[ i ].sylmultis.duration[ k ]			= linefx[ i ].sylmulti[ k ].duration
				linefx[ i ].sylmultis.dur[ k ]				= linefx[ i ].sylmulti[ k ].dur
				linefx[ i ].sylmultis.start_time[ k ]		= linefx[ i ].sylmulti[ k ].start_time
				linefx[ i ].sylmultis.end_time[ k ]			= linefx[ i ].sylmulti[ k ].end_time
				linefx[ i ].sylmultis.text[ k ]				= linefx[ i ].sylmulti[ k ].text
				linefx[ i ].sylmultis.text_stripped[ k ]	= linefx[ i ].sylmulti[ k ].text_stripped
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
			linefx[ i ].romas = {
				tags			= { },
				width			= { },
				left			= { },
				center			= { },
				right			= { },
				top				= { },
				middle			= { },
				bottom			= { },
				height			= { },
				duration		= { },
				dur				= { },
				start_time		= { },
				end_time		= { },
				text			= { },
				text_stripped	= { }
			}
			for k = 1, #roma_line do
				linefx[ i ].romas.width[ k ]			= linefx[ i ].roma[ k ].width
				linefx[ i ].romas.left[ k ]				= linefx[ i ].roma[ k ].left
				linefx[ i ].romas.center[ k ]			= linefx[ i ].roma[ k ].center
				linefx[ i ].romas.right[ k ]			= linefx[ i ].roma[ k ].right
				linefx[ i ].romas.top[ k ]				= linefx[ i ].roma[ k ].top
				linefx[ i ].romas.middle[ k ]			= linefx[ i ].roma[ k ].middle
				linefx[ i ].romas.bottom[ k ]			= linefx[ i ].roma[ k ].bottom
				linefx[ i ].romas.height[ k ]			= linefx[ i ].roma[ k ].height
				linefx[ i ].romas.duration[ k ]			= linefx[ i ].roma[ k ].duration
				linefx[ i ].romas.dur[ k ]				= linefx[ i ].roma[ k ].dur
				linefx[ i ].romas.start_time[ k ]		= linefx[ i ].roma[ k ].start_time
				linefx[ i ].romas.end_time[ k ]			= linefx[ i ].roma[ k ].end_time
				linefx[ i ].romas.text[ k ]				= linefx[ i ].roma[ k ].text
				linefx[ i ].romas.text_stripped[ k ]	= linefx[ i ].roma[ k ].text_stripped
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
			linefx[ i ].hiras = {
				tags			= { },
				width			= { },
				left			= { },
				center			= { },
				right			= { },
				top				= { },
				middle			= { },
				bottom			= { },
				height			= { },
				duration		= { },
				dur				= { },
				start_time		= { },
				end_time		= { },
				text			= { },
				text_stripped	= { }
			}
			for k = 1, #hira_line do
				linefx[ i ].hiras.width[ k ]			= linefx[ i ].hira[ k ].width
				linefx[ i ].hiras.left[ k ]				= linefx[ i ].hira[ k ].left
				linefx[ i ].hiras.center[ k ]			= linefx[ i ].hira[ k ].center
				linefx[ i ].hiras.right[ k ]			= linefx[ i ].hira[ k ].right
				linefx[ i ].hiras.top[ k ]				= linefx[ i ].hira[ k ].top
				linefx[ i ].hiras.middle[ k ]			= linefx[ i ].hira[ k ].middle
				linefx[ i ].hiras.bottom[ k ]			= linefx[ i ].hira[ k ].bottom
				linefx[ i ].hiras.height[ k ]			= linefx[ i ].hira[ k ].height
				linefx[ i ].hiras.duration[ k ]			= linefx[ i ].hira[ k ].duration
				linefx[ i ].hiras.dur[ k ]				= linefx[ i ].hira[ k ].dur
				linefx[ i ].hiras.start_time[ k ]		= linefx[ i ].hira[ k ].start_time
				linefx[ i ].hiras.end_time[ k ]			= linefx[ i ].hira[ k ].end_time
				linefx[ i ].hiras.text[ k ]				= linefx[ i ].hira[ k ].text
				linefx[ i ].hiras.text_stripped[ k ]	= linefx[ i ].hira[ k ].text_stripped
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
			linefx[ i ].katas = {
				tags			= { },
				width			= { },
				left			= { },
				center			= { },
				right			= { },
				top				= { },
				middle			= { },
				bottom			= { },
				height			= { },
				duration		= { },
				dur				= { },
				start_time		= { },
				end_time		= { },
				text			= { },
				text_stripped	= { }
			}
			for k = 1, #kata_line do
				linefx[ i ].katas.width[ k ]			= linefx[ i ].kata[ k ].width
				linefx[ i ].katas.left[ k ]				= linefx[ i ].kata[ k ].left
				linefx[ i ].katas.center[ k ]			= linefx[ i ].kata[ k ].center
				linefx[ i ].katas.right[ k ]			= linefx[ i ].kata[ k ].right
				linefx[ i ].katas.top[ k ]				= linefx[ i ].kata[ k ].top
				linefx[ i ].katas.middle[ k ]			= linefx[ i ].kata[ k ].middle
				linefx[ i ].katas.bottom[ k ]			= linefx[ i ].kata[ k ].bottom
				linefx[ i ].katas.height[ k ]			= linefx[ i ].kata[ k ].height
				linefx[ i ].katas.duration[ k ]			= linefx[ i ].kata[ k ].duration
				linefx[ i ].katas.dur[ k ]				= linefx[ i ].kata[ k ].dur
				linefx[ i ].katas.start_time[ k ]		= linefx[ i ].kata[ k ].start_time
				linefx[ i ].katas.end_time[ k ]			= linefx[ i ].kata[ k ].end_time
				linefx[ i ].katas.text[ k ]				= linefx[ i ].kata[ k ].text
				linefx[ i ].katas.text_stripped[ k ]	= linefx[ i ].kata[ k ].text_stripped
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
			--[[
			if fx__.noblank == false then
				for k = 1, #chars_line do
					if linefx[ i ].char[ k ]
						and linefx[ i ].char[ k ].text_stripped == " " then
						table.remove( linefx[ i ].char, k )
					end
				end
				local text_without_spaces = linefx[ i ].text:gsub( " ", "" )
				chars_line = text.text2char( text_without_spaces, linefx[ i ].duration )
			end
			--]]
			linefx[ i ].chars = {
				tags			= { },
				width			= { },
				left			= { },
				center			= { },
				right			= { },
				top				= { },
				middle			= { },
				bottom			= { },
				height			= { },
				duration		= { },
				dur				= { },
				start_time		= { },
				end_time		= { },
				text			= { },
				text_stripped	= { }
			}
			for k = 1, #chars_line do
				linefx[ i ].chars.tags[ k ]				= linefx[ i ].char[ k ].tags
				linefx[ i ].chars.width[ k ]			= linefx[ i ].char[ k ].width
				linefx[ i ].chars.left[ k ]				= linefx[ i ].char[ k ].left
				linefx[ i ].chars.center[ k ]			= linefx[ i ].char[ k ].center
				linefx[ i ].chars.right[ k ]			= linefx[ i ].char[ k ].right
				linefx[ i ].chars.top[ k ]				= linefx[ i ].char[ k ].top
				linefx[ i ].chars.middle[ k ]			= linefx[ i ].char[ k ].middle
				linefx[ i ].chars.bottom[ k ]			= linefx[ i ].char[ k ].bottom
				linefx[ i ].chars.height[ k ]			= linefx[ i ].char[ k ].height
				linefx[ i ].chars.duration[ k ]			= linefx[ i ].char[ k ].duration
				linefx[ i ].chars.dur[ k ]				= linefx[ i ].char[ k ].dur
				linefx[ i ].chars.start_time[ k ]		= linefx[ i ].char[ k ].start_time
				linefx[ i ].chars.end_time[ k ]			= linefx[ i ].char[ k ].end_time
				linefx[ i ].chars.text[ k ]				= linefx[ i ].char[ k ].text
				linefx[ i ].chars.text_stripped[ k ]	= linefx[ i ].char[ k ].text_stripped
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