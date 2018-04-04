$(document).ready(function() {
  $("#add_workflow_stages").click(function(event) {
    event.preventDefault();
    var lastchild = $(".collection-item").last();
    $("#stage-list").append( lastchild.clone() );
  });
});
