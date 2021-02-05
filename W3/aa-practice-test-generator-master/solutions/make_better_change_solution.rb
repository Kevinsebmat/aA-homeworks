# See question here: http://web.archive.org/web/20130215052843/http://rubyquiz.com/quiz154.html
# Write a recursive method to solve `make_better_change`.

# HINT: To make_better_change, we only take one coin at a time and
# never rule out denominations that we've already used.
# This allows each coin to be available each time we get a new remainder.
# By iterating over the denominations and continuing to search
# for the best change, we assure that we test for 'non-greedy' uses
# of each denomination.

# `make_better_change(24, [10,7,1])` should return [10,7,7]

def make_better_change(value, coins)
  return nil if coins.empty?
  return [] if value == 0

  change = []
  coins = coins.sort.reverse.select{|coin| coin <= value}
  coins.each do |coin|
    remainder = value - coin
    if remainder > 0
      best_remainder = make_better_change(remainder, coins)
      change << [coin] + best_remainder unless best_remainder.nil?
    else
      change << [coin]
    end
  end
  change.sort_by!{|arr| arr.size}.first
end
------------------------------------------------------

def make_change(target, coins = [25, 10, 5, 1])
  # Don't need any coins to make 0 cents change
  return [] if target == 0
  return nil if coins.none? { |coin| coin <= target }
  coins = coins.sort.reverse

  best_change = nil
  coins.each_with_index do |coin, index|
    # can't use this coin, it's too big
    next if coin > target

    # use this coin
    remainder = target - coin

    best_remainder = make_change(remainder, coins.drop(index))
    next if best_remainder.nil?
    this_change = [coin] + best_remainder
    if best_change.nil? || (this_change.count < best_change.count)
      best_change = this_change
    end
  end

  best_change
end