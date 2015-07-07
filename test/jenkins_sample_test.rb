#!/usr/bin/env ruby

require 'net/http'
require 'test/unit'
require 'socket'

class JenkinsSampleTest  < Test::Unit::TestCase
   def setup
      @webpage = Net::HTTP.get(URI("http://#{ENV['TEST_IP_ADDRESS']}:8000/index.html"))
   end

   def test_congratulations
      assert(@webpage =~ /Congratulations!/)
   end
end
