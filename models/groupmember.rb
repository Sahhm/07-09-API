require_relative "ClassMethods.rb"


class Groupmember
  
  extend DatabaseClassMethods
  
  attr_reader :id
  attr_accessor :name, :assignment_id
  
  #initializes a new course object
  #sets object attributes to whatever was entered
  def initialize(work_options={})
    
    @id = work_options["id"]
    @name = work_options["name"]
    @assignment_id = work_options["assignment_id"]
  end
  


  
  #method turns new inputs into arguments to update a single line of a database
  def self.save(new_name, assignment_id, member_id)
    CONNECTION.execute("UPDATE courses SET name = '#{new_name}', assignment_id = #{assignment_id} WHERE id = #{member_id};")
     
    return self
  end
  
end