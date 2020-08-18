# since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)
require 'pry'
class Puppy
    attr_accessor :name, :breed, :age

    @@all = []

    def initialize(attrs)
        attrs.each {|k,v| self.send("#{k}=", v)}
    end

    def self.all
        @@all
    end
end