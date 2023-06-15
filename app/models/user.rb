class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :letters
  has_one_attached :photo
  has_many :friends, through: :friendships
  # All friendships
  has_many :friendships, -> { Friendship.where(user: self).or(Friendship.where(friend: self)) },
  inverse_of: :user, dependent: :destroy

  before_save :generate_comkey

  # Friends that I have sent a request to and didn't accept yet
  has_many :sent_friendships, -> { Friendship.where(user: self, status: :sent) },
  inverse_of: :user, dependent: :destroy

  has_many :received_friendships, -> { Friendship.where(friend: self, status: :sent) },
  inverse_of: :user, dependent: :destroy

  has_many :connected_friendships, -> {
    Friendship.where(user: self, status: :accepted)
    .or(Friendship.where(friend: self, status: :accepted))
    }, inverse_of: :user, dependent: :destroy

    has_many :sent_friends, through: :sent_friendships
    #has_many :connected_friends, through: :connected_friendships
    #has_many :received_friends, through: :received_friendships

  def connected_friends
    friendships = Friendship.where(user: self, status: :accepted).or(
      Friendship.where(friend: self, status: :accepted)
    )

    friendships.map do |friendship|
      friendship.user == self ? friendship.friend : friendship.user
    end
  end

  def received_friends
    Friendship.where(friend: self, status: :sent).map(&:user)
  end

  private

  def generate_comkey
    return if comkey

    self.comkey = SecureRandom.hex(2)
  end
end
