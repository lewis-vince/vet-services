package uk.vo.lewisvince.vetservices.loggingservice.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.UUID;

@Document(collection = "logs")
public class RequestResponse {

    @Id
    private UUID id;
    private LogRequest request;
    private Object response;

    public RequestResponse() {

    }

    public RequestResponse(UUID id, LogRequest request, Object response) {
        this.id = id;
        this.request = request;
        this.response = response;
    }

    public RequestResponse(LogRequest request, Object response) {
        id = UUID.randomUUID();
        this.request = request;
        this.response = response;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public LogRequest getRequest() {
        return request;
    }

    public void setRequest(LogRequest request) {
        this.request = request;
    }

    public Object getResponse() {
        return response;
    }

    public void setResponse(Object response) {
        this.response = response;
    }
}
