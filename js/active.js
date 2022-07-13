var links = document.querySelectorAll(".link li");

links.forEach(li => {
    li.addEventListener("click",()=>{
        resetLink();
        li.classList.add("active");
    })
})
function resetLink(){
    links.forEach(li =>{
        li.classList.remove("active");
    })
}