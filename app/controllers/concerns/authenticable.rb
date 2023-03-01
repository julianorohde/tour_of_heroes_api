module Authenticable
  private

  def authenticate_with_token
    @token ||= request.headers['Authorization']

    return if valid_token?

    render json: { errors: 'Usuário não autorizado' },
           status: :unauthorized
  end

  def valid_token?
    @token.present? && @token == Rails.application.credentials.token
  end
end
