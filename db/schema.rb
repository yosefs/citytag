# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120819190044) do

  create_table "cities", :force => true do |t|
    t.string  "name"
    t.decimal "latitude",  :precision => 15, :scale => 10, :default => 0.0
    t.decimal "longitude", :precision => 15, :scale => 10, :default => 0.0
  end

  add_index "cities", ["name"], :name => "index_cities_on_name", :unique => true

  create_table "courses", :force => true do |t|
    t.string "name"
  end

  add_index "courses", ["name"], :name => "index_courses_on_name", :unique => true

  create_table "tagcities", :force => true do |t|
    t.integer "city_id"
    t.integer "tag_id"
  end

  add_index "tagcities", ["city_id", "tag_id"], :name => "index_tagcities_on_city_id_and_tag_id", :unique => true

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  add_index "tags", ["name"], :name => "index_tags_on_name", :unique => true

  create_table "teachercourses", :force => true do |t|
    t.integer "teacher_id"
    t.integer "course_id"
  end

  add_index "teachercourses", ["course_id"], :name => "index_teachercourses_on_course_id", :unique => true
  add_index "teachercourses", ["teacher_id"], :name => "index_teachercourses_on_teacher_id", :unique => true

  create_table "teachers", :force => true do |t|
    t.string "name"
  end

  add_index "teachers", ["name"], :name => "index_teachers_on_name", :unique => true

end
