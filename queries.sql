-- View all tickets
SELECT * FROM tickets;

-- View all ticket updates
SELECT * FROM ticket_updates;

-- View completed ticket history with joins
SELECT
    t.ticket_id,
    u.name,
    u.department,
    t.issue_category,
    t.priority,
    t.description,
    t.status,
    t.date_opened,
    tu.update_note,
    tu.updated_at
FROM tickets t
JOIN users u ON t.user_id = u.user_id
JOIN ticket_updates tu ON t.ticket_id = tu.ticket_id
ORDER BY t.ticket_id, tu.updated_at;
