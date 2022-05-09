class SideDish < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'サラダ・和え物' },
    { id: 3, name: 'つけもの・おひたし' },
    { id: 4, name: 'みそ汁・スープ' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :cookings
end
