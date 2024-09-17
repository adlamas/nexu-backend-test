
# Instructions to run
Install ruby 3.2.2, and install the bundler gem
### Glone repo
git clone git@github.com:adlamas/nexu-backend-test.git
### create DB structure and populate it
rails db:create db:migrate db:seed
### Install gems
bundle install
### Run specs and linter
bundle exec rubocop app spec
bundle exec rspec
### Start server
rails s (Will be started on localhost:3000)

# What else I'd do?
- I would add all the missing actions and their tests
- I'd fix the N+1 I am having retrieving all the brands
- I'd configure Github actions as the CI as I usually do
- I'd deploy it to render.com and configure all the things to put this on production as I usually do
- I'd configure the CORS protection to permit you to consume the API from any origin
- I'd include pagy to avoid rendering all the brands or models at the same time and paginate them for performance reasons
- 

# Some thoughts
Since the average_price for the brands is a calculation, I decided no to put it as an attribute since is not actually part of the model but a calculation based on the models model. I'd, if it was necessary, configure the cache in the server to avoid a permanent calculation of the average_price because could slower the app rapidly.
I focused on the structure of the data, and tried to have tests related to models, requests and the good and bad responses. Rubocop is the linter I used for app/spec folders.