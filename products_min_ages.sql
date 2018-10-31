SELECT id,
       min(CASE WHEN gender = 'Male' THEN age ELSE NULL END) min_male_age,
       min(CASE WHEN gender = 'Female' THEN age ELSE NULL END) min_female_age
FROM products
GROUP BY id;