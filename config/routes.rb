Rails.application.routes.draw do
  if Rails.env.development?
    require "sidekiq/web"
    mount Sidekiq::web => "/sidekiq"
  end
end
