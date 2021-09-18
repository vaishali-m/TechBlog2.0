package com.example.demo.repository;

import java.util.ArrayList;
import java.util.List;

import com.example.demo.model.BlogTable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface BlogTableRepository extends JpaRepository<BlogTable, Integer> {
	BlogTable findByBlogSlug(String slug);
	Integer deleteByBlogSlug(String slug);
}
