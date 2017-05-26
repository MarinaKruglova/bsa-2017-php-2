SELECT 
    *
FROM
    users AS u
WHERE
    u.id NOT IN (SELECT DISTINCT
            b.user_id
        FROM
            bookings AS b
                INNER JOIN
            tickets AS t ON b.ticket_id = t.id
                INNER JOIN
            users AS u2 ON b.user_id = u2.id
        WHERE
            t.country = 'Aruba');