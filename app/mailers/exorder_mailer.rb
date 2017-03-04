class ExorderMailer < ApplicationMailer

  def notify_exorder_placed(exorder)
    @exorder       = exorder
    @user        = exorder.user
    @exbook_lists = @exorder.exbook_lists

    mail(to: @user.email , subject: "[Exbookshop] 感谢您进行本次图书交换，以下是您个人信息确认 #{exorder.token}")
  end

  def apply_cancel(exorder)
    @exorder     = exorder
    @user        = exorder.user
    @exbook_lists = @exorder.exbook_lists

    mail(to: "jkland927@hotmail.com" , subject: "[Exbookshop] 用户#{exorder.user.email}申请取消订单 #{exorder.token}")
  end
end
