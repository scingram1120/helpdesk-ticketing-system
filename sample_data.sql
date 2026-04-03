-- Sample users
INSERT INTO users (name, department, email) VALUES
('Johnny Cash', 'Kinship', 'cash.johnny@company.org'),
('Michael Kors', 'Design Operations', 'kors.michael@company.org'),
('Shannon Ingram', 'Operations', 'ingram.shannon@company.org'),
('Cristiano Versace', 'Design Operations', 'versace.cristiano@company.org'),
('Thelma Evans', 'Customer Service', 'evans.thelma@company.org');

-- Sample tickets
INSERT INTO tickets (user_id, issue_category, priority, description, status) VALUES
(1, 'Network', 'High', 'User unable to connect to Wi-Fi; no internet access on device', 'Resolved'),
(2, 'Performance', 'Medium', 'User reports computer is running slow, applications take too long to open, and system performance is delayed', 'Resolved'),
(3, 'Account Access', 'High', 'User unable to log in after multiple failed password attempts; account appears locked', 'Resolved'),
(4, 'Email', 'Medium', 'User reports email is not syncing and new messages are not appearing in inbox', 'Resolved'),
(5, 'Hardware Support', 'Medium', 'User reports printer is offline and documents are not printing', 'Resolved');

-- Ticket 1 updates: Network
INSERT INTO ticket_updates (ticket_id, update_note) VALUES
(1, 'Confirmed user could not access any websites or online services'),
(1, 'Verified Wi-Fi was enabled on the device'),
(1, 'Confirmed the device was connected to the correct wireless network'),
(1, 'Instructed user to restart both the device and router'),
(1, 'Tested connection again after restart'),
(1, 'User confirmed internet access was restored');

-- Ticket 2 updates: Performance
INSERT INTO ticket_updates (ticket_id, update_note) VALUES
(2, 'Confirmed symptoms with the user'),
(2, 'Checked available storage'),
(2, 'Reviewed running applications and processes'),
(2, 'Identified high resource usage'),
(2, 'Restarted device'),
(2, 'Confirmed improved performance');

-- Ticket 3 updates: Account Access
INSERT INTO ticket_updates (ticket_id, update_note) VALUES
(3, 'Verified user identity before making account changes'),
(3, 'Confirmed the user was receiving an account lockout message at login'),
(3, 'Checked whether Caps Lock or incorrect password entry may have caused repeated failed attempts'),
(3, 'Unlocked the user account in the system'),
(3, 'Initiated password reset and provided temporary credentials'),
(3, 'Instructed user to sign in and change the temporary password immediately'),
(3, 'User confirmed account access was restored successfully');

-- Ticket 4 updates: Email
INSERT INTO ticket_updates (ticket_id, update_note) VALUES
(4, 'Confirmed user was able to open the email application but inbox was not updating'),
(4, 'Checked internet connectivity to rule out a network issue'),
(4, 'Verified account settings and confirmed the correct email account was configured'),
(4, 'Removed and re-added the email account to refresh synchronization settings'),
(4, 'Restarted the email application and tested mailbox sync'),
(4, 'User confirmed new emails were syncing successfully');

-- Ticket 5 updates: Hardware Support
INSERT INTO ticket_updates (ticket_id, update_note) VALUES
(5, 'Confirmed printer showed as offline on the user device'),
(5, 'Checked printer power and network connection status'),
(5, 'Cleared stuck items from the print queue'),
(5, 'Restarted the printer and reconnected it to the network'),
(5, 'Sent a test print to verify functionality'),
(5, 'User confirmed printer was working normally');
