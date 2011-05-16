// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function remove_fields(link) {
  $(link).previous("input[type=hidden]").value = "1";
  $(link).up(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  $(link).up().insert({
    before: content.replace(regexp, new_id)
  });

 
}


$(function() {
  $("#filmsearchs th a, #filmsearchs .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#filmsearchs_search input").keyup(function() {
    $.get($("#filmsearchs_search").attr("action"), $("#filmsearchs_search").serialize(), null, "script");
    return false;
  });
});

$(function() {
  $("#salles th a, #salles .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#salles_search input").keyup(function() {
    $.get($("#salles_search").attr("action"), $("#salles_search").serialize(), null, "script");
    return false;
  });
});