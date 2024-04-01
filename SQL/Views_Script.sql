create OR replace view gm_logs as
select  gl.playdate, gl.`number`, gl.`day`, gl.vteam, gl.hteam, gl.vscore, gl.hscore, gl.hleague, gl.len_game, gl.daynight, gl.park_id, gl.attendance, 
		gl.len_min, gl.v_at_bats, gl.v_hits, gl.v_doubles, gl.v_triples, gl.v_hruns, gl.v_rbi, gl.v_sh, gl.v_sf, gl.v_hit_pitch, 
		gl.v_walks, gl.v_in_walks, gl.v_strkouts, gl.v_stlbase, gl.v_cau_stl, gl.v_grd_dbl, gl.v_af_ci, gl.v_lft_base, gl.h_pch_used,
		gl.h_in_runs, gl.h_er_runs, gl.h_wld_pitch, gl.h_balks, gl.h_putouts, gl.h_assists, gl.h_errors, gl.h_pballs, gl.h_dplays, gl.h_tplays,
		pb.player_weights, pb.player_heights, pb.player_throws, pb.player_bats, vwt.v_win_val
		from capstone.gamelogs gl, capstone.v_win_table vwt , capstone.player_bio pb 
		where vwt.v_win_val is not null 
		      and gl.id = vwt.v_win_id
			  and pb.id = gl.id