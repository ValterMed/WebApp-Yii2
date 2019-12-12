<?php
/* @var $this UsersController */
/* @var $model Users */

$this->breadcrumbs=array(
	'Users'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'Create Users', 'url'=>array('create')),
	array('label'=>'Manage Users', 'url'=>array('admin')),
);
?>
<div class="tabbable"> <!-- Only required for left/right tabs -->
  <ul class="nav nav-tabs">
    <li class="active"><a href="#tab1" data-toggle="tab">Update Users <?php echo $model->id; ?></a></li>
    <li><a href="#tab2" data-toggle="tab">Roles</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="tab1">
      	<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
    </div>
    <div class="tab-pane" id="tab2">
		<?php $this->renderPartial("_roles",array("role"=>$role,"model"=>$model));?>
    </div>
  </div>
</div>
