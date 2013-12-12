class TweetStoresController < ApplicationController
  before_action :set_tweet_store, only: [:show, :edit, :update, :destroy]

  # GET /tweet_stores
  # GET /tweet_stores.json
  def index
    @tweet_stores = TweetStore.all.desc(:tweeted_on)
    respond_to do |format|
      format.json {render json: @tweet_stores,:callback => params['callback']}
      format.html
    end
  end

  # GET /tweet_stores/1
  # GET /tweet_stores/1.json
  def show
  end

  # GET /tweet_stores/new
  def new
    @tweet_store = TweetStore.new
  end

  # GET /tweet_stores/1/edit
  def edit
  end

  # POST /tweet_stores
  # POST /tweet_stores.json
  def create
    @tweet_store = TweetStore.new(tweet_store_params)

    respond_to do |format|
      if @tweet_store.save
        format.html { redirect_to @tweet_store, notice: 'Tweet store was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tweet_store }
      else
        format.html { render action: 'new' }
        format.json { render json: @tweet_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweet_stores/1
  # PATCH/PUT /tweet_stores/1.json
  def update
    respond_to do |format|
      if @tweet_store.update(tweet_store_params)
        format.html { redirect_to @tweet_store, notice: 'Tweet store was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tweet_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweet_stores/1
  # DELETE /tweet_stores/1.json
  def destroy
    @tweet_store.destroy
    respond_to do |format|
      format.html { redirect_to tweet_stores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet_store
      @tweet_store = TweetStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_store_params
      params.require(:tweet_store).permit(:word, :tweet)
    end
  end
