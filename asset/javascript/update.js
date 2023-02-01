const submit = document.getElementById("modify");

submit.addEventListener('click', event => {
    const content = document.getElementById("content").value;
    const category = document.getElementById("category").value;
    const descriptionImg = document.getElementById("descriptionImg").value;
    
    sessionStorage.content = content;
    sessionStorage.category = category;
    sessionStorage.descriptionIMG = descriptionImg;
})



