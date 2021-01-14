class Genre < ActiveHash::Base

  self.data = [
    { id: 1, name: '音楽' },
    { id: 2, name: '演劇' },
    { id: 3, name: 'お笑い' },
    { id: 4, name: 'スポーツ' },
    { id: 5, name: 'クラシック' },
    { id: 6, name: 'アート' }
  ]

  include ActiveHash::Associations
  has_many :events
end