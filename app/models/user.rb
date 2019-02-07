# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :profiles
  mount_uploader :image, ImageUploader
end
