class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all # @tweetsはTweetsテーブル全てのレコードを指す
  end

  def new 
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.require (:tweet).parmit(:name, :image, :text)
  end
end
