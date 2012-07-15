module Jekyll
	module RSSFilter
		def rss_date(date)
			date.rfc822
		end
	end
end

Liquid::Template.register_filter Jekyll::RSSFilter