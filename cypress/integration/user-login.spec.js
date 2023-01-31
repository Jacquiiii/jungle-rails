describe("can login successfully", () => {

  it("visits the home page", () => {
    cy.visit("/")
  })

  it("finds the Login button, clicks on it, is directed to to the Login form and logs in successfully", () => {
    cy.contains("Login").click()

    cy.get("#email").type("s.brown@brown.com")
    cy.get("#password").type("brown")

    cy.get(".btn").click()

    cy.get(".nav-link").contains("Logout")
  })

})