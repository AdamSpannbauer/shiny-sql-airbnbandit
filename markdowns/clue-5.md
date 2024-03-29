<p align="right">
  <img src="../www/md_imgs/detective-thinking-vaporwave.png" width="30%" style = "border-radius:10px" align="right">
</p>

<div width="60%">

## Clue 5

We have intel that our perp stayed in a great spot for New Years Day 2020 and couldn't help but leave a review on that same exact day. We also received a tip that they went by the false name "Amy" when leaving this review.

Find the above described review in the `reviews` table, and then find the first *character* of the `name` of the associated listing as a clue (spaces and symbols count as characters).

Use the `listings` and `reviews` tables.

The intended solution involves a [subquery](https://sqlbolt.com/topic/subqueries), but it can be solved in pieces.

<hr align="left" width="60%">

*Dates are stored as character; if you want to do SQL date operations (not needed here), you'll need to cast to date

<hr align="left" width="60%">

Make sure to write down the `id` of the Airbnb listing and the first character of the `name`!

</div>
