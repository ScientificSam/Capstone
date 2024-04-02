# Capstone Project
Baseball Analytics

# Problem Statement

Could we predict who will win the future scheduled baseball games, solely based on physical features of the scheduled baseball game?

Could we predict the score based on ongoing game? What are the top 10 features to predict the team score?



# Proposed Vision

Based on the physical aspects like the ballpark location, game type, day night, attendance, the players heights, weights and using game logs, build a machine learning model to predict the visting team score.



# About the data

The data was taken from `retrosheet.org` website. The unzipped version of this data conatins bot the `Negro League Data` and `MLB Data`. 


* All data goes into the `data` folder and subfolders. The `Data` folder contains all of the unzipped version of data arranged in different folders and structures. This data exist in `txt`, `csv`, `eve`, `ros` file formats.

* All the jupyter notebooks goes into `Notebooks` folder.

* All the SQL code for preprocessing the data goes into `SQL` folder.

* All code goes into the `src` folder and subfolders.

* All the other folders are *Subject to change*.



# Package management

I will provide my `env.yml` conda file to reproduce this project.




# Getting started

* Clone this `repo`.
* Create a new anaconda environemnt by specifying the `env.yml` in this repository.



# Data Engineering

<div style="text-align": justify>
In the given data `ngldata` in the data folder has lot more features to build a machine laerning model than the data outsdie of this folder. We can treat this outside data as major league baseball `mlb` data.  MLB data has less number of features than the `nglata` and the only data that seems to be useful is the `gamelogs` and `biofile`. here we are going with `mlb` data because the data is new and it has lot more years of data in the gamelogs.
</div>



Our goal is here to build the data, that we are intrested in using this raw `mlb` data. The final data will be in a mysql view, to import into panads for the data analysis.

In the `SQL` folder, I provided the mysql querys, to have the data in a view called `gm_logs`.

Here are the steps involved in creating the view `gm_log`. This view contains the visting team offensive statistics (Batting) and the home team defensive statistics (Pitching and Fielding). 

* Map the field names in the `index.html`  to the .csv files
* Import all .csv files into the `gamelogs` table, using the `Dbeaver` tool's import data wizard for mysql connection.
* Import the `biofile.csv` into the biofile table, using the `Dbeaver` tool's import data wizard for MySql connection.
* create a caluclated field called `v_win_val` to store, if the visting team win or lose, based on the MySql querys. create a table called `v_win_table`.
* create a `player_bio` table to store, all 9 visting players heights, weights, how they bat and throw by using MySql query.
* create a `gm_log` view to combine all this data using joins. MySql
 querys are in the `SQL` folder.



# Baseball Eulogy

* `at-bats` &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp; : &nbsp;&nbsp; A batter's turn batting against a pitcher.
* `hits`    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; : &nbsp;&nbsp;  Single, Double, Triple, Homerun.
* `rbi`   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;   : &nbsp;&nbsp; A batter for making a play that allows a run to be scored.
* `individual earned runs` &nbsp;&emsp; : &nbsp;&nbsp; Runs scored because of the pitcher's pitch alone.
* `errors`  &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; : &nbsp;&nbsp; Fielding errors, Throwing errors, Catcher's interference, Pitcher's errors.
* `Team earned runs` &emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;  : &nbsp;&nbsp; Sum of all earned runs by the batter due to pitchers pitch.
* `walks` &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; : &nbsp;&nbsp; A batter without hitting pitch, goes to base and becoms a base runner due to pitcher's pitch.
* `Left on base` &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; : &nbsp;&nbsp; number of baserunners who are still on base when there is a third out.



# Building models and evaluating

Our aim here is to predict the game win or lose, but the game win or lose depends upon the team score. If we have one team scoring more over the the other team, then the team with highest score wins.


### Let's first build a model on physical features

After building Logistic and Linear Regression model, Solely based on physical features, In logistic regression (Traget variable as win or lose), we have 50% accuracy. For the linear regression (Traget variable is the team score), we got negative mean squared errors and an R<sup>2</sup> value of 0.02 which is not good at all.

Even though the stats model shows, the physical features are statstically significant, they have no predictive power, on guessing the game win or lose or guessing the team score.

### Build a model based on on-going game

After building a random forest regressor, to predict the team score, based on the features of  Home team offensive statistics and the visting team defensive statistics, we have a mean squared error of 0.21, which is somewhat good at predicting the team score.

The top 10 features that determine the team score is

* v_rbi &emsp;&emsp; -- &nbsp;&nbsp; Visting team RBI.
* h_errors &nbsp;&nbsp; -- &nbsp;&nbsp; Home team errors (Defensive).
* v_hits &emsp;&nbsp;&nbsp; -- &nbsp;&nbsp; Visting team hits.
* h_in_runs &nbsp;&nbsp; -- &nbsp;&nbsp; Home team Indvidual earned runs (Pitching).
* h_er_runs &nbsp;&nbsp; -- &nbsp;&nbsp; Home team earned runs (Pitching).
* v_walks &emsp;&nbsp;&nbsp; -- &nbsp;&nbsp; Visting team walks.
* v_lft_base &nbsp;&nbsp; -- &nbsp;&nbsp; Visting team left on bases.
* len_game &nbsp;&nbsp; -- &nbsp;&nbsp; Number of innings.
* attendance &nbsp;&nbsp; -- &nbsp;&nbsp; The number of the people attended.
* len_min &nbsp;&nbsp; -- &nbsp;&nbsp; Length of the game in minutes.

