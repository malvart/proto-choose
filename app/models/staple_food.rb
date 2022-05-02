class StapleFood < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ごはん物' },
    { id: 3, name: 'めん類' },
    { id: 4, name: 'パン類' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :cookings
  
end