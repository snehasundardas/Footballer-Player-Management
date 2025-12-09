package com.cs.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cs.model.Footballer;

public interface IFootballerRepository extends JpaRepository<Footballer, Integer> {
	public Optional<Footballer> findByPlayerName(String playerName);
	
	
	
	@Query("SELECT f  FROM Footballer f  Where f.goals = (SELECT MAX(f2.goals) from Footballer f2) ")
	public Footballer findTopScorer();
	
	@Query("SELECT f FROM Footballer f WHERE f.assists = (SELECT MAX(f2.assists) from Footballer f2)")
	public Footballer findTopAssistProvider();
	
	public List<Footballer> findByCountry(String countryName);
	
}
