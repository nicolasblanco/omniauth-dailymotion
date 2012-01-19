require 'spec_helper'
require 'omniauth-dailymotion'

describe OmniAuth::Strategies::Dailymotion do
  subject do
    OmniAuth::Strategies::Dailymotion.new(nil, @options || {})
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'should have the correct Dailymotion site' do
      subject.client.site.should eq("https://api.dailymotion.com")
    end

    it 'should have the correct authorization url' do
      subject.client.options[:authorize_url].should eq("/oauth/authorize")
    end

    it 'should have the correct token url' do
      subject.client.options[:token_url].should eq('/oauth/token')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      subject.callback_path.should eq('/auth/dailymotion/callback')
    end
  end
end
