require 'pry'
require_relative 'dm-code'




# # Welcome to DataMapper
# Lets get started and set everything up.
# This can be painful, but with guidance from the sensei, you should
# be on your way in no time! 


describe "Lesson 1 -- Getting Setup" do

  # # 1. Install an Adapter
  # First, you will need to install an Adapter, which allows DataMapper to communicate to the Database:
  # http://datamapper.org/getting-started.html
  it "Step 1 -- Install Adapter" do
    gems = `gem list | grep ^dm-[a-zA-Z]*-adapter`
    gems.should_not be_empty
  end

  # # 2. Install DataMapper
  # If you have RubyGems installed, open a Terminal and install a few things.
  # gem install data_mapper
  it "Step 2 -- Install DataMapper" do
    data_mapper_gem = `gem list | grep data_mapper`
    data_mapper_gem.should_not be_empty
  end
  
  # # 3. Require DataMapper in your application
  # This is the first time we'll want to add code to dm-code.rb
  # if DataMapper does not exist, you probably forgot to require it! 
  it "Step 3 -- require DataMapper" do
    Kernel.const_get(:DataMapper).should == DataMapper
  end
  
  # # 4. Specify your database connection
  # You need to make sure to do this before you use your models, i.e. before you actually start accessing the database.
  # You will need to create a database and supply a path. 
  # If you are using sqlite3,  the  puppies.db
  it "Step 4 -- Specify your database connection" do
    repo = DataMapper.repository(:default)
    repo.should be_instance_of DataMapper::Repository
  end
end


describe "Lesson 2 -- Define a Puppy" do
  
  # # 5. Define models and properties
  # The Post model is going to need to be persistent, so we'll include DataMapper::Resource. The convention with model names is to use the singular, not plural version...but that's just the convention, you can do whatever you want.
  it "Step 5 -- Define models and properties" do 
  end
  
  # # 6. Setup associations
  it "Step 6 -- Setup associations"

  # # 7. finalize models
  it "7 -- finalize models"
  
  # # 8. Setup Tables in Database
  it "8 -- Setup Tables in Database"
  
  # # 9. Create resource object
  it "9 -- Create resource object"
  
  # # 10. Query the database
  it "10 -- Query the database"
end
