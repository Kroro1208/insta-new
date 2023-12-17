# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  body       :text(65535)
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
    describe 'factory bot' do
        it 'factory botでレコードが作成できること' do
            expect { create(:post) }.to change(Post, :count).by(1)
        end
    end
end
