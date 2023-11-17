<?php
include 'admin/db_connect.php';
$products = $conn->query("SELECT * FROM products order by name asc");
?>
<div class="container-fluid pt-4">
	<div style="clear: both"></div>
	<div class="row">
		<div class="col-lg-3">
			<div class="card mb-3">
				<div class="card-body">
					<ul class="list-group">
						<?php while ($row = $products->fetch_assoc()):
							$cname[$row['id']] = ucwords($row['name']);
							?>
								<li class="list-group-item"><b><a
											href="index.php?page=view_product&f=<?php echo $row['filename'] ?>&id=<?php echo $row['id'] ?>">
											<?php echo ucwords($row['name']) ?>
										</a></b></li>
						<?php endwhile; ?>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-lg-9">
			<div class="container-fluid">
				<div class="card">
					<div class="card-body">
						<h4><b>
								<?php echo $cname[$_GET['id']] ?>
							</b></h4>
						<hr>
						<div class="fr-view">
							<?php echo include($_GET['f'] . '.html'); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>