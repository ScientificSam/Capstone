create OR replace view gm_logs as
select gl.playdate, gl.`day`, gl.vteam, gl.daynight, gl.park_id, gl.v_hit_pitch, gl.v_sh, gl.v_in_walks, gl.v_stlbase, gl.v_cau_stl,
		gl.v_wld_ptc, gl.v_balks, gl.v_assists, v_errors, v_pballs, vwt.v_win_val
		from capstone.gamelogs gl , capstone.v_win_table vwt 
		where gl.id = vwt.v_win_id 