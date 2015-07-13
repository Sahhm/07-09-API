get "/homepage" do
  erb :"main/homepage"
end

get "/api/assignments" do
  erb :"api/assignments"
  
end


get "/api/assignments/:id" do
  erb :"api/assignments/x"
  
end


get "/add_assignment_form" do
  erb :"/main/add_assignment_form"
  

end

get "/add_assignment" do

  work_options = {"name" => params["name"], "assignmentlink" => params["assignmentlink"], "contributor_id" => params["contributor_id"].to_i}
  Assignment.add(work_options)
    erb :"/main/add_assignment"
end


get "/add_media_link_form" do
  erb :"add_media_link_form"
end

get "/group_project_form" do
  erb :"goroup_project_form"
end