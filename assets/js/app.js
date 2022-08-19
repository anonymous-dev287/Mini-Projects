function createNotice() {
    parent = document.getElementById("feeds");
    for (i = 0; i < 10; i++) {
        var newDiv = document.createElement("div");

        newDiv.setAttribute("class", "feed");
        // newDiv.setAttribute("class","card col-md-3 col-sm-12");
        // newDiv.setAttribute("id",data[i].recipeid);

        var newcontent = document.createElement("a");
        newcontent.innerHTML="Hello Everyone";
        // newcontent.innerHTML = data[i].recipename;
        newcontent.setAttribute('href', "#");

        var img = document.createElement("img");
        // img.setAttribute("class","card-img-top");
       var url = "./assets/images/new.gif"
        // url = "./"+data[i].imurl;
        img.setAttribute("src", url);

        newDiv.appendChild(img);
        newDiv.appendChild(newcontent);
        parent.appendChild(newDiv);
       
        // newDiv.setAttribute("onclick", "fetch(this)");
       
    }
}
createNotice();
