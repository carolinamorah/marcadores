class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[ show edit update destroy ]

  # GET /bookmarks or /bookmarks.json
  def index
    @bookmark = Bookmark.new
    @bookmarks = Bookmark.all
  end

  # GET /bookmarks/1 or /bookmarks/1.json
  def show
  end

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
  end

  # GET /bookmarks/1/edit
  def edit
  end

  # POST /bookmarks or /bookmarks.json
  def create
    @bookmark = Bookmark.new(bookmark_params)

    respond_to do |format|
      if @bookmark.save
        format.js
        format.html { redirect_to @bookmark, notice: "Bookmark was successfully created." }
        format.json { render :show, status: :created, location: @bookmark }
      else
        format.js {render :new}
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookmarks/1 or /bookmarks/1.json
  def update
    respond_to do |format|
      if @bookmark.update(bookmark_params)
        format.js
        format.html { redirect_to @bookmark, notice: "Bookmark was successfully updated." }
        format.json { render :show, status: :ok, location: @bookmark }
      else
        format.js {render :edit}
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookmark.errors, status: :unprocessable_entity }
      end
    end
    @types = Type.all
  end

  # DELETE /bookmarks/1 or /bookmarks/1.json
  def destroy
    @bookmark.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to bookmarks_url, notice: "Bookmark was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookmark_params
      params.require(:bookmark).permit(:name, :url, :type_id, :category_id)
    end

    def category_params
      params.require(:category)
    end

end
