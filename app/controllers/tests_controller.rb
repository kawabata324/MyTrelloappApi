class TestsController < ApplicationController
  require 'faraday'

  def test
    res = Faraday.get("https://qiita.com/api/v2/users/kawabata324", headers: { Authorization: "Bearer cf56854423eec2d29582a1b6ec5f748d2e44f4c8" })
    res_json = JSON.parse(res.body)
    pp res_json
  end

  def item
    res = Faraday.get("https://qiita.com/api/v2/users/kawabata324/items", headers: { Authorization: "Bearer cf56854423eec2d29582a1b6ec5f748d2e44f4c8" })
    res_json = JSON.parse(res.body)
    pp res_json
  end

  def auth
    res = Faraday.get('https://qiita.com/api/v2/oauth/authorize', client_id: '732bdf3d92479e346ed9c1e21984dc2f8a2416a0', scope: "read_qiita write_qiita", state: "bb17785d811bb1913ef54b0a7657de780defaa2d")
    pp res
  end

  def qiita

  end
end

# ClientId 732bdf3d92479e346ed9c1e21984dc2f8a2416a0
# ClientSecret dad1458d50b05534bbc9526c2473173e6816beef
# dedfe89d0710116d2caa320f045fc9e6d1fce777