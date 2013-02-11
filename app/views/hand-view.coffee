class window.HandView extends Backbone.View

  className: "cards"

  template: _.template("suit : <%= @model.get('suit')=><br>number : <%= @model.get('number') =><br>")

  initialize: ->
    @subviews = []
    @collection.on("add", @render, @)
    console.log(@collection)

  render: ->
    console.log("rendered")
    @$el.html('')
    _.each(@subviews, (subview) => @$el.append(@template(subview)))

  hit: (deck) ->
    card = (deck.drawCard())
    @collection.add(card)
    console.log(@collection.models)
    @subviews.push(new CardView({model: card}))

