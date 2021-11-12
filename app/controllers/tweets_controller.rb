class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    #バリデーションで問題があれば、保存はされず「投稿画面」に戻る
    if @tweet.valid?
      @tweet.save
      redirect_to root_path
    else
      #保存されなければ、newに戻る
      render 'new'
    end
  end

  def destroy
    tweet = Tweet.find(params[:id] )
    tweet.destroy
    redirect_to root_path
  end

  def edit 
    @tweet  = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :edit
    end

  end




  private

  def tweet_params
    params.require(:tweet).permit(:image,:sentence).merge(user_id: current_user.id)

  end

end
