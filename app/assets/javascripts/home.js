$( document ).ready(function() {
    $( "#convert" ).click(function() {
        $.ajax({
            url: "/conversion.json",
            data: {
                query: $("#issue-name").val()
            },
            complete : function(data){
                $('#pr-name').text(data.responseText);
            }
        });

    });
});
