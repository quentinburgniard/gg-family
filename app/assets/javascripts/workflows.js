document.addEventListener("turbolinks:load", function() {
  // jquery-ui make stages sortable
  // https://gorails.com/episodes/sortable-drag-and-drop
  $("#stage-list").sortable({
    placeholder: "ui-state-highlight",
    forcePlaceholderSize: true,
    stop: function(event, ui) {
      $(ui.item).find(".workflow_workflow_stages_attributes_position").val(ui.item.index());
    }
  });

  // add a new stage at the end
  $("#add_workflow_stages").click(function(event) {
    event.preventDefault();
    var lastchild = $(".collection-item").last().clone();
    var position = lastchild.find(".workflow_workflow_stages_attributes_position").val();
    lastchild.find(".workflow_workflow_stages_attributes_position").val(parseInt(position)+1);
    lastchild.find(".workflow_workflow_stages_attributes_id").remove();

    $("#stage-list").append( lastchild.clone() );
  });
});
