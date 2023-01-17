Rails.application.routes.draw do
  scope '/weather' do
    scope '/historical' do
      get '/', to: 'weathers#historical'
      get 'max', to: 'weathers#max'
      get 'min', to: 'weathers#min'
      get 'avg', to: 'weathers#avg'
    end
    get 'current', to: 'weathers#current'
    get 'by_time', to: 'weathers#by_time'
  end
  get 'health', to: 'weathers#health'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
