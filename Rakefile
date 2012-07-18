desc "preview the site in a web browser"
task :preview do
  jekyllPid = Process.spawn({"OCTOPRESS_ENV"=>"preview"}, "jekyll --auto --server")

  trap("INT") {
    [jekyllPid].each { |pid| Process.kill(9, pid) rescue Errno::ESRCH }
    exit 0
  }

  [jekyllPid].each { |pid| Process.wait(pid) }
end

def to_url(str)
  return str.downcase.gsub(/\ +/,"-")
end

# usage rake new_post[my-new-post] or rake new_post['my new post'] or rake new_post (defaults to "new-post")
desc "Begin a new post in _posts/"
task :new_post, :title do |t, args|
  args.with_defaults(:title => 'new-post')
  title = args.title
  filename = "_posts/#{Time.now.strftime('%Y-%m-%d')}-#{to_url title}.markdown"
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end
  puts "Creating new post: #{filename}"
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "layout: post"
    post.puts "published: false"
    post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
    post.puts "date: #{Time.now.strftime('%Y-%m-%d %H:%M')}"
    post.puts "comments: true"
    post.puts "categories: "
    post.puts "---"
  end
end