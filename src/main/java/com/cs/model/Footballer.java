package com.cs.model;

import java.time.LocalDateTime;
import java.util.List;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.CollectionTable;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.persistence.Version;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@RequiredArgsConstructor
@Table(name="FOOTBALLER_MVC")
public class Footballer {
	
	@Id
	@Column(name="PLAYER_ID")
	@SequenceGenerator(name="SQ1",sequenceName="MVC_PLAYER_SQ",initialValue = 102,allocationSize = 1)
	@GeneratedValue(generator="SQ1",strategy=GenerationType.SEQUENCE)
	private Integer playerId;
	
	@NonNull
	@Column(name="JERSERY_NUM")
	private Integer jerseyNumber;
	
	@NonNull
	@Column(name="NAME", length = 30)
	private String playerName;
	
	@NonNull
	@Column(name="GOALS")
	private Integer goals;
	
	@NonNull
	@Column(name="ASSISTS")
	private Integer assists;
	
	@NonNull
	@ElementCollection(fetch=FetchType.EAGER)
	@CollectionTable(name="FOOTBALLER_CLUB_MVC", joinColumns = @JoinColumn(name="FOOTBALLER_ID"))
	@Column(name="CLUB")
	private List<String> clubs;
	
	@NonNull
	@Column(name="COUNTRY",length=20)
	private String country;
	
	@CreationTimestamp
	@Column(name="CREATE_DATE", updatable = false)
	private LocalDateTime createDate;
	
	@UpdateTimestamp
	@Column(name = "LAST_MODIFIED", insertable=false)
	private LocalDateTime lastUpdateDate;
	
	@Version
	private Integer updateCount;
	
	
	
	
}
