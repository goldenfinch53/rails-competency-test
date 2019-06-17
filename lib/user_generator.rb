class UserGenerator 
  def self.generate user_count, role
    user_count.times do 
      User.create(email: Faker::Internet.email, password: 'testtest', role: role)
    end
  end
end