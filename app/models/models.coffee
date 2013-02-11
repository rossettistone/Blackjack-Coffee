###
  You'll probably want to define some kind of Card model.

  If you need to define a collection of cards as well, you could also put that in 
  this file if you want to.
###
class window.Deck extends Backbone.Collection

  initialize: ->
    @make()

  make: ->
    @models = []
    for suit in ['Spades', 'Hearts', 'Clubs', 'Diamonds']
      for number in [1..13]
        @models.push(new Card({number:number, suit:suit}))
    _.shuffle(@models)

  drawCard: ->
    @models.pop()


class window.Card extends Backbone.Model