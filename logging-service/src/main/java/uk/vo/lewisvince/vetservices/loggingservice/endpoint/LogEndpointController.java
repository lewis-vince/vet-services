package uk.vo.lewisvince.vetservices.loggingservice.endpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uk.vo.lewisvince.vetservices.loggingservice.model.RequestResponse;
import uk.vo.lewisvince.vetservices.loggingservice.service.LogService;

@RestController
@RequestMapping("/api/v1")
public class LogEndpointController {

    @Autowired
    private LogService logService;

    @PostMapping("/log")
    void post(@RequestBody RequestResponse body) {
        logService.save(body);
    }

    @GetMapping("/logs")
    Iterable<RequestResponse> getAll() {
        return logService.getAll();
    }
}
