class ArtsController < ApplicationController
  before_action :set_board
  before_action :set_art, only: [:show, :edit, :update, :destroy]

  def index
    @arts = @board.arts
  end

  def show
    
  end

  def new
    @art = @board.arts.new
    render partial: 'form'  
  end

  def edit
    render partial: 'form'
  end

  def create 
    @art = @board.arts.new(art_params)
    if @art.save 
      redirect_to board_arts_path(@board)
    else 
      render :new
    end
  end

  def update
    if @art.update(art_params)
      redirect_to board_arts_path(@board)
    else
      render :edit
    end
  end

  def destroy 
    Art.find(params[:id]).destroy   
    redirect_to art_path(@art)
  end 

  private 

    def set_board 
      @board = Board.find(params[:board_id])
    end 
    
    def set_art 
      @art = Art.find(params[:id])
    end

    def art_params 
      params.require(:art).permit(:name)
    end 
end
