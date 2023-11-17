<?php include('db_connect.php'); ?>

<div class="container-fluid">

	<div class="col-lg-12">
		<div class="row">
			<!-- FORM Panel -->
			<div class="col-md-4">
				<form action="" id="manage-product">
					<div class="card">
						<div class="card-header">
							product Form
						</div>
						<div class="card-body">
							<input type="hidden" name="id">
							<div class="form-group">
								<label class="control-label">Name</label>
								<input type="text" class="form-control" name="name">
							</div>
						</div>

						<div class="card-footer">
							<div class="row">
								<div class="col-md-12">
									<button class="btn btn-sm btn-primary col-sm-3 offset-md-3"> Save</button>
									<button class="btn btn-sm btn-default col-sm-3" type="button"
										onclick="$('#manage-product').get(0).reset()"> Cancel</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<!-- FORM Panel -->

			<!-- Table Panel -->
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">
						<b>product List</b>
					</div>
					<div class="card-body">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th class="text-center">#</th>
									<th class="text-center">product</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php
								$i = 1;
								$product = $conn->query("SELECT * FROM products order by id asc");
								while ($row = $product->fetch_assoc()):
									?>
										<tr>
											<td class="text-center">
												<?php echo $i++ ?>
											</td>
											<td class="">
												<p><b>
														<?php echo $row['name'] ?>
													</b></p>
											</td>
											<td class="text-center">
												<a class="btn btn-sm btn-primary manage_product text-white"
													href="index.php?page=manage_page&edit=<?php echo $row['filename'] ?>"
													data-id="<?php echo $row['id'] ?>"
													data-description="<?php echo $row['description'] ?>"
													data-name="<?php echo $row['name'] ?>">Content</a>
												<button class="btn btn-sm btn-primary edit_product" type="button"
													data-id="<?php echo $row['id'] ?>"
													data-description="<?php echo $row['description'] ?>"
													data-name="<?php echo $row['name'] ?>">Edit</button>
												<button class="btn btn-sm btn-danger delete_product" type="button"
													data-id="<?php echo $row['id'] ?>">Delete</button>
											</td>
										</tr>
								<?php endwhile; ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- Table Panel -->
		</div>
	</div>

</div>
<style>
	td {
		vertical-align: middle !important;
	}
</style>
<script>

	$('#manage-product').submit(function (e) {
		e.preventDefault()
		start_load()
		$.ajax({
			url: 'ajax.php?action=save_product',
			data: new FormData($(this)[0]),
			cache: false,
			contentType: false,
			processData: false,
			method: 'POST',
			type: 'POST',
			success: function (resp) {
				if (resp == 1) {
					alert_toast("Data successfully added", 'success')
					setTimeout(function () {
						location.reload()
					}, 1500)

				}
				else if (resp == 2) {
					alert_toast("Data successfully updated", 'success')
					setTimeout(function () {
						location.reload()
					}, 1500)

				}
			}
		})
	})
	$('.edit_product').click(function () {
		start_load()
		var cat = $('#manage-product')
		cat.get(0).reset()
		cat.find("[name='id']").val($(this).attr('data-id'))
		cat.find("[name='name']").val($(this).attr('data-name'))
		cat.find("[name='description']").val($(this).attr('data-description'))
		end_load()
	})

	$('.delete_product').click(function () {
		_conf("Are you sure to delete this product?", "delete_product", [$(this).attr('data-id')])
	})
	function delete_product($id) {
		start_load()
		$.ajax({
			url: 'ajax.php?action=delete_product',
			method: 'POST',
			data: { id: $id },
			success: function (resp) {
				if (resp == 1) {
					alert_toast("Data successfully deleted", 'success')
					setTimeout(function () {
						location.reload()
					}, 1500)

				}
			}
		})
	}
	$('table').dataTable()
</script>