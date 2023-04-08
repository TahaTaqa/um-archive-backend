exports.getActivitesSql = {
  sql_1: ` SELECT 
    a.*,
    a.activity_id
    AS id,
    (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
    url,
    'private',
    private )  ) FROM activity_image WHERE activity_image.activity_id = a.activity_id)  AS images,
    (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
    url, 'name' , name ) ) FROM activity_file WHERE activity_file.activity_id = a.activity_id)  AS files,
    (SELECT
        COUNT(activities_has_users.user_id) 
    FROM
        activities_has_users 
    WHERE
        activities_has_users.activity_id = a.activity_id) AS participants_count,
    (SELECT
        JSON_ARRAYAGG( JSON_OBJECT( 'name',
        u.name,
        'id',
        u.user_id,
        'email',
        u.email )  )  
    FROM
        users AS u 
    WHERE
        EXISTS (
            SELECT
                1 
            FROM
                activities_has_users 
            WHERE
                (
                    activities_has_users.activity_id = a.activity_id
                ) 
                AND (
                    u.user_id = activities_has_users.user_id
                )
        )
    ) AS participants 
FROM
    activities AS a 
INNER JOIN
    activities_has_users 
        ON a.activity_id = activities_has_users.activity_id 
     
        WHERE  COALESCE(json_overlaps(department, ?), true)  AND type LIKE COALESCE(CONCAT(?,'%'),'%')
        AND (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) 
GROUP BY
    a.activity_id 
ORDER BY
    NULL`,
  sql_2: ` SELECT
    a.*,
    a.activity_id
    AS id,
    (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
    url,
    'private',
    private )  ) FROM activity_image WHERE activity_image.activity_id = a.activity_id)  AS images,
    (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
    url, 'name' , name ) ) FROM activity_file WHERE activity_file.activity_id = a.activity_id)  AS files,
    (SELECT
        COUNT(activities_has_users.user_id) 
    FROM
        activities_has_users 
    WHERE
        activities_has_users.activity_id = a.activity_id) AS participants_count,
    (SELECT
        JSON_ARRAYAGG( JSON_OBJECT( 'name',
        u.name,
        'id',
        u.user_id,
        'email',
        u.email )  )  
    FROM
        users AS u 
    WHERE
        EXISTS (
            SELECT
                1 
            FROM
                activities_has_users 
            WHERE
                (
                    activities_has_users.activity_id = a.activity_id
                ) 
                AND (
                    u.user_id = activities_has_users.user_id
                )
        )
    ) AS participants 
FROM
    activities AS a 
INNER JOIN
    activities_has_users 
        ON a.activity_id = activities_has_users.activity_id 
    
        WHERE  COALESCE(json_overlaps(department, ?), true) 
        AND type LIKE COALESCE(CONCAT(?,'%'),'%')
        AND a.start_date >= ?
        AND (title LIKE COALESCE(CONCAT(?,'%'),'%') 
        OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) 
GROUP BY
    a.activity_id 
ORDER BY
    NULL`,
  sql_3: ` SELECT
    a.*,
    a.activity_id
    AS id,
    (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
    url,
    'private',
    private )  ) FROM activity_image WHERE activity_image.activity_id = a.activity_id)  AS images,
    (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
    url, 'name' , name ) ) FROM activity_file WHERE activity_file.activity_id = a.activity_id)  AS files,
    (SELECT
        COUNT(activities_has_users.user_id) 
    FROM
        activities_has_users 
    WHERE
        activities_has_users.activity_id = a.activity_id) AS participants_count,
    (SELECT
        JSON_ARRAYAGG( JSON_OBJECT( 'name',
        u.name,
        'id',
        u.user_id,
        'email',
        u.email )  )  
    FROM
        users AS u 
    WHERE
        EXISTS (
            SELECT
                1 
            FROM
                activities_has_users 
            WHERE
                (
                    activities_has_users.activity_id = a.activity_id
                ) 
                AND (
                    u.user_id = activities_has_users.user_id
                )
        )
    ) AS participants 
FROM
    activities AS a 
INNER JOIN
    activities_has_users 
        ON a.activity_id = activities_has_users.activity_id 
       
        WHERE  COALESCE(json_overlaps(department, ?), true) 
        AND type LIKE COALESCE(CONCAT(?,'%'),'%')
        AND a.start_date >= ?
        AND a.end_date <= ?
        AND (title LIKE COALESCE(CONCAT(?,'%'),'%') 
        OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) 
GROUP BY
    a.activity_id 
ORDER BY
    NULL`,

  user_sql_1: `SELECT 
  a.*,
  a.activity_id AS id,
  (SELECT JSON_ARRAYAGG(JSON_OBJECT('url', url, 'private', private))
   FROM activity_image
   WHERE activity_image.private = 'false' AND activity_image.activity_id = a.activity_id) AS images,
   (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
   url)  ) FROM activity_file WHERE activity_file.activity_id = a.activity_id)  AS files,
  (SELECT COUNT(activities_has_users.user_id) 
   FROM activities_has_users 
   WHERE activities_has_users.activity_id = a.activity_id) AS participants_count,
  (SELECT JSON_ARRAYAGG(JSON_OBJECT('name', u.name, 'id', u.user_id, 'email', u.email))  
   FROM users AS u 
   WHERE EXISTS (SELECT 1 FROM activities_has_users WHERE activities_has_users.activity_id = a.activity_id AND u.user_id = activities_has_users.user_id)) AS participants 
FROM activities AS a 
INNER JOIN activities_has_users ON a.activity_id = activities_has_users.activity_id 
WHERE a.activity_id IN (SELECT activity_id FROM activities_has_users WHERE user_id = ?)
AND (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) 
AND type LIKE COALESCE(CONCAT(?,'%'),'%')
GROUP BY a.activity_id 

`,
  //   user_sql_2: ` SELECT
  //     a.*,
  //     a.activity_id
  //     AS id,
  //     (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
  //     url,
  //     'private',
  //     private )  ) FROM activity_image WHERE  activity_image.private = 'false' AND activity_image.activity_id = a.activity_id )  AS images,
  //     (SELECT
  //         COUNT(activities_has_users.user_id)
  //     FROM
  //         activities_has_users
  //     WHERE
  //         activities_has_users.activity_id = a.activity_id) AS participants_count,
  //     (SELECT
  //         JSON_ARRAYAGG( JSON_OBJECT( 'name',
  //         u.name,
  //         'id',
  //         u.user_id,
  //         'email',
  //         u.email )  )
  //     FROM
  //         users AS u
  //     WHERE
  //         EXISTS (
  //             SELECT
  //                 1
  //             FROM
  //                 activities_has_users
  //             WHERE
  //                 (
  //                     activities_has_users.activity_id = a.activity_id
  //                 )
  //                 AND (
  //                     u.user_id = activities_has_users.user_id
  //                 )
  //         )
  //     ) AS participants
  // FROM
  //     activities AS a
  // INNER JOIN
  //     activities_has_users
  //         ON a.activity_id = activities_has_users.activity_id

  //         WHERE  a.activity_id IN (SELECT activity_id FROM activities_has_users WHERE user_id = ?)
  //         AND type LIKE COALESCE(CONCAT(?,'%'),'%')
  //         AND (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%'))
  // GROUP BY
  //     a.activity_id
  // ORDER BY
  //     NULL`,
  user_sql_2: ` SELECT 
    a.*,
    a.activity_id
    AS id,
    (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
    url,
    'private',
    private )  ) FROM activity_image WHERE  activity_image.private = 'false' AND activity_image.activity_id = a.activity_id )  AS images,
    (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
    url, 'name' , name ) ) FROM activity_file WHERE activity_file.activity_id = a.activity_id)  AS files,
    (SELECT
        COUNT(activities_has_users.user_id) 
    FROM
        activities_has_users 
    WHERE
        activities_has_users.activity_id = a.activity_id) AS participants_count,
    (SELECT
        JSON_ARRAYAGG( JSON_OBJECT( 'name',
        u.name,
        'id',
        u.user_id,
        'email',
        u.email )  )  
    FROM
        users AS u 
    WHERE
        EXISTS (
            SELECT
                1 
            FROM
                activities_has_users 
            WHERE
                (
                    activities_has_users.activity_id = a.activity_id
                ) 
                AND (
                    u.user_id = activities_has_users.user_id
                )
        )
    ) AS participants 
FROM
    activities AS a 
INNER JOIN
    activities_has_users 
        ON a.activity_id = activities_has_users.activity_id 
     
        WHERE  a.activity_id IN (SELECT activity_id FROM activities_has_users WHERE user_id = ?)
        AND a.start_date >= ?
      
        AND (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) 
        AND type LIKE COALESCE(CONCAT(?,'%'),'%')
GROUP BY
    a.activity_id 
ORDER BY
    NULL`,
  user_sql_3: ` SELECT 
    a.*,
    a.activity_id
    AS id,
    (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
    url,
    'private',
    private )  ) FROM activity_image WHERE  activity_image.private = 'false' AND activity_image.activity_id = a.activity_id )  AS images,
    (SELECT JSON_ARRAYAGG( JSON_OBJECT( 'url',
    url, 'name' , name ) ) FROM activity_file WHERE activity_file.activity_id = a.activity_id)  AS files,
    (SELECT
        COUNT(activities_has_users.user_id) 
    FROM
        activities_has_users 
    WHERE
        activities_has_users.activity_id = a.activity_id) AS participants_count,
    (SELECT
        JSON_ARRAYAGG( JSON_OBJECT( 'name',
        u.name,
        'id',
        u.user_id,
        'email',
        u.email )  )  
    FROM
        users AS u 
    WHERE
        EXISTS (
            SELECT
                1 
            FROM
                activities_has_users 
            WHERE
                (
                    activities_has_users.activity_id = a.activity_id
                ) 
                AND (
                    u.user_id = activities_has_users.user_id
                )
        )
    ) AS participants 
FROM
    activities AS a 
INNER JOIN
    activities_has_users 
        ON a.activity_id = activities_has_users.activity_id 
     
        WHERE  a.activity_id IN (SELECT activity_id FROM activities_has_users WHERE user_id = ?)
        AND a.start_date >= ?
        AND a.end_date <= ?
        AND type LIKE COALESCE(CONCAT(?,'%'),'%')
        AND (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) 
        AND type LIKE COALESCE(CONCAT(?,'%'),'%')
GROUP BY
    a.activity_id 
ORDER BY
    NULL`,
};
