class Api::V1::PackagesController < ApplicationController


  def index
    render json: {message: "Hello!"}, status: :ok
  end

  def search
    if params[:packages]

      @packages = Version.joins(:package).where("packages.name IN (?) AND versions.os = ?",params[:packages],params[:os])
     if @packages.count > 0
       render json: @packages, status: :ok
     else
       render json: {status: 200, message:"Nothing found."},status: :ok
     end

    else
      render json: {:message => "error"}, status: 400
    end

  end


  private
  def packages_params
    params.require(:packages).permit(:name, :version)
  end
  def data_params
    params.require(:data).permit(:os,:packages)
  end


end
