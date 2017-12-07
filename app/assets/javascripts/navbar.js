const link = document.getElementById("prestations");
console.log(link);

link.addEventListener("mouseenter", function() {
  document.getElementById("navbar-prestations").classList.add("opacity");
});

const wrapper = document.getElementById("wrapper");

wrapper.addEventListener("mouseleave", function() {
  document.getElementById("navbar-prestations").classList.remove("opacity");
});

const qui = document.getElementById("qui");
console.log(qui);

qui.addEventListener("mouseenter", function() {
  document.getElementById("navbar-prestations").classList.remove("opacity");
});

const portfolio = document.getElementById("portfolio");
console.log(portfolio);

portfolio.addEventListener("mouseenter", function() {
  document.getElementById("navbar-prestations").classList.remove("opacity");
});
