class CronosController < ApplicationController

  def getData
    require 'net/http'

    uri = URI.parse("http://example.orghttp://climate.ncsu.edu/dynamic_scripts/cronos/getCRONOSdata.php?station=KRDU&obtype=H&parameter=temp,dew,rh,precip,ws,wd,slp,altimeter&start=2010-01-01&end=2010-01-01&hash=")

    # Shortcut
    #response = Net::HTTP.post_form(uri, {"user[name]" => "testusername",  "user[email]" => "testemail@yahoo.com"})

    # Full control
    http = Net::HTTP.new(uri.host, uri.port)

    request = Net::HTTP::Post.new(uri.request_uri)
    #request.set_form_data({"user[name]" => "testusername", "user[email]" => "testemail@yahoo.com"})

    response = http.request(request)
    puts ************************ + response
    render :json => response.body
  end
end
