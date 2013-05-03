#
# Author: Brandon Mathis
# A full rewrite based on the work of: Josediaz Gonzalez - https://github.com/josegonzalez/josediazgonzalez.com/blob/master/_plugins/blockquote.rb
#
# Outputs a string with a given attribution as a quote
#
#   {% c2a icon:"T" title:"Title" action:"Check it out!" link:"http://test.com/" label:"Chef Survival Guide" %}
#   This is text!
#   {% endc2a %}
#   ...
# <div class="row">
#   <hr>
#   <div class="large-3 columns text-center">
#     <span class="service-icon">
#       <span>K</span>
#     </span>
#   </div>
#   <div class="large-9 columns">
#     <h3>Title</h3>
#     <p class="sans">
#       This is text!
#     </p>
#     <a onclick="_gaq.push(['_trackEvent', 'CTA', 'Click', 'Chef Survival Guide']);" href="http://test.com/" class="button radius right">
#       Check it out!
#     </a>
#   </div>
# </div>
#
require './plugins/titlecase.rb'

module Jekyll

  class Call2Action < Liquid::Block
    Parameters = /icon:"(.+)"\stitle:"(.+)"\saction:"(.+)"\slink:"(.+)"\slabel:"(.*)"/i
    def initialize(tag_name, markup, tokens)
      @title = nil
      @action = nil
      @link = nil
      @label = nil
      @icon = nil
      if markup =~ Parameters
        @icon = $1
        @title = $2.titlecase
        @action = $3.titlecase
        @link = $4
        @label = $5.titlecase
      end
      super
    end

    def render(context)
      content = paragraphize(super)
      icon_html = "<span class=\"service-icon\"><span>#{@icon}</span></span>"
      title_html = "<h3>#{@title}</h3>"
      link_html = "<a onclick=\"_gaq.push(['_trackEvent', 'CTA', 'Click', '#{@label}']);\" href=\"#{@link}\" class=\"button radius\">#{@action}</a>"
      "<div class=\"panel radius\"><div class=\"row\"><div class=\"large-3 columns text-center\">#{icon_html}</div><div class=\"large-9 columns\">#{title_html + content + link_html}</div></div></div>"
    end

    def paragraphize(input)
      "<p class=\"sans\">#{input.lstrip.rstrip.gsub(/\n\n/, '</p><p>').gsub(/\n/, '<br/>')}</p>"
    end
  end
end

Liquid::Template.register_tag('c2a', Jekyll::Call2Action)
