

if(sessionStorage.length != 0 ){
    document.getElementById("category").value = sessionStorage.category;
    document.getElementById("descriptionImg").value = sessionStorage.descriptionIMG;
    document.querySelector('#content').value= sessionStorage.content;
    
}

const submit = document.getElementById("submit")

submit.addEventListener('click', event => {
    const category = document.getElementById("category").value;
    const descriptionImg = document.getElementById("descriptionImg").value;
    const content = contentEditor.getData();
    
        
        
        sessionStorage.category = category;
        sessionStorage.descriptionIMG = descriptionImg;
        sessionStorage.content = content;
    
});


window.addEventListener("DOMContentLoaded", (event) => {
    ClassicEditor
        .create( document.querySelector( '#content' ) )
        .then( editor => {
            contentEditor = editor;
        })
        .catch( error => {
            console.error(error);
        });
        
       });



     
     
    


   


