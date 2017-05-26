SELECT DISTINCT
    u.id, u.first_name, u.last_name, u.age
FROM
    bookings AS b
        INNER JOIN
    users AS u ON u.id = b.user_id;