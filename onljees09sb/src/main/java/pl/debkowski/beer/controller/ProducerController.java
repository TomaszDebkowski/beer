package pl.debkowski.beer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.debkowski.beer.model.Producer;
import pl.debkowski.beer.repositories.ProducerRepository;

import java.util.List;


@Controller
@RequestMapping("/producers")
public class ProducerController {

    @Autowired
    private ProducerRepository producerRepository;

    @GetMapping("/")
    public String listProducers(Model model) {
        List<Producer> producers = producerRepository.findAll();
        model.addAttribute("producers", producers);
        return "producer/list";
    }
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("producer", new Producer());
        return "producer/add";
    }

    @PostMapping("/add")
    public String addProducer(@ModelAttribute("producer") Producer producer) {
        producerRepository.save(producer); // Zapisanie nowego producenta
        return "redirect:/producers/"; // Przekierowanie na listę producentów po dodaniu
    }
}







