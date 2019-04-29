class MainController < ApplicationController

    def index
        if session[:usuario] == nil
            redirect_to login_path and return
        end

        u = User.find(session[:usuario])
        @nombre = u.nombre
    end

    def error
    end

    def logout
        session[:usuario] = nil
        redirect_to login_path and return
    end
end
