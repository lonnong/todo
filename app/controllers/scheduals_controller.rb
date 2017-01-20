class SchedualsController < ApplicationController
  before_action :set_schedual, only: [:show, :edit, :update, :destroy]

  # GET /scheduals
  # GET /scheduals.json
  def index
   # @scheduals = Schedual.all.sort_by(&:created_at).first(6)
    @scheduals = Schedual.all.select {|x| x.comp != true}.sort_by(&:created_at)

  end

  # GET /scheduals/1
  # GET /scheduals/1.json
  def show
  end

  # GET /scheduals/new
  def new
    @schedual = Schedual.new
  end

  # GET /scheduals/1/edit
  def edit
  end

  # POST /scheduals
  # POST /scheduals.json
  def create
    @schedual = Schedual.new(schedual_params)

    respond_to do |format|
      if @schedual.save
        format.html { redirect_to @schedual, notice: 'Schedual was successfully created.' }
        format.json { render :show, status: :created, location: @schedual }
      else
        format.html { render :new }
        format.json { render json: @schedual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scheduals/1
  # PATCH/PUT /scheduals/1.json
  def update
    respond_to do |format|
      if @schedual.update(schedual_params)
        format.html { redirect_to @schedual, notice: 'Schedual was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedual }
      else
        format.html { render :edit }
        format.json { render json: @schedual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduals/1
  # DELETE /scheduals/1.json
  def destroy
    @schedual.destroy
    respond_to do |format|
      format.html { redirect_to scheduals_url, notice: 'Schedual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedual
      @schedual = Schedual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedual_params
      params.require(:schedual).permit(:item, :comp, :stars)
    end
end
