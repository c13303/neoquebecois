/* file created by charles.torris@gmail.com */

$(document).ready(function () {
    $('.pardon').click(function () {
        var mot =  $(this).data('mot');
        var data = { 
            action: "pardon", 
            mot: mot
        };
        $.post("ajax.php", data, function (data) {      
            console.log(data);
            var data = JSON.parse(data);
            
           $('.mot-'+data.mot).hide();
        });
    });
    
    $('.save').click(function () {
        var mot =  $(this).data('mot');
        var phrase =  $(this).data('phrase');
        var url = $('.url').val();
        var data = { 
            action: "save", 
            mot: mot,
            phrase : phrase,
            url : url
        };
        $.post("ajax.php", data, function (data) {   
            console.log(data);
            var data = JSON.parse(data);
           $('.mot-'+data.mot).css('border','1px solid green');
        });
    });
    
    $('.mot').click(function(){
        $('.phrase').hide('fast');
        var mot = $(this).data('mot');
       $('.motcontainer-'+mot+' .phrase').toggle('fast');
    });
    
    
});