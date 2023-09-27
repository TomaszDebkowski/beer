package pl.debkowski.beer.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.debkowski.beer.model.BeerStyle;
import pl.debkowski.beer.repositories.BeerRepository;
import pl.debkowski.beer.repositories.BeerStyleRepository;

import java.util.List;


@Controller
@RequestMapping("/beerstyles")
public class BeerStyleController {

    @Autowired
    private BeerStyleRepository beerStyleRepository;
    @Autowired
    private BeerRepository beerRepository;


    @GetMapping("/")
    public String listBeerStyles(Model model) {
        List<BeerStyle> beerStyles = beerStyleRepository.findAll();
        model.addAttribute("beerStyles", beerStyles);
        return "beerstyle/list";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("beerStyle", new BeerStyle());
        return "beerstyle/add";
    }

    @PostMapping("/add")
    public String addBeerStyle(@ModelAttribute("beerStyle") BeerStyle beerStyle, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "beerstyle/add";
        }

        beerStyleRepository.save(beerStyle);
        return "redirect:/beerstyle/";
    }


    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        BeerStyle beerStyle = beerStyleRepository.findById(id).orElse(null);
        model.addAttribute("beerStyle", beerStyle);
        return "beerstyle/edit";
    }

    @PostMapping("/edit/{id}")
    public String editBeerStyle(@PathVariable Long id, @ModelAttribute("beerStyle") BeerStyle beerStyle, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "beerstyle/edit";
        }

        beerStyleRepository.save(beerStyle);
        return "redirect:/beerstyle/";
    }
    //działa
    @GetMapping("/delete/{id}")
    public String deleteBeerStyle(@PathVariable Long id) {
        beerStyleRepository.deleteById(id);
        return "redirect:/beerstyle/";
    }
}
