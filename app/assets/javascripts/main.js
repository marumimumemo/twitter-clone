$(document).on('turbolinks:load', function() {

  $(function() {
// registration

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

// top_bar

    $('#navi').click(function(){
        $('.menu').toggle();
    });

    $('#navi').on("mouseover",function(){
        $('.guide-menu').show();
    }).on("mouseout", function(){
      $(".guide-menu").hide();
    });

// profile

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

// tweetbox

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

    $('.tweets').on("mouseover",function(){
        $('.guide-tweets').show();
    }).on("mouseout", function(){
      $(".guide-tweets").hide();
    });

    $('.following').on("mouseover",function(){
        $('.guide-following').show();
    }).on("mouseout", function(){
      $(".guide-following").hide();
    });

    $('.followed').on("mouseover",function(){
        $('.guide-followed').show();
    }).on("mouseout", function(){
      $(".guide-followed").hide();
    });

    $('.likes').on("mouseover",function(){
        $('.guide-likes').show();
    }).on("mouseout", function(){
      $(".guide-likes").hide();
    });

    $('.lists').on("mouseover",function(){
        $('.guide-lists').show();
    }).on("mouseout", function(){
      $(".guide-lists").hide();
    });

    $('.moments').on("mouseover",function(){
        $('.guide-moments').show();
    }).on("mouseout", function(){
      $(".guide-moments").hide();
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
        $(this).siblings('.guide-comment').show();
    }).on("mouseout", function(){
      $(this).siblings(".guide-comment").hide();
    });

    $('.fa-retweet').on("mouseover",function(){
        $(this).siblings('.guide-retweet').show();
    }).on("mouseout", function(){
      $(this).siblings(".guide-retweet").hide();
    });

    $('.red_heart').on("mouseover",function(){
        $(this).siblings('.guide-like').show();
    }).on("mouseout", function(){
      $(this).siblings(".guide-like").hide();
    });

    $('.gray_heart').on("mouseover",function(){
        $(this).siblings('.guide-like').show();
    }).on("mouseout", function(){
      $(this).siblings(".guide-like").hide();
    });

    $('.fa-heart').on("mouseover",function(){
        $(this).siblings('.guide-like').show();
    }).on("mouseout", function(){
      $(this).siblings(".guide-like").hide();
    });

    $('.fa-envelope').on("mouseover",function(){
        $(this).siblings('.guide-message').show();
    }).on("mouseout", function(){
      $(this).siblings(".guide-message").hide();
    });

    $('.fa-caret-down').on("mouseover",function(){
        $(this).siblings('.guide-other').show();
    }).on("mouseout", function(){
      $(this).siblings(".guide-other").hide();
    });

    $('.fa-caret-down').click(function(){
        $(this).siblings('.delete-menu').toggle();
    });

    $('.fa-caret-down').click(function(){
        $(this).siblings('.other-menu').toggle();
    });

// comment_box

    $('#comment_body').click(function(){
        $('.detail__timeline__tweetbox__one').hide();
    });

    $('#comment_body').click(function(){
        $('.detail__timeline__tweetbox__two').show();
    });

    $('.fa-circle').click(function(){
        $('.detail__timeline__tweetbox__one').show();
    });

    $('.fa-circle').click(function(){
        $('.detail__timeline__tweetbox__two').hide();
    });

  });

});
