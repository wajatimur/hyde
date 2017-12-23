#!/usr/bin/env ruby

require 'reverse_markdown'

POST_REGEX = %r{(?<year>[0-9]+)-(?<month>[0-9]+)-(?<day>[0-9]+)-(?<title>.*).html}

files = Dir.glob('_posts/*.html').select{ |f| f.match POST_REGEX }

files.each do |post|
  data = post.match(POST_REGEX)
  #p = HTMLPage.new(contents: File.read(post))
  p = ReverseMarkdown.convert(File.read(post), unknown_tags: :bypass, github_flavored: true)

  File.open(post, 'w') { |f| f.puts p }
  File.rename(post, "#{data[:year]}-#{data[:month]}-#{data[:day]}-#{data[:title]}.md")
end
