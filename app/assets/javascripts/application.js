//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function(){
        $('#hideshow').on('click', function(event) {
             $('#content').toggle('show');
        });
    });

