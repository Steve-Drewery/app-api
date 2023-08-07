class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :set_numbers
end
