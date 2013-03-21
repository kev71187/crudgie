class RatingsController < ApplicationController
  before_filter :require_login
  # GET /ratings
  # GET /ratings.json
  def index
    if require_admin
    else
      @ratings = Rating.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @ratings }
      end
    end
  end

  # GET /ratings/1
  # GET /ratings/1.json
  def show
    if require_admin
    else

      @rating = Rating.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @rating }
      end
    end
  end

  # GET /ratings/new
  # GET /ratings/new.json
  def new
    @rating = Rating.new
    @rating.product_id = params[:product_id]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rating }
    end
  end

  # GET /ratings/1/edit
  def edit
    if require_admin
    else
      @rating = Rating.find(params[:id])
    end
  end

  # POST /ratings
  # POST /ratings.json
  def create
    @rating = Rating.new(params[:rating]) 
    @rating.user_id = current_user.id
    @rating.admin = current_user.admin 

    respond_to do |format|
      if @rating.save
        format.html { redirect_to @rating, notice: 'Rating was successfully created.' }
        format.json { render json: @rating, status: :created, location: @rating }
      else
        format.html { render action: "new" }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ratings/1
  # PUT /ratings/1.json
  def update
    if require_admin
    else
      @rating = Rating.find(params[:id])

      respond_to do |format|
        if @rating.update_attributes(params[:rating])
          format.html { redirect_to @rating, notice: 'Rating was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @rating.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /ratings/1
  # DELETE /ratings/1.json
  def destroy
    if require_admin
    else
      @rating = Rating.find(params[:id])
      @rating.destroy

      respond_to do |format|
        format.html { redirect_to ratings_url }
        format.json { head :no_content }
      end
    end
  end
end
