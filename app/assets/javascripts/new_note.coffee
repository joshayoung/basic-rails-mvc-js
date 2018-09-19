# This code is not complete. It was just meant to get a working v1.0 to test different ways to process an ajax POST
# TODO: cleanup this code
$(document).ready ->
  $("#new_note").on("ajax:send", (event, data, status, xhr) ->
    console.log "sending"
  ).on("ajax:success", (event, data, status, xhr) ->
    debugger
    $("#new_note").append xhr.responseText
  ).on "ajax:error", (event) ->
    debugger
    $("#new_note").append "<div>There was an error!</div>"

  $("#new_note_js").submit (e) ->
    AUTH_TOKEN = $('meta[name=csrf-token]').attr('content')
    debugger
    e.preventDefault()
    $.ajax $(this).attr("action"),
      type: "POST",
      dataType: "json",
      data: $(this).serialize()
      error: (jqXHR, textStatus, errorThrown) ->
        debugger
      success: (data, textStatus, jqXHR) ->
        console.log "success"

  $("#new_note_js_injp").submit (e) ->
    e.preventDefault()
    debugger
    AUTH_TOKEN = $('meta[name=csrf-token]').attr('content')
    $.ajax $(this).attr("action"),
      type: "POST",
      dataType: "json",
      data: $(this).serialize() + "&" + AUTH_TOKEN
      error: (jqXHR, textStatus, errorThrown) ->
        debugger
      success: (data, textStatus, jqXHR) ->
        console.log "success"