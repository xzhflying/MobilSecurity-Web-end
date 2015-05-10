# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if State.count == 0
  State.create! statenumber: 1, description: '已绑定'
  State.create! statenumber: 2, description: '已冻结'
  State.create! statenumber: 3, description: '已解除绑定'
end
