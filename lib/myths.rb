require 'myths/version'
require 'mustache'
require 'rdiscount'
require 'yaml'

module Myths
  def Myths.transform(input, template)
    content = YAML::load(input)
    content['pages'].each { |e|
      e['slide'] = RDiscount.new(e['slide']).to_html if e['slide']
      e['notes'] = RDiscount.new(e['notes']).to_html if e['notes']
    }
    Mustache.render(template, content)
  end
end
