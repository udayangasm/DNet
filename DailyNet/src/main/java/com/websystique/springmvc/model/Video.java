package com.websystique.springmvc.model;

import java.util.Date;
import java.util.List;

public class Video {

	
	public String header;
	public String videoName;
	public String videoImageName;
	

	public long date;
	public int vedioId;
	
	
	public List<Video> otherVideos;
	public List<Integer> otherIDs;
	public List<String> otherVideosPlay;
	public List<String> otherVideosName;
	
	public List<Advertisment> randomAdvertisments;
	
	
	public List<Advertisment> getRandomAdvertisments() {
		return randomAdvertisments;
	}
	public void setRandomAdvertisments(List<Advertisment> randomAdvertisments) {
		this.randomAdvertisments = randomAdvertisments;
	}
	public List<String> getOtherVideosName() {
		return otherVideosName;
	}
	public void setOtherVideosName(List<String> otherVideosName) {
		this.otherVideosName = otherVideosName;
	}
	public List<String> getOtherVideosPlay() {
		return otherVideosPlay;
	}
	public void setOtherVideosPlay(List<String> otherVideosPlay) {
		this.otherVideosPlay = otherVideosPlay;
	}
	public Advertisment randomAd;
	
	private AllAds allAds;
	
	
	
	
	
	
	
	public AllAds getAllAds() {
		return allAds;
	}
	public void setAllAds(AllAds allAds) {
		this.allAds = allAds;
	}
	public Advertisment getRandomAd() {
		return randomAd;
	}
	public void setRandomAd(Advertisment randomAd) {
		this.randomAd = randomAd;
	}
	public List<Video> getOtherVideos() {
		return otherVideos;
	}
	public void setOtherVideos(List<Video> otherVideos) {
		this.otherVideos = otherVideos;
	}
	
	

	public String getVideoName() {
		return videoName;
	}
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	
	
	
	
	
	
	
	public String getHeader() {
		return header;
	}
	
	
	public void setHeader(String header) {
		this.header = header;
	}
	
	public long getDate() {
		return date;
	}
	public void setDate(long date) {
		this.date = date;
	}
	public int getVedioId() {
		return vedioId;
	}
	public void setVedioId(int vedioId) {
		this.vedioId = vedioId;
	}
	
	public List<Integer> getOtherIDs() {
		return otherIDs;
	}
	public void setOtherIDs(List<Integer> otherIDs) {
		this.otherIDs = otherIDs;
	}

	public String getVideoImageName() {
		return videoImageName;
	}
	public void setVideoImageName(String videoImageName) {
		this.videoImageName = videoImageName;
	}
	
}
