-- Sample CRM Data

INSERT INTO customers (customer_type, country) VALUES
('B2B', 'Germany'),
('B2C', 'Austria'),
('B2C', 'Netherlands'),
('B2B', 'France'),
('B2C', 'Spain');

INSERT INTO products (product_name, product_category) VALUES
('Photoshop', 'Design'),
('Illustrator', 'Design'),
('Premiere Pro', 'Video'),
('After Effects', 'Video'),
('Acrobat', 'PDF');

INSERT INTO issue_categories (issue_type) VALUES
('Installation'),
('Licensing'),
('Crash'),
('Performance'),
('Account Access');

INSERT INTO support_agents (region, experience_level) VALUES
('Europe', 'Senior'),
('Europe', 'Junior'),
('Global', 'Senior');

INSERT INTO tickets (
  customer_id, product_id, issue_id, agent_id,
  priority, created_at, resolved_at,
  resolution_time_minutes, sla_breached
) VALUES
(1, 1, 3, 1, 'High', NOW() - INTERVAL '2 days', NOW() - INTERVAL '1 day', 1440, TRUE),
(2, 2, 1, 2, 'Medium', NOW() - INTERVAL '1 day', NOW(), 720, FALSE),
(3, 3, 4, 1, 'Low', NOW() - INTERVAL '3 days', NOW() - INTERVAL '2 days', 1440, TRUE),
(4, 5, 2, 3, 'High', NOW() - INTERVAL '5 hours', NOW(), 300, FALSE);

