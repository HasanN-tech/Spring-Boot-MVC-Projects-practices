package com.hasan.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.hasan.entity.Book;


public interface BookRepository extends JpaRepository<Book, Integer>,PagingAndSortingRepository<Book, Integer> {
	public List<Book> findAllByTitle(String title);
	
	public List<Book> findAllByAuthor(String author);
	
	public List<Book> findAllByCategory(String category);
	
}
