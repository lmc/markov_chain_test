require 'rubygems'
require 'nokogiri'

require 'marky_markov'
markov = MarkyMarkov::Dictionary.new('dictionary')

Dir["./#allnitecafe/**/*.xml"].each do |path|
  puts "parsing #{path}"
  file = File.open(path,'r')
  doc = Nokogiri::XML(file.read)
  doc.css("message[sender='luke']").each do |message|
    markov.parse_string message.text
  end
end

markov.save_dictionary!
