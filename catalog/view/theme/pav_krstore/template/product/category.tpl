<?php echo $header; ?>
<div class="container">
	<div class="row">
		<?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-md-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="col-lg-9 <?php echo $class; ?> col-sm-12 col-xs-12"><?php echo $content_top; ?>
		<ul class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
			<?php } ?>
		</ul>
			<?php if ($thumb || $description) { ?>
				<div class="category-info hidden-xs">
					<?php if ($thumb) { ?>
						<div class="image effect-v10"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive" /></div>
					<?php } ?>
				</div>
			<?php } ?>
			<h1><?php echo $heading_title; ?></h1>
			<?php if ($categories) { ?>
				<h3 class="text-refine"><?php echo $text_refine; ?></h3>
				<?php if (count($categories) <= 5) { ?>
					<div class="space-top-20 box-refine">
						<ul class="clearfix">
							<?php foreach ($categories as $category) { ?>
								<li class="col-lg-3 col-md-3 col-sm-6 col-xs-12"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
							<?php } ?>
						</ul>
					</div>
				<?php } else { ?>
					<div class="row">
						<?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
							<div class="col-sm-3">
								<ul>
									<?php foreach ($categories as $category) { ?>
										<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
									<?php } ?>
								</ul>
							</div>
						<?php } ?>
					</div>
				<?php } ?>
			<?php } ?>
			<?php if ($products) { ?>
				<?php   require( ThemeControlHelper::getLayoutPath( 'product/product_filter.tpl' ) );   ?>
				<?php require( ThemeControlHelper::getLayoutPath( 'common/product_collection.tpl' ) );  ?> 
				<div class="paging row">
				<div class="col-sm-6 text-left space-top-10"><?php echo $results; ?></div>
				<div class="col-sm-6 text-right"><?php echo $pagination; ?></div>
				</div>
			<?php } ?>
			<?php if (!$categories && !$products) { ?>
				<p><?php echo $text_empty; ?></p>
				<div class="buttons">
					<div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
				</div>
			<?php } ?>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $column_right; ?>
	</div>
</div>
<?php echo $footer; ?>
