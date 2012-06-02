class Anagram
  find: ->
    _.filter _.groupBy(Array::slice.call(arguments), (word) ->
      _.sortBy(word.split(""), (character) ->
        character
      ).join ""
    ), (group) ->
      group.length > 1