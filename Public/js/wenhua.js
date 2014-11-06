$(document).ready(function(){
     $('.wenhua dd').eq(0).siblings('dd').hide();
     $('.wenhua dt').click(function(){
       $(this).next('dd').siblings('dd').slideUp().end().slideDown();
     })
});