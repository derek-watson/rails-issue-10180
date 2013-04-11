SubdomainTest::Application.routes.draw do
  constraints subdomain: 'admin' do
    defaults subdomain: 'admin' do
      namespace :admin, path: '/' do
        root to: 'dashboard#index'
      end
    end
  end

  constraints subdomain: false do
    defaults subdomain: false do
      root :to => 'home#index'
    end
  end
end
