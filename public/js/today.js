var today = new Date();

var dd = today.getDate();
var mm = today.getMonth()+1;
var yyyy = today.getFullYear();

// if(mm<10){
//     mm='0'+mm;
// }

document.getElementById("date").textContent = dd+'/'+mm+'/'+yyyy;