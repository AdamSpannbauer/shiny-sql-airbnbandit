<p align="right">
  <img src="../www/md_imgs/hoodie-hacker-laptop.png" width="35%" style = "border-radius:10px" align="right">
</p>

## AirbnBandit SQL hunt

<div style="width:60%;">
<pre>

WANTED: AirbnBandit

For crimes against the city of Asheville.

The suspect should be assumed to be dangerous and
armed with the knowledge of Bayesian statistics.
</pre>
</div>

### Background

A crime was committed in Asheville, NC.  The cyber criminal was a major user of Airbnb to avoid staying in one spot or using the same IP address for too long.

Your job is to scour for clues in a database holding all of the Airbnb listings in Asheville.  Some of our other detectives' intel will help guide your investigation.

### Where you come in

Each clue will lead you to a **listing ID AND a letter**.  This information will allow you to log on to the AirbnBandit's computer to help us gather the last pieces of evidence we need to make the charges stick.

* Username: unscramble the letters from each clue
  * The username is the bandit's last name. If George Washington was the bandit then the username would be `WASHINGTON`.
  * If I was the bandit and the clues gave you the letters: `"R", "B", "A", "N", "S", "A", "E", "U", "N", "P"` then the username would be `SPANNBAUER` (thankfully the bandit has a more common and shorter last name).
* Password: all of the listing ids in order of the clue they came from
  * If you find out the 6 listing ids are `[1, 2, 3, 4, 5, 6]` then the password would be `123456`
  * Note that the ids are more than one digit so the password will be lengthy and example of one id might be: `2615869`.  All of the ids in the password are 7 or 8 digits long.

Once you have the Username and Password try it out on the login page!!
