$(document).on("hidden.bs.modal", function(event) {
    $(event.target).removeData("bs.modal").find(".modal-content").empty();
});