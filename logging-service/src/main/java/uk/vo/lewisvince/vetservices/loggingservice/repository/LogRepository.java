package uk.vo.lewisvince.vetservices.loggingservice.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;
import uk.vo.lewisvince.vetservices.loggingservice.model.RequestResponse;

import java.util.UUID;

@Repository
public interface LogRepository extends MongoRepository<RequestResponse, UUID> {
}
