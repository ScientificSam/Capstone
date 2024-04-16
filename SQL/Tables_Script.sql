
DROP TABLE IF EXISTS gamelogs;

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


ALTER TABLE gamelogs ADD INDEX (v_st_pl1_id), ADD INDEX (v_st_pl2_id), ADD INDEX (v_st_pl3_id), ADD INDEX (v_st_pl4_id), ADD INDEX (v_st_pl5_id), ADD INDEX (v_st_pl6_id), ADD INDEX (v_st_pl7_id), ADD INDEX (v_st_pl8_id), ADD INDEX (v_st_pl9_id), ADD INDEX (playdate);


DROP TABLE IF EXISTS biofile;

-- capstone.biofile definition
CREATE TABLE `biofile` (
  `PLAYERID` varchar(50) DEFAULT NULL,
  `LAST` varchar(50) DEFAULT NULL,
  `FIRST` varchar(50) DEFAULT NULL,
  `NICKNAME` varchar(50) DEFAULT NULL,
  `BIRTHDATE` varchar(50) DEFAULT NULL,
  `BIRTH.CITY` varchar(50) DEFAULT NULL,
  `BIRTH.STATE` varchar(50) DEFAULT NULL,
  `BIRTH.COUNTRY` varchar(50) DEFAULT NULL,
  `PLAY.DEBUT` varchar(50) DEFAULT NULL,
  `PLAY.LASTGAME` varchar(50) DEFAULT NULL,
  `MGR.DEBUT` varchar(50) DEFAULT NULL,
  `MGR.LASTGAME` varchar(50) DEFAULT NULL,
  `COACH.DEBUT` varchar(50) DEFAULT NULL,
  `COACH.LASTGAME` varchar(50) DEFAULT NULL,
  `UMP.DEBUT` varchar(50) DEFAULT NULL,
  `UMP.LASTGAME` varchar(50) DEFAULT NULL,
  `DEATHDATE` varchar(50) DEFAULT NULL,
  `DEATH.CITY` varchar(50) DEFAULT NULL,
  `DEATH.STATE` varchar(50) DEFAULT NULL,
  `DEATH.COUNTRY` varchar(50) DEFAULT NULL,
  `BATS` varchar(50) DEFAULT NULL,
  `THROWS` varchar(50) DEFAULT NULL,
  `HEIGHT` varchar(50) DEFAULT NULL,
  `WEIGHT` int DEFAULT NULL,
  `CEME.CITY` varchar(50) DEFAULT NULL,
  `CEME.STATE` varchar(50) DEFAULT NULL,
  `CEME.COUNTRY` varchar(50) DEFAULT NULL,
  `BIRTH.NAME` varchar(50) DEFAULT NULL,
  `NAME.CHG` varchar(50) DEFAULT NULL,
  `BAT.CHG` varchar(50) DEFAULT NULL,
  `HOF` varchar(50) DEFAULT NULL,
  `height_cms` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



DROP TABLE IF EXISTS player_bio;
-- capstone.player_bio definition
CREATE TABLE `player_bio` (
  `ID` mediumint NOT NULL AUTO_INCREMENT,
  `player_bats` varchar(255) DEFAULT NULL,
  `player_throws` varchar(255) DEFAULT NULL,
  `player_heights` text,
  `player_weights` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=421697 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE biofile ADD INDEX (playerid);


-- The below resultset will go into the player_bio table as player_weights, player_heights, player_bats,player_throws  ------
SELECT
       (SELECT GROUP_CONCAT(p.weight SEPARATOR ',')
        FROM capstone.biofile AS p
        WHERE f.v_st_pl1_id = p.playerid
          OR f.v_st_pl2_id = p.playerid
          OR f.v_st_pl3_id = p.playerid
          OR f.v_st_pl4_id = p.playerid
          OR f.v_st_pl5_id = p.playerid
          OR f.v_st_pl6_id = p.playerid
          OR f.v_st_pl7_id = p.playerid
          OR f.v_st_pl8_id = p.playerid
          OR f.v_st_pl9_id = p.playerid) AS player_weights,
       /* ... Indicator line ... */          
          (SELECT GROUP_CONCAT(p.height_cms SEPARATOR ',')
        FROM capstone.biofile AS p
        WHERE f.v_st_pl1_id = p.playerid
          OR f.v_st_pl2_id = p.playerid
          OR f.v_st_pl3_id = p.playerid
          OR f.v_st_pl4_id = p.playerid
          OR f.v_st_pl5_id = p.playerid
          OR f.v_st_pl6_id = p.playerid
          OR f.v_st_pl7_id = p.playerid
          OR f.v_st_pl8_id = p.playerid
          OR f.v_st_pl9_id = p.playerid) AS player_heights,
          (SELECT GROUP_CONCAT(p.bats SEPARATOR ',')
        FROM capstone.biofile AS p
        WHERE f.v_st_pl1_id = p.playerid
          OR f.v_st_pl2_id = p.playerid
          OR f.v_st_pl3_id = p.playerid
          OR f.v_st_pl4_id = p.playerid
          OR f.v_st_pl5_id = p.playerid
          OR f.v_st_pl6_id = p.playerid
          OR f.v_st_pl7_id = p.playerid
          OR f.v_st_pl8_id = p.playerid
          OR f.v_st_pl9_id = p.playerid) AS player_bats,
          (SELECT GROUP_CONCAT(p.throws SEPARATOR ',')
        FROM capstone.biofile AS p
        WHERE f.v_st_pl1_id = p.playerid
          OR f.v_st_pl2_id = p.playerid
          OR f.v_st_pl3_id = p.playerid
          OR f.v_st_pl4_id = p.playerid
          OR f.v_st_pl5_id = p.playerid
          OR f.v_st_pl6_id = p.playerid
          OR f.v_st_pl7_id = p.playerid
          OR f.v_st_pl8_id = p.playerid
          OR f.v_st_pl9_id = p.playerid) AS player_throws
FROM capstone.gamelogs AS f;




-- The below resultset will go into the gamelogs table as player_ages ------

SELECT
    g.id,
    g.playdate,
    CONCAT_WS(', ',
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b1.birthdate, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b2.birthdate, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b3.birthdate, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b4.birthdate, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b5.birthdate, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b6.birthdate, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b7.birthdate, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b8.birthdate, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b9.birthdate, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL')
    ) AS player_ages
FROM
    gamelogs g
    LEFT JOIN biofile b1 ON g.v_st_pl1_id = b1.playerid
    LEFT JOIN biofile b2 ON g.v_st_pl2_id = b2.playerid
    LEFT JOIN biofile b3 ON g.v_st_pl3_id = b3.playerid
    LEFT JOIN biofile b4 ON g.v_st_pl4_id = b4.playerid
    LEFT JOIN biofile b5 ON g.v_st_pl5_id = b5.playerid
    LEFT JOIN biofile b6 ON g.v_st_pl6_id = b6.playerid
    LEFT JOIN biofile b7 ON g.v_st_pl7_id = b7.playerid
    LEFT JOIN biofile b8 ON g.v_st_pl8_id = b8.playerid
    LEFT JOIN biofile b9 ON g.v_st_pl9_id = b9.playerid
ORDER BY g.id;

-- The below resultset will go into the gamelogs table as player_exp ------

SELECT
    g.id,
    g.playdate,
    CONCAT_WS(', ',
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b1.`PLAY.DEBUT`, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b2.`PLAY.DEBUT`, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b3.`PLAY.DEBUT`, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b4.`PLAY.DEBUT`, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b5.`PLAY.DEBUT`, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b6.`PLAY.DEBUT`, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b7.`PLAY.DEBUT`, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b8.`PLAY.DEBUT`, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL'),
        IFNULL(TIMESTAMPDIFF(YEAR, STR_TO_DATE(b9.`PLAY.DEBUT`, '%m/%d/%Y'), STR_TO_DATE(g.playdate, '%Y-%m-%d')), 'NULL')
    ) AS player_exp
FROM
    gamelogs g
    LEFT JOIN biofile b1 ON g.v_st_pl1_id = b1.playerid
    LEFT JOIN biofile b2 ON g.v_st_pl2_id = b2.playerid
    LEFT JOIN biofile b3 ON g.v_st_pl3_id = b3.playerid
    LEFT JOIN biofile b4 ON g.v_st_pl4_id = b4.playerid
    LEFT JOIN biofile b5 ON g.v_st_pl5_id = b5.playerid
    LEFT JOIN biofile b6 ON g.v_st_pl6_id = b6.playerid
    LEFT JOIN biofile b7 ON g.v_st_pl7_id = b7.playerid
    LEFT JOIN biofile b8 ON g.v_st_pl8_id = b8.playerid
    LEFT JOIN biofile b9 ON g.v_st_pl9_id = b9.playerid
ORDER BY g.id;