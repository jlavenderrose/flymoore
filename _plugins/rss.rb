module Jekyll
	module RSSFilter
		def rss_date(date)
			date.strftime("%a, %-d %b %Y %k:%M:%S %z")
		end
	end
end

Liquid::Template.register_filter Jekyll::RSSFilter