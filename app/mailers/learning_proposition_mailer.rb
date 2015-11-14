class LearningPropositionMailer < ApplicationMailer

  def notify_session_email(interest = nil)
      @interest = interest
      mail(to: @interest.email, subject: 'Sua próxima sessão no Teias de Aprendizagem está chegando').deliver
    end

end
