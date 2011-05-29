# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.create(:login_code => 'test', :login_passwd => 'test', :first_name => 'st', :family_name => 'te')

Section.create([
    {:name => '全社', :sort_no => 1},
    {:name => 'センター', :superior_section_id=>1, :sort_no => 2},
    {:name => 'テスト部', :superior_section_id=>2, :sort_no => 3},
    {:name => 'システム１課', :superior_section_id=>3, :sort_no => 4},
    {:name => 'システム２課', :superior_section_id=>3, :sort_no => 5}
  ])

Post.create([
    {:name => '社長', :sort_no => 1},
    {:name => '部長', :sort_no => 2},
    {:name => '課長', :sort_no => 3},
    {:name => '一般', :sort_no => 4}
  ])

Project.create([
    {:name => 'プロジェクト１', :project_status_id => 1},
    {:name => 'プロジェクト２', :project_status_id => 1}
  ])

ProjectStatus.create([
    {:name => '契約完了', :sort_no => 1},
    {:name => '納品完了', :sort_no => 2}
  ])

PlantCategory.create([
    {:name => 'PG', :sort_no => 1},
    {:name => 'プログラミング', :superior_plant_category_id => 1, :sort_no => 2},
    {:name => '調査', :superior_plant_category_id => 1, :sort_no => 3},
    {:name => 'テスト', :superior_plant_category_id => 1, :sort_no => 4},
    {:name => '会議', :superior_plant_category_id => 1, :sort_no => 5}
  ])