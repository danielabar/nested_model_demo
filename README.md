# Rails Nested Model Demo

A companion project for a blog post about Rails nested attributes, fields_for helper, and optionally rejecting nested attributes.

## Setup

Make sure you're on Ruby version specified in `.ruby-version`.

```bash
bundle install
bin/setup
bin/dev
```

## Usage

* Navigate to `http://localhost:3000/`
* Click "New user"
* Fill out all fields and click Create User - note that both a user and associated address are created
* Create another new user - this time only fill in Name and Email, notice that you're allowed to create a user without an associated address

**Exercise for the reader:**

1. Review the Rails documentation on [accepts_nested_attributes_for](https://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html#method-i-accepts_nested_attributes_for)
2. Edit the line starting with `accepts_nested_attributes_for...` in `app/models/user.rb` to vary the behaviour.
