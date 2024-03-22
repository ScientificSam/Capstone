
-- capstone.gamelogs definition

CREATE TABLE `gamelogs` (
  `playdate` date DEFAULT NULL,
  `number` int DEFAULT NULL,
  `day` varchar(50) DEFAULT NULL,
  `vteam` varchar(50) DEFAULT NULL,
  `vleague` varchar(50) DEFAULT NULL,
  `v_number` int DEFAULT NULL,
  `hteam` varchar(50) DEFAULT NULL,
  `hleague` varchar(50) DEFAULT NULL,
  `h_number` int DEFAULT NULL,
  `vscore` int DEFAULT NULL,
  `hscore` int DEFAULT NULL,
  `len_game` int DEFAULT NULL,
  `daynight` varchar(50) DEFAULT NULL,
  `cinfo` varchar(50) DEFAULT NULL,
  `finfo` varchar(50) DEFAULT NULL,
  `pinfo` varchar(50) DEFAULT NULL,
  `park_id` varchar(50) DEFAULT NULL,
  `attendance` int DEFAULT NULL,
  `len_min` int DEFAULT NULL,
  `v_line_score` varchar(50) DEFAULT NULL,
  `h_line_score` varchar(50) DEFAULT NULL,
  `v_at_bats` int DEFAULT NULL,
  `v_hits` int DEFAULT NULL,
  `v_doubles` int DEFAULT NULL,
  `v_triples` int DEFAULT NULL,
  `v_hruns` int DEFAULT NULL,
  `v_rbi` int DEFAULT NULL,
  `v_sh` int DEFAULT NULL,
  `v_sf` int DEFAULT NULL,
  `v_hit_pitch` int DEFAULT NULL,
  `v_walks` int DEFAULT NULL,
  `v_in_walks` int DEFAULT NULL,
  `v_strkouts` int DEFAULT NULL,
  `v_stlbase` int DEFAULT NULL,
  `v_cau_stl` int DEFAULT NULL,
  `v_grd_dbl` int DEFAULT NULL,
  `v_af_ci` int DEFAULT NULL,
  `v_lft_base` int DEFAULT NULL,
  `v_ptc_used` int DEFAULT NULL,
  `v_in_er_rn` int DEFAULT NULL,
  `v_er_rns` int DEFAULT NULL,
  `v_wld_ptc` int DEFAULT NULL,
  `v_balks` int DEFAULT NULL,
  `v_putouts` int DEFAULT NULL,
  `v_assists` int DEFAULT NULL,
  `v_errors` int DEFAULT NULL,
  `v_pballs` int DEFAULT NULL,
  `v_dplays` int DEFAULT NULL,
  `v_tplays` int DEFAULT NULL,
  `h_bats` int DEFAULT NULL,
  `h_hits` int DEFAULT NULL,
  `h_doubles` int DEFAULT NULL,
  `h_triples` int DEFAULT NULL,
  `h_hruns` int DEFAULT NULL,
  `h_rbi` int DEFAULT NULL,
  `h_sac_hts` int DEFAULT NULL,
  `h_sac_fly` int DEFAULT NULL,
  `h_hit_pch` int DEFAULT NULL,
  `h_walks` int DEFAULT NULL,
  `h_in_walks` int DEFAULT NULL,
  `h_strkout` int DEFAULT NULL,
  `h_stl_bs` int DEFAULT NULL,
  `h_cug_stl` int DEFAULT NULL,
  `h_dbl_play` int DEFAULT NULL,
  `h_af_ci` int DEFAULT NULL,
  `h_lft_base` int DEFAULT NULL,
  `h_pch_used` int DEFAULT NULL,
  `h_in_runs` int DEFAULT NULL,
  `h_er_runs` int DEFAULT NULL,
  `h_wld_pitch` int DEFAULT NULL,
  `h_balks` int DEFAULT NULL,
  `h_putouts` int DEFAULT NULL,
  `h_assists` int DEFAULT NULL,
  `h_errors` int DEFAULT NULL,
  `h_pballs` int DEFAULT NULL,
  `h_dplays` int DEFAULT NULL,
  `h_tplays` int DEFAULT NULL,
  `hp_ump_id` varchar(50) DEFAULT NULL,
  `hp_name` varchar(50) DEFAULT NULL,
  `1b_ump_id` varchar(50) DEFAULT NULL,
  `1b_ump_name` varchar(50) DEFAULT NULL,
  `2b_ump_id` varchar(50) DEFAULT NULL,
  `2b_ump_name` varchar(50) DEFAULT NULL,
  `3b_ump_id` varchar(50) DEFAULT NULL,
  `3b_ump_name` varchar(50) DEFAULT NULL,
  `lf_ump_id` varchar(50) DEFAULT NULL,
  `lf_ump_name` varchar(50) DEFAULT NULL,
  `rf_ump_id` varchar(50) DEFAULT NULL,
  `rf_ump_name` varchar(50) DEFAULT NULL,
  `v_mid` varchar(50) DEFAULT NULL,
  `v_mname` varchar(50) DEFAULT NULL,
  `h_mid` varchar(50) DEFAULT NULL,
  `h_mname` varchar(50) DEFAULT NULL,
  `w_pch_id` varchar(50) DEFAULT NULL,
  `w_pch_name` varchar(50) DEFAULT NULL,
  `l_pch_id` varchar(50) DEFAULT NULL,
  `l_pch_name` varchar(50) DEFAULT NULL,
  `s_pch_id` varchar(50) DEFAULT NULL,
  `s_pch_name` varchar(50) DEFAULT NULL,
  `g_rbi_bt_id` varchar(50) DEFAULT NULL,
  `g_rbi_bt_name` varchar(50) DEFAULT NULL,
  `v_st_pch_id` varchar(50) DEFAULT NULL,
  `v_st_pch_name` varchar(50) DEFAULT NULL,
  `h_st_pch_id` varchar(50) DEFAULT NULL,
  `h_st_pch_name` varchar(50) DEFAULT NULL,
  `v_st_pl1_id` varchar(50) DEFAULT NULL,
  `v_st_pl1_name` varchar(50) DEFAULT NULL,
  `v_pl1_def_pos` int DEFAULT NULL,
  `v_st_pl2_id` varchar(50) DEFAULT NULL,
  `v_st_pl2_name` varchar(50) DEFAULT NULL,
  `v_pl2_def_pos` int DEFAULT NULL,
  `v_st_pl3_id` varchar(50) DEFAULT NULL,
  `v_st_pl3_name` varchar(50) DEFAULT NULL,
  `v_pl3_def_pos` int DEFAULT NULL,
  `v_st_pl4_id` varchar(50) DEFAULT NULL,
  `v_st_pl4_name` varchar(50) DEFAULT NULL,
  `v_pl4_def_pos` int DEFAULT NULL,
  `v_st_pl5_id` varchar(50) DEFAULT NULL,
  `v_st_pl5_name` varchar(50) DEFAULT NULL,
  `v_pl5_def_pos` int DEFAULT NULL,
  `v_st_pl6_id` varchar(50) DEFAULT NULL,
  `v_st_pl6_name` varchar(50) DEFAULT NULL,
  `v_pl6_def_pos` int DEFAULT NULL,
  `v_st_pl7_id` varchar(50) DEFAULT NULL,
  `v_st_pl7_name` varchar(50) DEFAULT NULL,
  `v_pl7_def_pos` int DEFAULT NULL,
  `v_st_pl8_id` varchar(50) DEFAULT NULL,
  `v_st_pl8_name` varchar(50) DEFAULT NULL,
  `v_pl8_def_pos` int DEFAULT NULL,
  `v_st_pl9_id` varchar(50) DEFAULT NULL,
  `v_st_pl9_name` varchar(50) DEFAULT NULL,
  `v_pl9_def_pos` int DEFAULT NULL,
  `h_st_pl1_id` varchar(50) DEFAULT NULL,
  `h_st_pl1_name` varchar(50) DEFAULT NULL,
  `h_pl1_def_pos` int DEFAULT NULL,
  `h_st_pl2_id` varchar(50) DEFAULT NULL,
  `h_st_pl2_name` varchar(50) DEFAULT NULL,
  `h_pl2_def_pos` int DEFAULT NULL,
  `h_st_pl3_id` varchar(50) DEFAULT NULL,
  `h_st_pl3_name` varchar(50) DEFAULT NULL,
  `h_pl3_def_pos` int DEFAULT NULL,
  `h_st_pl4_id` varchar(50) DEFAULT NULL,
  `h_st_pl4_name` varchar(50) DEFAULT NULL,
  `h_pl4_def_pos` int DEFAULT NULL,
  `h_st_pl5_id` varchar(50) DEFAULT NULL,
  `h_st_pl5_name` varchar(50) DEFAULT NULL,
  `h_pl5_def_pos` int DEFAULT NULL,
  `h_st_pl6_id` varchar(50) DEFAULT NULL,
  `h_st_pl6_name` varchar(50) DEFAULT NULL,
  `h_pl6_def_pos` int DEFAULT NULL,
  `h_st_pl7_id` varchar(50) DEFAULT NULL,
  `h_st_pl7_name` varchar(50) DEFAULT NULL,
  `h_pl7_def_pos` int DEFAULT NULL,
  `h_st_pl8_id` varchar(50) DEFAULT NULL,
  `h_st_pl8_name` varchar(50) DEFAULT NULL,
  `h_pl8_def_pos` int DEFAULT NULL,
  `h_st_pl9_id` varchar(50) DEFAULT NULL,
  `h_st_pl9_name` varchar(50) DEFAULT NULL,
  `h_pl9_def_pos` int DEFAULT NULL,
  `htbf` varchar(50) DEFAULT NULL,
  `acq` varchar(50) DEFAULT NULL,
  `id` mediumint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205027 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




DROP TABLE IF EXISTS v_win_table;
CREATE TABLE IF NOT EXISTS v_win_table AS (
select
res.v_win_val FROM (
SELECT *,
    CASE
        WHEN g_rbi_bt_id IS NULL OR g_rbi_bt_id = '' THEN NULL
        WHEN (
            IF(v_st_pl1_id = g_rbi_bt_id, 1, 0) +
            IF(v_st_pl2_id = g_rbi_bt_id, 1, 0) +
            IF(v_st_pl3_id = g_rbi_bt_id, 1, 0) +
            IF(v_st_pl4_id = g_rbi_bt_id, 1, 0) +
            IF(v_st_pl5_id = g_rbi_bt_id, 1, 0) +
            IF(v_st_pl6_id = g_rbi_bt_id, 1, 0) +
            IF(v_st_pl7_id = g_rbi_bt_id, 1, 0) +
            IF(v_st_pl8_id = g_rbi_bt_id, 1, 0) +
            IF(v_st_pl9_id = g_rbi_bt_id, 1, 0)
        ) = 1 THEN 1
        ELSE 0
    END AS v_win_val
FROM capstone.gamelogs gl) res);

alter table v_win_table add v_win_id mediumint not null auto_increment primary key;

alter table capstone.gamelogs add id  mediumint not null auto_increment primary key;