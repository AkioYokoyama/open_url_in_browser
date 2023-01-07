# frozen_string_literal: true

# class OpenBrowser
class OpenBrowser
  require 'yaml'

  def initialize
    raise ArgumentError if ARGV.empty?
  rescue ArgumentError => e
    puts "wrong number of arguments (given #{ARGV.count}, expected 1) (#{e})"
  end

  def execute
    sites = YAML.safe_load(File.open("#{__dir__}/urls.yml"))
    urls = ARGV.map { |keyword| sites[keyword] }
    urls.compact!
    raise NoMatchingPatternError if urls.empty?

    system "open #{urls.join(' ')}"
  rescue NoMatchingPatternError => e
    puts "[#{ARGV.join(', ')}] does not exist in the list (#{e})"
  end
end

open_browser = OpenBrowser.new
open_browser.execute
