console.log("outé")

const target = document.getElementById("133")

console.log(target)

const Url= 'http://localhost:3000/'

const data = {
    id:133
}

target.click(function(){
    console.log("email#"+target.id)
    target.post(Url,data, function(data, status){
        console.log(`${data} and status is ${status}`)
    })
})

/*const cards = Array.from(document.getElementById("emails").children)


cards.forEach(card => {
    var Url = `http://localhost:3000/emails/${card.id}/post`
    card.addEventListener('click', function(){
        console.log(`email#${card.id}`)
        $.ajax({
            url: Url,
            typ: "POST",
            success: function(result){
               console.log(result)
            },
            error: function(error){
                console.log(`Error ${error}`)
            }
        })        
    })
});*/

console.log("sortie")