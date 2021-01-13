require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
# THIS FILE MOUNTS ALL CONTROLLERS

use Rack::MethodOverride # this gives us access to middleware in Sinatra form (ie. <input type="hidden" value="PATCH" name="_method">)
run ApplicationController
use UsersController
use PhonesController
