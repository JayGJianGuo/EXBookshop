class ExorderMailer < ApplicationMailer

  def notify_exorder_placed(exorder)
    @exorder       = exorder
    @user        = exorder.user
    @exbook_lists = @exorder.exbook_lists

    mail(to: @user.email , subject: "[Exbookshop] 感谢您完成本次的下单，以下是您个人信息确认 #{exorder.token}")
  end

end
