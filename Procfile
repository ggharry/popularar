web: bundle exec unicorn -p $PORT -c ./config/unicorn.rb

worker: bundle exec rake add_surveillance
worker: bundle exec rake add_sousveillance
worker: bundle exec rake add_oculus
worker: bundle exec rake add_spaceglasses
worker: bundle exec rake add_google_glass
