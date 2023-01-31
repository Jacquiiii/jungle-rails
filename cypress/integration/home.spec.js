describe("home page", () => {

  it("visits the home page", () => {
    cy.visit("/")
  })

  it("confirms there are products on the page", () => {
    cy.get(".products article").should("be.visible");
  })

  it("confirms there are 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  })

})
