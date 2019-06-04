function openPage(pageName,elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

function sum() {
  var txtFirstNumberValue = document.getElementById('telat').value;
  var txtSecondNumberValue = document.getElementById('denda').value;
  var result = parseInt(txtFirstNumberValue) * parseInt(txtSecondNumberValue);
  if (!isNaN(result)) {
     document.getElementById('total').value = result;
  }
}

function keydownFunction() {
  var x = document.getElementById("password_baru").value;
  var y = document.getElementById("konfirmasi_password_baru").value;
  if(x!=y){
    document.getElementById("konfirmasi").innerHTML =  "<span style='color:red' name='konfirmasi' value='salah'>Password Tidak Sama</span>";
  }else{
    document.getElementById("konfirmasi").innerHTML = "<span style='color:green' name='konfirmasi' value='benar'>Password Sama</span>";
  }
  
}

