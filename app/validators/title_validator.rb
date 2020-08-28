class TitleValidator < ActiveModel::Validator
  def validate(record)
    return false if record.title == nil
    valid_titles = ["Won't Believe", "Secret", "Top", "Guess"]
    unless valid_titles.any? { |word| record.title.include?(word) }
      record.errors[:title] << "We're only allowed to have people who work for the company in the database!"
    end
  end
end