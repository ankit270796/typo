Feature: Create and Edit Categories
    As a blog administrator
    In order to organize blog articles
    I want to be able to create new categories and assign articles to them

    Background:
        Given the blog is set up
        And I am logged into the admin panel
        When I follow "Categories"

    Scenario: Link should not be broken
        Then I should see "Categories"
        And I should see "Permalink"
        And I should see "Description"

    Scenario: It should be possible to create new and delete 
        When I fill in "Name" with "Ankit"
        And I fill in "Description" with "anything"
        And I fill in "Keywords" with "New"
        And I press "Save"
        Then I should see "Ankit"
        And I should see "no articles"
        And I should see "New"
        And I should see "anything"
        And I follow "Delete"
        And I press "delete"
        Then I should not see "Ankit"

    Scenario: It should be possible to edit existing categories
        When I follow "General"
        Then I fill in "Description" with "something"
        And I press "Save"
        Then I should see "something"