require "../../spec_helper"

module Selenium::Command
  describe DeleteAllCookies do
    it "works" do
      http_client = TestHttpClient.new
      session_id = "c913bd4a033f9932a84bcd921f30793d"
      command = DeleteAllCookies.new(http_client, session_id)

      command.execute

      http_client.request_path.should eq("/session/#{session_id}/cookie")
    end
  end
end
