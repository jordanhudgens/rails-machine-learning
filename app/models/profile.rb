class Profile < ApplicationRecord
  after_save do
    ProfileJob.perform_later self.profile_values.map(&:to_i)
  end
end
