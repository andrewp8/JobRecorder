class FollowUpMailer < ApplicationMailer
  def follow_up_email(recipient_email, follow_up_template, email_body, current_user, job_listing)
    @recipient_email = recipient_email
    @follow_up_template = follow_up_template
    @body = email_body
    @current_user = current_user
    @job_listing = job_listing

    mail(to: recipient_email, subject: "Follow Up: #{current_user.first_name.capitalize} #{current_user.last_name.capitalize} - #{@job_listing.title}")
  end
end
