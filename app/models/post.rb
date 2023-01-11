# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  image      :string
#  subject    :string
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_posts_on_course_id  (course_id)
#  index_posts_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (course_id => courses.id)
#  fk_rails_...  (user_id => users.id)
#
class Post < ApplicationRecord
	mount_uploader :image, AvatarUploader

	belongs_to(
		:user,
		class_name: 'User', 
		foreign_key: 'user_id',
		inverse_of: :posts
	)

	has_many(
		:comments,
		class_name: 'Comment', 
		foreign_key: 'post_id',
		inverse_of: :post,
		dependent: :destroy
	)

	belongs_to(
		:course,
		class_name: 'Course', 
		foreign_key: 'course_id',
		inverse_of: :posts
	)
end
