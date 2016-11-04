class Club2sController < ApplicationController
  before_action :set_club2, only: [:show]
  before_action :authorise, only: [:new, :show, :edit, :update, :destroy]

  # GET /club2s
  # GET /club2s.json
  def index
    @club2s = Club2.all
  end

  # GET /club2s/1
  # GET /club2s/1.json
  def show
  end

  # GET /club2s/new
  def new
    @club2 = Club2.new
  end

  # GET /club2s/1/edit
  def edit
  end

  # POST /club2s
  # POST /club2s.json
  def create
    @club2 = Club2.new(club2_params)

    respond_to do |format|
      if @club2.save
        format.html { redirect_to @club2, notice: 'Club2 was successfully created.' }
        format.json { render :show, status: :created, location: @club2 }
      else
        format.html { render :new }
        format.json { render json: @club2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club2s/1
  # PATCH/PUT /club2s/1.json
  def update
    respond_to do |format|
      if @club2.update(club2_params)
        format.html { redirect_to @club2, notice: 'Club2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @club2 }
      else
        format.html { render :edit }
        format.json { render json: @club2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club2s/1
  # DELETE /club2s/1.json
  def destroy
    @club2.destroy
    respond_to do |format|
      format.html { redirect_to club2s_url, notice: 'Club2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club2
      @club2 = Club2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club2_params
      params.require(:club2).permit(:name, :address, :member_id, :coach_id)
    end
end
