module MailboxHelper
  def unread_messages_count
	@messages_count = current_user.mailbox.inbox({:read => false}).count
  end
end