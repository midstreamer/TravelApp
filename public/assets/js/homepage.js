$(document).ready(function () {
    console.log("check user home page")

    listOfUsers()

    // get participant from API
    function listOfUsers() {
        $.get("/api/blog", function (data) {

            for(let i = 0; i < data.length; i++){

                let childArray = data[i].Blogs;
                //console log for main data 
                console.log(data[i])
                for(let j = 0; j < childArray.length; j++){
             //pulling blogs 
               console.log(childArray[j]);
            
                }
             
             }
             
        });
    }

})