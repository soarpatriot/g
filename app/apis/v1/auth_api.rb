class V1::AuthApi < Grape::API
  namespace :auth do 
    before do 
    end
    get "token" do 
      params[:grant_type] = 'mp_customized' if params[:grant_type] == 'none' 
      {content: "access"}
    end
  end
end
