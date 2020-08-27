class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    body = ""
    10.times {body.concat(" " + Faker::Hacker.say_something_smart)}
    email = Email.create(object: Faker::Hacker.adjective.capitalize, body: body)
    respond_to do |format|
      format.html do 
        #code en cas de requête classique 
      end
    
      format.js do
       @email = email
       @email_object = email.object
       @email_body = email.body
      end
    end
  end

  def show
    @email = Email.find(params[:id])
    puts @email
    @email.update(read: true)
    respond_to do |format|
      format.html { redirect_to books_path }
      format.js { }
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html {  }
      format.js { }
    end
  end

  def update
    @email = Email.find(params[:id])
    read = !@email.read
    @email.update(read: read)
    if @email.read
      @innerHTML = "Marquer comme non-lu"
    else
      @innerHTML = "Marquer comme lu"
    end
    respond_to do |format|
      format.html {  }
      format.js { }
    end
  end
end
