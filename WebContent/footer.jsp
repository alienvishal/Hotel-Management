<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.js"></script>
	<script>
		$('#checkin').datepicker({
			'format':'mm-dd-yyyy',
			'autoclose':true
		});
		$('#checkout').datepicker({
			'format':'mm-dd-yyyy',
			'autoclose':true
		});
	</script>
	
	<script>
	(function($){
		"use strict";
		$('.next').click(function(){ $('.carousel').carousel('next'); return false; });
		$('.prev').click(function(){ $('.carousel').carousel('prev'); return false; });
	})
	(jQuery);
	</script>
</body>
</html>