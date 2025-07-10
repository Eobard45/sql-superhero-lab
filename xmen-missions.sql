-- Track the number of successful missions per X-Men agent
SELECT
    m.CodeName,
    COUNT(CASE WHEN ms.Outcome = 'Success' THEN 1 END) AS SuccessfulMissions
FROM
    Mutants m
JOIN
    Missions ms ON m.MutantID = ms.AgentID
GROUP BY
    m.CodeName
ORDER BY
    SuccessfulMissions DESC;
    