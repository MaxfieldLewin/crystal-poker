enum Rank
  Two
  Three
  Four
  Five
  Six
  Seven
  Eight
  Nine
  Ten
  Jack
  Queen
  King
  Ace
end

enum Suit
  Spades
  Hearts
  Clubs
  Diamonds
end

struct Card
  include Comparable(Card)

  getter rank, suit

  def initialize(@rank : Rank, @suit : Suit)
  end

  def <=>(other)
    self.rank <=> other.rank
  end
end


