package uk.vo.lewisvince.vetservices.loggingservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uk.vo.lewisvince.vetservices.loggingservice.model.RequestResponse;
import uk.vo.lewisvince.vetservices.loggingservice.repository.LogRepository;

@Service
public class LogService {

    @Autowired
    private LogRepository logRepository;

    public void save(RequestResponse body) {
        logRepository.save(body);
    }

    public Iterable<RequestResponse> getAll() {
        return logRepository.findAll();
    }
}
