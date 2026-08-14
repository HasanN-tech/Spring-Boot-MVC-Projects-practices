package com.hasan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.hasan.entity.Book;
import com.hasan.exception.BookNotFoundException;
import com.hasan.exception.NoDataFoundException;
import com.hasan.repository.BookRepository;

@Service
public class BookService {
	@Autowired
	private BookRepository repo;
	
	public String addNewBook(Book b) {
		repo.save(b);
		return "ID: "+b.getId()+" added Successfully.";
	}
	
	public Book getById(int id) throws BookNotFoundException {
		return repo.findById(id).orElseThrow(()->new BookNotFoundException("Book not found with id: "+id));
	}
	
	 public List<Book> getBookByTitle(String title) throws BookNotFoundException{

	        return repo.findAllByTitle(title.trim());
	                   
	    }
	
	public List<Book> getByAuthor(String author) throws BookNotFoundException {
		return repo.findAllByAuthor(author.trim());
	}
	
	public List<Book> getByCategory(String category) throws BookNotFoundException {
		return repo.findAllByCategory(category.trim());
	}
	
	public List<Book> getAllBook() throws NoDataFoundException{
		if(repo.findAll().isEmpty()) {
			throw new NoDataFoundException("No record is there.");
		}
		else return repo.findAll();
	}
	
	public String updateBook(Book b) throws BookNotFoundException {
		Book book=repo.findById(b.getId()).orElseThrow(()-> new BookNotFoundException("Record not exist."));
		book=b;
		repo.save(book);
		return "ID: "+b.getId()+" record Updated.";
	}
	
	public String deleteBook(int id) throws BookNotFoundException {
		Book book=repo.findById(id).orElseThrow(()-> new BookNotFoundException("Record not exist."));
		repo.deleteById(book.getId());
		return "ID: "+id+" record Deleted.";
	}
	
	
	public Page<Book> getDataByPage(Pageable pageable){
		return repo.findAll(pageable);
	}
}
