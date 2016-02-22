require 'rubygems'
require 'nokogiri'

require 'marky_markov'
markov = MarkyMarkov::Dictionary.new('dictionary')

puts markov.generate_n_sentences 1