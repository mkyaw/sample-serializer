class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :cars

  def cars
    self.object.cars.map do |car|
      {
        name: car.name,
        make: car.make,
        model: car.model
      }
    end
  end
end
