class AutoreplyMailbox < ApplicationMailbox
  def process
    notice = Notice.from_email_address(mail.to.first)
    notice.replies.create! sender: mail.from.first, subject: mail.subject, content: mail.text_part || mail.html_part || mail.body.encoded
  end
end
