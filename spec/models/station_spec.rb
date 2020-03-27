# frozen_string_literal: true

require 'rails_helper'

# 駅名があれば有効
RSpec.describe Station, type: :model do
  it 'is valid with name' do
    station = Station.new(name: '武蔵小杉')
    expect(station).to be_valid
  end
end

# 駅名がなければ無効
RSpec.describe Station, type: :model do
  it 'is invalid without name' do
    station = Station.new(name: nil)
    station.valid?
    expect(station.errors[:name]).to include('を入力してください')
  end
end
