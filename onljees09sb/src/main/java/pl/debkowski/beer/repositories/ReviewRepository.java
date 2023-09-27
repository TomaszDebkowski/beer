package pl.debkowski.beer.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.debkowski.beer.model.Review;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {
}