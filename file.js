// Obtén todos los elementos de botones y contadores
var botonesDecrementar = document.querySelectorAll('[id^="boton-decrementar"]');
var botonesIncrementar = document.querySelectorAll('[id^="boton-incrementar"]');
var contadores = document.querySelectorAll('[id^="contador"]');
var resetButton = document.querySelectorAll('[id^="reset"]');

// Itera sobre los botones de decrementar y agrega el manejador de eventos
botonesDecrementar.forEach(function (botonDecrementar, index) {
    botonDecrementar.addEventListener("click", function () {
        var contador = parseInt(contadores[index].textContent);
        if (contador > 0) {
            contador -= 1;
            contadores[index].textContent = contador;
        }
    });
});

// Itera sobre los botones de incrementar y agrega el manejador de eventos
botonesIncrementar.forEach(function (botonIncrementar, index) {
    botonIncrementar.addEventListener("click", function () {
        var contador = parseInt(contadores[index].textContent);
        contador += 1;
        contadores[index].textContent = contador;
    });
});

// Manejar el evento de resetear
resetButton.forEach(function (button) {
    button.addEventListener('click', () => {
        contadores.forEach(function (contador) {
            contador.textContent = '0';
        });
    });
});
