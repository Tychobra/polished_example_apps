


function app_box_module_js(ns_prefix) {


  $("#" + ns_prefix + "go_to_back").click(function(){

    $("#" + ns_prefix + "go_to_back").hide()
    $("#" + ns_prefix + "go_to_front").show()
  })

  $("#" + ns_prefix + "go_to_front").click(function(){

    $("#" + ns_prefix + "go_to_front").hide()
    $("#" + ns_prefix + "go_to_back").show()
  })

}
