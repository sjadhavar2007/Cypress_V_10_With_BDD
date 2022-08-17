///<reference types="Cypress" />
import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";
import commFunc from '../../../support/commonUtilityMethod/commFunc';
import loginPage from '../../../support/pageObjects/LoginPage';
import homePage from '../../../support/pageObjects/HomePage';
import appSettingsPage from '../../../support/pageObjects/AppSettingsPage';
var userData;
beforeEach(() => {
    cy.fixture('CreateEditRole/PermissionManagement').then(function (data) {
        userData = data;
    })
});

// Background: Login to admin Portal

Given('user launches the admin portal', () => {
    commFunc.launchURL()
    cy.url().should('include', '/admin')
})

When('user enters valid Email and Password for Reseller and Clicks on Sign in', function () {
    loginPage.getSignInpage().should('be.visible').and('include.text', 'Please sign in')
    commFunc.loginWithValidCredentials("ReSeller")
})

Then('user should login successfully and navigate to home page', () => {
    homePage.getPageHeader().should('be.visible').and('include.text', userData.members)
})
And('user should be able to see the Manage Institution text in the page', function(){
    homePage.getHeaderTextList().then((val) => {
        const text = val.text();
        if(text.includes("Manage Institution")){
            homePage.getManageInstText().should('be.visible').and('include.text', "Manage Institution")
        }
    })
})
When('user clicks on the Manage Institution text', function(){
    cy.wait(2000)
    homePage.getManageInstText().click({force:true});
})
And('user should be open dropdown with the list of institutions', function(){
    homePage.getManageInstDropdownMenu().should('be.visible').and('have.length', 7)
})
And('user click on the App Settings from the dropdown', function(){
    homePage.getAppSettings().click({force:true});
})
Then('user should be navigated to the App Settings page', function(){
    homePage.getPageHeader().should('be.visible').and('include.text', userData.appSettings)
})
When('user should be Search Enable Permissions Management and make it true', function(){
    appSettingsPage.getTabelData().should('be.visible').each(function($el){
        const text = $el.text();
        if(text.includes(userData.name)){
          cy.wrap($el).find('input:visible').clear({force:true}).type(userData.value).then(function(res){
            expect(res.val()).to.eq(userData.value)
          })
        }
    })
})

And('user Click on Save button and add settings', function(){
    appSettingsPage.getSaveBtn().click({force:true})
    appSettingsPage.getAddSettings().click({force:true})
})
And('user clicks on the Sign Out button', function () {
    homePage.clickOndropDown().should('be.visible').click();
    homePage.clickOnSignOut().should('be.visible').click();
})

Then('user should be successfully sign out from the application', function () {
    loginPage.getSignInpage().should('be.visible').and('include.text', 'Please sign in')
})
And('user should be able to see the Permissions Management text in the page', function(){
    cy.wait(2000)
    homePage.getHeaderTextList().then((val) => {
        const text = val.text();
        if(text.includes(userData.permissionsManagement)){
            homePage.getPermissionsManagementText().should('be.visible').and('include.text', userData.permissionsManagement)
        }
    })
})
And('user clicks on the Permissions Management text', function(){
    homePage.getPermissionsManagementText().click({force:true});
})
Then('user should be able to see the Permissions Management page displayed', function(){
    homePage.getPageHeader().should('be.visible').and('include.text', userData.permissionsManagement)  
})