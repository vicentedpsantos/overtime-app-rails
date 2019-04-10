# Overtime App

## Key requirements:
- Company needs documentation that salaried employees did or did not get overtime each week

## Models
- Post -> date:date rationale:text
- User -> Devise
- AdminUser -> STI
- AuditLog

## Features:
- Approval Workflow
- SMS Sending -> Link to approval or overtime input
- Administrative admin dashboard
- Block non admin and guest users
- Document if employee did not log Overtime
- Create audit log for each text message
- Need to update end_date when confirmed

## UI:
Bootstrap -> Formatting

### Instructions
- Update email sender at devise.rb
```  config.mailer_sender = 'youremail@yourdomain.com' ```

### Refactor  TODOS:
- Refactor user association integration test in post_spec
