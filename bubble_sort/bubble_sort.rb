#!/usr/bin/env ruby
# frozen_string_literal: true

# Sorts an array using the bubble sort algorithm.
#
# @param array [Array] The array to be sorted.
# @return [Array] The sorted array.
#
# For example
#   bubble_sort([4, 3, 78, 2, 0, 2])
#     => [0, 2, 2, 3, 4, 78]
#
def bubble_sort(array)
  n = array.length
  swapped = false

  (n - 1).times do |i|
    (n - i - 1).times do |j|
      next unless array[j] > array[j + 1]

      array[j], array[j + 1] = array[j + 1], array[j]
      swapped = true
    end

    break unless swapped
  end

  array
end
