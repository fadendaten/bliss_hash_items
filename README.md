# BlissHashItems

This module was extracted from our internally used logistics system. Extraction WIP. 
Tests not yet extracted. Avoid usage or use with caution.

## Installation

Add this line to your application's Gemfile:

    gem 'bliss_hash_items'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bliss_hash_items

## Usage

```ruby
class YourReceiptClass < ActiveRecord::Base
  include BlissHashItems
  
  has_many :line_items
  # ...
end

receipt = YourReceiptClass.new
receipt.respond_to? :line_items_to_hash # => true
```
