class DoctoresController < ApplicationController
  def index
    @doctor=Doctor.all
  end
  def add
    @doctor=Doctor.new
  end

  def create
    @doctor=Doctor.new(      
      name: params[:doctor][:name],      
      phone: params[:doctor][:phone],
      email: params[:doctor][:email]      
    )

    if@doctor.save
      redirect_to action: "index"
    else
      render :add
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
    render :add
  end

    def update
      @doctor = Doctor.find(params[:doctor][:id])
      if @doctor.update(    
        name: params[:doctor][:name],    
        phone: params[:doctor][:phone],
        email: params[:doctor][:email]    
      )
        redirect_to action: "index" 
      else
        render 'edit'
      end
    end
    def destroy
      @doctor = Doctor.find(params[:id])
      @doctor.destroy
      redirect_to action: "index" 
    end
 end 