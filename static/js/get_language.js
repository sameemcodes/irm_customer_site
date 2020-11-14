$(document).ready(function() {
  var e = document.getElementById("customer-select");
  var value = e.options[e.selectedIndex].value;

  $.ajax({
    url: "",
    type: "get", // or "get"
    data: {"language" : value},
    headers: { "X-CSRFToken": "{{ csrf_token }}" }, // for csrf token
    success: function (data) {

      if (data.language == "Arabic"){
        $("customer-select").val("Arabic");
        alert("Arabic selected")
      }
      else if (data.language == "English") {
        $("customer-select").val("English");
        alert("English selected")
      }

    },
  });
 });

$(document).ready(function () {
  $("#customer-select").change(function () {
    var e = document.getElementById("customer-select");
    var value = e.options[e.selectedIndex].value;

    $.ajax({
      url: "",
      type: "get", // or "get"
      data: {"language" : value},
      headers: { "X-CSRFToken": "{{ csrf_token }}" }, // for csrf token
      success: function (data) {
        console.log(data);
        window.location.href = '/irm_login_auth/'
        // if (data.language == "Arabic"){
        //   $("customer-select").val("Arabic");
        //
        // }
        // else if (data.language == "English") {
        //   $("customer-select").val("English");
        //
        // }

      },
    });
  });
});
