


 
$(document).ready(function () {
    console.log("We live");
    $("#storySubmitBtn").on("click", storySubmit);
    function storySubmit() {
        console.log("storySubmit")
        event.preventDefault();
        var newStory_title = $("#newStoryTitle").val().trim();
        var newStory_location = $("#newStoryLocation").val().trim();
        var newStory_story = $("#newStoryContent").val().trim();
        var newStory = {
            user_StoryList: newStory_story,
            user_title: newStory_title,
            user_location: newStory_location
        }
        $.post("/api/blog/Story", newStory, function (data, cb) {
        }
        ).then(function (data) {
            if (data) {
                alert("all done, thanks");
                // console.log(data)
                location.reload();
            }
        });
    }
    
    $('.tooltipped').tooltip({delay: 50});
});