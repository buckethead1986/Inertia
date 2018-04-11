ActiveRecord::Schema.define(version: 20171225224147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "challenge_type"
    t.string "criteria"
    t.boolean "public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "team_names"
    t.integer "user_created"
    t.boolean "completed"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "challenge_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "challenge_id"
    t.integer "team_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_challenges", force: :cascade do |t|
    t.integer "user_id"
    t.integer "challenge_id"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vote"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.string "tagline"
  end

end
