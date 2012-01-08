module Flymoore
  class Captioner < Liquid::Block
    def initialize(tagname, markup, tokens)
      super
      @img = markup
    end
    
    def render(context)
      inside = super;
      "<dl><dt>#{@img}</dt><dd>#{inside}</dd></dl>"
    end
  end
end

Liquid::Template.register_tag('caption',Flymoore::Captioner)