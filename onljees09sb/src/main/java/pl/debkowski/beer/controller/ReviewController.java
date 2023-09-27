package pl.debkowski.beer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.debkowski.beer.model.Beer;
import pl.debkowski.beer.model.Review;
import pl.debkowski.beer.repositories.BeerRepository;
import pl.debkowski.beer.repositories.ReviewRepository;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/reviews")
public class ReviewController {

    @Autowired
    private ReviewRepository reviewRepository;

    @Autowired
    private BeerRepository beerRepository;

    @GetMapping("/")
    public String listReviews(Model model) {
        List<Review> reviews = reviewRepository.findAll();
        model.addAttribute("reviews", reviews);
        return "review/list"; // Wskazuje na widok list.jsp
    }

    @GetMapping("/add/{beerId}")
    public String showAddReviewForm(@PathVariable Long beerId, Model model) {
        Optional<Beer> beerOptional = beerRepository.findById(beerId);

        if (beerOptional.isPresent()) {
            Beer beer = beerOptional.get();
            model.addAttribute("beer", beer);
            model.addAttribute("review", new Review());
            return "review/add";
        } else {
            return "redirect:/beers";
        }
    }

    @PostMapping("/add/{beerId}")
    public String addReview(@PathVariable Long beerId, @ModelAttribute("review") Review review) {
        Optional<Beer> beerOptional = beerRepository.findById(beerId);

        if (beerOptional.isPresent()) {
            Beer beer = beerOptional.get();
            review.setBeer(beer);
            reviewRepository.save(review);
            return "redirect:/beers/details/" + beerId;
        } else {
            return "redirect:/beers";
        }
    }
}
