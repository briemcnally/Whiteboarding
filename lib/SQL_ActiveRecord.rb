-- (from InstaCart) Write the following queries in SQL and in Rails:


-- a. "count all users",
SELECT
  COUNT(*)
FROM
  users;

-- or
User.count

-- b. "count all active users (you define what active means)",
SELECT
  COUNT(*)
FROM
  users
WHERE
  users.active = true;

-- or
User.where(:active => "TRUE").count

-- c. "count all users who visited the site within a certain time period".
SELECT
  COUNT(*)
FROM
  users
WHERE
  users.last_login BETWEEN :time_period_start AND :time_period_end;

-- or
User.where(last_login: (time_period_start..time_period_end)).count
