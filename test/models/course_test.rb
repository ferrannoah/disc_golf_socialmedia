# == Schema Information
#
# Table name: courses
#
#  id         :bigint           not null, primary key
#  address    :string
#  h1         :integer          default(3)
#  h10        :integer          default(3)
#  h11        :integer          default(3)
#  h12        :integer          default(3)
#  h13        :integer          default(3)
#  h14        :integer          default(3)
#  h15        :integer          default(3)
#  h16        :integer          default(3)
#  h17        :integer          default(3)
#  h18        :integer          default(3)
#  h2         :integer          default(3)
#  h3         :integer          default(3)
#  h4         :integer          default(3)
#  h5         :integer          default(3)
#  h6         :integer          default(3)
#  h7         :integer          default(3)
#  h8         :integer          default(3)
#  h9         :integer          default(3)
#  image      :string
#  length     :integer          default(18)
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
