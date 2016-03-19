class RailsgirlsController < ApplicationController
  before_action :set_railsgirl, only: [:show, :edit, :update, :destroy]

  # GET /railsgirls
  # GET /railsgirls.json
  def index
    @railsgirls = Railsgirl.all
  end

  # GET /railsgirls/1
  # GET /railsgirls/1.json
  def show
  end

  # GET /railsgirls/new
  def new
    @railsgirl = Railsgirl.new
  end

  # GET /railsgirls/1/edit
  def edit
  end

  # POST /railsgirls
  # POST /railsgirls.json
  def create
    @railsgirl = Railsgirl.new(railsgirl_params)

    respond_to do |format|
      if @railsgirl.save
        format.html { redirect_to @railsgirl, notice: 'Railsgirl was successfully created.' }
        format.json { render :show, status: :created, location: @railsgirl }
      else
        format.html { render :new }
        format.json { render json: @railsgirl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /railsgirls/1
  # PATCH/PUT /railsgirls/1.json
  def update
    respond_to do |format|
      if @railsgirl.update(railsgirl_params)
        format.html { redirect_to @railsgirl, notice: 'Railsgirl was successfully updated.' }
        format.json { render :show, status: :ok, location: @railsgirl }
      else
        format.html { render :edit }
        format.json { render json: @railsgirl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railsgirls/1
  # DELETE /railsgirls/1.json
  def destroy
    @railsgirl.destroy
    respond_to do |format|
      format.html { redirect_to railsgirls_url, notice: 'Railsgirl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railsgirl
      @railsgirl = Railsgirl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def railsgirl_params
      params.require(:railsgirl).permit(:name, :description, :picture, :visit)
    end
end
