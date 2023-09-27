package pl.debkowski.beer.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.debkowski.beer.model.Producer;

@Repository
public interface ProducerRepository extends JpaRepository<Producer, Long> {
}
