$(() => {

    $("body").hide() // Sumir a nui

    window.addEventListener("message", function (event) { // Receber uma informação do script lua.
        let status = event.data.action // Armazenar o valor "mostre" em uma váriavel.
        switch (status) {
            case "show": 
                $("body").show()
                break;
            case "hide":
                $("body").hide()
                break;
            default:
        }
    })

    $(".botao").click(function () {
        var dataAction = $(this).attr('data-action');
        console.log(dataAction)
        $.post("http://conti_proarmas/botao", JSON.stringify({ arma: dataAction}))
    })

    document.addEventListener('keydown', function(event) {
        if (event.key === 'Escape' || event.keyCode === 27) {
            $("body").hide()
            $.post("http://conti_proarmas/focusFalse")
        }
    });
})