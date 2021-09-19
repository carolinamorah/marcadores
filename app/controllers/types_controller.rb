class TypesController < ApplicationController
  before_action :set_type, only: %i[ show edit update destroy ]

  # GET /types or /types.json
  def index
    @types = Type.all
    @tipos = Type.bookmark_type
  end

  # GET /types/1 or /types/1.json
  def show
  end

  # GET /types/new
  def new
    @type = Type.new
  end

  # GET /types/1/edit
  def edit
  end

  # POST /types or /types.json
  def create
    @type = Type.new(type_params)

    respond_to do |format|
      if @type.save
        format.html { redirect_to @type, notice: "Type was successfully created." }
        format.json { render :show, status: :created, location: @type }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type.errors, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  # PATCH/PUT /types/1 or /types/1.json
  def update
    respond_to do |format|
      if @type.update(type_params)
        format.html { redirect_to @type, notice: "Type was successfully updated." }
        format.json { render :show, status: :ok, location: @type }
        format.js 
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type.errors, status: :unprocessable_entity }
        format.js { render :edit }
      end
    end
  end

  # DELETE /types/1 or /types/1.json
  def destroy
    @type.destroy
    respond_to do |format|
      format.html { redirect_to types_url, notice: "Type was successfully destroyed." }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type
      @type = Type.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_params
      params.require(:type).permit(:name, :category_id)
    end
end
