# frozen_string_literal: true

require_relative "lib/simple_ajax_form/version"

Gem::Specification.new do |spec|
  spec.name = "simple_ajax_form"
  spec.version = SimpleAjaxForm::VERSION
  spec.authors = ["XitaRps"]
  spec.email = ["xitarps@gmail.com"]

  spec.summary = "Add fetch submit function to form_with on rails"
  spec.description = "Since rails 7 uses HotWire, it became a bit hard to implement ajax submissions on form;
   This gem implements a vanilla js solution for it(just call it at the very end of your erb file and add the class ajaxForm to your form_with)"
  spec.homepage = "https://github.com/xitarps/simple_ajax_form"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/xitarps/simple_ajax_form"
  spec.metadata["changelog_uri"] = "https://github.com/xitarps/simple_ajax_form/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  # for html_safe(String)
  spec.add_dependency 'activesupport', '~> 7.0', '>= 7.0.4.3'
end
