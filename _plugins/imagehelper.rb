require 'flickraw'

FlickRaw.api_key = "5b05327385431215c8ec5466262d94ba"
FlickRaw.shared_secret = "12cb5a03628d025d"

def easy_render(context, string)
	partial = Liquid::Template.parse(string)
	context.stack do
		partial.render(context)
	end
end

module Flymoore

  
  class Captioner < Liquid::Block
    def initialize(tagname, markup, tokens)
      super
      @img = markup
    end
    
    def render(context)
    	"<dl><dt>#{easy_render(context,@img)}</dt><dd>#{easy_render(context,super)}</dd></dl>"
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

	  	@img_info = flickr.photos.getInfo(:photo_id => @id.strip)
  		@img_src = FlickRaw.url_b(@img_info)
  		@img_page = FlickRaw.url_photopage(@img_info)
  		"<dl><dt><a href=\"#{@img_page}\"><img src=\"#{@img_src}\"/></a></dt><dd>#{easy_render(context,super)}</dd></dl>"
  	end
  end
end

module FlymooreFilter
	def flickr_image(id) 
		@info = flickr.photos.getInfo(:photo_id => id)
		"<a href='#{FlickRaw.url_photopage(@info)}'><img src='#{FlickRaw.url_b(@info)}'></a>"
	end
	
	def flickr_thumb(id)
		@info = flickr.photos.getInfo(:photo_id => id)
		"<a href='#{FlickRaw.url_photopage(@info)}'><img src='#{FlickRaw.url_n(@info)}'></a>"
	end
end

Liquid::Template.register_tag('caption',Flymoore::Captioner)
Liquid::Template.register_tag('flickrimg', Flymoore::FlickrCaptioner)
Liquid::Template.register_filter(FlymooreFilter)
