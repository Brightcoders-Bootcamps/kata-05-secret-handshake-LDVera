# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'secretHandShake')

dictionary =
  {
    "1": 'wink',
    "10": 'double blink',
    "11": ['wink', 'double blink'],
    "100": 'close your eyes',
    "101": ['wink', 'close your eyes'],
    "110": ['double blink', 'close your eyes'],
    "111": ['wink', 'double blink', 'close your eyes'],
    "1000": 'jump',
    "1001": %w[wink jump],
    "1010": ['double blink', 'jump'],

    "1011": ['wink', 'double blink', 'jump'],
    "1100": ['close your eyes', 'jump'],
    "1101": ['wink', 'close your eyes', 'jump'],
    "1111": ['wink', 'double blink', 'close your eyes', 'jump'],
    "10000": 'reverse'
  }

valor = gets.to_i
instance = SecretHandShake.new(valor, dictionary)

puts "Binario: #{instance.convertions}"
puts instance.verify
