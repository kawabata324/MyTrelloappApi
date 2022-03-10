# puts '検索キーワードを入力してください'
# search_keyword = gets.chomp
#
# app_id = ENV['RAKUTEN_APP_ID']
# require 'faraday'
# res = Faraday.get("https://app.rakuten.co.jp/services/api/IchibaItem/Search/20170706",client_id: '3be620c6a4cc0bfc2e4235a5bee3ba34c70a9883',applicationId: app_id, keyword: search_keyword)
# res_json = JSON.parse(res.body)
# puts res_json