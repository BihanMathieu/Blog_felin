
const submit = document.getElementById("submit")

submit.addEventListener('click', event => {
    const category = document.getElementById("category").value;
    const title = document.getElementById("title").value;
    const description = document.getElementById("description").value;
    const content = document.getElementById("content").value;
        
        
        sessionStorage.category = category;
        sessionStorage.title = title;
        sessionStorage.description = description;
        sessionStorage.content = content;
        
    console.log(title);
    
});



     
     
    


   


