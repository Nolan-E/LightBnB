SELECT properties.*, avg(property_reviews.rating) AS average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE properties.city LIKE '%ancouve%'
GROUP BY properties.id, properties.title
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;
