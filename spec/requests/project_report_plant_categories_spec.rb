require 'spec_helper'

describe "ProjectReportPlantCategories" do
  describe "GET /project_report_plant_categories" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get project_report_plant_categories_path
      response.status.should be(200)
    end
  end
end
