class window.BlackjackView extends Backbone.View

  events:
    "click .hit-button": "hitPlayer"
    "click .stand-button": "stand"
    "click .reset-button": "reset"

  initialize: ->
    # this is how you call a member function
    @reset()

  reset: ->
    @playerHand = new HandView({collection: new Backbone.Collection([]), el: $('.player-cards')})
    @hitPlayer()
    @hitPlayer()
    @dealerHand = new HandView({collection: new Backbone.Collection([]), el: $('.dealer-cards')})
    @hitDealer()
    @hitDealer()
    @render()
    console.log "game starting"

  render: ->


  ###
    Give the player another card. If the player has more than 21, they lose. If they have
    21 points exactly, they win and if they have less than 21 points they can decide
    to hit or stand again.
  ###
  hitPlayer: ->
    @playerHand.hit(@collection)

  hitDealer: ->
    @dealerHand.hit(@collection)

  ###
    Reveal the dealer's face down card. Give the dealer cards until they have 17
    points or more. If the dealer has over 21 points or the player has more points
    than the dealer (but less than 21), the player wins. 
  ###
  stand: ->
    console.log "TODO implement stand"

