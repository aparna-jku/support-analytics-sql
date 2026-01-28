-- SLA Breach Analysis by Country
SELECT
  c.country,
  COUNT(*) AS total_tickets,
  SUM(CASE WHEN t.sla_breached THEN 1 ELSE 0 END) AS sla_breaches
FROM tickets t
JOIN customers c ON t.customer_id = c.customer_id
GROUP BY c.country
ORDER BY sla_breaches DESC;

-- Average Resolution Time by Product
SELECT
  p.product_name,
  ROUND(AVG(t.resolution_time_minutes), 2) AS avg_resolution_minutes
FROM tickets t
JOIN products p ON t.product_id = p.product_id
GROUP BY p.product_name
ORDER BY avg_resolution_minutes DESC;

-- Agent Performance
SELECT
  a.experience_level,
  COUNT(*) AS tickets_handled,
  ROUND(AVG(t.resolution_time_minutes), 2) AS avg_resolution_minutes
FROM tickets t
JOIN support_agents a ON t.agent_id = a.agent_id
GROUP BY a.experience_level;
