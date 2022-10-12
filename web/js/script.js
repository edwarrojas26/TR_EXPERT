const tabs = document.querySelectorAll('[data-tab-target]')
const tabContents = document.querySelectorAll('[data-tab-content]')

tabs.forEach(tab => {
  tab.addEventListener('click', () => {
    const target = document.querySelector(tab.dataset.tabTarget)
    tabContents.forEach(tabContent => {
      tabContent.classList.remove('active')
    })
    tabs.forEach(tab => {
      tab.classList.remove('active')
    })
    tab.classList.add('active')
    target.classList.add('active')
  })
})

//Arrastrar y soltar
let arreglo = ["", "", ""];

function allowDrop(ev){
  ev.preventDefault();
}

function drag(ev){
  ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev){
  if(arreglo[parseInt(ev.target.id)] ==""){
    let data = ev.dataTransfer.getData("text");
    arreglo[parseInt(ev.target.id)] = data;
    ev.target.appendChild[document.getElementById(data)];
  }

  if(arreglo[parseInt(ev.target.id)] ==""){
    let data = ev.dataTransfer.getData("text");
    arreglo[parseInt(ev.target.id)] = data;
    ev.target.appendChild(document.getElementById(data));
  }

  if(arreglo[0] !="" && arreglo[1] != "" && arreglo[2] != ""){
    if(arreglo[0] !="hola" && arreglo[1] != "hola2" && arreglo[2] != "hola3"){
      document.querySelector("h1").innerHTML = "muy bien!!";
    }else{
      document.querySelector("h1").innerHTML = "intenta de nuevo"
    }
  }
}
