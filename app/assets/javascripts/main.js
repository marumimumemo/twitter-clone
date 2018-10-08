$(document).on('turbolinks:load', function() {

  $(function() {

    $('#navi').click(function(){
        $('.menu').toggle();
    });

    $('.change-buttun-one').click(function(){
        $('.change-buttun-two').show();
    });

    $('.change-buttun-one').click(function(){
        $('.change-buttun-one').hide();
    });

    $('.change-buttun-two').click(function(){
        $('.change-buttun-one').show();
    });

    $('.change-buttun-two').click(function(){
        $('.change-buttun-two').hide();
    });

    $('.change-buttun-one').click(function(){
        $('#user_email').hide();
    });

    $('.change-buttun-one').click(function(){
        $('#user_phone').show();
    });

    $('.change-buttun-two').click(function(){
        $('#user_phone').hide();
    });

    $('.change-buttun-two').click(function(){
        $('#user_email').show();
    });

    $('.edit__header__image').click(function(){
        $('.image-menu-one').toggle();
    });

    $('.cancel').click(function(){
        $('.image-menu-one').toggle();
    });

    $('.edit__avatar').click(function(){
        $('.image-menu-two').toggle();
    });

    $('.edit__header__image').click(function(){
        $('.image-menu-two').hide();
    });

    $('.edit__avatar').click(function(){
        $('.image-menu-one').hide();
    });

    $('.upload-one').click(function(){
        $('.save-buttun-one').show();
    });

    $('.upload-two').click(function(){
        $('.save-buttun-two').show();
    });

  });

});
