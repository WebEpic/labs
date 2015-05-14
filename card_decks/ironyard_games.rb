require 'pry'

module IronYardGames
  
  RANKS = (2..10).to_a + [:J, :Q, :K, :A]
  SUITS = [:diamonds, :clubs, :spades, :hearts]

  class Card

  RANK_VALUES = {J: 11, Q: 12, K: 13, A: 14}

  # attr_reader :rank
  # attr_writer :rank
  attr_accessor :rank, :suit
  include Comparable

  def initialize(rank=nil, suit=nil)
    @rank = rank || RANKS.sample
    @suit = suit || SUITS.sample
  end

  def value
    val = RANK_VALUES[self.rank]
    val ||= self.rank
  end

  def <=>(other)
    self.value <=> other.value
  end
end

  class Deck

    include Enumerable
    
    def initialize
      @cards = []
      RANKS.product(SUITS).each do |rank, suit|
        @cards << Card.new(rank, suit)

      # SUITS.each do |suit|
      #   RANKS.each do |rank|
      #     @cards << [rank, shift]
      #     @cards << Card.new(rank, suit)
      #   end
      # end
    end

    def count
      @cards.length
    end

    def draw(n)
      result = []
      n.times do
        result << @cards.shift
    end
    result
  end

    def each
      @cards.each { |card| yield(card)}
    end


    def shuffle!
      @cards.shuffle!
    end

    def peek
      @cards[0]
    end
  end
end

binding.pry
