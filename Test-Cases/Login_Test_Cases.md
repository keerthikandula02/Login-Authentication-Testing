# Authentication Test Cases

| ID | Scenario | Expected Result |
|---|---|---|
| AUTH-001 | Valid username/password | Login succeeds |
| AUTH-002 | Invalid password | Error displayed |
| AUTH-003 | Blank username | Required validation |
| AUTH-004 | Blank password | Required validation |
| AUTH-005 | Password masking | Password is obscured |
| AUTH-006 | Forgot password | Reset flow starts |
| AUTH-007 | Repeated failures | Lockout/rate-limit policy applies |
| AUTH-008 | Logout | Session is terminated |
| AUTH-009 | Back after logout | Protected page is not accessible |
| AUTH-010 | Direct dashboard URL | Unauthenticated user is redirected |
