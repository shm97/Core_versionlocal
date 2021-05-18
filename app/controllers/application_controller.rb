class ApplicationController < ActionController::API

    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload,'clave_secreta')
    end

    def auth_header
      
      return request.headers['Authorization']
        
    end
    
    def decoded_token
      var = auth_header
      #puts 'Debug 1 en auth', var
        if auth_header
          #token = auth_header.split(' ')[1]
          
          token = var
          #puts 'DEBUG en decode VAR', token
          # header: { 'Authorization': 'Bearer <token>' }
          begin
            #puts JWT.decode(token, 'clave_secreta', true, algorithm: 'HS256')
            return JWT.decode(token, 'clave_secreta', true, algorithm: 'HS256')
          rescue JWT::DecodeError
            return nil
          end
        end
    end
    
    def logged_in_user
        puts 'Debug en logged_in_user', decoded_token
        if decoded_token
          user_name = decoded_token[0]['username']
          @user = User.find_by(username: user_name)
        end
    end
    
    def logged_in?
        !!logged_in_user
    end
    
    def authorized
         
        
        if logged_in?
          puts 'PRIMER DEBUGGGG', @user['password']
          @user = encode_token({'username': @user['username'],'password': @user['password']})
          puts 'Debug en authorized ', @user
          return 
        else
          render json: { message: 'Please log in' }, status: :unauthorized #unless logged_in?
          return 
        end
    end

    def authorized_c
        if decoded_token
          @user =  decoded_token[0]
        end
    end
end
