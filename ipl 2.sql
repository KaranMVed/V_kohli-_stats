SELECT
    bbb.bowler,
    COUNT(CASE WHEN bbb.batsman_runs = '4' THEN 1 END) AS TotalFours,
    COUNT(CASE WHEN bbb.batsman_runs = '6' THEN 1 END) AS TotalSixes
FROM
    dbo.[IPL Ball-by-Ball 2008-2020] AS bbb
INNER JOIN
    dbo.[IPL Matches 2008-2020] AS matches
    ON bbb.id = matches.id
WHERE
    matches.date > '2016-12-31'
    AND bbb.batsman = 'V Kohli'
GROUP BY
    bbb.bowler;
