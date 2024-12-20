// Selecting elements
const profileName = document.getElementById("profile-name");
const profileEmail = document.getElementById("profile-email");
const profilePhone = document.getElementById("profile-phone");
const profileAddress = document.getElementById("profile-address");

const editName = document.getElementById("edit-name");
const editEmail = document.getElementById("edit-email");
const editPhone = document.getElementById("edit-phone");
const editAddress = document.getElementById("edit-address");

const updateButton = document.getElementById("update-button");

// Event listener for updating the profile
updateButton.addEventListener("click", () => {
    // Updating profile details dynamically
    profileName.textContent = editName.value;
    profileEmail.textContent = editEmail.value;
    profilePhone.textContent = editPhone.value;
    profileAddress.textContent = editAddress.value;

    // Alert the user
    alert("Profile updated successfully!");
});
