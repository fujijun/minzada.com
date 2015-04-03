class AttendersController < ApplicationController
  before_action :set_attender, only: [:show, :edit, :update, :destroy]

  # GET /attenders
  # GET /attenders.json
  def index
    @attenders = Attender.all
  end

  # GET /attenders/1
  # GET /attenders/1.json
  def show
  end

  # GET /attenders/new
  def new
    @attender = Attender.new
  end

  # GET /attenders/1/edit
  def edit
  end

  # POST /attenders
  # POST /attenders.json
  def create
    @attender = Attender.new(attender_params)

    respond_to do |format|
      if @attender.save
        format.html { redirect_to @attender, notice: 'Attender was successfully created.' }
        format.json { render :show, status: :created, location: @attender }
      else
        format.html { render :new }
        format.json { render json: @attender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attenders/1
  # PATCH/PUT /attenders/1.json
  def update
    respond_to do |format|
      if @attender.update(attender_params)
        format.html { redirect_to @attender, notice: 'Attender was successfully updated.' }
        format.json { render :show, status: :ok, location: @attender }
      else
        format.html { render :edit }
        format.json { render json: @attender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attenders/1
  # DELETE /attenders/1.json
  def destroy
    @attender.destroy
    respond_to do |format|
      format.html { redirect_to attenders_url, notice: 'Attender was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attender
      @attender = Attender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attender_params
      params.require(:attender).permit(:user_id, :event_id)
    end
end
