package src.model;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class Product {
    private int productId;
    private String name;
    private String description;
    private BigDecimal price;
    private int categoryId;
    private String image;

}