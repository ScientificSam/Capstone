-- Add a new column v_win_val to the gamelogs table
ALTER TABLE capstone.gamelogs
ADD COLUMN v_win_val INT NULL; -- Assuming v_win_val is of type INT and can contain NULL values

-- Update the v_win_val column based on the conditions
UPDATE capstone.gamelogs
SET v_win_val = CASE
    WHEN vscore IS NULL OR hscore IS NULL THEN NULL  -- Check for null in either score
    WHEN vscore > hscore THEN 1
    WHEN vscore < hscore THEN 0
    ELSE NULL
END;


alter table capstone.gamelogs add id  mediumint not null auto_increment primary key;

alter table capstone.biofile add height_cms integer;

update capstone.biofile set height_cms = (select ((substring(HEIGHT,1,1)*12) + (round(SUBSTR(height, LOCATE('-', height) +  1))))*2.54)

UPDATE capstone.biofile SET Birthdate = TRIM(Birthdate); 

ALTER TABLE capstone.biofile ADD COLUMN birthdate_temp DATE;

UPDATE capstone.biofile 
SET birthdate_temp =  CASE 
                      WHEN Birthdate = '' THEN NULL  -- Empty strings
                      WHEN LENGTH(Birthdate) < 10 THEN NULL  -- Invalid (too short)
                      WHEN Birthdate NOT LIKE '__/__/____' THEN CASE 
                                                                  WHEN Birthdate LIKE '__/--/____' THEN STR_TO_DATE(CONCAT(Birthdate, '01'), '%m/%d/%Y') -- Add default '01' day
                                                                  ELSE NULL -- Handle other invalid formats
                                                              END 
                      ELSE STR_TO_DATE(Birthdate, '%m/%d/%Y') 
                      END;