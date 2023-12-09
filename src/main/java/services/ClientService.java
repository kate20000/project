package services;

import model.Appointments;
import services.db.ClientDBService;

public class ClientService {
    public void saveAppointment(Appointments appointment){
        ClientDBService clientDBService = new ClientDBService();
        ClientDBService.create(appointment);
    }
}
