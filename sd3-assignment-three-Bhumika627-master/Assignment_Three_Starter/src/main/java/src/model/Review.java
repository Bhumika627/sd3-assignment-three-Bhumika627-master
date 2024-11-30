package src.model;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Review {
    private int reviewId;
    private int productId;
    private int customerId;
    private int rating;
    private String comment;
    private LocalDate reviewDate;

}