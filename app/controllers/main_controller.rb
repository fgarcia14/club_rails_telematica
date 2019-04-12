class MainController < ApplicationController

    def index
        u = User.find(session[:usuario])
        @nombre = u.nombre
    end

    def error
    end

end
