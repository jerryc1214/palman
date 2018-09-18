Rails.application.routes.draw do
  root 'book#main'
  
  get 'book/main'

  get 'book/publisher'

  get 'book/community'

  get 'book/notice'

  get 'book/maker'
  
  get 'book/eulyoo'
  
  get 'book/minum'
  
  get 'book/openbooks'
  
  get 'book/munhak'
  
  get 'book/penguin'
  
  get 'book/search'
  
  get '/search_result' => 'book#search_result'
  
  get '/password_action/:num' => 'book#password_action'
  
   get '/password_notice_action/:num' => 'book#password_notice_action'
  
  get '/password_update_action/:num' => 'book#password_update_action'
  
  get '/password_noticeupdate_action/:num' => 'book#password_noticeupdate_action'
  
  get '/notice_action' => 'book#notice_action'
  
  get 'book/community' => 'book#index'
  
  get '/write' => 'book#write'
  
  get '/search_action' => 'book#search_action'
  
  get '/notice_write' => 'book#notice_write'

  get '/read/:num' => 'book#read'
  
  get '/notice_read/:num' => 'book#notice_read'
  
  get '/write_action' => 'book#write_action'
  
  get '/notice_write_action' => 'book#notice_write_action'
  
  get '/notice_update_action' => 'book#notice_update_action'
  
  get '/comment_create' => 'comment#create'
  
  get '/comment/create/:num' => 'comment#create'
  
  get '/comment/delete/:c_id/:p_id' => 'comment#delete'
  
  get '/comment/password_comment_action/:c_id/:p_id' => 'comment#password_comment_action'
  
  get '/delete/:num' => 'book#delete'
  
  get '/notice_delete/:num' => 'book#notice_delete'
  
  get '/update/:num' => 'book#update'
  
  get '/notice_update/:num' => 'book#notice_update'
  
  get '/update_action/:num' => 'book#update_action'
  
  get '/notice_update_action/:num' => 'book#notice_update_action'
  
  get '/create/:num' => 'comment#create'
  
  get '/delete/:c_id/:p_id' => 'comment#delete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
