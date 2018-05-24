Rails.application.routes.draw do
  devise_for :users

  root 'theates#index'
  resources :theates, only: [:show,:index] do
    resources :comments
    resources :leaders, only: [:show,:index]
    resources :repertoires, only: [:show,:index]
    resources :actors, only: [:show,:index]

  end

  resources :leaders, only: [:show,:index]

  resources :actors, only: [:show,:index] do
    resources :actor_structures, only: [:show,:index]
  end

  resources :actor_structures, only: [:show,:index]

  resources :perfomances, only: [:show,:index] do
    resources :actor_structures, only: [:show,:index]
    resources :reviews, only: [:show,:index]
    resources :tickets, only: [:show,:index]
  end

  resources :reviews, only: [:show,:index]

  resources :repertoires do
    resources :perfomances, only: [:show,:index]
  end

  resources :play_grounds, only: [:show,:index] do
    resources :perfomances, only: [:show,:index]
    resources :zones, only: [:show,:index]
  end
  resources :zones, only: [:show,:index] do
    resources :seats, only: [:show,:index]
  end

  resources :seats, only: [:show,:index] do
    resources :tickets, only: [:show,:index]
  end
  resources :tickets, only: [:show,:index]

  namespace :admin do
    resources :theates, except: [:show, :index] do
      resources :leaders, except: [:show, :index]
      resources :repertoires, except: [:show, :index]
      resources :actors, except: [:show, :index]
    end
    resources :actors, except: [:show, :index] do
      resources :actor_structures, except: [:show, :index]
    end
    resources :leaders, except: [:show, :index]
    resources :repertoires, except: [:show, :index] do
      resources :perfomances,  except: [:show, :index]
    end
    resources :perfomances,  except: [:show, :index] do
      resources :actor_structures,  except: [:show, :index]
      resources :reviews,  except: [:show, :index]
      resources :tickets, except: [:show, :index]
    end
    resources :play_grounds,  except: [:show, :index] do
      resources :perfomances,  except: [:show, :index]
      resources :zones,  except: [:show, :index]
    end
    resources :zones,  except: [:show, :index] do
      resources :seats,  except: [:show, :index]
    end
    resources :seats,  except: [:show, :index] do
      resources :tickets, except: [:show, :index]
    end
    resources :tickets, except: [:show, :index]
    resources :actor_structures,  except: [:show, :index]
    resources :reviews,  except: [:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
