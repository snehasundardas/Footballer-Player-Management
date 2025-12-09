package com.cs.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cs.model.Footballer;
import com.cs.service.IFootballerService;

@Controller
public class FootballerMgmtController {

	@Autowired
	private IFootballerService footballerService;

	//to show home page
	@GetMapping
	public String showHomePage() {
		return "homepage";
	}//method
	
	//to load register page
	@GetMapping("/register")
	public String showRegisterForm() {
		return "register_player";
	}//method
	
	//to register the player
	@PostMapping("/register")  
	public String  registerFootballer(Map<String,Object> map , @ModelAttribute("ftbl") Footballer baller) throws Exception {
		//delegate the save logic to service
		String registerFootballerMsg  = footballerService.registerFootballer(baller);
		System.out.println("FootballerMgmtController.registerFootballer()");
		System.out.println("Footballer Clubs:"+baller.getClubs());
		
		map.put("msg", registerFootballerMsg);
		return "register_success";
	}//method
	
	//to load the search page
	@GetMapping("/search")
	public String loadSearchPage() {
		return "search";
	}//method
	
	@GetMapping("/searchByUserChoice")
	public String searchPlayerByUserChoice(@RequestParam("searchType") String userSearchType, @RequestParam("query") String queryType, Map<String,Object> map) throws  Exception {
		
		switch(userSearchType){		
		
		// Start case:byId
		case "byId":
			Optional<Footballer> footballerById = footballerService.getFootballerById(Integer.parseInt(queryType));
			if(footballerById.isPresent()) {
				//add to Model attribute
				map.put("player", footballerById.get());
				return "playerDetails";
			}//if case:byId
			else {
				String msg = "Player Not Found With Id:"+Integer.parseInt(queryType);
				map.put("notFoundMsg", msg);
				return "player_not_found_byid";
			}//else case:byId
			//End case:byId

		// Start:   case byName	
		case "byName":
			Optional<Footballer> footballerByName = footballerService.searchFootballerByName(queryType);
			if(footballerByName.isPresent()) {
				//add to Model Attribute
				map.put("player", footballerByName.get());
				return "playerDetails";
	    	}//if-case:byName
			else {
				String msg = "Player Not Found WIth Name:"+queryType;
				map.put("errorMsg", msg);
				return "player_not_found_byName";
			}//else
			//End case byName
		case "topScorer" :
			Footballer topGoalScorer = footballerService.showTopGoalScorer();
			System.out.println("Top Scorer In Controller :: "+topGoalScorer);
			map.put("player", topGoalScorer);
			return "playerDetails";
		case "topAssister"	:
			Footballer topAssistProvider = footballerService.showTopAssistProvider();
			map.put("player", topAssistProvider);
			return "playerDetails";
		case "byCountry":
			List<Footballer> byCountry = footballerService.findPlayerByCountry(queryType);
			   if(byCountry != null) {
				 System.out.println("Footballers By Country (Controller) :: "+byCountry);
				map.put("playerList", byCountry);
			    return "MultiplePlayerDetails";
			   }
			    else {
			    	String errorMsg = "Player Not Found WIth Country : "+queryType;
					map.put("errorMsg", errorMsg);
					return "player_not_found_byCountry";
			    }
		   default:
		        map.put("error", "⚠️ Invalid search type selected. Please try again.");
		        return "search"; // your JSP form page	
		}//switch
		
	}//method
	
	@GetMapping("/all")
	public String showAllPlayers(@PageableDefault(page = 0,size=8,direction =Direction.ASC,sort= {"playerId"} ) Pageable pageable, Map<String,Object> map) throws Exception {
		Page<Footballer> footballers = footballerService.showAllPlayerDetails(pageable);
		map.put("listOfPlayers", footballers);
		return "show_all_players" ;
	}//method
	
	

	
}//class
