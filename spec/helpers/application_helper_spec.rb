require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should include the page title" do
      expect(full_title("help")).to match(/help/)
      expect(full_title("contact")).to match(/contact/)
      expect(full_title("about")).to match(/about/)
      expect(full_title("signup")).to match(/signup/)
    end

    it "should include the base title" do
      expect(full_title("help")).to match(/^Ruby on Rails Tutorial App/)
    end

    it "should not include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end