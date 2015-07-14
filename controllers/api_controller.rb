  
get "/api/assignments" do
  
  erb :"api/assignments"
end


get "/api/assignments/:x" do
 
 

  @assignment = Assignment.find(params["x"])
  
  @assignment_hash = @assignment.objects_as_hash
  
  
  
 json @assignment_hash
  
end

