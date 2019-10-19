# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_19_003932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.string "platform"
    t.integer "skill_level"
    t.text "details"
    t.string "outcome"
    t.text "how_to_enroll"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
