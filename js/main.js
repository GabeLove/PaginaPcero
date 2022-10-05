document.addEventListener('DOMContentLoaded',event=> {
    //COOKIES

});

const bCarrito = document.querySelector('.btn-carrito');

bCarrito.addEventListener('click', event =>{

    const carritoContainer = document.querySelector('#carrito-container');

    if(carritoContainer.style.display == ''){
        carritoContainer.style.display = 'block';
        actualizarCarritoUI();
    }else{
        carritoContainer.style.display = '';
    }
    
});

function actualizarCarritoUI(){

    fetch('http://localhost/carritoPcero/api/carrito/api-carrito.php?action=mostrar')
    .then(res => res.json())
    .then(response => {
        console.log(response);
        let tablaCont = document.querySelector('#tabla');
        let precioTotal = '';
        let html = '';

        response.items.forEach(element =>{
            html=`
            <div class='fila'>
                <div class='imagen'></div>
                    <img src='img/${element.imagen}' width='100'/>
                <div class='info'>
                    <input type='hidden' value='${element.id}'/>
                    <div class='nombre'>${element.nombre}</div>
                    <div>${element.cantidad} items de ${element.precio}</div>
                    <div>Subtotal: ${element.subtotal}</div>
                    <div class-'botones'><button class='btn-remove'>Quitar 1 del carrito</button></div>
                </div>
            </div>
            `;
        });

        precioTotal = `<p>Total: $${response.info.total}</p>`;
        tablaCont.innerHTML= precioTotal + html;

        document.cookie = `items=${response.info.count}`; 

        bCarrito.innerHTML = `(${response.info.count}) Carrito`;

        document.querySelectorAll('.btn-remove').forEach(boton =>{
            boton.addEventListener('click', e =>{
                const id = boton.parentElement.parentElement.children[0].value;

                removeItemFromCarrito(id);
            })
        })
    })
    
}

const botones = document.querySelectorAll('button');

function removeItemFromCarrito(id){

}