jQuery ->
	$("#mail").keydown ->
		$(this).css("color", "#333");

jQuery ->
	$("#mail").keyup ->
		mail = $(this).val().trim()
		regexp = /^[a-z0-9_\+-]+(\.[a-z0-9_\+-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*\.([a-z]{2,4})$/
		if mail.search(regexp) != -1
			$("#subscriptions input[type=submit]").attr('value',"Save me a seat in the inauguration!")
			$("#subscriptions input[type=submit]").removeAttr('disabled')
		else
			$("#subscriptions input[type=submit]").attr('value',"Not a valid mail")
			$("#subscriptions input[type=submit]").attr('disabled',"disabled")

jQuery ->
	$("#mail").click ->
		val = $(this).val().trim()
		if val == "Let us keep you updated!" 
			$(this).val("")			

jQuery ->
	$("#mail").blur ->
		val = $(this).val().trim()
		if val.length == 0
			$(this).val("Let us keep you updated!")						
			$(this).css("color", "#ccc");