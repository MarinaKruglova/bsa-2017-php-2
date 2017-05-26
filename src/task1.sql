SELECT 
    u.first_name,
    u.last_name,
    u.age,
    SUM(t.price) price,
    COUNT(*) tickets_amount
FROM
    users AS u
        INNER JOIN
    bookings AS b ON b.user_id = u.id
        INNER JOIN
    tickets AS t ON t.id = b.ticket_id
WHERE
    u.age > 25
GROUP BY b.user_id
HAVING SUM(t.price) > 400;