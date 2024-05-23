// Menu manipulation

// Add toggle listeners to listen for clicks.
document.addEventListener("turbo:load", function() {
    let rsl = document.querySelector("#rsl");
    rsl.addEventListener("click", function(event) {
      event.preventDefault();
      let menu = document.querySelector("#dropdown-menu")
      menu.classList.toggle("active");
      let toggle = document.querySelector("#dropdown-toggle")
      toggle.classList.replace("dropdown-toggle fa-solid fa-caret-up");
    });
  });