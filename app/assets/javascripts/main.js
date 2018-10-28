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

    $('#tweet_body').click(function(){
        $('.contents__timeline__tweetbox__one').hide();
    });

    $('#tweet_body').click(function(){
        $('.contents__timeline__tweetbox__two').show();
    });

    $('.fa-circle').click(function(){
        $('.contents__timeline__tweetbox__one').show();
    });

    $('.fa-circle').click(function(){
        $('.contents__timeline__tweetbox__two').hide();
    });

    $('.fa-star').on("mouseover",function(){
        $('.guide-emoji').show();
    }).on("mouseout", function(){
      $(".guide-emoji").hide();
    });

    $('.fa-image').on("mouseover",function(){
        $('.guide-image').show();
    }).on("mouseout", function(){
      $(".guide-image").hide();
    });

    $('.fa-align-left').on("mouseover",function(){
        $('.guide-vote').show();
    }).on("mouseout", function(){
      $(".guide-vote").hide();
    });

    $('.fa-map-pin').on("mouseover",function(){
        $('.guide-address').show();
    }).on("mouseout", function(){
      $(".guide-address").hide();
    });

    $('.fa-image').on("mouseover",function(){
        $('.guide-image').show();
    }).on("mouseout", function(){
      $(".guide-image").hide();
    });

    $('.fa-comment').on("mouseover",function(){
        $('.guide-comment').show();
    }).on("mouseout", function(){
      $(".guide-comment").hide();
    });

    $('.fa-retweet').on("mouseover",function(){
        $('.guide-retweet').show();
    }).on("mouseout", function(){
      $(".guide-retweet").hide();
    });

    $('.fa-heart').on("mouseover",function(){
        $('.guide-like').show();
    }).on("mouseout", function(){
      $(".guide-like").hide();
    });

    $('.fa-envelope').on("mouseover",function(){
        $('.guide-message').show();
    }).on("mouseout", function(){
      $(".guide-message").hide();
    });

    $('.fa-caret-down').on("mouseover",function(){
        $('.guide-other').show();
    }).on("mouseout", function(){
      $(".guide-other").hide();
    });

    $('.fa-caret-down').click(function(){
        $('.other-menu').toggle();
    });

  });

});
