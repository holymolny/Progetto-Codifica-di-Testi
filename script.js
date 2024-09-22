/**Funzione per mostrare/nascondere il testo */
function mostraNascondi(idElemento, idButton, idButtonX, idButtonAdd, idButtonCorr, idButtonAbbr){
  //Div che contiene il testo
  var div = document.getElementById(idElemento);
  //Bottone per mostrare il testo
  var button = document.getElementById(idButton);
  /*Button per cancellature */
  var buttonX = document.getElementById(idButtonX);
  /*Button per aggiunte */
  var buttonAdd = document.getElementById(idButtonAdd);
  //Bottone per correzioni
  var buttonCorr = document.getElementById(idButtonCorr);
  //Bottone per abbreviazioni/espansioni
  var buttonAbbr = document.getElementById(idButtonAbbr);

  if (div && button) {
    if (div.style.display === "none") {
      div.style.display = "block";
      button.textContent = "Nascondi testo";
      buttonX.style.display = "inline";
      buttonAdd.style.display = "inline";
      buttonCorr.style.display = "inline";
      buttonAbbr.style.display = "inline";
    } else {
      div.style.display = "none";
      button.textContent = "Mostra testo";
      buttonX.style.display = "none";
      buttonAdd.style.display = "none";
      buttonCorr.style.display = "none";
      buttonAbbr.style.display = "none";
    }
  }
}

function evidenziaCancellature(idElemento){
  var div = document.getElementById(idElemento);
  var del = div.querySelectorAll('.del');

  for(var i = 0; i<del.length; i++){
    del[i].classList.toggle('highlighted');
  }
}

function evidenziaAggiunte(idElemento){
  var div = document.getElementById(idElemento);
  var adds = div.querySelectorAll('.add-a, .add-b, .add-bot, .add-i, .add-ai, .add-mr');
  for(var i = 0; i<adds.length; i++){
    if(adds[i].classList.contains('add-a'))
      adds[i].classList.toggle('add-above');
    if(adds[i].classList.contains('add-b'))
      adds[i].classList.toggle('add-below');
    if(adds[i].classList.contains('add-bot'))
      adds[i].classList.toggle('add-bottom');
    if(adds[i].classList.contains('add-i'))
      adds[i].classList.toggle('add-inline');
    if(adds[i].classList.contains('add-ai'))
      adds[i].classList.toggle('add-aboveinline');
    if(adds[i].classList.contains('add-mr'))
      adds[i].classList.toggle('add-marginright');
  }
}


function evidenziaCorrezioni(idElemento, idButton){
  var div = document.getElementById(idElemento);
  var btn = document.getElementById(idButton);
  var sic = div.querySelectorAll('.sic, .add-b .sic, .add-below .sic');
  var corr = div.querySelectorAll('.corr, .add-b .corr, .add-below .corr');
  var allSicHidden = true;

    sic.forEach(function(element) {
        if (element.style.display !== "none") {
            allSicHidden = false;
            return;
        }
    });

    //Al click del bottone
    if (btn) {
      //Se tutti gli elementi aventi la classe sic sono nascosti allora:
      if (allSicHidden) {
          sic.forEach(function(element) {
              element.style.display = "inline";
          });
          corr.forEach(function(element) {
              element.style.display = "none";
          });
      //Se invece i sic non sono nascosti
      } else {
          sic.forEach(function(element) {
              element.style.display = "none";
          });
          corr.forEach(function(element) {
              element.style.display = "inline";
          });
      }
    }
}

function evidenziaEspansioni(idElemento, idBtn){
  var div = document.getElementById(idElemento);
  var btn = document.getElementById(idBtn);
  var abbr = div.querySelectorAll('.abbr');
  var expan = div.querySelectorAll('.expan');
  var allSicHidden = true;

  abbr.forEach(function(element) {
      if (element.style.display !== "none") {
          allSicHidden = false;
          return;
      }
  });

  if(btn){
    //Se tutti gli elementi aventi la classe abbr sono nascosti allora:
    if (allSicHidden) {
      abbr.forEach(function(element) {
          element.style.display = "inline";
      });
      expan.forEach(function(element) {
          element.style.display = "none";
      });
  //Se invece i abbr non sono nascosti
    } else {
      abbr.forEach(function(element) {
          element.style.display = "none";
      });
      expan.forEach(function(element) {
          element.style.display = "inline";
      });
    }
  }
}