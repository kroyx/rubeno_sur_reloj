require "test_helper"
require "generators/esxafodo/esxafodo_generator"

class EsxafodoGeneratorTest < Rails::Generators::TestCase
  tests EsxafodoGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
