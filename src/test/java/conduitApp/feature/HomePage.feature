
  Feature: Tests for the home page

    Background: Define URL
      Given url 'https://api.realworld.io/api/'
@debug
    Scenario: Get all tags
      Given path 'tags'
      When method Get
      Then status 200
      And match response.tags contains ['welcome','implementations']
      And match response.tags !contains 'yelaman'
      And match response.tags == "#array"
      And match each response.tags == "#string"


      Scenario: Get 3 articles from home page
        //Given param limit = 10
       // Given param offset = 0
        Given params { limit: 10, offset: 0 }
        Given path 'articles'
        When method Get
        Then status 200
        And match response.articles == '#[3]'
        And match response.articlesCount == 3
