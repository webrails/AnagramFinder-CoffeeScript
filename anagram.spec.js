describe("Anagram", function() {
    beforeEach(function() {
        return this.anagramFinder = new Anagram();
    });
    it("should be instantiable", function() {
        return expect(this.anagramFinder).toBeTruthy();
    });
    return describe("find", function() {
        it("should be a function", function() {
            return expect(_.isFunction(this.anagramFinder.find)).toBeTruthy();
        });
        it("should return an empty Array", function() {
            return expect(this.anagramFinder.find()).toEqual([]);
        });
        it("should return an empty Array", function() {
            return expect(this.anagramFinder.find("meat", "mat", "team", "mate", "eat")).toEqual([["meat", "team", "mate"]]);
        });
        return it("should return an empty Array", function() {
            return expect(this.anagramFinder.find("veer", "lake", "item", "kale", "mite", "ever")).toEqual([["veer", "ever"], ["lake", "kale"], ["item", "mite"]]);
        });
    });
});