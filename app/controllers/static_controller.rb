class StaticController < ApplicationController
  def homepage
    @pending_approvals = Post.where(status: 'submitted')
    @audit_log_items = AuditLog.last(10)
  end
end
