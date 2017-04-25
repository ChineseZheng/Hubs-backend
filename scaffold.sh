rails g scaffold api/v1/User account:string name:string password:string avatar_url:string email:string phone:string description:string user_type_id:integer 
rails g scaffold api/v1/Course name:string avatar_url:string category_id:integer description:text instruction:text vedio_url:string vedio_avatar_url
rails g scaffold api/v1/Admin account:string name:string email:string phone:string password:string admin_type_id:integer
rails g scaffold api/v1/Pending avatar_url:string account:string name:string password:string email:string phone:string description:string user_type_id:integer 
rails g scaffold api/v1/Progress description:text
rails g scaffold api/v1/Category name:string avatar_url:string instruction:text description:text
rails g scaffold api/v1/UserToUser fans_user_id:integer star_user_id:integer
rails g scaffold api/v1/UserToCourse user_id:integer course_id:integer category_id:integer
rails g scaffold api/v1/UserToCategory user_id:integer category_id:integer
rails g scaffold api/v1/UserToProgress user_id:integer course_id:integer category_id:integer
rails g scaffold api/v1/UserType name:string 
rails g scaffold api/v1/AdminType name:string 