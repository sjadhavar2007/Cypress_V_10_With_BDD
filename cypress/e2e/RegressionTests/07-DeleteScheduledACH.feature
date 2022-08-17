Feature: 07-Delete scheduled ACH
    Background: user launches the admin portal
        Given user launches the admin portal
        When user enters valid Email and Password and clicks on Sign in
        Then user should login successfully and navigate to home page
        And user should be able to see the Members option on the top manu bar
        When user clicks on the Members option
        Then user should be able to see the Members page
        When user searches specific member in the page
        Then user should be able to locate the member on the list of members
        When user clicks on the edit option of the searched member
        Then member details page should be loaded successfully
        And user should see the Enable Business View option in Member Details page
#=====================1st Scenario=====================  
    Scenario: With business test user, Verify user is able to delete scheduled transfer from edit window
        #AdminPortal
        When user checked on the Enable Business View option
        And user clicks on the Update button
        Then user should be see the Member page
        #RegressionPlatfromWeb
        Given   user launches the lafayette portal
        When    user enters valid UserName and Password and Clicks on Continue
        Then    user should login successfully and navigate to Dashboard page
        When    user clicks on My Finance tab in Dashboard Page
        And     user clicks on Transfers tile in My Finance Page
        And     user clicks on Scheduled tab in My Finance Page
        Then    the list of all scheduled transfer accounts should be displayed
        Given   user searches a specific scheduled transfer account and hovers on ellipsis menu
        When    user clicks on Edit option
        Then    edit scheduled transfer page should be displayed
        When    user clicks on delete button
        Then    the scheduled transfer should be deleted successfully

    Scenario: With personals test user, Verify user is able to delete scheduled transfer from edit window
        #AdminPortal
        When user unchecked on the Enable Business View option
        And user clicks on the Update button
        Then user should be see the Member page
        #RegressionPlatfromWeb
        Given   user launches the lafayette portal
        When    user enters valid UserName and Password and Clicks on Continue
        Then    user should login successfully and navigate to Dashboard page
        When    user clicks on My Finance tab in Dashboard Page
        And     user clicks on Transfers tile in My Finance Page
        And     user clicks on Scheduled tab in My Finance Page
        Then    the list of all scheduled transfer accounts should be displayed
        Given   user searches a specific scheduled transfer account and hovers on ellipsis menu
        When    user clicks on Edit option
        Then    edit scheduled transfer page should be displayed
        When    user clicks on delete button
        Then    the scheduled transfer should be deleted successfully


#=====================2nd Scenario=====================  

        Scenario: With business test user, Verify user is able to Delete scheduled transfer
        #AdminPortal
        When user checked on the Enable Business View option
        And user clicks on the Update button
        Then user should be see the Member page
        #RegressionPlatfromWeb
        Given   user launches the lafayette portal
        When    user enters valid UserName and Password and Clicks on Continue
        Then    user should login successfully and navigate to Dashboard page
        When    user clicks on My Finance tab in Dashboard Page
        And     user clicks on Transfers tile in My Finance Page
        And     user clicks on Scheduled tab in My Finance Page
        Then    the list of all scheduled transfer accounts should be displayed
        Given   user searches a specific scheduled transfer account and hovers on ellipsis menu
        And     user clicks on Delete option
        Then    the scheduled transfer should be deleted successfully

    Scenario: With personals test user, Verify user is able to Delete scheduled transfer
        #AdminPortal
        When user unchecked on the Enable Business View option
        And user clicks on the Update button
        Then user should be see the Member page
        #RegressionPlatfromWeb
        Given   user launches the lafayette portal
        When    user enters valid UserName and Password and Clicks on Continue
        Then    user should login successfully and navigate to Dashboard page
        When    user clicks on My Finance tab in Dashboard Page
        And     user clicks on Transfers tile in My Finance Page
        And     user clicks on Scheduled tab in My Finance Page
        Then    the list of all scheduled transfer accounts should be displayed
        Given   user searches a specific scheduled transfer account and hovers on ellipsis menu
        And     user clicks on Delete option
        Then    the scheduled transfer should be deleted successfully
        