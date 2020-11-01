module Clashroyal
  class Search
    def self.clan_by_tag(clanTag)
      Faraday.get 'https://api.clashroyale.com/v1/clans/' + clanTag + '/members'  do |req|
        req.params['limit'] = 50
        req.headers['Content-Type'] = 'application/json'
        req.headers['Authorization'] = 'Bearer ' + ENV['API_KEY']
      end
    end
    def self.member_by_tag(memberTag)
      Faraday.get 'https://api.clashroyale.com/v1/players/' + memberTag + '/upcomingchests'  do |req|
        req.params['limit'] = 50
        req.headers['Content-Type'] = 'application/json'
        req.headers['Authorization'] = 'Bearer ' + ENV['API_KEY']
      end
    end
  end
end
