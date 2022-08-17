///<reference types="Cypress" />
import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";
import commFunc from '../../../support/commonUtilityMethod/commFunc';
import loginPage from "../../../support/pageObjects/LoginPage";
import homePage from '../../../support/pageObjects/HomePage';
import permissionsManagementPage from "../../../support/pageObjects/PermissionManagementPage";
var userData;
//Feature: TC02-CreateEditRole > Permission management page should have 2 options 1. Feature Tiers 2. Business Roles

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

//

When('user enters valid Email and Password for Reseller and Clicks on Sign in', function () {
    loginPage.getSignInpage().should('be.visible').and('include.text', 'Please sign in')
    commFunc.loginWithValidCredentials("ReSeller")
})

Then('user should login successfully and navigate to home page', () => {
    homePage.getPageHeader().should('be.visible').and('include.text', userData.members)
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
And('user should be able to see the Permissions Management page displayed', function(){
    homePage.getPageHeader().should('be.visible').and('include.text', userData.permissionsManagement)  
})
Then('user should be able to see Feature Tiers and Business Roles clickable option', function(){
    permissionsManagementPage.tabList().click({multiple: true}).should('have.length', 2)
     .and('include.text', "Feature Tiers",)
     .and('include.text', "Business Roles")
})