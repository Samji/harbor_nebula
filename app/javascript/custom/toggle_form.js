document.addEventListener("turbo:load", function() {
    let newChampionLink = document.querySelector("#show-new-champion-form");
    if (newChampionLink) {  // Ensure the element exists
        newChampionLink.addEventListener("click", function(event) {
            event.preventDefault();
            let formRow = document.querySelector("#new-champion-form-row");
            if (formRow) {  // Ensure the element exists
                formRow.style.display = (formRow.style.display === "none" || formRow.style.display === "") ? "table-row" : "none";
            }
        });
    }
});