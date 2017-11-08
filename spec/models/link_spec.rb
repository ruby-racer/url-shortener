require 'rails_helper'

RSpec.describe Link, type: :model do
  describe '#original url' do
    record = Link.new
    record.original_url = '' # invalid state
    record.valid? # run validations
  
    it {should_not allow_value('').for(:original_url)}
    it {should_not allow_value('blah').for(:original_url)}
    it {should allow_value('http://google.com').for(:original_url)}
  end
end
