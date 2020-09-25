

function popup_registro(archivo)
        {
            var pagina = "popup_registro.aspx";
            var parametros = "?archivo="+ archivo;
            var $dialog = $('<div id="myPrintArea" style=""></div>')
           .html('<iframe id="printframe" style="border:0px solid;width:550px;height:350px;align:center;" src="' + pagina + parametros + '"></iframe>')
           .dialog
            (
                {
                   
                    autoOpen: false,
                    modal: true,
                    height: '400',
                    width: '600',
                    title: "",
                    resizable: false,
                    open: function() 
                        {
                        $('body').css('overflow', 'hidden');
                        $(this).parent().css({ 'left': 900 });
                        },
                    close: function (event, ui)
                        {
                            var valor=0;
                            $dialog.dialog('close');
                            $dialog.remove();
                            $('body').css('overflow','auto');
                        }
                }
            );
            //WebForm_RestoreScrollPosition();
            $dialog.dialog('open');
        }


