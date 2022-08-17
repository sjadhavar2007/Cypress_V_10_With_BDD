class HomePage {

    static getPageHeader(){
        return cy.get('div h1.page-header')
    }
    static getHeaderTextList(){
       return cy.get('div.collapse ul')
    }
    static getMemberText(){
        return this.getHeaderTextList().contains('Members')
    }
    static getMembersList(){
        return cy.get('#member-logs  tbody tr')
    }
    static getUsersText(){
        return this.getHeaderTextList().contains('Users')
    }
    static getRiskProfilesText() {
        return this.getHeaderTextList().contains('Risk Profiles')
    }

    static getRiskProfilesPageText() {
        return this.getMembersPageHeader().contains('Risk Profiles')
    }
    static clickOndropDown(){
        return cy.get('div#navbarNavDarkDropdown ul.navbar-nav li.nav-item a#navbarDarkDropdownMenuLink')
    }
    static clickOnSignOut(){
        return cy.get('#logOffLink')
    }
    static getPermissionsManagementText(){
        return this.getHeaderTextList().contains('Permissions Management')
    }

    static getTransfersText(){
        return this.getHeaderTextList().contains('Transfers')
    }

    static getAdsText(){
        return this.getHeaderTextList().contains('Ads')
    }
    static getAdsSectionDropdownMenu() {
        return cy.get('.dropdown-menu').find('li:visible')
    }
    static getMessagesText(){
        return this.getHeaderTextList().contains('Messages')
    }
    static getViewMessages(){
        return cy.get('ul.dropdown-menu.show li')
    }

    //===========================//
    static getReportsText(){
        return this.getHeaderTextList().contains('Reports')
    }
    static getReportsSectionDropdownMenu() {
        return cy.get('ul.dropdown-menu.dropdown-menu-dark.show li:visible')
    }
    static getUsageReports(){
        return this.getAdsSectionDropdownMenu().contains('Usage Reports')
    }
    static getAppErrors(){
        return this.getAdsSectionDropdownMenu().contains('App Errors')
    }
    static getOAOReport(){
        return this.getAdsSectionDropdownMenu().contains('OAO Report')
    }
    //---------------------IN Member Page----------------------------//
    static getAllMembers(){
        return cy.get('#AllMembers')
    }
    static getSearchField(){
        return cy.get('#SearchParams')
    }
    static getSearchButton(){
        return cy.get('#searchButton')
    }
    static getBusinesses(){
        return cy.get('form div').should('be.visible').contains('Businesses')
    }    

    static getPerticularUserList(){
        return cy.get('div.col-sm-12 #member-logs tbody tr')
    }
    static clickEditButton(){
        return cy.get('i.bi-pencil-square')
    }

    static filterspecificMemberRecord(MemberName) {
        return this.getMembersList().filter(':contains(' + MemberName + ')')
    }

    static getSpecificMembersEditbtn(MemberName) {
        return this.filterspecificMemberRecord(MemberName).find('.bi-pencil-square')
    }

    //--------------------ManageInstitutions------------------------//
    static getManageInstText(){
        return this.getHeaderTextList().contains('Manage Institution')
    }

    static getManageInstDropdownMenu() {
        return cy.get('.dropdown-menu').find('li:visible')
    }

    static getManageInstDropdownMenu() {
        return cy.get('.dropdown-menu').find('li:visible')
    }

    static getAppSettings(){
        return this.getManageInstDropdownMenu().contains('App Settings')
    }

    static getServiceSettings(){
        return this.getManageInstDropdownMenu().contains('Service Settings')
    }

    static getExportImportSettings(){
        return this.getManageInstDropdownMenu().contains('Export/Import Settings')
    }

    static getCards(){
        return this.getManageInstDropdownMenu().contains('Cards')
    }
    static getLocations(){
        return this.getManageInstDropdownMenu().contains('Locations')
    }
    static getEditInstitution(){
        return this.getManageInstDropdownMenu().contains('Edit Institution')
    }

    static getCreateInstitution(){
        return this.getManageInstDropdownMenu().contains('Create Institution')
    }
}

export default HomePage;