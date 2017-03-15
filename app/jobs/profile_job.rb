class ProfileJob < ApplicationJob
  queue_as :default

  def perform(profile_array)
    ProfileLearner.generate profile_array
  end
end
