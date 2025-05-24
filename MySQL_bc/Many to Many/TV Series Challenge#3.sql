SELECT 
    first_name, last_name, rating
FROM
    reviewers
        JOIN
    reviews ON reviews.reviewer_id = reviewers.id;