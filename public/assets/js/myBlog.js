$(document).ready(function() {
    console.log("We live");

$("#storySubmitBtn").on("submit", storySubmit);

var url = window.location.href;
console.log(url)
var clientID;

if (url.indexOf("myblog/") !== -1) {
    console.log("im inside")
    clientID = url.split("myblog/")[1];
    console.log(clientID)
} else {
    console.log("nope")
}


function storySubmit() {

event.preventDefault();


var newStory_title = $("#newStoryTitle").val().trim();
var newStory_location = $("#newStoryLocation").val().trim();
var newStory_story = $("#newStoryContent").val().trim();

if (!newStory_title || !newStory_location || !newStory_story) {
    alert("Please fill in all fields.");
    return;
};


var newStory = {
    user_StoryList: newStory_story
    //user_StoryTitle: newStory_title
}

console.log(newStory)

postNewStory(newStory);

$("#newStoryTitle").val('');
$("#newStoryLocation").val('');
$("#newStoryContent").val('');

}


function postNewStory(story) {
    $.post("/api/blog/story", story)
    .then(function(data) {
        window.location.href="/api/blog/myblog/"+clientID;
    }).catch(function(err) {
        console.log(error);
    });      
        // window.location.href = "/api/blog"
   
    
  
};



function getStory() {
    $.get("/api/blog/story", function(data) {
        console.log(data);
    });
};









});