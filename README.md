Phone Seller Pro
Phone Seller Pro is a library for Antique Phone Collectors to manage and keep track of their current inventories in stock

Installation
Run the bundle install command to install all the necessary GEMS, then run rake db:migrate, and rake db:seed.

bundle install
rake db:migrate
rake db:seed

Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## table
  - create users migration
  - create phones migration
  - add user_id foreign key attribute column to phones table migration
## model
  - user
    - has_many :phones
  - phone
    -belongs_to :users

How to add -

1. Create a migration - build DB seed
2. Create a model

Name, Model, Color, Age
Add attributes

MIT License

Copyright (c) 2021 Michael Sackstein

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
