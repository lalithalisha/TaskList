class ParadiseinfoController < ApplicationController
  def index

  end

  def menu
  	if params[:section]
  		@f=Fooditem.where section:params[:section]
    else
    	@f=Fooditem.all
    end
  end
  
  def show
    @f=Fooditem.find(params[:id])
  end
  def new
    @f=Fooditem.new
  end
  def create
    @f=Fooditem.new(food_params)
    if @f.save
      redirect_to({:action=>'menu'})
    else
      render('new')
    end
  end
  def edit
    @food = Fooditem.find(params[:id])
  end

  def update
    @food = Fooditem.find(params[:id])
    
    if @food.update_attributes(food_params)
      redirect_to({:action=>'menu'})

    else
      render('edit')
    end
  end                
  def delete
  	@food = Fooditem.find(params[:id])
  end
   def destroy
    @food = Fooditem.find(params[:id])
    if @food.destroy
      redirect_to(:action=>'menu')
    end
  end
  def contactus
  end
   def food_params
    params.require(:food).permit(:name,:price,:description,:section,:image)
  end 
end
