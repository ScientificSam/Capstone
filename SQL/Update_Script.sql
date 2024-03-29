alter table v_win_table add v_win_id mediumint not null auto_increment primary key;

alter table capstone.gamelogs add id  mediumint not null auto_increment primary key;

alter table capstone.biofile add height_cms integer;

update capstone.biofile set height_cms = (select ((substring(HEIGHT,1,1)*12) + (round(SUBSTR(height, LOCATE('-', height) +  1))))*2.54)

