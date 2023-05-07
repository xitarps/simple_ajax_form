# SimpleAjaxForm

This gem was made in order to "bring back" the form_with remote: true(ajax) feature to rails 7;

Since it became a bit hard to use ajax with rails 7, this gem's intention is to make it "easy to use" the feature again

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add simple_ajax_form

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install simple_ajax_form

If you prefer to put by yourself on Gemfile and run command bundle install:
```
  gem 'simple_ajax_form', '~> 0.1.26'
```

## Usage
Inside of your <mark>.erb</mark> file:

1 - Add <mark>ajaxForm</mark> to your form_with class

2 - Insert the request helper right after the form_with tag:
```
<%= form_with ... ,class: '' do |f| >
<% end >

<%= SimpleAjaxForm::RequestHelper.enable_class_use_on_forms_html %>
```

## Under the hood

This gem uses vanilla javascript with fetch to perform the request

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/xitarps/simple_ajax_form.
