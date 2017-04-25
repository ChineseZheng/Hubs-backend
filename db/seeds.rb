# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Api::V1::UserType.create([{name:"student"},{name:"parent"},{name:"teacher"},{name:"school"},{name:"enterprise"}])
admin_type=Api::V1::AdminType.create([{name:"一般工作人员"},{name:"超级管理员"}])
Api::V1::Admin.create([{account:"test",password:"123456",admin_type_id:2,email:"861827427@qq.com"}])
