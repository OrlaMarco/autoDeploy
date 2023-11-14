package it.syncroweb.autoDeploy.Controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/deploy")
public class AutoDeployController {

    @GetMapping("/test")
    public ResponseEntity<String> getTest(){
        return new ResponseEntity<>("Test succesful", HttpStatus.OK);
    }
}
