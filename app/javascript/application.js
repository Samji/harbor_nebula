// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "custom/menu"
import "custom/toggle_form"

document.addEventListener("turbo:load", function() {
    // Add event listeners for form submissions and dropdown interactions
    const factionDropdown = document.getElementById("faction-dropdown");
    const rarityDropdown = document.getElementById("rarity-dropdown");
    const affinityDropdown = document.getElementById("affinity-dropdown");
    const roleDropdown = document.getElementById("role-dropdown");
  
    if (factionDropdown) {
      factionDropdown.addEventListener("change", function() {
        this.form.submit();
      });
    }

    if (rarityDropdown) {
        rarityDropdown.addEventListener("change", function() {
          this.form.submit();
        });
    }

    if (affinityDropdown) {
        affinityDropdown.addEventListener("change", function() {
          this.form.submit();
        });
    }

    if (roleDropdown) {
        roleDropdown.addEventListener("change", function() {
          this.form.submit();
        });
    }
  });