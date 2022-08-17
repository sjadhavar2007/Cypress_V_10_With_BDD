///<reference types="Cypress" />
class PermissionsManagementPage {

//===================For Business banking==============================
    static tabList(){
        return cy.get('ul[role="tablist"] li')
    }
    static getFeatureTiers(){
        return this.tabList().contains('Feature Tiers')
    }
    static getBothTierText(){
        return cy.get('#tiersControl .right div a')
    }
    static tableList(){
        return cy.get('#tiersControl tr')
    }
    static getAddConsumerTier(){
        return this.getBothTierText().contains('Add Consumer Tier')
    }
}
export default PermissionsManagementPage;