class Train
  @@trains = []

  attr_reader(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
  end

  define_singleton_method(:all) do
    @@trains
  end

  define_method(:save) do
    @@trains.push(self)
  end

  define_method(:==) do |another_train|
    self.name().==(another_train.name).&(self.id().==(another_train.id()))
  end
end
