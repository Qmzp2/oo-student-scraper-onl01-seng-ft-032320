class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(hash_browns)
    self.send("name=", hash_brown[:name])
    self.send("profile_url=", hash_brown[:profile_url])
    self.send("location=", hash_brown[:location])
    save
  end
  
  def save
    @@all << self
  end
  

  def self.create_from_collection(students_array)
    
  end

  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    
  end
end

