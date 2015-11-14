# Preview all emails at http://localhost:3000/rails/mailers/learning_proposition_mailer
class LearningPropositionMailerPreview < ActionMailer::Preview
  def notify_session_email
      interest = Interest.first
      LearningPropositionMailer.notify_session_email(interest)
    end
end
