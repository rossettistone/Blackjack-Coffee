class window.CardView extends Backbone.View

  tagName: 'div'

  className: 'card'

  template: _.template("suit : <%= @model.get('suit')=><br>number : <%= @model.get('number') =>")

  initialize: ->

  render: ->
    @template()

