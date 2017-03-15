module ProfilesHelper
  def name_converter recommendation
    if recommendation == 1
      'Student is a match'
    else
      'Student may need assistance'
    end
  end
end
