require 'spec_helper'

describe ProjectsController do
  describe '登録画面にアクセスしたら' do
    before do
      get :index
    end

    it 'サクセスであること' do
      response.should be_success
    end

  end
end
