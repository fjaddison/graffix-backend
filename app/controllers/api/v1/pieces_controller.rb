# https://www.pluralsight.com/guides/ruby-ruby-on-rails/building-a-crud-interface-with-react-and-ruby-on-rails
class Api::V1::PiecesController < Api::V1::BaseController 
  def index 
    respond_with Piece.all 
  end 
  def create 
    respond_with :api, :v1, Piece.create(piece_params) 
  end 
  def destroy 
    respond_with Piece.destroy(params[:id]) 
  end 
  def update 
    piece = Piece.find(params["id"]) 
    piece.update_attributes(piece_params) 
    respond_with piece, json: piece end 
  private 
  def piece_params 
    params.require(:piece).permit(:id, :artist, :image_url, :neighborhood, :lat, :lng) 
  end 
end
