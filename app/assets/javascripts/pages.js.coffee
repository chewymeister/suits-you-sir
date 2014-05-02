(($) ->
  $ ->
    # Highlight functionality
    $('.rollover').click ->
      $('.rollover').removeClass("highlight")
      $(this).addClass("highlight")
      return
    
    # Slider functionality
    
    # slide knob to position function
    (($) ->
      $.fn.slideToPos = ->
        left = $(this).position().left + ($(this).width() / 2) - ($(".menu a.knob").width() / 2) - 2
        $(".menu a.knob").css "left", left
        before = $(this).parent().parent().parent().children(".bar").first().children(".before").first()
        before.css("width", left + 20).css "backgroundColor", $($(this).attr("href")).css("backgroundColor")
        this

      return
    ) jQuery
    $(".menu ul li.active a").slideToPos()
    $(".menu ul li a").click (e) ->
      e.preventDefault()
      $(this).slideToPos()
      $("html, body").animate
        scrollTop: $(@hash).offset().top
      , 400
      return

    
    # Scroll Spy
    $(window).scroll ->
      top = $(window).scrollTop() + 100 # Take into account height of fixed menu
      $(".container").each ->
        c_top = $(this).offset().top
        c_bot = c_top + $(this).height()
        hash = $(this).attr("id")
        li_tag = $("a[href$=\"" + hash + "\"]").parent()
        if (top > c_top) and (top < c_bot)
          if li_tag.hasClass("active")
            false
          else
            li_tag.siblings().andSelf().removeClass "active"
            li_tag.addClass "active"
            $(".menu ul li.active a").slideToPos()
        return

      return

    return

  return
# end of document ready
) jQuery # end of jQuery name space
