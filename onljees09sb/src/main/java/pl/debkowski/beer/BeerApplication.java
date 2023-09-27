package pl.debkowski.beer;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@RequiredArgsConstructor
public class BeerApplication {


    public static void main(String[] args) {
        SpringApplication.run(BeerApplication.class, args);
    }

}
