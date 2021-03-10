SELECT c1.contest_id, c1.hacker_id, c1.name
     , SUM(ss.total_submissions) AS total_submissions_sum
     , SUM(ss.total_accepted_submissions) AS total_accepted_submissions_sum
     , SUM(vs.total_views) AS total_views_sum
     , SUM(vs.total_unique_views) AS total_unique_views_sum
  FROM contests AS c1
       JOIN colleges AS c2
       ON c1.contest_id = c2.contest_id
       JOIN challenges AS c3
       ON c2.college_id = c3.college_id
       LEFT JOIN (SELECT challenge_id
                       , SUM(total_views) AS total_views
                       , SUM(total_unique_views) AS total_unique_views
                    FROM view_stats
                   GROUP BY challenge_id
                 ) AS vs
       ON c3.challenge_id = vs.challenge_id
       LEFT JOIN (SELECT challenge_id
                       , SUM(total_submissions) AS total_submissions
                       , SUM(total_accepted_submissions) AS total_accepted_submissions
                    FROM submission_stats
                   GROUP BY challenge_id
                 ) AS ss
       ON c3.challenge_id = ss.challenge_id
 GROUP BY c1.contest_id, c1.hacker_id, c1.name
HAVING total_submissions_sum != 0 
       AND total_accepted_submissions_sum != 0
       AND total_views_sum != 0
       AND total_unique_views_sum != 0
 ORDER BY c1.contest_id
;
