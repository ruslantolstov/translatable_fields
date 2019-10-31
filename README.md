# TranslatableFields

Translate your fields in ActiveRecord.
Rails library allow you to translate your models' attribute values with prefixes like `en_title` or `title_en`

## Requirements

* ActiveRecord
* I18n

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'translatable_fields'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install translatable_fields
    $ rails g translatable_fields:install

## Set up
```diff
# config/initializers/translatable_fields.rb
TranslatableFields.configure do |config|
  # Set up your mode - (:prefix_at_the_beginning, :prefix_in_the_end) :aws by prefix_at_the_beginning
  #
+ config.mode = :prefix_at_the_beginning
end
```

## Set up
```diff
# frozen_string_literal: true

class Allergy < ApplicationRecord
+  include TranslatableFields::Concern

+  translatable_fields(:title, :description)
end
```

```bash
Allergy.first.title
=> "Food Allergy"
Allergy.first.description
=> "There are different types of allergic reactions to foods"
```

## Contributing

1. Fork it ( link )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The MIT License
