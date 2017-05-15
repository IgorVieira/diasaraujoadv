class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :subject_contact, :validate => true
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true


	 def headers
	  	{
		  	:subject => %(#{subject_contact}),
		  	:to => "igor.p.r.vieira@gmail.com",
		  	:from => %("#{name}" <#{email}>)
		  }
    end

end