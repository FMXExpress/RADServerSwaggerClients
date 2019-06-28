public class SwagClient extends Swagger.ApiClient {
    public SwagClient() {
        basePath = 'http://localhost:8080';
        calloutName = 'EMS_API_Documentation';
    }
}
