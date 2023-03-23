exports.getUserSql = {
  sql_1: `SELECT u.user_id as id,name,email,department,phone_number,type, COUNT(a.user_id) AS activities_count 
  FROM users AS u  
    left JOIN activities_has_users as a 
        ON u.user_id = a.user_id 
  WHERE name LIKE COALESCE(CONCAT('%',?,'%'),'%') 
      AND department  LIKE COALESCE(CONCAT('%',?,'%'),'%') 
  GROUP BY u.user_id`,
};
