class SearchController < ApplicationController
  def index
    if params['clanTag']
      @clanTag = params['clanTag']
      @response = Clashroyal::Search.clan_by_tag(@clanTag.gsub(/#/, '%23'))
      @resp = JSON.parse(@response.body)
    end
    if params['memberTag']
      @memberTag = params[:memberTag]
      @response = Clashroyal::Search.member_by_tag(@memberTag.gsub(/#/, '%23'))
      @resp = JSON.parse(@response.body)
    end
  end
  def show
      if params['memberTag']
      @memberTag = params[:memberTag]
      @response = Clashroyal::Search.member_by_tag(@memberTag.gsub(/#/, '%23'))
      @resp = JSON.parse(@response.body)
      end
  end
end
