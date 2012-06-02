describe "Anagram", ->
  beforeEach ->
    @anagramFinder = new Anagram()

  it "should be instantiable", ->
    expect(@anagramFinder).toBeTruthy()

  describe "find", ->
    it "should be a function", ->
      expect(_.isFunction(@anagramFinder.find)).toBeTruthy()

    it "should return an empty Array", ->
      expect(@anagramFinder.find()).toEqual []

    it "should return an empty Array", ->
      expect(@anagramFinder.find("meat", "mat", "team", "mate", "eat")).toEqual [
        [ "meat", "team", "mate" ]
      ]

    it "should return an empty Array", ->
      expect(@anagramFinder.find("veer", "lake", "item", "kale", "mite", "ever")).toEqual [
        [ "veer", "ever" ],
        [ "lake", "kale" ],
        [ "item", "mite" ]
      ]