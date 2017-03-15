module ProfileLearner
  def self.generate data
    attributes = ['Openness', 'Conscientiousness', 'Extroversion', 'Agreeableness', 'Neuroticism']

    training = Profile.limit(250_000).each_with_object([]) do |profile, arr|
      arr << profile.profile_values.map(&:to_i)
    end

    dec_tree = DecisionTree::ID3Tree.new(attributes, training, 1, :continuous)
    dec_tree.train

    puts "Recommendation is:"
    puts dec_tree.predict(data.map(&:to_i))
  end
end
