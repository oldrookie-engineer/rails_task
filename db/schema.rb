
ActiveRecord::Schema.define(version: 2020_04_19_055205) do


  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
  end

end
