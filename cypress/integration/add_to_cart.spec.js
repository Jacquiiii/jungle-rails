describe("navigate from the home page to the product detail page by clicking on a product", () => {

  it("visits the home page", () => {
    cy.visit("/")
  })

  it("confirms there are products on the page", () => {
    cy.get(".products article").should("be.visible");
  })

  it("confirms there are 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  })

  it("should add to cart", () => {
    cy.get(".products article").first().find(".btn").click({ force: true })
    cy.get(".nav-link").contains("My Cart (1)")
  })

})