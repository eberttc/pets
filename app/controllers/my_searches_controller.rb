class MySearchesController < ApplicationController
  before_action :set_my_search, only: [:show, :edit, :update, :destroy]

  # GET /my_searches
  # GET /my_searches.json
  def index
    @my_searches = MySearch.all
  end

  # GET /my_searches/1
  # GET /my_searches/1.json
  def show
  end

  # GET /my_searches/new
  def new
    @my_search = MySearch.new
  end

  # GET /my_searches/1/edit
  def edit
  end

  # POST /my_searches
  # POST /my_searches.json
  def create
    @my_search = MySearch.new(my_search_params)

    respond_to do |format|
      if @my_search.save
        format.html { redirect_to @my_search, notice: 'My search was successfully created.' }
        format.json { render :show, status: :created, location: @my_search }
      else
        format.html { render :new }
        format.json { render json: @my_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_searches/1
  # PATCH/PUT /my_searches/1.json
  def update
    respond_to do |format|
      if @my_search.update(my_search_params)
        format.html { redirect_to @my_search, notice: 'My search was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_search }
      else
        format.html { render :edit }
        format.json { render json: @my_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_searches/1
  # DELETE /my_searches/1.json
  def destroy
    @my_search.destroy
    respond_to do |format|
      format.html { redirect_to my_searches_url, notice: 'My search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_search
      @my_search = MySearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_search_params
      params.require(:my_search).permit(:lost_pet_id, :user_id)
    end
end
