CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    issue_category VARCHAR(100),
    priority VARCHAR(20),
    description TEXT,
    status VARCHAR(20),
    date_opened TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ticket_updates (
    update_id SERIAL PRIMARY KEY,
    ticket_id INT REFERENCES tickets(ticket_id),
    update_note TEXT,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
