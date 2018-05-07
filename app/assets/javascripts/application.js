//= require rails-ujs
//= require turbolinks
//= require materialize
//= require jquery
//= require jquery-ui/widgets/sortable
//= require cocoon
//= require_tree .

document.addEventListener("turbolinks:load", function() {
  var options = {edge: 'right'};
  var elem = document.querySelectorAll('.sidenav');
  var instance = M.Sidenav.init(elem, options);
});

document.addEventListener('turbolinks:load', function() {
    var options = {};
    var elems = document.querySelectorAll('.tooltipped');
    var instances = M.Tooltip.init(elems, options);
  });
