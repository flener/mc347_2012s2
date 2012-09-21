Mc437::Application.routes.draw do

  resources :clients

  authenticated :admin do
    root :to => 'clients#index'
  end
  root :to => "home#index"

  authenticated :operador do
    root :to => 'clients#index'
  end
  root :to => "home#index"

  devise_for :operadors

  devise_for :admins

  resources :admins, :only => [:show, :index]

  get "/clientesExcluidos" => "clients#indexEx"
  get "/clientesEstagiarios" => "clients#cliente_estagiario"
  get "/clientesPlenos" => "clients#cliente_pleno"
  get "/clientesGerentes" => "clients#cliente_gerente"
  get "/clientesSupervisores" => "clients#cliente_supervisor"
  get "/clientesDiretores" => "clients#cliente_diretor"
  get "/clientesCEOs" => "clients#cliente_ceo"
  get "/clientesCIOs" => "clients#cliente_cio"
  get "/clientesCFOs" => "clients#cliente_cfo"
  get "/clientesFinanceiros" => "clients#cliente_financeiro"
  get "/clientesConstrutoras" => "clients#cliente_construtora"
  get "/clientesComercios" => "clients#cliente_comercio"
  get "/clientesServicos" => "clients#cliente_servico"
  get "/clientesDesempregados" => "clients#cliente_desempregado"
  get "/clientesRenda1" => "clients#cliente_renda1"
  get "/clientesRenda2" => "clients#cliente_renda2"
  get "/clientesRenda3" => "clients#cliente_renda3"
  get "/clientesRenda4" => "clients#cliente_renda4"
  get "/clientesRenda5" => "clients#cliente_renda5"
  get "/clientesRenda6" => "clients#cliente_renda6"
  get "/clientesRenda7" => "clients#cliente_renda7"
  get "/clientesEsportes" => "clients#cliente_esportes"
  get "/clientesGames" => "clients#cliente_games"
  get "/clientesTelevisao" => "clients#cliente_televisao"
  get "/clientesLeitura" => "clients#cliente_leitura"
  get "/clientesSemHobbies" => "clients#cliente_sem_hobbies"
  get "/clientesCompras" => "clients#cliente_compras"
  get "/clientesCristianismo" => "clients#cliente_cristianismo"
  get "/clientesJudaismo" => "clients#cliente_judaismo"
  get "/clientesIslamismo" => "clients#cliente_islamismo"
  get "/clientesEspiritismo" => "clients#cliente_espiritismo"
  get "/clientesAteu" => "clients#cliente_ateu"
  get "/relatorios" => "clients#relatorios"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
#== Route Map
# Generated on 20 Sep 2012 00:59
#
#                              POST   /clients(.:format)                 clients#create
#                   new_client GET    /clients/new(.:format)             clients#new
#                  edit_client GET    /clients/:id/edit(.:format)        clients#edit
#                       client GET    /clients/:id(.:format)             clients#show
#                              PUT    /clients/:id(.:format)             clients#update
#                              DELETE /clients/:id(.:format)             clients#destroy
#                         root        /                                  clients#index
#                         root        /                                  home#index
#                         root        /                                  clients#index
#                         root        /                                  home#index
#         new_operador_session GET    /operadors/sign_in(.:format)       devise/sessions#new
#             operador_session POST   /operadors/sign_in(.:format)       devise/sessions#create
#     destroy_operador_session DELETE /operadors/sign_out(.:format)      devise/sessions#destroy
#            operador_password POST   /operadors/password(.:format)      devise/passwords#create
#        new_operador_password GET    /operadors/password/new(.:format)  devise/passwords#new
#       edit_operador_password GET    /operadors/password/edit(.:format) devise/passwords#edit
#                              PUT    /operadors/password(.:format)      devise/passwords#update
# cancel_operador_registration GET    /operadors/cancel(.:format)        devise/registrations#cancel
#        operador_registration POST   /operadors(.:format)               devise/registrations#create
#    new_operador_registration GET    /operadors/sign_up(.:format)       devise/registrations#new
#   edit_operador_registration GET    /operadors/edit(.:format)          devise/registrations#edit
#                              PUT    /operadors(.:format)               devise/registrations#update
#                              DELETE /operadors(.:format)               devise/registrations#destroy
#            new_admin_session GET    /admins/sign_in(.:format)          devise/sessions#new
#                admin_session POST   /admins/sign_in(.:format)          devise/sessions#create
#        destroy_admin_session DELETE /admins/sign_out(.:format)         devise/sessions#destroy
#               admin_password POST   /admins/password(.:format)         devise/passwords#create
#           new_admin_password GET    /admins/password/new(.:format)     devise/passwords#new
#          edit_admin_password GET    /admins/password/edit(.:format)    devise/passwords#edit
#                              PUT    /admins/password(.:format)         devise/passwords#update
#    cancel_admin_registration GET    /admins/cancel(.:format)           devise/registrations#cancel
#           admin_registration POST   /admins(.:format)                  devise/registrations#create
#       new_admin_registration GET    /admins/sign_up(.:format)          devise/registrations#new
#      edit_admin_registration GET    /admins/edit(.:format)             devise/registrations#edit
#                              PUT    /admins(.:format)                  devise/registrations#update
#                              DELETE /admins(.:format)                  devise/registrations#destroy
#                       admins GET    /admins(.:format)                  admins#index
#                        admin GET    /admins/:id(.:format)              admins#show
#             clientsExcluidos GET    /clientsExcluidos(.:format)        clients#indexEx
