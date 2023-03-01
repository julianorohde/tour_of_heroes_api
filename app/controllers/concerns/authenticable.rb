module Authenticable
  private

  def authenticate_with_token
    @token ||= request.headers['Authorization']

    return if valid_token?

    render json: { errors: 'Forneça um header autorhization para se identificar (mín: 05 caracteres)' },
           status: :unauthorized
  end

  def valid_token?
    @token.present? && @token.size >= 5
  end
end
