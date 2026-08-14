package com.hasan.entity;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@Entity
public class Book {
	@Id
	@SequenceGenerator(name="book_seq",sequenceName = "book_seq",initialValue = 1,allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "book_seq")
	private Integer id;
	
	@NotEmpty(message = "Title is required")
	@NonNull
	@Column(length = 25)
	private String title;
	
	@NonNull
	@NotEmpty(message = "Author is required")
	@Column(length = 25)
	private String author;
	
	@NonNull
	@NotEmpty(message = "Category is required")
	@Column(length = 25)
	private String category;
	
	@NonNull
	@Min(100)
	@Column(length = 25)
	private String price;
	
	@NonNull
	@NotEmpty(message = "Publisher is required")
	@Column(length = 25)
	private String publisher;
	
	@NonNull
	private Date published_date;
	
	@NonNull
	@Min(1)
	private Integer stock_quantity;
}
