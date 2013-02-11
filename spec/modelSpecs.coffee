describe "Deck", ->
  
  deck = {}

  beforeEach ->
    deck = new Deck()

  it "should populate @models with 52 cards when 'make' is called", ->
    expect(deck.models.length).toEqual(52)

  it "should remove a card from the deck when 'drawCard' is called", ->
    deck.drawCard()
    expect(deck.models.length).toEqual(51)