class Forkids::API < Grape::API
  # before do
  #   header 'X-Base-Header', 'will be defined for all APIs that are mounted below'
  # end
  version 'v1', using: :header, vendor: 'forkids'
  format :json
  prefix :api

  helpers do
    def current_user
      @current_user ||= User.authorize!(env)
    end

    def authenticate!
      error!('401 Unauthorized', 401) unless current_user
    end
  end


  # mount Forkids::Users
  mount Forkids::API::Profiles
  # mount Forkids::Families
end
