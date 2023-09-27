package pl.debkowski.beer.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.debkowski.beer.model.Beer;
import pl.debkowski.beer.model.BeerStyle;

import java.util.List;

@Repository
public interface BeerStyleRepository extends JpaRepository<BeerStyle, Long> {
    List<BeerStyle> findAll();
}
