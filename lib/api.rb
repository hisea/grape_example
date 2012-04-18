module API
  class PostApi < Grape::API
    prefix 'api'
    version 'v1', :using => :path 

    # 简单例子，可以向controller一样取得params
    #可以访问 http://localhost:3000/api/v1/say_hello.json?input=world
    get '/say_hello' do
      "hey there #{params[:input]}"
    end

  end
end