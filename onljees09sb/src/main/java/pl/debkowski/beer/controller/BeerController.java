package pl.debkowski.beer.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.debkowski.beer.model.Beer;
import pl.debkowski.beer.repositories.BeerRepository;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/beers")
public class BeerController {

    @Autowired
    private BeerRepository beerRepository;

//    @GetMapping("/")
//    public String listBeers(Model model, @RequestParam(name = "sort", required = false) String sort) {
//        List<Beer> beers;
//
//        if ("rating".equals(sort)) {
//            beers = beerRepository.findAll(Sort.by(Sort.Order.desc("rating")));
//        } else {
//            // Domyślne sortowanie (np. po nazwie lub innych kryteriach)
//            beers = beerRepository.findAll();
//        }
//
//        model.addAttribute("beers", beers);
//        return "beer/list";
//    }
@GetMapping("/")
public String listBeers(Model model, @RequestParam(name = "sort", required = false) String sort, @RequestParam(name = "brewery", required = false) String brewery) {
    List<Beer> beers;

    if ("rating".equals(sort)) {
        // Sortowanie po ocenie
        beers = beerRepository.findAll(Sort.by(Sort.Order.desc("rating")));
    } else {
        // Domyślne sortowanie (np. po nazwie lub innych kryteriach)
        beers = beerRepository.findAll();
    }

    if (brewery != null && !brewery.isEmpty()) {
        // Jeśli użytkownik wprowadził nazwę browaru, filtrowanie wyników
        beers = beers.stream()
                .filter(beer -> beer.getBrewery().equalsIgnoreCase(brewery))
                .collect(Collectors.toList());
    }

    model.addAttribute("beers", beers);
    return "beer/list";
}

    // Dodawanie piwa
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("beers", new Beer());
        return "beer/add";
    }

    @PostMapping("/add")
    public String addBeer(@ModelAttribute("beer") Beer beer) {
        beerRepository.save(beer);
        return "redirect:/beers/";
    }
    // nie mam jak sprawdzic bo nie udaje sie dodac piwa
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        Beer beer = beerRepository.findById(id).orElse(null);
        model.addAttribute("beer", beer);
        return "beer/edit";
    }
    @PostMapping("/edit/{id}")
    public String editBeer(@PathVariable Long id, @ModelAttribute("beer") Beer beer) {
        beerRepository.save(beer);
        return "redirect:/beers/";
    }

    // Usuwanie
    @GetMapping("/delete/{id}")
    public String deleteBeer(@PathVariable Long id) {
        beerRepository.deleteById(id);
        return "redirect:/beers/";
    }
}
