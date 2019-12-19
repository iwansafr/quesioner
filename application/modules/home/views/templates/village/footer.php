<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<div class="container">
	<div class="row">
	</div>
	<?php
	if(!empty($contact['wa']))
	{
		echo '<a href="https://wa.me/'.$contact['wa'].'?text=hai+'.@$contact['name'].'"><img src="https://www.esoftgreat.com/images/wa.png" style="height: 75px; position: fixed;bottom: 5%; right: 0.5%;z-index: 9999;"></a>';
	}
	if(!empty($contact['phone']))
	{
		echo '<a href="tel:'.$contact['phone'].'" class="btn btn-warning" style="height: 40px; position: fixed;bottom: 0%; right: 1.5%;z-index: 9999;"><span class="fa fa-phone"></span></a>';
	}
	?>
	<br>
	<hr>
	<p style="margin: 0;padding: 0;height: 60px;line-height: 45px;">&copy; Copyright <?php echo date('Y') ?> All Right Reserved. </p>
</div>