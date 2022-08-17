///<reference types="Cypress" />
class commFunc {

    static launchURL() {
        cy.viewport(1920, 1100)
        cy.getURL().then(URL => {
            cy.visit(URL)
        })
    }


    static loginWithValidCredentials(RoleName) {
        cy.getUserName(RoleName).then(UserName => {
            cy.getPassword(RoleName).then(Password => {
                cy.login(UserName, Password)
            })
        })
    }

    static getURL() {
        let EnvironmentName = Cypress.env('Environment')
        let URL = "";
        cy.fixture('EnvironmentConfig').then(function (data) {
            let filteredData = data.filter((x) => x.Environment == EnvironmentName)
            URL = filteredData[0].URL;
        }).then(() => {
            return URL;
        })
    }

    static getUserName(RoleName) {
        let EnvironmentName = Cypress.env('Environment')
        let UserName = "";
        cy.fixture('EnvironmentConfig').then(function (data) {
            let filteredData = data.filter((x) => x.Environment == EnvironmentName )
            switch (RoleName) {
                case "ReSeller":
                    UserName = filteredData[0].ReSeller_UserName
                    break;
                case "Manager":
                    UserName = filteredData[0].Manager_UserName
                    break;
                case "User":
                    UserName = filteredData[0].User_UserName
                    break;
            }
        }).then(() => {
            return UserName;
        })
    }
    
    static getPassword(RoleName) {
        let EnvironmentName = Cypress.env('Environment')
        let Password = "";
        cy.fixture('EnvironmentConfig').then(function (data) {
            let filteredData = data.filter((x) => x.Environment == EnvironmentName )
            switch (RoleName) {
                case "ReSeller":
                    Password = filteredData[0].ReSeller_Password
                    break;
                case "Manager":
                    Password = filteredData[0].Manager_Password
                    break;
                case "User":
                    Password = filteredData[0].User_Password
                    break;
            }
        }).then(() => {
            return Password;
        })
    }

}

export default commFunc;