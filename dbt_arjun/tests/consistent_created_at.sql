SELECT 
    *
FROM
    {{ ref("fct_reviews") }} a
JOIN
    {{ ref("dim_listings_cleansed") }} b
ON a.LISTING_ID = b.LISTING_ID
WHERE
    a.REVIEW_DATE < b.CREATED_AT
LIMIT 10