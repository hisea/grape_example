module API
  class PostApi < Grape::API
    prefix 'api'
    version 'v1', :using => :path 

    # 简单例子，可以向controller一样取得params
    #可以访问 http://localhost:3000/api/v1/say_hello.json?input=world
    get '/say_hello' do
      "hey there #{params[:input]}"
    end

    #Resource可以很简单的生成类似RESTful的resource
    resource :posts do
      #可以调用ActiveRecord的Model中的业务逻辑
      #http://localhost:3000/api/v1/posts/index.json
      get 'index' do
        Post.all
      end

      #http://localhost:3000/api/v1/posts/show/1.json
      get 'show/:id' do
        Post.find(params[:id])
      end
    end
  end
end