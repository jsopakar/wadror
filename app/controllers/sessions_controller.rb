class SessionsController < ApplicationController
  def new
    # renderöi kirjautumissivun
  end

  def create
    # haetaan usernamea vastaava käyttäjä tietokannasta
    user = User.find_by username: params[:username]
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user_path(user), notice: "Welcome back!"
    else
        redirect_to :back, notice: "Username and/or password mismatch"
    end


    # talletetaan sessioon kirjautuneen käyttäjän id (jos käyttäjä on olemassa)
    #session[:user_id] = user.id if not user.nil?
    # uudelleen ohjataan käyttäjä omalle sivulleen
    #redirect_to user
  end

  def destroy
    # nollataan sessio
    session[:user_id] = nil
    # uudelleenohjataan sovellus pääsivulle
    redirect_to :root
  end
end
