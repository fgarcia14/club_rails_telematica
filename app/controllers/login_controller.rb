class LoginController < ApplicationController

    def index
    end

    def validate
        @usuario = params[:post][:user]
        @contrasena = params[:post][:password]

        u = User.where(:usuario => @usuario).where(:contrasena => @contrasena).all

        if u.length == 0
            redirect_to error_path and return
        else
            u.each do |registro|
                session[:usuario] = registro.id
            end
            redirect_to main_path and return
        end
        
        redirect_to login_path and return
    end
end
