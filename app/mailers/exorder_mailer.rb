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

  def notify_checked(exorder)
    @exorder      = exorder
    @user         = exorder.user
    @exbook_lists = @exorder.exbook_lists

    mail(to: @user.email, subject: "[Exbookshop] 您的交换信息 #{exorder.token}已被对方确认，请等待对方联系")
  end

  def notify_cancel(exorder)
    @exorder      = exorder
    @user         = exorder.user
    @exbook_lists = @exorder.exbook_lists

    mail(to: @user.email, subject: "[Exbookshop] 您的交换申请 #{order.token}已确认，本次交换取消")
  end
end
