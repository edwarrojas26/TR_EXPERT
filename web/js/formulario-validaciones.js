const formulario = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');

const expresiones = {
    txtNombre: /^[a-zA-ZÀ-ÿ\s]{2,40}$/, // Letras y espacios, pueden llevar acentos.
    txtApellido: /^[a-zA-ZÀ-ÿ\s]{2,30}$/, // Letras y espacios, pueden llevar acentos.
    txtNumDoc: /^\d{7,10}$/, // Letras y espacios, pueden llevar acentos.
    txtFN: /^\d{4}[\/\-](0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])$/,
    txtTelefono: /^\d{7,10}$/, // Letras y espacios, pueden llevar acentos.
    txtEdad: /^\d{1,3}$/,
    txtContrasena: /^.{4,12}$/, // 4 a 12 digitos.
    txtCorreo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    txtAlergias: /^[a-zA-ZÀ-ÿ\s]{2,40}$/
}

const campos = {
    txtNombre: false,
    txtApellido: false,
    txtNumDoc: false,
    txtFN: false,
    txtEdad: false,
    ndocumento: false,
    txtContrasena: false,
    txtCorreo: false,
    txtTelefono: false,
    txtAlergias: false
}

const validarFormulario = (e) => {
    switch (e.target.name) {
        case "txtNumDoc":
            validarCampo(expresiones.txtNumDoc, e.target, 'txtNumDoc');
            break;
        case "txtNombre":
            validarCampo(expresiones.txtNombre, e.target, 'txtNombre');
            break;
        case "txtApellido":
            validarCampo(expresiones.txtApellido, e.target, 'txtApellido');
            break;
        case "txtEdad":
            validarCampo(expresiones.txtEdad, e.target, 'txtEdad');
            break;
        case "txtFN":
            validarCampo(expresiones.txtFN, e.target, 'txtFN');
            break;
        case "txtAlergias":
            validarCampo(expresiones.txtAlergias, e.target, 'txtAlergias');
            break;
        case "txtContrasena":
            validarCampo(expresiones.txtContrasena, e.target, 'txtContrasena');
            validarPassword2();
            break;
        case "password2":
            validarPassword2();
            break;
        case "txtCorreo":
            validarCampo(expresiones.txtCorreo, e.target, 'txtCorreo');
            break;
        case "txtTelefono":
            validarCampo(expresiones.txtTelefono, e.target, 'txtTelefono');
            break;
    }
}

const validarCampo = (expresion, input, campo) => {
    if (expresion.test(input.value)) {
        document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-check-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-times-circle');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove('formulario__input-error-activo');
        campos[campo] = true;
    } else {
        document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-times-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-check-circle');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add('formulario__input-error-activo');
        campos[campo] = false;
    }
}

const validarPassword2 = () => {
    const inputPassword1 = document.getElementById('password');
    const inputPassword2 = document.getElementById('password2');

    if (inputPassword1.value !== inputPassword2.value) {
        document.getElementById(`grupo__password2`).classList.add('formulario__grupo-incorrecto');
        document.getElementById(`grupo__password2`).classList.remove('formulario__grupo-correcto');
        document.querySelector(`#grupo__password2 i`).classList.add('fa-times-circle');
        document.querySelector(`#grupo__password2 i`).classList.remove('fa-check-circle');
        document.querySelector(`#grupo__password2 .formulario__input-error`).classList.add('formulario__input-error-activo');
        campos['txtContrasena'] = false;
    } else {
        document.getElementById(`grupo__password2`).classList.remove('formulario__grupo-incorrecto');
        document.getElementById(`grupo__password2`).classList.add('formulario__grupo-correcto');
        document.querySelector(`#grupo__password2 i`).classList.remove('fa-times-circle');
        document.querySelector(`#grupo__password2 i`).classList.add('fa-check-circle');
        document.querySelector(`#grupo__password2 .formulario__input-error`).classList.remove('formulario__input-error-activo');
        campos['txtContrasena'] = true;
    }
}

inputs.forEach((input) => {
    input.addEventListener('keyup', validarFormulario);
    input.addEventListener('blur', validarFormulario);
});

formulario.addEventListener('submit', (e) => {
    e.preventDefault();

    const terminos = document.getElementById('terminos');
    if (campos.txtNumDoc && campos.txtNombre && campos.txtApellido && campos.txtCorreo && campos.txtTelefono && campos.txtAlergias && campos.txtEdad) {
        formulario.reset();

        document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo');
        setTimeout(() => {
            document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo');
        }, 5000);

        document.querySelectorAll('.formulario__grupo-correcto').forEach((icono) => {
            icono.classList.remove('formulario__grupo-correcto');
        });
    } else {
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
    }
});