require 'flickraw'

FlickRaw.api_key = "5b05327385431215c8ec5466262d94ba"
FlickRaw.shared_secret = "12cb5a03628d025d"

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
  
  class FlickrCaptioner < Liquid::Block
  	def initialize(tagname, markup, tokens)
  		super
		@img_id = markup
  		
  	end
  	
  	def render(context)
		partial = Liquid::Template.parse(@img_id)
		context.stack do
			@id = partial.render(context)
		end
	  	@img_info = flickr.photos.getInfo(:photo_id => @id)
  		@img_src = FlickRaw.url_b(@img_info)
  		@img_page = FlickRaw.url_photopage(@img_info)
  		inside = super
  		"<dl><dt><a href=\"#{@img_page}\"><img src=\"#{@img_src}\"/></a></dt><dd>#{inside}</dd></dl>"
  	end
  end
  
end

module FlymooreFilter
	def flickr_image(id) 
		@info = flickr.photos.getInfo(:photo_id => id)
		"<a href='#{FlickRaw.url_photopage(@info)}'><img src='#{FlickRaw.url_b(@info)}'></a>"
	end
end

Liquid::Template.register_tag('caption',Flymoore::Captioner)
Liquid::Template.register_tag('flickrimg', Flymoore::FlickrCaptioner)
Liquid::Template.register_filter(FlymooreFilter)