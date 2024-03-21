package kr.or.ddit.vo;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.ToString;

@Data
public class NewsItem {
    private String title;
    private String originallink;
    private String link;
    private String description;
    private String pubDate;

}