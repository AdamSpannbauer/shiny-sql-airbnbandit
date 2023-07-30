<p align="right">
  <img src="../www/md_imgs/handcuffs.png" width="30%" style = "border-radius:10px" align="right">
</p>

<div width="60%">

## Clue 6

We're nearing in on our ne'er-do-well.  With them getting spooked they decided to flee to the most popular area in Asheville.  We also received intel that they're specifically after the messiest place so they can hide their tracks.

Find out which zip code\* is the most popular\*\* and then find the listing with the lowest rated cleanliness\*\*\*.  Take the third *character* of the `name` as a clue (spaces and symbols count as characters).

Use the `listings` table.

The intended solution involves a [subquery](https://sqlbolt.com/topic/subqueries), but it can be solved in pieces.

<hr align="left" width="60%">

\*`neighbourhood_cleansed` column holds the zip code

\*\*use the number of listings as a measure of the zip code popularity

\*\*\*don't consider listings without any reviews.

<hr align="left" width="60%">

Make sure to write down the `id` of the Airbnb listing and the third character of the `name`!

</div>