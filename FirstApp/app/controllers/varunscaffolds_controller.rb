class VarunscaffoldsController < ApplicationController
  before_action :set_varunscaffold, only: [:show, :edit, :update, :destroy]

  # GET /varunscaffolds
  # GET /varunscaffolds.json
  def index
    @varunscaffolds = Varunscaffold.all
  end

  # GET /varunscaffolds/1
  # GET /varunscaffolds/1.json
  def show
  end

  # GET /varunscaffolds/new
  def new
    @varunscaffold = Varunscaffold.new
  end

  # GET /varunscaffolds/1/edit
  def edit
  end

  # POST /varunscaffolds
  # POST /varunscaffolds.json
  def create
    @varunscaffold = Varunscaffold.new(varunscaffold_params)

    respond_to do |format|
      if @varunscaffold.save
        format.html { redirect_to @varunscaffold, notice: 'Varunscaffold was successfully created.' }
        format.json { render :show, status: :created, location: @varunscaffold }
      else
        format.html { render :new }
        format.json { render json: @varunscaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /varunscaffolds/1
  # PATCH/PUT /varunscaffolds/1.json
  def update
    respond_to do |format|
      if @varunscaffold.update(varunscaffold_params)
        format.html { redirect_to @varunscaffold, notice: 'Varunscaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @varunscaffold }
      else
        format.html { render :edit }
        format.json { render json: @varunscaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /varunscaffolds/1
  # DELETE /varunscaffolds/1.json
  def destroy
    @varunscaffold.destroy
    respond_to do |format|
      format.html { redirect_to varunscaffolds_url, notice: 'Varunscaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_varunscaffold
      @varunscaffold = Varunscaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def varunscaffold_params
      params.fetch(:varunscaffold, {})
    end
end
