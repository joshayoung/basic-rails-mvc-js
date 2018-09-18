$(document).ready ->
  $("#new_note").on("ajax:success", (event) ->
    [data, status, xhr] = event.detail
    $("#new_note").append xhr.responseText
  ).on "ajax:error", (event) ->
    $("#new_note").append "<div>There was an error!</div>"