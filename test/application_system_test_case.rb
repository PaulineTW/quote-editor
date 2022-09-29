require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # Change :chrome with :headless_chrome
  Capybara.configure do |config|
    config.always_include_port = true
  end

  driven_by :selenium, using: :headless_chrome do |option|
    option.add_argument "no-sandbox"
  end
end
