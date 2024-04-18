# Capstone Project
Baseball Analytics

# Problem Statement

Could we predict the game win/lose or team score based on the scheduled game information and the player's physical attributes?

What are the top 10 features that affect the score in a baseball game in general?

Are there any similarities between teams in terms of offensive and defensive stats?

Do the factors that affect the score will change from team to team based on the opponent team?



# Proposed Vision

Explore the attributes of the scheduled game and the physical attributes of the players, and design a model to predict the team score or team win/lose.  Build a machine learning model to predict the top features that affect the team score, based on the offensive, pitching, and defensive measures from the given game logs. The Impact here is to know what to concentrate on before going to the game based on the top features, that affect the team score and in turn effects the win/loss.



# About the data

The data was taken from `retrosheet.org` website. The unzipped version of this data contains both the `Negro League Data` and `MLB Data`. 


* All data goes into the `data` folder and subfolders. The `Data` folder contains all of the unzipped versions of data arranged in different folders and structures. This data exist in `txt`, `csv`, `eve`, `ros` file formats.

* All the Jupyter notebooks go into `Notebooks` folder.

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
In the given data `ngldata` in the data folder has a lot more features to build a machine learning model than the data outside of this folder. We can treat this outside data as major league baseball `mlb` data.  MLB data has less number of features than the `ngldata` and the only data that seems to be useful is the `gamelogs` and `biofile`. here we are going with `mlb` data because the data is new and it has a lot more years of data in the game logs.
</div>


Our goal is here to build the data, that we are interested in using this raw `mlb` data. The final data will be in a mysql view, to import into pandas for the data analysis.

In the `SQL` folder, I provided the mysql queries, to have the data in a view called `gm_logs`.

Here are the steps involved in creating the view `gm_log`. This view contains the visiting team's offensive statistics (Batting) and the home team's defensive statistics (Pitching and Fielding). 

* Map the field names in the `index.html`  to the .csv files
* Import all .csv files into the `gamelogs` table, using the `Dbeaver` tool's import data wizard for MySQL connection.
* Import the `biofile.csv` into the biofile table, using the `Dbeaver` tool's import data wizard for MySql connection.
* Create a calculated field called `v_win_val` to store, if the visiting team wins or loses, based on the MySql queries. create a table called `v_win_table`.
* Create a `player_bio` table to store, all 9 visiting player's heights, weights, and how they bat and throw by using MySql query.
* Create a `gm_log` view to combine all this data using joins. MySql
 queries are in the `SQL` folder.



# Baseball Terminology

* `at-bats` &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp; : &nbsp;&nbsp; A batter's turn batting against a pitcher.
* `hits`    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; : &nbsp;&nbsp;  Single, Double, Triple, Homerun.
* `rbi`   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;   : &nbsp;&nbsp; A batter for making a play that allows a run to be scored.
* `individual earned runs` &nbsp;&emsp; : &nbsp;&nbsp; Runs scored because of the pitcher's pitch alone.
* `errors`  &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; : &nbsp;&nbsp; Fielding errors, Throwing errors, Catcher's interference, Pitcher's errors.
* `Team earned runs` &emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;  : &nbsp;&nbsp; Sum of all earned runs by the batter due to pitchers pitch.
* `walks` &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; : &nbsp;&nbsp; A batter without hitting pitch, goes to base and becoms a base runner due to pitcher's pitch.
* `Left on base` &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; : &nbsp;&nbsp; number of baserunners who are still on base when there is a third out.



# Building models and evaluating

Our aim here is to predict the game win or lose, but the game win or lose depends upon the team score. If we have one team scoring more the the other team, then the team with the highest score wins.


### Let's first build a model on physical features

After building a Logistic and Linear Regression model, Solely based on physical features, In logistic regression (Target variable as win or lose), we have 50% accuracy. For the linear regression (the Target variable is the team score), we got negative mean squared errors and an R<sup>2</sup> value of 0.004 which is not good at all.

Even though the stats model shows, the physical features are statistically significant, they have no predictive power, on guessing the game win or lose or guessing the team score.

