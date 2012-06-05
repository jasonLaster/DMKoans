require 'rubygems'
require 'data_mapper'

# setup sqlite3 connections
DataMapper.setup(:default, 'sqlite::memory:')


########################################
# MODELS ###############################
########################################

class Puppy
  include DataMapper::Resource

	# Properties
	property :id, Serial
	property :name, String
	property :breed, String
	property :birthday, DateTime

	# Associations
	# has 1, :person
end

class Person
	include DataMapper::Resource

	# Properties
	property :id, Serial
	property :name, String

	# Association
	# has 1, :puppy
end

class Course
	include DataMapper::Resource

	# Properties
	property :id, Serial
	property :topic, String

	# Association
	# has n, :puppy
end

class Enrolement
	include DataMapper::Resource
end

