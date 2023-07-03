SELECT h.hacker_id, h.name FROM Submissions AS s
INNER JOIN Hackers AS h ON s.hacker_id = h.hacker_id
INNER JOIN Challenges AS c ON s.challenge_id = c.challenge_id
INNER JOIN Difficulty AS d ON c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING COUNT(CASE WHEN s.score = d.score THEN 1 ELSE NULL END) > 1
ORDER BY COUNT(CASE WHEN s.score = d.score THEN 1 ELSE NULL END) DESC, h.hacker_id ASC