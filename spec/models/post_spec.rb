# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
require "rails_helper"

RSpec.describe Post, type: :model do
    pending "add some examples to (or delete) #{__FILE__}"
end
