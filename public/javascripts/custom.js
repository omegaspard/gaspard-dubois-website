function displayExperienceContent(id) {
    console.log(id);
    var experienceNodes = document.getElementById("experiences-content").children;
    console.log(experienceNodes);
    for(var experienceNode of experienceNodes) {

        if(experienceNode.id == id) {
            console.log(experienceNode);
            experienceNode.style.display = "block";
        } else {
            console.log(experienceNode.id);

            experienceNode.style.display = "None";
        }
    }
}
