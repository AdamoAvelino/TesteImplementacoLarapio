$(window).ready(function() {
  $('button[data-acao=perguntar]').click(function() {
    perguntar($(this).attr('data-confirmar'));
  });
});

function perguntar(id_form)
{
  console.log($('#'.id_form));
  document.getElementById(id_form).submit();
}