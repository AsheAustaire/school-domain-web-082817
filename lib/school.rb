require 'pry'

class School

    attr_accessor :roster
    attr_reader :name


    def initialize(name)

        @name = name
        @roster = {}

    end

    def add_student(name, grade)
        @roster[grade] = [] if roster[grade] == nil
        @roster[grade] << name
    end

    def grade(grade)
        return roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end
