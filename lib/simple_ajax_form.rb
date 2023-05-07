# frozen_string_literal: true

require_relative "simple_ajax_form/version"
require 'active_support/core_ext/string/output_safety.rb'

module SimpleAjaxForm
  class Error < StandardError; end
  class RequestHelper
    def self.enable_class_use_on_forms_html
      "
        <script>
          document.addEventListener('turbo:load', function() {

            let form_elements = document.querySelectorAll('.ajaxForm');

            form_elements.forEach((element)=>{
              element.replaceWith(element.cloneNode(true));
            });

            form_elements = document.querySelectorAll('.ajaxForm');

            form_elements.forEach(function(form_element){
              form_element.addEventListener('submit', function (event) {
                event.preventDefault();

                let element = this;
                let form_url = element.getAttribute('action')
                let form_method = element.getAttribute('method')
                let form_body = new FormData(element)

                fetch(form_url,
                      { method: form_method,
                        body: form_body }
                ).then(res=>res.text())
                .then(data=>eval(data));

              });
            });
          });

        </script>
      ".html_safe
    end
  end
end
