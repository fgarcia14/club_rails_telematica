class MainController < ApplicationController

    def index
        if session[:usuario] == nil
            redirect_to login_path and return
        end

        u = User.find(session[:usuario])
        @nombre = u.nombre

        begin
            @encuesta = Survey.find(session[:usuario])
        rescue => exception
            @encuesta = nil
        end
        puts "Valor: #{@encuesta == nil}"
    end

    def error
    end

    def logout
        session[:usuario] = nil
        redirect_to login_path and return
    end

    def encuesta
        respuestas = [
            params[:pre1],
            params[:pre2],
            params[:pre3],
            params[:pre4],
            params[:pre5]
        ]

        s = Survey.new
        s.user = session[:usuario]
        s.pre1 = respuestas[0]
        s.pre2 = respuestas[1]
        s.pre3 = respuestas[2]
        s.pre4 = respuestas[3]
        s.pre5 = respuestas[4]

        s.save

        redirect_to main_path and return
    end
end






