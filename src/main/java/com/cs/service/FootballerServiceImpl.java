package com.cs.service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.cs.model.Footballer;
import com.cs.repository.IFootballerRepository;

@Service
public class FootballerServiceImpl implements IFootballerService {

	@Autowired
	private IFootballerRepository footballerRepo;

	@Override
	public String registerFootballer(Footballer footballer)  {
		// set the values
		System.out.println("FootballerServiceImpl.registerFootballer()");
		System.out.println("Footballer Obj In Service Class(Before Save)::" + footballer);
		footballer.setCreateDate(LocalDateTime.now());
		Footballer savedFootballer = footballerRepo.save(footballer);
		System.out.println("Saved Footballer Object::" + savedFootballer);
		return "Footballer Saved With Id: " + savedFootballer.getPlayerId() + " And Name: "
				+ savedFootballer.getPlayerName();
	}

	@Override
	public Optional<Footballer> getFootballerById(Integer id)  {
		return footballerRepo.findById(id);
	}

	@Override
	public Optional<Footballer> searchFootballerByName(String playerName)  {
		return footballerRepo.findByPlayerName(playerName);
	}

	@Override
	public Page<Footballer> showAllPlayerDetails(Pageable pageable)  {
		return footballerRepo.findAll(pageable);
	}

	@Override
	public Footballer showTopGoalScorer() {
		Footballer topScorer = footballerRepo.findTopScorer();
		System.out.println("Top Scorer In Service :: "+topScorer);
		return topScorer;
	}
	
@Override
	public Footballer showTopAssistProvider() {
		return footballerRepo.findTopAssistProvider();
	}

@Override
public List<Footballer> findPlayerByCountry(String countryName) {
	List<Footballer> byCountry = footballerRepo.findByCountry(countryName);
	 System.out.println("Footballers By Country (Service) :: "+byCountry);
	return byCountry;
}

}
