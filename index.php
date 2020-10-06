<?php
$title = "Catalog";
function get_content() {
	require_once('./models/Model.php');	
	$query = "SELECT * FROM items";

	// if statement for the category finder
	if(isset($_POST['category'])) {
		$getCategory = $_POST['category'];
		$query = "SELECT * FROM items WHERE category_id = $getCategory";
	} 

	$items = Model::get_db($query);
	?>



	<!-- WELCOMING THE ADMIN -->
	<?php if(isset($_SESSION['user_details']) && ($_SESSION['user_details']['isAdmin'] == 1)): ?>
	<div class="container py-5 mt-5">
		<div class="row">
			<div class="col-6 py-5">
				<h1 class="text-center text-white bg-dark py-5 mt-3">Welcome Home Admin!</h1>
			</div>
			<div class="col-6 d-flex justify-content-center align-items-center">
				<img class="img-fluid w-50" src="../assets/images/logo.png">
			</div>
		</div>
	</div>
	<?php endif; ?>

	<!-- Person visiting the website will see this -->
	<?php if(!isset($_SESSION['user_details'])): ?>
		<h1 class="text-center">Welcome To The Best E-Commerce Website Ever Made!</h1>
		<h1 class="text-center" style="opacity: 70%; font-size: 12px;">JK LOL</h1>
		<div class="d-flex justify-content-center align-items-center">
			<img class="img-fluid w-50" src="../assets/images/logo.png">
		</div>
	<?php endif; ?>


<?php if(isset($_SESSION['user_details'])): ?>
	<div class="container">
		<h2 class="py-5 text-center">Catalog</h2>

		<!-- Sort by category -->
		<form method="POST" action="#">
			<div class="row">
				<select class="form-control" style="width: 250px;" name="category">
					<option value="1">Breakfast</option>
					<option value="2">Lunch</option>
					<option value="3">Dinner</option>
				</select>
				<button class="btn btn-success">Find</button>
			</div>
		</form>


	<div class="container">
		<div class="row">
			<?php 
				foreach($items as $item):
				?>
					<div class="col-md-4 py-5">
						<div class="card">
							<img class="img-fluid" src="<?php echo $item['image'] ?>">
							<div class="card-body">
								<a href="/views/item_details.php?id=<?php echo $item['id']; ?>"><h5 class="card-title"><?php echo $item['name']; ?></h5></a>
								<p class="card-text"><?php echo $item['description']; ?></p>
								<small class="font-weight-bold"><?php echo $item['price'] ?></small>
								<?php if(isset($_SESSION['user_details']) && ($_SESSION['user_details']['isAdmin'] == 0)): ?>
								<form>
									<div class="input-group mt-3">
										<input type="number" name="quantity" class="form-control" min="1">
										<div class="input-group-append">
											<button class="btn btn-primary addToCart" data-id="<?php echo $item['id'] ?>"> Add to Cart </button>
										</div>
									</div>
								</form>
							<?php endif; ?>
						</div>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
	</div>
</div>
<?php endif; ?>




<script type="text/javascript">
	let addToCartButtons = document.querySelectorAll('.addToCart');
	addToCartButtons.forEach(indiv_button => {
		indiv_button.addEventListener('click', () => {
			let id = indiv_button.getAttribute("data-id");
			let quantity = indiv_button.parentElement.previousElementSibling.value
			
			let formBody = new FormData;
			formBody.append('id', id);
			formBody.append('quantity', quantity);
			fetch('routes/add_to_cart.php', {
				method: 'POST',
				body: formBody
			})
			.then(res => res.text())
			.then(data => {
				// alert('Items added to cart');
				let cartCount = document.getElementById('cart_count');
				if(parseInt(cartCount.innerHTML) == 0) {
					cartCount.innerHTML = parseInt(quantity);
				} else {
					cartCount.innerHTML = parseInt(cartCount.innerHTML) + parseInt(quantity);
				}
			})
		})
	})
</script>
<?php } require'views/layout.php'; ?>