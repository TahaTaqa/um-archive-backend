exports.getActivitesSql = {
  sql_1: ` SELECT
    a.*,
    a.activity_id
    AS id,
    JSON_ARRAYAGG( JSON_OBJECT( 'url',
    i.url,
    'private',
    i.private )  )  AS images,
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
        LEFT JOIN activity_image AS i ON  i.activity_id = a.activity_id
        WHERE  department LIKE COALESCE(CONCAT(?,'%'),'%') 
        AND (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) 
GROUP BY
    a.activity_id 
ORDER BY
    NULL`,
  sql_2: ` SELECT
    a.*,
    a.activity_id
    AS id,
    JSON_ARRAYAGG( JSON_OBJECT( 'url',
    i.url,
    'private',
    i.private )  )  AS images,
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
        LEFT JOIN activity_image AS i ON  i.activity_id = a.activity_id
        WHERE  department LIKE COALESCE(CONCAT(?,'%'),'%') 
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
    JSON_ARRAYAGG( JSON_OBJECT( 'url',
    i.url,
    'private',
    i.private )  )  AS images,
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
        LEFT JOIN activity_image AS i ON  i.activity_id = a.activity_id
        WHERE  department LIKE COALESCE(CONCAT(?,'%'),'%') 
        AND a.start_date >= ?
        AND a.end_date <= ?
        AND (title LIKE COALESCE(CONCAT(?,'%'),'%') 
        OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) 
GROUP BY
    a.activity_id 
ORDER BY
    NULL`,
};
