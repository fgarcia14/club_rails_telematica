class LoginController < ApplicationController

    def index
        if session[:usuario] != nil
            redirect_to main_path and return
        end
    end

    def validate
        @usuario = params[:post][:user]
        @contrasena = params[:post][:password]

        begin
            user = User.where(:contrasena => @contrasena).find(@usuario)
            
            session[:usuario] = user.usuario
            redirect_to main_path and return
        rescue => exception
            redirect_to login_path and return
        end
        
        redirect_to login_path and return
    end
end
