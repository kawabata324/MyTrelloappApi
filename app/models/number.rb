# create_table "numbers", charset: "utf8mb4", force: :cascade do |t|
#   t.datetime "start"
#   t.datetime "end"
#   t.integer "luck_num"
#   t.integer "seven_num"
#   t.integer "big_num"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end
class Number < ApplicationRecord
  #rails 7より実装された機能
  # validates :end, comparison: { grater_than: :start }
  # validates :start, comparison: { less_than: :end }
  # validates :luck_num, comparison: { equal_to: :seven_num }
  # validates :big_num, comparison: { greater_than_or_equal_to: :seven_num }
  validates :luck_num, exclusion: { in: [4], message: "%{value}は不吉な数です" }
  validates :big_num, length: { is: 2 }
end

