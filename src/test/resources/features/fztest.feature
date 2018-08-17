#By FatimaZahra
@ACA324

Feature: Multiple choice: Points

  Background: Login as teacher

    Given I open url "http://local.school.portnov.com:4520/#/login"
    Then element with xpath "//span[contains(text(),'Sign In')]" should be present

    When I fill all required fields:
      | email              | Password    |
      | v1337nsn@mail-w.ml | teacher123* |
    And I click on element with xpath "//span[contains(text(),'Sign In')]" 2
    Then I wait for element with xpath "//h5[contains(text(),'Log Out')]" to be present
    Then Create Quiz with Multiple-choice question. Title "Quiz-Auto"
    And I click on element with xpath "//div[@class='controls ng-star-inserted']//span[@class='mat-button-wrapper']" 2
    And I click on element with xpath "//mat-radio-button[@id='mat-radio-4']//div[@class='mat-radio-outer-circle']" 2
    When I type "Question1" into element with xpath "//textarea[@id='mat-input-3']"
    And I type to Option 1
    And I type to Option 2
    And  I choose correct answer. Option 1




  @ACA324-2
  Scenario: Slider max points
    When I move the slider to maximum
    And I wait for 2 sec
    And  I click on element with xpath "//div[@class='form-controls-container ng-star-inserted']//div[@class='controls']//button[2]" 2
    Then element with xpath "//span[contains(text(),'Create New Quiz')]" should be present