class ConfirmationsController < Devise::ConfirmationsController
  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  # def show
  #   super
  # end

  # protected

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  def after_confirmation_path_for(resource_name, resource)
    #super(resource_name, resource)
    p "<<<<<<<<<<<<<<<<<<<<<<<,,"
    p "here"
    p "<<<<<<<<<<<<<<<<<<<<<<<,,"
    sign_in resource
    if signed_in?(resource_name)
      edit_password_users_path
    else
      new_session_path(resource_name)
    end
  end
end
