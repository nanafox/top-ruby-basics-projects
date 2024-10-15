#!/usr/bin/env ruby
# frozen_string_literal: true

def letter?(char)
  char.match?(/[a-zA-Z]/)
end

# Shifts a character by a given factor according to the Caesar Cipher.
# The shift wraps around the alphabet, so 'z' shifted by 1 becomes
# 'a', and 'Z' shifted by 1 becomes 'A'.
#
# @param char [String] the character to be shifted. Must be a single character string.
# @param shift_factor [Integer] the number of positions to shift the character in the alphabet.
# @return [String] the shifted character.
def shift_char(char, shift_factor)
  start_char = char == char.upcase ? 'A' : 'a'
  last_char = char == char.upcase ? 'Z' : 'z'

  shifted_char = char.ord + shift_factor
  shifted_char = ((shifted_char - start_char.ord) % 26) + start_char.ord if shifted_char > last_char.ord

  shifted_char.chr
end

# Returns the Caesar Cipher representation of a string.
#
# @param string [String] The string to cipher.
# @param shift_factor [Integer] The shift factor
#
# @return [String] The ciphered text.
def caesar_cipher(string = String, shift_factor = Integer)
  string.chars.map { |char| letter?(char) ? shift_char(char, shift_factor) : char }.join
end
