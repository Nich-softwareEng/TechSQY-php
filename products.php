<?php
include 'admin/db_connect.php';
$products = $conn->query("SELECT * FROM products order by name asc");
?>
<div class="container pt-4">
	<div style="clear: both"></div>
	<div class="col-lg-12">
		<div class="card mb-4">
			<div class="card-body">
				<ul class="list-group">
					<?php while ($row = $products->fetch_assoc()): ?>
						<li class="list-group-item">
							<h4><b><a
										href="index.php?page=view_product&f=<?php echo $row['filename'] ?>&id=<?php echo $row['id'] ?>">
										<?php echo ucwords($row['name']) ?>
									</a></b></h4>
						</li>
					<?php endwhile; ?>
				</ul>
			</div>
		</div>
	</div>
</div>