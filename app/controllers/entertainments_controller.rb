class EntertainmentsController < ApplicationController
  before_action :set_entertainment, only: %i[ show edit update destroy ]

  # GET /entertainments or /entertainments.json
  def index
    @entertainments = Entertainment.all
  end

  # GET /entertainments/1 or /entertainments/1.json
  def show
  end

  # GET /entertainments/new
  def new
    @entertainment = Entertainment.new
  end

  # GET /entertainments/1/edit
  def edit
  end

  # POST /entertainments or /entertainments.json
  def create
    @entertainment = Entertainment.new(entertainment_params)

    respond_to do |format|
      if @entertainment.save
        format.html { redirect_to entertainment_url(@entertainment), notice: "Entertainment was successfully created." }
        format.json { render :show, status: :created, location: @entertainment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entertainment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entertainments/1 or /entertainments/1.json
  def update
    respond_to do |format|
      if @entertainment.update(entertainment_params)
        format.html { redirect_to entertainment_url(@entertainment), notice: "Entertainment was successfully updated." }
        format.json { render :show, status: :ok, location: @entertainment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entertainment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entertainments/1 or /entertainments/1.json
  def destroy
    @entertainment.destroy!

    respond_to do |format|
      format.html { redirect_to entertainments_url, notice: "Entertainment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entertainment
      @entertainment = Entertainment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entertainment_params
      params.require(:entertainment).permit(:title, :description, :release_date, :genre, :entertainment_type, :post_id, :review_id)
    end
end
