require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject{
     User.new(name: 'Tom', photo: 'image.png', bio: 'I am programmer', posts_counter: 0)
    Post.new(title: 'Hello world', text: 'Helloworld',
             likes_counter: 0, comments_counter: 0, user: user)
}

  # before { subject.save }

  it 'should return most recent comments' do
    # user = User.new(name: 'Tom', photo: 'image', bio: 'bio', posts_counter: 0)
    subject.comments.create!(user: user, text: 'hi')
    subject.comments.create!(user: user, text: 'hi')
    subject.comments.create!(user: user, text: 'hi')
    subject.comments.create!(user: user, text: 'hi')
    subject.comments.create!(user: user, text: 'hi')

    expect(subject.return_five_comments).to eql (5)
  end
end