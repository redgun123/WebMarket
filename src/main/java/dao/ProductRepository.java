package dao;

import java.util.ArrayList;
import java.util.List;

import dto.Product;

public class ProductRepository {

	private List<Product> listOfProduts = new ArrayList<>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance() {
		return instance ;
	}

	private ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6S", 800000);
		phone.setDescription("4.7-inch, 1334X750 REtina HD display, 8-megapixel");
		phone.setCategory("Smart Phone");
		phone.setManufacture("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("new");
		phone.setFilename("P1234.png");

		Product notebook = new Product("P1235", "LG PC 그램", 150000);
		notebook.setDescription("13.3inch, IPS LED display, 5rd Generation Intel Core Processors");
		notebook.setCategory("Notebook");
		notebook.setManufacture("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core Processor");
		tablet.setCategory("Tablet");
		tablet.setManufacture("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");

		listOfProduts.add(phone);
		listOfProduts.add(notebook);
		listOfProduts.add(tablet);

	}

	public void addProduct(Product product) {
		listOfProduts.add(product);
	}
	
	public List<Product> getAllProducts() {
		return listOfProduts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
	
		for(int i =0; i < listOfProduts.size(); i++) {
			Product product = listOfProduts.get(i);
			if(product != null && product.getProductId() != null && product.
					getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
}