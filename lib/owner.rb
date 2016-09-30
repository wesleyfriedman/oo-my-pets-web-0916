class Owner
	@@all = []

	attr_accessor :name, :pets
	attr_reader :species

	def initialize(name)
		@name = name
		@pets = {fishes: [], dogs: [], cats: []}
		@species = 'human'
		@@all << self
	end

	def fishes
		@pets[:fishes]
	end

	def dogs
		@pets[:dogs]
	end

	def cats
		@pets[:cats]
	end

	def self.reset_all
		@@all = []
	end

	def self.all
		@@all
	end

	def self.count
		@@all.length
	end

	def say_species
		"I am a #{self.species}."
	end

	def buy_fish(name)
		@pets[:fishes] << Fish.new(name)
	end

	def buy_cat(name)
		@pets[:cats] << Cat.new(name)
	end

	def buy_dog(name)
		@pets[:dogs] << Dog.new(name)
	end

	def walk_dogs
		@pets[:dogs].collect do |dog|
			dog.mood = 'happy'
		end
	end

	def play_with_cats
		@pets[:cats].collect do |cat|
			cat.mood = 'happy'
		end
	end

	def feed_fish
		@pets[:fishes].collect do |fishes|
			fishes.mood = 'happy'
		end
	end

	def sell_pets
		@pets.each do |pet_type, pet_name_array|
			pet_name_array.each do |pet_name|
				pet_name.mood = 'nervous'
			end
		end
		@pets = {}
	end

	def list_pets
		"I have #{fishes.length} fish, #{dogs.length} dog(s), and #{cats.length} cat(s)."
	end

end