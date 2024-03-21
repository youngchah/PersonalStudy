package kr.or.ddit.service;

import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;

//네이버 검색 API 예제 - 블로그 검색
import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.vo.NewsItem;


@Service
public class NewsService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());


    // 네이버 검색 API 요청
    public List<NewsItem> search() {

    	  String clientId = "YOUR_CLIENT_ID"; //애플리케이션 클라이언트 아이디
          String clientSecret = "YOUR_CLIENT_SECRET"; //애플리케이션 클라이언트 시크릿


          String text = null;
          try {
              text = URLEncoder.encode("그린팩토리", "UTF-8");
          } catch (UnsupportedEncodingException e) {
              throw new RuntimeException("검색어 인코딩 실패",e);
          }


          String apiURL = "https://openapi.naver.com/v1/search/blog?query=" + text;    // JSON 결과
          //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // XML 결과


          Map<String, String> requestHeaders = new HashMap<>();
          requestHeaders.put("X-Naver-Client-Id", clientId);
          requestHeaders.put("X-Naver-Client-Secret", clientSecret);
//          String responseBody = get(apiURL,requestHeaders);


//          System.out.println(responseBody);
          return null;
    }
}


