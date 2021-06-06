package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Objective;


@Repository
public interface ObjectiveRepository extends JpaRepository<Objective,Long> {

    @Modifying
    @Query(value="DELETE FROM users_objectives WHERE  objective_id =?1",nativeQuery = true)
    void deleteObjectiveFromUsersObjectivesbyObjectiveId(Long id);
}
