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
					<td>: <?php echo $data['nama'] ?></td>
				</tr>
				<tr>
					<td>usia</td>
					<td>: <?php echo $data['usia'] ?></td>
				</tr>
				<tr>
					<td>jenis kelamin</td>
					<td>: <?php echo $data['kelamin'] ?></td>
				</tr>
				<tr>
					<td>pendidikan terakhir</td>
					<td>: <?php echo $data['pend_terakhir'] ?></td>
				</tr>
				<tr>
					<td>masa kerja</td>
					<td>: <?php echo $data['masa_kerja'] ?></td>
				</tr>
			</table>
		</div>
		<div class="panel-footer card-footer bg-info">
			
		</div>
	</div>
	<hr>
	<form action="" method="post">
		<div class="panel panel-info card">
			<div class="panel-heading card-header bg-warning">
				<h5>Questioner</h5>
			</div>
			<div class="panel-body card-body">

				<?php
				if(!empty(@$data['category']))
				{
					$i = 0;
					$j = 0;
					$options = $this->question_model->options();
					?>
					<nav>
					  <div class="nav nav-tabs" id="nav-tab" role="tablist">
							<?php foreach ($data['category'] as $key => $value): ?>
								<?php $active = $i == 0 ? 'active' : ''; ?>
					    	<a style="font-size: 16px;" class="nav-item nav-link <?php echo $active ?>" id="nav-<?php echo $value['id']?>-tab" data-toggle="tab" href="#nav-<?php echo $value['id']?>" role="tab" aria-controls="nav-<?php echo $value['id']?>" aria-selected="true"><?php echo $value['title']?></a>
						    <?php $i++; ?>
							<?php endforeach ?>
					  </div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<br>
				  	<?php foreach ($data['category'] as $key => $value): ?>
				  		<?php $active = $j == 0 ? 'show active' : ''; ?>
					  	<div class="tab-pane fade <?php echo $active ?>" id="nav-<?php echo $value['id']?>" role="tabpanel" aria-labelledby="nav-<?php echo $value['id']?>-tab">
								<?php if (!empty($data['question'][$value['id']])): ?>
									<?php foreach ($data['question'][$value['id']] as $dqkey => $dqvalue): ?>
										<label style="font-size: 16px;"><?php echo $dqvalue['number'].'. '.$dqvalue['title'] ?></label><br>
										<!-- <select class="form-control" name="question[<?php echo $dqvalue['id'] ?>]">
											<option value="1">Sangat Tidak Setuju</option>
											<option value="2">Tidak Setuju</option>
											<option value="3">Agak Tidak Setuju</option>
											<option value="4">Netral</option>
											<option value="5">Agak Setuju</option>
											<option value="6">Setuju</option>
											<option value="7">Sangat Setuju</option>
										</select> -->
										<?php foreach ($options as $okey => $ovalue): ?>
											<!-- <div class="form-check-inline">
											  <label class="form-check-label">
											    <input type="radio" class="form-check-input" name="question[<?php echo $dqvalue['id'] ?>]" value="<?php echo $okey ?>" required><?php echo $ovalue ?>
											  </label>
											</div> -->
											<?php
											echo '<div class="radio">';
											echo '<label>';
											echo form_radio(array(
												'name'    => 'question['.$dqvalue['id'].']',
												'value'   => $okey,
												'required' => 'required',
												)).ucfirst($ovalue);
											echo '</label>';
											echo '</div>';
											?>
										<?php endforeach ?>
										<br>
									<?php endforeach ?>
								<?php endif ?>
					  	</div>
					  	<?php $j++; ?>
				  	<?php endforeach ?>
					</div>
					<?php
				}
				?>
			</div>
			<div class="panel-footer card-footer bg-warning">
				<button class="btn btn-success"><i class="fa fa-save"></i> submit</button> <span class="badge badge-info">pastikan semua pertanyaan sudah dijawab</span>
			</div>
		</div>
	</form>
	<?php
}