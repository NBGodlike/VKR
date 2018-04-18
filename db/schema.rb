# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180417200319) do

  create_table "actor_structures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "role"
    t.bigint "actor_id"
    t.bigint "perfomance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_actor_structures_on_actor_id"
    t.index ["perfomance_id"], name: "index_actor_structures_on_perfomance_id"
  end

  create_table "actors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "surname"
    t.string "name"
    t.string "patronymic"
    t.bigint "theate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theate_id"], name: "index_actors_on_theate_id"
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "content"
    t.bigint "theate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theate_id"], name: "index_comments_on_theate_id"
  end

  create_table "leaders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "surname"
    t.string "name"
    t.string "patronymic"
    t.text "telefon"
    t.string "job"
    t.bigint "theate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theate_id"], name: "index_leaders_on_theate_id"
  end

  create_table "perfomances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "status"
    t.datetime "date"
    t.bigint "play_ground_id"
    t.bigint "repertoire_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["play_ground_id"], name: "index_perfomances_on_play_ground_id"
    t.index ["repertoire_id"], name: "index_perfomances_on_repertoire_id"
  end

  create_table "play_grounds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "address"
    t.integer "seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repertoires", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "producer"
    t.string "name"
    t.string "genre"
    t.bigint "theate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theate_id"], name: "index_repertoires_on_theate_id"
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "surname"
    t.string "name"
    t.string "patronymic"
    t.text "content"
    t.bigint "perfomance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["perfomance_id"], name: "index_reviews_on_perfomance_id"
  end

  create_table "seats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "row"
    t.integer "numseat"
    t.bigint "zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zone_id"], name: "index_seats_on_zone_id"
  end

  create_table "theates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "address"
    t.text "telefon"
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "selldate"
    t.integer "numticket"
    t.bigint "seat_id"
    t.bigint "perfomance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["perfomance_id"], name: "index_tickets_on_perfomance_id"
    t.index ["seat_id"], name: "index_tickets_on_seat_id"
  end

  create_table "zones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.integer "price"
    t.bigint "play_ground_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["play_ground_id"], name: "index_zones_on_play_ground_id"
  end

  add_foreign_key "actor_structures", "actors"
  add_foreign_key "actor_structures", "perfomances"
  add_foreign_key "actors", "theates"
  add_foreign_key "comments", "theates"
  add_foreign_key "leaders", "theates"
  add_foreign_key "perfomances", "play_grounds"
  add_foreign_key "perfomances", "repertoires"
  add_foreign_key "repertoires", "theates"
  add_foreign_key "reviews", "perfomances"
  add_foreign_key "seats", "zones"
  add_foreign_key "tickets", "perfomances"
  add_foreign_key "tickets", "seats"
  add_foreign_key "zones", "play_grounds"
end
