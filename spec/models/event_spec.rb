require 'rails_helper'

RSpec.describe Event, type: :model do
  describe '#create' do
    before do
      @event = FactoryBot.build(:event)
    end
    
    it "nameとprice, area_idとgenre_id, addressとevent_date, opning_timeとevent_time, start_timeとend_timeが存在すれば登録できる" do
      expect(@event).to be_valid
    end
    it "イベント名の入力が必須である" do
      @event.title = nil
      @event.valid?
      expect(@event.errors.full_messages).to include("イベント名を入力してください")
    end
    it "金額の入力が必須である" do
      @event.price = nil
      @event.valid?
      expect(@event.errors.full_messages).to include("金額を入力してください")
    end
    it "販売価格は半角数字のみ保存可能である" do
      @event.price = '１０００'
      @event.valid?
      expect(@event.errors.full_messages).to include("金額は半角数字で入力してください")
    end
    it "地域の入力が必須である" do
      @event.area_id = nil
      @event.valid?
      expect(@event.errors.full_messages).to include("地域を入力してください")
    end
    it "ジャンルの入力が必須である" do
      @event.genre_id = nil
      @event.valid?
      expect(@event.errors.full_messages).to include("ジャンルを入力してください")
    end
  end
end
