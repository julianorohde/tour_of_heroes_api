module Authenticable
  private

  def authenticate_with_token
    @token ||= request.headers['Authorization']

    return if valid_token?

    render json: { errors: 'Provide an autorhization header to identify yourself (min: 05 characters)' },
           status: :unauthorized
  end

  def valid_token?
    @token.present? && @token.size >= 5
  end
end
