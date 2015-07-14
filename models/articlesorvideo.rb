require_relative "ClassMethods.rb"


class Articlesorvideo
  
  extend DatabaseClassMethods
  
  attr_reader :id
  attr_accessor :medialink, :assignment_id
  
  #initializes a new course object
  #sets object attributes to whatever was entered
  def initialize(work_options={})
    
    @id = work_options["id"]
    @medialink = work_options["medialink"]
    @assignment_id = work_options["assignment_id"]
  end
  


  
  #method turns new inputs into arguments to update a single line of a database
  def self.save(link, assignment, media_id)
    CONNECTION.execute("UPDATE courses SET medialink = '#{link}', assignment_id = #{assignment} WHERE id = #{media_id};")
     
    return self
  end
  
end