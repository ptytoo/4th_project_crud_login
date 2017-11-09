class UserController < ApplicationController
    
    def index
        if session[:user_id] 
            @email = User.find(session[:user_id]).user_id
        end
    end
    
    def new
    end
    
    def create
        require 'digest'
        @email = params[:user_email]
        @password = params[:user_password]
        hidden_password = Digest::MD5.hexdigest(@password)
        User.create(
            user_id: @email,
            password: hidden_password
        )
    end
    
    def login
        
    end
    
    def login_process
        #1. 우리 데이터베이스에 해당하는 유저 정보가 DB에 있는지 찾는다.
        #2. 만약에 있다면, 비밀번호가 맞는지 확인
        #3. 그것도 만약에 맞다면 로그인 시키기
        require 'digest'
        if User.exists?(user_id: params[:user_email]) 
            user = User.find_by(user_id: params[:user_email])
            if user.password == Digest::MD5.hexdigest(params[:user_password])
                session[:user_id] = user.id
                redirect_to '/'
            end
        end
        
    end
    
    
end
