Rails.application.routes.draw do
  get "/query_params", controller: "params_example", action: "query_params"
end
