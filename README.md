# Overtime App

## Key requirements:
- Company needs documentation that salaried employees did or did not get overtime each week

## Models
- Post -> date:date rationale:text
- User -> Devise
- AdminUser -> STI

## Features:
- Approval Workflow
- SMS Sending -> Link to approval or overtime input
- Administrative admin dashboard
- Email summary to managers for Approval
- needs to be documented if employee did not log Overtime

## UI:
Bootstrap -> Formatting

### Instructions
- Update email sender at devise.rb
```  config.mailer_sender = 'youremail@yourdomain.com' ```

### Refactor  TODOS:
- Refactor user association integration test in post_spec
