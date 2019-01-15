# frozen_string_literal: true

# https://www.reddit.com/r/ruby/comments/4ajwv8/is_there_a_better_way_to_caesar_cipher_then_this/

CHARS = [[*'A'..'Z'], [*'a'..'z']].freeze

def caesar_cipher(string, shift)
  string.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift }.join
end
