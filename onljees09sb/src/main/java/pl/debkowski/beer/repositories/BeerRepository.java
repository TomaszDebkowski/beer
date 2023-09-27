package pl.debkowski.beer.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.debkowski.beer.model.Beer;

import java.util.List;

@Repository
public interface BeerRepository extends JpaRepository<Beer, Long> {
    List<Beer> findAll();
    List<Beer> findByNameContainingIgnoreCase(String name);
    List<Beer> findAllByOrderByRatingDesc();
}