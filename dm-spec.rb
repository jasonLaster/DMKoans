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
    adapter = `gem list | grep .+-adapter`
  end

  # # 2. Install DataMapper
  # If you have RubyGems installed, open a Terminal and install a few things.
  # gem install data_mapper
  it "Step 2 -- Install DataMapper" do
    dm = `gem list | grep data_mapper`
    dm.should match(/data_mapper/)
  end
  
  # # 3. Require it in your application
  it "Step 3" do
    DataMapper.should exist
  end
  
  
  
  
  
  



end
