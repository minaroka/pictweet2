class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all # @tweetsはTweetsテーブル全てのレコードを指す
  end

  def new 
    @tweet = Tweet.new
  end
end
