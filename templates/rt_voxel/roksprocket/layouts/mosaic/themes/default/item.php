<?php
/**
 * @version   $Id: item.php 656 2012-05-02 18:35:49Z kevin $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - ${copyright_year} RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

/**
 * @var $item RokSprocket_Item
 */
?>
<li<?php echo strlen($item->custom_tags) ? ' class="'.$item->custom_tags.'"' : ''; ?> data-mosaic-item>
	<div class="sprocket-mosaic-item" data-mosaic-content>
		<?php echo $item->custom_ordering_items; ?>
		<div class="sprocket-padding">
			<?php if ($item->getPrimaryImage()) :?>
			<div class="sprocket-mosaic-image-container">
				<?php if ($item->getPrimaryLink()) : ?><a href="<?php echo $item->getPrimaryLink()->getUrl(); ?>"><?php endif; ?>
				<img src="<?php echo $item->getPrimaryImage()->getSource(); ?>" alt="" class="sprocket-mosaic-image" />
				<?php if ($item->getPrimaryLink()) : ?>
					<span class="sprocket-mosaic-hover"></span>
					<span class="sprocket-mosaic-hovercontent"><span>+</span><?php rc_e('READ_MORE'); ?></span>
				</a>
				<?php endif; ?>
			</div>
			<?php endif; ?>

			<div class="sprocket-mosaic-head">
				<?php if ($item->getTitle()): ?>
				<h2 class="sprocket-mosaic-title">
					<?php if ($item->getPrimaryLink()): ?><a href="<?php echo $item->getPrimaryLink()->getUrl(); ?>"><?php endif; ?>
						<?php echo $item->getTitle();?>
					<?php if ($item->getPrimaryLink()): ?></a><?php endif; ?>
				</h2>
				<?php endif; ?>

				<?php if ($parameters->get('mosaic_article_details')): ?>
				<div class="sprocket-mosaic-infos">
					By 	<span class="author"><?php echo $item->getAuthor(); ?></span> / <span class="date"><?php echo $item->getDate();?></span>
				</div>
				<?php endif; ?>
			</div>

			<div class="sprocket-mosaic-text">
				<?php echo $item->getText(); ?>
			</div>
			<?php if ($item->getPrimaryLink()) : ?>
			<a href="<?php echo $item->getPrimaryLink()->getUrl(); ?>" class="sprocket-readmore"><span><?php rc_e('READ_MORE'); ?> +</span></a>
			<?php endif; ?>
		</div>
		<?php if (strlen($item->custom_tags)) : ?>
			<span class="sprocket-corner-badge"></span>
			<span class="sprocket-badge-icon"></span>
		<?php endif; ?>
	</div>
</li>
