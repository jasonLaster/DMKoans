require 'rubygems'
require 'data_mapper'

# setup sqlite3 connections
DataMapper.setup(:default, 'sqlite::memory:')

