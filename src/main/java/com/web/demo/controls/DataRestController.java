package com.web.demo.controls;

import com.web.demo.models.hospital.Patient;
import com.web.demo.services.DataService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("data")
public class DataRestController {
    private static final Logger LOGGER = LoggerFactory.getLogger(DataRestController.class);

    DataService dataService;

    @Autowired
    public DataRestController setDataService(DataService dataService) {
        this.dataService = dataService;
        return this;
    }

    @GetMapping("savePatient")
    public String saveAllPatients() throws IOException {
        LOGGER.info("saveAllPatients");
        return dataService.saveAllPatients();
    }

    @GetMapping("listPatient")
    public List<Patient> listAllPatients() throws IOException {
        LOGGER.info("listAllPatients");
        return dataService.listAllPatients();
    }

    @GetMapping("saveDoctor")
    public String saveAllDoctors() throws IOException {
        LOGGER.info("saveAllDoctors");
        return dataService.saveAllDoctors();
    }

    @GetMapping("saveAdmin")
    public String saveAllAdmins() throws IOException {
        LOGGER.info("saveAllPatients");
        return dataService.saveAllAdmins();
    }

}
