package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Objective;

public interface ObjectiveRepository extends JpaRepository<Objective,Long> {
}
