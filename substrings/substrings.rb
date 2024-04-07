#!/usr/bin/env ruby
# frozen_string_literal: true

#
# Returns a hash of substrings (case insensitive) found in a string provided and their frequency.
#
# @param string [String] The string to search from (haystack)
# @param substrings_array [Array] An array of substrings to find in the original string (haystack)
#
# @return [Hash] A hash of the substrings that were found and their frequency.
#
def substrings(string, substrings_array)
  word_count = {}

  string = string.downcase

  substrings_array.each do |substring|
    occurrences = string.scan(substring.downcase)
    word_count[substring] = occurrences.size unless occurrences.empty?
  end
  word_count
end
