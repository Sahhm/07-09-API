require_relative "ClassMethods.rb"


class Assignment
  
  extend DatabaseClassMethods
  
  attr_reader :id
  attr_accessor :name, :assignmentlink, :contributor_id
  
  #initializes a new course object
  #sets object attributes to whatever was entered
  def initialize(work_options={})
    
    @id = work_options["id"]
    @name = work_options["name"]
    @assignmentlink = work_options["assignmentlink"]
    @contributor_id = work_options["contributor_id"]
  end
  

  def objects_as_hash
     hash = {"id" => self.id, "name" => self.name, "assignmentlink" => self.assignmentlink, "contributor_id" => self.contributor_id}
   
     return hash
   end
  
  #method turns new inputs into arguments to update a single line of a database
  def self.save(new_name, link, groupmember, assignment_id)
    CONNECTION.execute("UPDATE courses SET name = '#{new_name}', assignmentlink = #{link}, contributor_id = #{groupmember} WHERE id = #{assignment_id};")
     
    return self
  end
  
  # def object_as_hash
  #
  #   results = CONNECTION.execute("SELECT assignments.name AS assignment, assignments.assignmentlink AS link, assignments.id AS id, groupmembers.name FROM assignments LEFT JOIN groupmembers ON assignments.contributor_id = groupmembers.id;")
  #   results_as_objects = []
  #
  #   results.each do |result_hash|
  #
  #     results_as_objects << self.new(result_hash)
  #
  #   end
  #
  #
  #   binding.pry
  #    hash = {"id" => results.id, "assignment" => results.assignment, "assignmentlink" => results.link, "contributors" => results.name}
  #
  #    return hash
  #  end
  
  
end