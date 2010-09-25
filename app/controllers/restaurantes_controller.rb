class RestaurantesController < ApplicationController

  respond_to :xml,:html,:json
  
  def index
    #@restaurantes=Restaurante.order("nome")
    @restaurantes = Restaurante.order("nome").paginate :page=> params['page'], :per_page=>3
    respond_with @restaurantes
  end

  def show
    @restaurante = Restaurante.find(params[:id])
  end

  def new
    @restaurante = Restaurante.new
  end

  def create
    @restaurante = Restaurante.new(params[:restaurante])
    if @restaurante.save
      flash[:notice] = "Restaurante #{@restaurante.nome} cadastro com sucesso"
      redirect_to(:action => "show", :id => @restaurante)
    else
      render :action => "new"
    end
  end

  def edit
    @restaurante = Restaurante.find(params[:id])
  end

  def update
    @restaurante = Restaurante.find(params[:id])
    if @restaurante.update_attributes(params[:restaurante])
      flash[:notice] = "Restaurante #{@restaurante.nome} atualizado com sucesso"
      redirect_to(:action => "show", :id => @restaurante)
    else
      render :action => "edit"
    end
  end

  def destroy
    @restaurante = Restaurante.find(params[:id])
    @restaurante.destroy
    flash[:notice] = "Restaurante #{@restaurante.nome} excluido"
    redirect_to(:action => "index")
  end

  def por_especialidade
    @restaurantes = Restaurante.where(:especialidade => params[:especialidade])
    render :action => "index"
  end
end
