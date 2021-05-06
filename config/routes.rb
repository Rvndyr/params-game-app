Rails.application.routes.draw do
  get "/query_params/:title", controller: "params_example", action: "query_params"

  get "/url_segmemt/:thing", controller: "params_example", action: "url_segment"
end
