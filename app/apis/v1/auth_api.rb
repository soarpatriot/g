class V1::AuthApi < Grape::API
  params do 

  end
  namespace :auth do 
    desc "生成token" do 

    end
    params do 
      requires :client_id, type: String
      requires :grant_type, type: String
    end
    post "token" do 
      params[:grant_type] = 'mp_customized' if params[:grant_type] == 'none' 
      {content: "access"}
    end
  end
end
