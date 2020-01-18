<?php defined('BASEPATH') OR exit('No direct script access allowed');
if(!empty($data))
{
	?>
	<div class="panel panel-info card">
		<div class="panel-heading card-header bg-info">
			<h5>Detail</h5>
		</div>
		<div class="panel-body card-body">
			<table class="table table-hover">
				<tr>
					<td>nama</td>
					<td>: <?php echo $data['responden']['nama'] ?></td>
				</tr>
				<tr>
					<td>usia</td>
					<td>: <?php echo $data['responden']['usia'] ?></td>
				</tr>
				<tr>
					<td>jenis kelamin</td>
					<td>: <?php echo $data['responden']['kelamin'] ?></td>
				</tr>
				<tr>
					<td>pendidikan terakhir</td>
					<td>: <?php echo $data['responden']['pend_terakhir'] ?></td>
				</tr>
				<tr>
					<td>masa kerja</td>
					<td>: <?php echo $data['responden']['masa_kerja'] ?></td>
				</tr>
			</table>
		</div>
		<div class="panel-footer card-footer bg-info">
			
		</div>
	</div>
	<hr>
	<div class="panel panel-info card">
		<div class="panel-heading card-header bg-warning">
			<h5>Responses</h5>
		</div>
		<div class="panel-body card-body">

			<?php
			if(!empty(@$data['category']))
			{
				$i = 0;
				$j = 0;
				$result = [];
				$options = $this->question_model->options();
				?>
				<div class="nav-tabs-custom">
          <ul class="nav nav-tabs">
          	<?php foreach ($data['category'] as $key => $value): ?>
          		<?php $active = $i == 0 ? 'class="active"':''; ?>
            	<li <?php echo $active ?>><a href="#tab_<?php echo $value['id']?>" data-toggle="tab"><?php echo $value['title'] ?></a></li>
            	<?php $i++ ?>
          	<?php endforeach ?>
          </ul>
          <div class="tab-content">
          	<?php foreach ($data['category'] as $key => $value): ?>
          		<?php $active = $j == 0 ? 'active':''; ?>
            	<?php if (!empty($data['responses'][$value['id']])): ?>
	              <div class="tab-pane <?php echo $active ?>" id="tab_<?php echo $value['id']?>">
	                <?php foreach ($data['responses'][$value['id']] as $rkey => $rvalue): ?>
	                	<?php
	                	switch (strtolower($data['options'][$rvalue['answer']])) {
											case 'sangat setuju':
											case 'setuju':
												$color = 'green';
												break;
											case 'agak setuju':
												$color = 'aqua';
												break;
											case 'sangat tidak setuju':
											case 'tidak setuju':
												$color = 'red';
												break;
											case 'agak tidak setuju':
												$color = 'yellow';
												break;	
											case 'netral':
												$color = 'yellow';
												break;
											default:
												$color = 'blue';
												break;
										}?>
	                	<div class="form-group">
	                		<label><?php echo $rvalue['number'].'. '.$rvalue['title'] ?></label>
	                		<label class="bg-<?php echo $color;?>"><?php echo $data['options'][$rvalue['answer']] ?></label>
	                		<?php 
	                		$result[$value['id']][$rvalue['answer']][] = $rvalue['id'];
	                		?>
	                	</div>
	                <?php endforeach ?>
	              </div>
            	<?php endif ?>
              <?php $j++ ?>
          	<?php endforeach ?>
          </div>
        </div>
				<?php
			}
			?>
		</div>
		<div class="panel-footer card-footer bg-warning">
		</div>
	</div>
	<?php
	$survey = [];
	$category = assoc($data['category']);
	foreach ($result as $key => $value) 
	{
		foreach ($data['options'] as $okey => $ovalue)
		{
			foreach($value AS $vkey => $vvalue)
			{
				if($vkey == $okey)
				{
					$survey[$category[$key]][$ovalue] = count($vvalue);
				}
			}
		}
	}
	?>
	<div class="panel panel-success">
		<div class="panel-heading">
			hasil
		</div>
		<div class="panel-body">
			<?php foreach ($survey as $key => $value): ?>
				<label><?php echo $key ?></label><br>
				<?php 
				$total = 0;
				foreach ($value as $vvkey => $vvvalue) 
				{
					$total += $vvvalue;
				}
				?>
				<?php foreach ($value as $vkey => $vvalue): ?>
					<?php 
					switch (strtolower($vkey)) {
						case 'sangat setuju':
						case 'setuju':
							$color = 'green';
							break;
						case 'agak setuju':
							$color = 'aqua';
							break;
						case 'sangat tidak setuju':
						case 'tidak setuju':
							$color = 'red';
							break;
						case 'agak tidak setuju':
							$color = 'yellow';
							break;	
						case 'netral':
							$color = 'yellow';
							break;
						default:
							$color = '';
							break;
					}
					?>
					<?php echo $vkey ?>
					<div class="progress">
	          <div class="progress-bar progress-bar-<?php echo $color?>" role="progressbar" aria-valuenow="<?php echo $vvalue ?>" aria-valuemin="1" aria-valuemax="<?php echo $total ?>" style="width:<?php echo 100/$total*$vvalue ?>%;">
	            <span><?php echo $vvalue ?></span>
	          </div>
  	      </div>
				<?php endforeach ?>
			<?php endforeach ?>
		</div>
		<div class="panel-footer"></div>
	</div>
	<?php
}