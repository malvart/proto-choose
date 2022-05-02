$(function (){
  const cat2 = $('#cat2');
  const cat3 = $('#cat3');
  const cat4 = $('#cat4');
  
  $(window).on('load', categoryCheck);
  $('#category').on('change', categoryCheck);

  function categoryCheck(){
    let catVal = $('#category').val();
    if (catVal == 2){
      $('#form-cat2').after(cat2);
      $('div').remove('#cat3, #cat4');
    } else if (catVal == 3){
      $('#form-cat3').after(cat3);
      $('div').remove('#cat2, #cat4');
    } else if (catVal == 4){
      $('#form-cat4').after(cat4);
      $('div').remove('#cat2, #cat3');
    } else {
      $('div').remove('#cat2, #cat3, #cat4');
    }
  }
})
