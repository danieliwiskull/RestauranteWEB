function val_correo(txt) {
    var corr = txt.value;
    var re;
    var b = /^[^@\s]+@[^@\.\s]+(\.[^@\.\s]+)+$/

    if (corr !== "") {
        if (!b.test(corr)) {

            VarTextoMensaje = "La dirección de email es incorrecta.";
            alert(VarTextoMensaje);
            txt.focus();
            txt.value = "";
            return false;
        }
    }
}

function validarSiNumero(numero) {
    if (!/^([0-9])*$/.test(numero)) {
        alert("El valor ingresado debe ser numérico");
        numero.value = "";
        return false;
    }

}