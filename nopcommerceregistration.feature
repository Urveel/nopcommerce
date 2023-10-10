Feature: Nopcommerce Registration
  As a user i want to check register functionality of nopcommerce

  Background: I am on nopcommerce registration page
    Given I open the Google Chrome Browser
    When I open the url https://demo.nopcommerce.com/register
    Then I am on nopcommece Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When  I enter the first name "<First name>"
    And   I enter the last name "<Last name>"
    And   I enter the email address "<Email ID>"
    And   I enter the password <"Password>"
    And   I enter the confirm password <"Confirm password>"
    And   Click on register button
    Then  I see an error message "<error message>"
    And   I am not able to register

    Examples:
      | First Name | Last Name | Email            | Password | Confirm Password | error message                              |
      | ""         | bakshi    | bakshi@gmail.com | 456897   | 456897           | please enter First Name                    |
      | Rohan      | ""        | bakshi@gmail.com | 456897   | 456897           | please enter Last Name                     |
      | Rohan      | bakshi    | ""               | 456897   | 456897           | please enter valid email                   |
      | Rohan      | bakshi    | bakshi@gmail.com | ""       | 456897           | password is required                       |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | ""               | confirm password is required               |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | 45689            | password and confirm password do not match |
      | Rohan      | bakshi    | bakshi@gmail.com | 45689    | ""               | minimum 6 character password is required   |
      | ""         | ""        | ""               | ""       | ""               | Mandatory (*) filed is required            |

  Scenario: I should be able to select anyone radio button from Gender Lable of your personal Details section
    Given I am on your Gender lable of your personal detail section
    When  I select "Male" radio button
    And   I select "Female" radio button
    Then  I am able to select one of the radio button

  Scenario Outline: I should be able to select Day, Month and year from drop down list of the date of birth field
    Given  I am on Date of Birth field of your personal Details section
    When   I select day "<Day>"
    And    I select month "<Month>"
    And    I select Year "<Year>"
    Then   I am able to select Day, Month and year from drop down list
    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the News letter box options section
    Given I am on Newsletter label on options section
    When  I click on Newsletter checkbox
    And   I again click on Newsletter checkbox
    Then  I was able to check and uncheck the box next to newsletter label

  Scenario: I should be able to register with valid mandatory(*) field data on registration page
    When I enter first name "Rohan"
    And  I enter Last name "bakshi"
    And  I enter Email "bakshi@gmail.com"
    And  I enter Password "456897"
    And  I click on Register button
    Then I was able to register sucessfully