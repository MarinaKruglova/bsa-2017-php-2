UPDATE users AS u
        LEFT JOIN
    bookings AS b ON b.user_id = u.id 
SET 
    u.is_deleted = 1
WHERE
    b.ticket_id IS NULL;