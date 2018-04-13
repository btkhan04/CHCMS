RailsAdmin.config do |config|
  config.model 'User' do
    list do
      field :admin
      field :first_name
      field :last_name
      field :email
      field :date_of_birth
      field :sex
      field :mobile
      field :address
      field :postcode
      field :role
      field :contract_type
      field :assigned_hours
      field :NI
    end
  end

  config.model 'User' do
    edit do
      field :admin
      field :first_name
      field :last_name
      field :email
      field :date_of_birth
      field :sex
      field :mobile
      field :address
      field :postcode
      field :role
      field :contract_type
      field :assigned_hours
      field :NI
    end
  end

  config.model 'User' do
    base do
      field :admin
      field :first_name
      field :last_name
      field :email
      field :date_of_birth
      field :sex
      field :mobile
      field :address
      field :postcode
      field :role
      field :contract_type
      field :assigned_hours
      field :NI
    end
  end

 config.authorize_with do
    redirect_to main_app.root_path unless warden.user.admin == true
  end
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
