require_relative 'puppy'

# Class 1: setup datamapper
#   lesson 1: make sure youve loaded in datamapper
#     case
#     when success
#       congrats - you now have the power of DM.
#     when e == "no method defined"
#       
#   lesson 2: setup database connection
# 




describe "setup datamapper" do

  it "addition 1" do
    (2+2).should eq(4)
  end

  it "DataMapper should be in memory" do
    DataMapper.should exist
  end

  it "addition 2" do
    (2+2).should eq(4)
  end

  it "bad addition" do
    (2+2).should eq(2)
  end



end