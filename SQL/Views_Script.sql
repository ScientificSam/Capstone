create OR replace view gm_logs as
select  gl.playdate, gl.`number`, gl.`day`, gl.hteam, gl.hleague, gl.vscore, gl.len_game, gl.daynight, gl.park_id, gl.attendance, 
		gl.len_min, gl.v_at_bats, gl.v_hits, gl.v_doubles, gl.v_triples, gl.v_hruns, gl.v_rbi, gl.v_sh, gl.v_sf, gl.v_hit_pitch, 
		gl.v_walks, gl.v_in_walks, gl.v_strkouts, gl.v_stlbase, gl.v_cau_stl, gl.v_grd_dbl, gl.v_af_ci, gl.v_lft_base, gl.v_ptc_used,  
		gl.v_in_er_rn, gl.v_er_rns, gl.v_wld_ptc, gl.v_balks, gl.v_putouts, gl.v_assists, gl.v_errors, gl.v_pballs, gl.v_dplays, gl.v_tplays,
		vwt.v_win_val
		from capstone.gamelogs gl, capstone.v_win_table vwt 
		where gl.id = vwt.v_win_id
		and vwt.v_win_val is not null