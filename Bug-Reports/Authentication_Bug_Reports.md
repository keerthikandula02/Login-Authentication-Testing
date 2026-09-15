# Authentication Bug Reports

## BUG-AUTH-001 — Generic error for invalid credentials
**Severity:** Medium | **Priority:** Medium

Expected a clear user-friendly authentication error without revealing sensitive details. Actual behavior uses an inconsistent generic message.

## BUG-AUTH-002 — Session remains accessible after logout
**Severity:** High | **Priority:** High

Expected protected pages to require a fresh authenticated session. Actual behavior in the sample scenario allows cached content to appear after logout until refresh.
