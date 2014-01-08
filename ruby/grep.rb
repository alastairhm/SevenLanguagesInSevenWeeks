#!/usr/bin/ruby

require 'optparse'

opts = OptionParser.new
opts.on("-f FILE", String, "Name of file to search") { |v| @file = v }
opts.on("-s Search Term", String, "Search term") { |v| @search = v }
begin
  opts.parse!(ARGV)
rescue OptionParser::ParseError => e
  puts e
end
raise OptionParser::MissingArgument, "File [-f]" if @file.nil?
raise OptionParser::MissingArgument, "Search [-s]" if @search.nil?

File.open(@file,'r').each {|line|
    if line.scan(@search).length > 0 then puts line end
}
