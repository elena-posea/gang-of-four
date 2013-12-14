class PetitiesController < ApplicationController
  before_action :set_petity, only: [:show, :edit, :update, :destroy]

  # GET /petities
  # GET /petities.json
  def index
    @petities = Petitie.all
  end

  # GET /petities/1
  # GET /petities/1.json
  def show
  end

  # GET /petities/new
  def new
    @petity = Petitie.new
  end

  # GET /petities/1/edit
  def edit
  end

  # POST /petities
  # POST /petities.json
  def create
    @petity = Petitie.new(petity_params)

    respond_to do |format|
      if @petity.save
        format.html { redirect_to @petity, notice: 'Petitie was successfully created.' }
        format.json { render action: 'show', status: :created, location: @petity }
      else
        format.html { render action: 'new' }
        format.json { render json: @petity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petities/1
  # PATCH/PUT /petities/1.json
  def update
    respond_to do |format|
      if @petity.update(petity_params)
        format.html { redirect_to @petity, notice: 'Petitie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @petity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petities/1
  # DELETE /petities/1.json
  def destroy
    @petity.destroy
    respond_to do |format|
      format.html { redirect_to petities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petity
      @petity = Petitie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petity_params
      params.require(:petity).permit(:titlu, :continut, :user_id)
    end
end
