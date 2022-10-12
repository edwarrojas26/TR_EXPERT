<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="theme-color" content="#bla"/>
    <title>Plan de entrenamiento</title>
    

    <!-- CSS only -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
      crossorigin="anonymous"
    />

    <link rel="stylesheet" href="css/creacion-plan.css" />
  </head>
  <body>
    <header class="container-fluid bg-dark position-sticky top-0">
      <ul
        class="nav nav-pills mb-3 py-3 container"
        id="pills-tab"
        role="tablist"
      >
        
        <li class="nav-item" role="presentation">
          <a
            class="btn btn-dark"
            id="pills-profile-tab"
            data-bs-toggle="pill"
            data-bs-target="#pills-profile"
            type="button"
            role="tab"
            aria-controls="pills-profile"
            aria-selected="false">Principiante</a>
        </li>
        
        <li class="nav-item" role="presentation">
          <a
            class="btn btn-dark"
            id="pills-profile-tab"
            data-bs-toggle="pill"
            data-bs-target="#pills-profile-intermedio"
            type="button"
            role="tab"
            aria-controls="pills-profile"
            aria-selected="false">Intermedio</a>
        </li>
        
        <li class="nav-item" role="presentation">
          <a
            class="btn btn-dark"
            id="pills-profile-tab"
            data-bs-toggle="pill"
            data-bs-target="#pills-profile-avanzado"
            type="button"
            role="tab"
            aria-controls="pills-profile"
            aria-selected="false">Avanzado</a>
        </li>

        <li class="nav-item" role="presentation">
          <a
            class="btn btn-danger"
            id="pills-contact-tab"
            data-bs-toggle="pill"
            data-bs-target="#pills-contact"
            type="button"
            role="tab"
            aria-controls="pills-contact"
            aria-selected="false">Plan de entrenamiento</a
          >
        </li>
      </ul>
    </header>

    <div class="alert container position-sticky top-0 alert-primary hide" role="alert">
        Ejercicio Añadido al plan!
    </div>
    <div class="alert container position-sticky top-0 alert-danger remove" role="alert">
      Ejercicio removido del plan!
    </div>

    <div class="tab-content" id="pills-tabContent">
      <div
        class="tab-pane fade "
        id="pills-home"
        role="tabpanel"
        aria-labelledby="pills-home-tab"
      >
        
      </div>
      <div
        class="tab-pane fade show active container"
        id="pills-profile"
        role="tabpanel"
        aria-labelledby="pills-profile-tab"
      ><br><br>

        <div class="row row-cols-sm-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4">

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Flexiones con palmada</h5>
              <img src="./img/superior1.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 5 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>
          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              
              <h5 class="card-title pt-2 text-center text-white">Principiante - Flexiones inclinadas</h5>
              <img src="./img/superior2.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>
          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Flexiones declinadas</h5>
              <img src="./img/superior3.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>
          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Curl de bíceps con mancuernas</h5>
              <img src="./img/superior4.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>
          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Press con mancuernas</h5>
              <img src="./img/superior5.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>
          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Tríceps con mancuerna</h5>
              <img src="./img/superior6.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>
          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Elevaciones frontales con mancuernas</h5>
              <img src="./img/superior7.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>
          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Elevaciones laterales con mancuernas </h5>
              <img src="./img/superior8.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Abdominales con mancuernas</h5>
              <img src="./img/superior9.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Remo al cuello con mancuernas</h5>
              <img src="./img/superior10.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Abdominales con mancuernas</h5>
              <img src="./img/superior11.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Abdominales con mancuernas</h5>
              <img src="./img/superior12.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <!--TREN INFERIOR-->

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Ascensiones alternas</h5>
              <img src="./img/superior13.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Puente sobre fitball</h5>
              <img src="./img/superior14.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Puente sobre fitball</h5>
              <img src="./img/superior15.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Puente sobre fitball</h5>
              <img src="./img/superior16.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Puente sobre fitball</h5>
              <img src="./img/superior17.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Legs roller con flexión</h5>
              <img src="./img/superior18.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Peso muerto con mancuernas</h5>
              <img src="./img/superior19.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Elevación de gemelos a dos</h5>
              <img src="./img/superior20.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Sentadilla lateral</h5>
              <img src="./img/superior21.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Puente con pierna cruzada</h5>
              <img src="./img/superior22.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Zancada fija</h5>
              <img src="./img/superior23.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"> <span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>

          <div class="col d-flex justify-content-center mb-4">
            <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
              <h5 class="card-title pt-2 text-center text-white">Principiante - Patada lateral con apoyo en plataforma </h5>
              <img src="./img/superior24.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 10 kg	<br>Peso Mujer	5 kg</span></h5>
                <div class="d-grid gap-2">
                <button  class="btn btn-danger button">Añadir al plan</button>
              </div>
              </div>
            </div>
          </div>


        </div>

      </div>

      <!--Intermedio-->
      <div
      class="tab-pane fade show active container"
      id="pills-profile-intermedio"
      role="tabpanel"
      aria-labelledby="pills-profile-tab"
    ><br><br>

      <div class="row row-cols-sm-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4">

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Flexiones</h5>
            <img src="./img/superior1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 5 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Flexiones inclinadas</h5>
            <img src="./img/superior2.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Flexiones declinadas</h5>
            <img src="./img/superior3.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Curl de bíceps con mancuernas</h5>
            <img src="./img/superior4.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Press con mancuernas</h5>
            <img src="./img/superior5.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Tríceps con mancuerna</h5>
            <img src="./img/superior6.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Elevaciones frontales con mancuernas</h5>
            <img src="./img/superior7.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Elevaciones laterales con mancuernas </h5>
            <img src="./img/superior8.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Abdominales con mancuernas</h5>
            <img src="./img/superior9.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Remo al cuello con mancuernas</h5>
            <img src="./img/superior10.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Abdominales con mancuernas</h5>
            <img src="./img/superior11.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Abdominales con mancuernas</h5>
            <img src="./img/superior12.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <!--TREN INFERIOR-->

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Ascensiones alternas</h5>
            <img src="./img/superior13.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Puente sobre fitball</h5>
            <img src="./img/superior14.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Puente sobre fitball</h5>
            <img src="./img/superior15.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Puente sobre fitball</h5>
            <img src="./img/superior16.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Puente sobre fitball</h5>
            <img src="./img/superior17.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Legs roller con flexión</h5>
            <img src="./img/superior18.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Peso muerto con mancuernas</h5>
            <img src="./img/superior19.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Elevación de gemelos a dos</h5>
            <img src="./img/superior20.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Sentadilla lateral</h5>
            <img src="./img/superior21.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Puente con pierna cruzada</h5>
            <img src="./img/superior22.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Zancada fija</h5>
            <img src="./img/superior23.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"> <span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Intermedio - Patada lateral con apoyo en plataforma </h5>
            <img src="./img/superior24.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 20 kg	<br>Peso Mujer	10 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>


      </div>

    </div>

         <!--Avanzado-->
      <div
      class="tab-pane fade show active container"
      id="pills-profile-avanzado"
      role="tabpanel"
      aria-labelledby="pills-profile-tab"
    ><br><br>

      <div class="row row-cols-sm-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4">

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Flexiones</h5>
            <img src="./img/superior1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 5 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Flexiones inclinadas</h5>
            <img src="./img/superior2.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Flexiones declinadas</h5>
            <img src="./img/superior3.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Curl de bíceps con mancuernas</h5>
            <img src="./img/superior4.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Press con mancuernas</h5>
            <img src="./img/superior5.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Tríceps con mancuerna</h5>
            <img src="./img/superior6.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Elevaciones frontales con mancuernas</h5>
            <img src="./img/superior7.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>
        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Elevaciones laterales con mancuernas </h5>
            <img src="./img/superior8.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Abdominales con mancuernas</h5>
            <img src="./img/superior9.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Remo al cuello con mancuernas</h5>
            <img src="./img/superior10.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Abdominales con mancuernas</h5>
            <img src="./img/superior11.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Abdominales con mancuernas</h5>
            <img src="./img/superior12.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <!--TREN INFERIOR-->

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Ascensiones alternas</h5>
            <img src="./img/superior13.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Puente sobre fitball</h5>
            <img src="./img/superior14.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Puente sobre fitball</h5>
            <img src="./img/superior15.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Puente sobre fitball</h5>
            <img src="./img/superior16.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Puente sobre fitball</h5>
            <img src="./img/superior17.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Legs roller con flexión</h5>
            <img src="./img/superior18.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Peso muerto con mancuernas</h5>
            <img src="./img/superior19.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Elevación de gemelos a dos</h5>
            <img src="./img/superior20.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Sentadilla lateral</h5>
            <img src="./img/superior21.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Puente con pierna cruzada</h5>
            <img src="./img/superior22.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Zancada fija</h5>
            <img src="./img/superior23.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"> <span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>

        <div class="col d-flex justify-content-center mb-4">
          <div class="card shadow mb-1 bg-dark rounded" style="width: 20rem;">
            <h5 class="card-title pt-2 text-center text-white">Avanzado - Patada lateral con apoyo en plataforma </h5>
            <img src="./img/superior24.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="text-white"><span class="precio"> Repeticiones 12 <br> Series 4 <br> Peso Hombre 30 kg	<br>Peso Mujer	20 kg</span></h5>
              <div class="d-grid gap-2">
              <button  class="btn btn-danger button">Añadir al plan</button>
            </div>
            </div>
          </div>
        </div>


      </div>

    </div>
       <!--Avanzado-->
      <div
        class="tab-pane fade carrito"
        id="pills-contact"
        role="tabpanel"
        aria-labelledby="pills-contact-tab"
      >
      <br>
      <table class="table table-dark table-hover">
        <thead>
          <tr class="text-plan">
            <th scope="col">...</th>
            <th scope="col">Ejercicios</th>
            <th scope="col">Repeticiones-Peso</th>
          </tr>
        </thead>
        <tbody class="tbody">
          
        </tbody>
      </table>
      <br><br>
      <div class="row mx-4">
        <div class="col">
          
        </div>
        <div class="col d-flex justify-content-end">
          <button class="btn btn-success">Generar plan</button>
        </div>
      </div>
      
      </div>
    </div>

    <script
      src="https://code.jquery.com/jquery-3.5.1.js"
      integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
      crossorigin="anonymous"
    ></script>
    <!-- JavaScript Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
      crossorigin="anonymous"
    ></script>
    <script src="./js/creacion-plan.js"></script>
  </body>
</html>