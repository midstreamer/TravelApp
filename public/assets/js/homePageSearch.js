
  $(document).ready(function () {
    console.log("We live");

    $("#searchSubmit").on("click", participantSearchHome);

    function participantSearchHome() {

        console.log("storySubmit")
        event.preventDefault();
        var search_input = $("#search_input").val().trim();
        console.log(search_input)


        $.get("/api/homePage/search", search_input, function (data, cb) {
console.log(data)
        }
        ).then(function (data) {
            if (data) {
                alert("search is done ");
                console.log(data)
            }
        });
    }


});