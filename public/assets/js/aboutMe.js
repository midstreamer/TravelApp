$(document).ready(function () {

$("#aboutMeToHide").hide();

$("#aboutMeClick").on("click", function() {

    $("#aboutMeToHide").show()
    });

$("#aboutMeCloseToHide").on("click", function() {
    $("#aboutMeToHide").hide();
});

$('#aboutMeSubmitBtn').on("click", aboutMeSubmit);

var newBio_input;
function aboutMeSubmit() {
    event.preventDefault();
    var bio_input = $("#newAboutMe").val().trim();

    newBio_input = {
        newBio_input: bio_input
    }


$.post("/api/aboutme", newBio_input, function(data, cb) {
    console.log(data)
})
.then(function (data) {
    if (data) {
        alert("Your bio has been updated!");
        $("#aboutMeToHide").hide();
        location.reload();
    }
});
};

});