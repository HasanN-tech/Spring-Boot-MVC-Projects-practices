package com.hasan.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hasan.entity.Book;
import com.hasan.exception.BookNotFoundException;
import com.hasan.exception.NoDataFoundException;
import com.hasan.service.BookService;

import jakarta.validation.Valid;

@Controller
public class BookController {

	@Autowired
	private BookService service;

	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("/book-form")
	public String register() {
		return "book-form";
	}

	@PostMapping("/book-form")
	public String addBook(@Valid @ModelAttribute Book b, Model m, BindingResult result) {
		if (result.hasErrors())
			return "book-form";
		m.addAttribute("msg", service.addNewBook(b));
		return "home";
	}

	@GetMapping("/show-book")
	public String getBook(Model m) throws NoDataFoundException {
		m.addAttribute("books", service.getAllBook());
		return "show-book";
	}

	@GetMapping("/update")
	public String addBook(@RequestParam Integer id, Model m) throws BookNotFoundException {
		m.addAttribute("book", service.getById(id));
		return "update-book";
	}

	@PostMapping("/update-book")
	public String updateBook(@ModelAttribute Book b, Model m) throws BookNotFoundException {
		m.addAttribute("msg", service.updateBook(b));
		return "home";
	}

	@GetMapping("/delete")
	public String deleteBook(@RequestParam Integer id, Model m) throws BookNotFoundException {
		m.addAttribute("msg", service.deleteBook(id));
		return "home";
	}

	 @GetMapping("/{type}")
	public String getBookDetails(@PathVariable String type, Model model) {

		model.addAttribute("type", type);

		if (type.equalsIgnoreCase("title")) {
			model.addAttribute("msg", "Please Enter Book Title");
		} else if (type.equalsIgnoreCase("author")) {
			model.addAttribute("msg", "Please Enter Author Name");
		} else if (type.equalsIgnoreCase("category")) {
			model.addAttribute("msg", "Please Enter Category");
		}
		return "insert";
	}

	@PostMapping("/search")
	public String searchBook(@RequestParam String type, @RequestParam String value, Model m)
			throws BookNotFoundException {
		List<Book> books = new ArrayList<>();

		if (type.equalsIgnoreCase("title"))
			books.addAll(service.getBookByTitle(value));
		if (type.equalsIgnoreCase("author"))
			books.addAll(service.getByAuthor(value));
		if (type.equalsIgnoreCase("category"))
			books.addAll(service.getByCategory(value));

//		m.addAttribute("type", type);
//		m.addAttribute("value", value);
		m.addAttribute("books", books);

		System.out.println("Type = " + type);
		System.out.println("Value = " + value);
		System.out.println("Books found = " + books.size());

		return "result";
	}

	@GetMapping("/show-pageable")
	public String showBookByPages(
			@PageableDefault(page = 0, size = 3, sort = "title", direction = Sort.Direction.ASC) Pageable pageable,
			Map<String, Object> map) {
		Page<Book> page = service.getDataByPage(pageable);
		map.put("data", page);
		return "show-pageable";
	}

}
