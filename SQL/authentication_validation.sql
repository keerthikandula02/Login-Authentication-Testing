-- Login & Authentication Testing: SQL Validation Queries
-- Purpose: validate users, login attempts, account lockout and session-related data.

-- 1. Verify active users
SELECT user_id, username, email, account_status
FROM users
WHERE account_status = 'ACTIVE'
ORDER BY user_id;

-- 2. Verify failed login attempts for a user
SELECT user_id, attempt_time, attempt_status, failure_reason
FROM login_attempts
WHERE user_id = 1001
  AND attempt_status = 'FAILED'
ORDER BY attempt_time DESC;

-- 3. Identify users reaching the lockout threshold
SELECT user_id, COUNT(*) AS failed_attempts
FROM login_attempts
WHERE attempt_status = 'FAILED'
  AND attempt_time >= CURRENT_TIMESTAMP - INTERVAL '15 minutes'
GROUP BY user_id
HAVING COUNT(*) >= 5;

-- 4. Verify locked accounts
SELECT user_id, username, account_status, locked_at
FROM users
WHERE account_status = 'LOCKED';

-- 5. Verify active sessions after successful authentication
SELECT session_id, user_id, login_time, logout_time, session_status
FROM user_sessions
WHERE user_id = 1001
ORDER BY login_time DESC;
