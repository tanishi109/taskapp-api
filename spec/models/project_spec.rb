require 'spec_helper'

describe Project do
  describe "*** getTitle" do
    before do
      p = Project.new
      p.title = "hoge_title"
      p.detail = "hoge_detail"
      p.save
      @project = Project.where(:title => "hoge_title").first
    end
    context "nomal case" do
      it "not null" do
        @project.getTitle.should_not be_nil
      end
    end
  end
end

