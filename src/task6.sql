SELECT 
    u.first_name, u.last_name, u.age
FROM
    bookings AS b
        INNER JOIN
    tickets AS t ON b.ticket_id = t.id
        INNER JOIN
    users AS u ON b.user_id = u.id
WHERE
    t.title = 'Lagos';