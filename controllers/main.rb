get "/homepage" do
  erb :"main/homepage"
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

get "/add_media_link" do
  media_options = {"medialink" => params["medialink"], "assignment_id" => params["assignment_id"]}
  Articlesorvideo.add(media_options)
  erb :"add_media_link_form"
end


get "/group_project_form" do
  erb :"goroup_project_form"
end

get "/group_project" do
  
  erb :"goroup_project_form"
end