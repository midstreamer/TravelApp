$(document).ready(function () {
    console.log("check user home page")

    listOfUsers()

    // get participant from API
    function listOfUsers() {
        $.get("/api/blog", function (data) {
            //info for all our participants 
            var infoToAdd = []
            //all the story info of our participants 
            var infoToAddCom = []
            //looping the main data 
            for (let i = 0; i < data.length; i++) {
                let childArray = data[i].Blogs;
                //console log for main data 
                // console.log(data[i])
                var imgLocation = $("<div class='profileInfo'>");
                var picture = $("<img>").addClass("circle").attr("src", data[i].user_pic_profile)
                var movingFirstAndLast = $("<div class = 'partInfo'>").text(data[i].user_First_name + "  " + data[i].user_Last_name)
                imgLocation.append(picture);
                imgLocation.append(movingFirstAndLast);
                $("#users_list").append(imgLocation);
                movingToProfile()
                infoToAdd.push((data[i]));
                for (let j = 0; j < childArray.length; j++) {
                    //pulling blogs with if for linking them together i bet its another way of doing it but whatever 
                    //console.log(childArray[j]);
                    if (childArray[j].ParticipantClientId == data[i].client_id) {
                        infoToAddCom.push((childArray[j]));
                        if (infoToAdd.client_id == infoToAddCom.ParticipantClientId) {
                            var droppingStoryList = $("<div class = 'blogsInfo'>").text(childArray[j].user_StoryList)
                            imgLocation.append(droppingStoryList);
                            $("#users_list").append(imgLocation);
                        }
                    }
                }
            }
        });


    }


   
function movingToProfile(){
    $(".circle").click(function() {
        console.log($(this))
      });
}
  




})