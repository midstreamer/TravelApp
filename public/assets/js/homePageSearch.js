
  $(document).ready(function () {
    console.log("We live");

    $("#searchSubmit").on("click", participantSearchHome);

    function participantSearchHome() {

        event.preventDefault();
        var search_input = $("#search_input").val().trim();
        console.log(search_input)

            var newSearch_input ={
                newSearch_input:search_input
            }
console.log(search_input)
        $.get("/api/homepage/search", newSearch_input, function (data, cb) {
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