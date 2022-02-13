Feature: Artickles

  Background: Define URL
    Given url 'https://api.realworld.io/api/'
    Given path 'users/login'
    And request { "user": { "email": "ahahah@test.com", "password" : "Agaesh555"}}
    When method Post
    Then status 200
    * def token = response.user.token

    Scenario: Create a new article


      Given header Authorization = 'Token ' + token
      Given path 'articles'
      And request {"article": {"tagList": [],"title": "bla bla23","description": "test test ","body": "body"}}
      When method Post
      Then status 200
      And match response.article.title == 'bla bla23'

