package com.web.demo.services;

import com.web.demo.models.hospital.Patient;

import java.io.IOException;
import java.util.List;

public interface DataService {
    String saveAllPatients() throws IOException;

    String saveAllDoctors();

    String saveAllAdmins();

    List<Patient> listAllPatients();
}
