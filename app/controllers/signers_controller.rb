class SignersController < ApplicationController
  # GET /signers
  def index
    # all the signers
    @signers = Signer.all
    render json: @signers
  end

  # GET /signers/:id
  def show
    # find one Signer by id
    @signer = Signer.find(params[:id])
    render json: @signer
  end

  # POST /signers
  def create
    @signer = Signer.new(signer_params)
    if @signer.save
      render json: @signer, status: :created, location: signers_url
    else
      render json: @signer.errors, status: :unprocessable_entity
     end
  end
  
  # PATCH /signers/:id
  def update
    @signer = Signer.find(params[:id])
    if @signer.update(signer_params)
      head :no_content
    else
      render json: @signer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /signers/:id
  def delete
    @signer = Signer.find(params[:id])
    @signer.delete

    head :no_content
  end
  
  private 
   def signer_params
    params.require(:signer)
      .permit(:first_name, :last_name, :age, :address, :email, :quote)
  end
end