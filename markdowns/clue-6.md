## Clue 6

We're nearing in on our ne'er-do-well.  With them getting spooked they decided to flee to the most popular area in Asheville.  We also received intel that they're specifically after the messiest place so they can hide their tracks.

Find out which zip code\* is the most popular\*\* and then find the listing with the lowest rated cleanliness\*\*\*.  Take the third character of the `name` as a clue.

Use the `listings` table.

The intended solution involves a [subquery](https://sqlbolt.com/topic/subqueries), but it can be solved in pieces.

----

\*`neighbourhood_cleansed` column holds the zip code

\*\*use the number of listings as a measure of the zip code popularity

\*\*\*don't consider listings without any reviews.

---

Make sure to write down the `id` of the Airbnb listing and the third character of the `name`!