### Build a model based on offensive and defensive stats

After building a random forest regressor, to predict the team score, based on the features of the Home team's offensive statistics and the visiting team's defensive statistics, we have an R<sup>2</sup> value of 0.47 for radom forest regression and 0.48 for gradient boosting, which is somewhat good at predicting the team score than just a stats model.

The top 10 features that determine the team score based on gardient boosting

* h_pch_used &emsp;&emsp; -- &nbsp;&nbsp; Number of pitchers used
* h_errors &emsp;&nbsp;&nbsp; -- &nbsp;&nbsp; Team Earned Runs
* v_walks &nbsp;&nbsp; -- &nbsp;&nbsp; Walk because of pitcher error
* len_min &nbsp;&nbsp; -- &nbsp;&nbsp; Length of the game in minutes
* attendance &emsp;&nbsp;&nbsp; -- &nbsp;&nbsp; Ball park attendance
* v_sf &emsp;&emsp;&emsp;&nbsp;&nbsp; -- &emsp;&nbsp;&nbsp; Sacrifice flys
* v_lft_base &nbsp;&nbsp; -- &nbsp;&nbsp; People left on bases
* h_wld_pitch &nbsp;&nbsp; -- &nbsp;&nbsp;  when pitch is so errant that the catcher is unable to control it
* v_hit_pitch &nbsp;&nbsp; -- &nbsp;&nbsp; when a batter is struck by a pitched ball without swinging at it

![Top 10 features for predicting the team score](./Images/Top%2010%20Features%20CPU.png)


### Neural Networks

The accuracy is at present 72%. The Top 10 features for predicting the team score according to Neural Netwroks.

![Top 10 features for predicting the team score according to Neural Netwroks](./Images/Top%2010%20features%20NN.png)

Model Training

![Model training and loss](./Images/Model%20training.png)


# Team Based analysis

### There are similarities between teams in terms of offensive and defensive stats.

![Clustering Defensive Stats](./Images/Number%20of%20clusters.png)

Here we have a bunch of selected teams and their offensive and defensive stats. After we did the K-Means clustering, we could see we could group them into 3 or 4 clusters. 

Teams when they are visting and similar in offensive stats. 

Cluster 0 : 
Chicago White Sox , Philadelphia Phillies, Pittsburgh Pirates, St. Louis Cardinals.

Cluster 1 :
Los Angeles Dodgers, Oakland Athletics, Washington Nationals.

Cluster 3 :
Boston Red Sox, New York Yankees. 

Home Teams when they are playing defensive, similar in defensive stats.

Cluster 0 :
Los Angeles Dodgers, Oakland Athletics, Washington Nationals.

Cluster 1 :
Boston Red Sox, Chicago White Sox, New York Yankees, Philadelphia Phillies, Pittsburgh Pirates, St. Louis Cardinals.


### Mets doesn't have growth in their scoring.

Yankees Time Line. The black points represents actual data points for the team score when they are visting team and the blue line with spikes represnts the timeline until the year of 2027. From 2022 is the projected team score.

![Yankees Timeline](./Images/Yankees%20Timeline.png)

Yankees Trend Line. On the x-axis we have years and on the y-axis we have avg team score.

![Yankees Trendline](./Images/Yankees%20Trendline.png)

Mets are younger team than yankees. 

![Mets Timeline](./Images/Mets%20Timeline.png)

Mets Trend Line. On the x-axis we have years and on the y-axis we have avg team score.

![Mets Trendline](./Images/Mets%20trendline.png)

### Mets are intentional about how they win

Yankees vs Mets co-relational wins, here 'NYA' is Yankees and 'NYN' is Mets.

Yankees steal more bases, do intentional walks in order to win.

When it comes to bat Yankees don't do much in order to win, they don't hit much.

<br>

Mets sacrifice more and bat more in order to win the game, instead of stealing bases and doing intentional walks.

![Yankees vs Mets Winning Co-Relations](./Images/Mets%20vs%20Yankees%20Stats.png)
