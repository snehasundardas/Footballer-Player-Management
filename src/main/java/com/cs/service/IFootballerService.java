package com.cs.service;


import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.cs.model.Footballer;

public interface IFootballerService {
	
	public String registerFootballer(Footballer footballer);
	public Optional<Footballer>  getFootballerById(Integer id);
	public Optional<Footballer> searchFootballerByName(String playerName);
	public Page<Footballer> showAllPlayerDetails(Pageable pageable);
//	public Page<Footballer> showPlayersByClub(Pageable pageable, String clubName);
	public List<Footballer> findPlayerByCountry(String countryName);
	public Footballer showTopGoalScorer();
	public Footballer showTopAssistProvider();
}
