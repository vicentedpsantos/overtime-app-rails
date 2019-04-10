class StaticController < ApplicationController
  def homepage
    if admin_types.include?(current_user.type)
      @pending_approvals = Post.submitted
      @audit_log_items = AuditLog.last(10)
    else
      #something else
    end
  end
end
