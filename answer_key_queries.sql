SELECT *
FROM listings
ORDER BY id
LIMIT 1;
-- Listing ID: 108061
-- Letter: T

SELECT id, name, host_name, host_since
FROM listings
ORDER BY host_since, id
LIMIT 1;
-- Listing ID: 15995355
-- Letter: V

SELECT id, host_name, neighbourhood_cleansed, name
FROM listings
WHERE neighbourhood_cleansed = 28805
  AND host_name = 'Kelsey';
-- Listing ID: 2605869
-- Letter: E

SELECT id, name, latitude, longitude, instant_bookable
FROM listings
WHERE instant_bookable = 't'
ORDER BY latitude, longitude
LIMIT 1;
-- Listing ID: 53888838
-- Letter 1: N
-- Letter 2: E

SELECT id, name
FROM listings
WHERE id = (SELECT listing_id
            FROM reviews
            WHERE review_date = '2020-01-01'
              AND reviewer_name = 'Amy');
-- Listing ID: 23254729
-- Letter: S

SELECT *
FROM listings
WHERE neighbourhood_cleansed = (SELECT neighbourhood_cleansed
                                FROM listings
                                GROUP BY neighbourhood_cleansed
                                ORDER BY COUNT(*) DESC
                                LIMIT 1)
  AND number_of_reviews > 0
ORDER BY review_scores_cleanliness
LIMIT 1;
-- Listing ID: 33098499
-- Letter: S
