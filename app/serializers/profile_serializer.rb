class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :occupation, :gender, :race, :interest, :hobbies
  has_one :user
end
