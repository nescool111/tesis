package com.coophorizontal.controllers;

//import com.coophorizontal.services.security.SecurityService;
import com.coophorizontal.services.CiudadService;
import com.coophorizontal.services.DepartamentoService;
import com.coophorizontal.services.EstadoService;
import com.coophorizontal.services.UsuarioService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/")
public class HomeController {

    @Autowired
    DepartamentoService departamentoService;

    @Autowired
    CiudadService ciudadService;

    @Autowired
    UsuarioService usuarioService;

    @Autowired
    EstadoService estadoService;

    @RequestMapping(value = "/", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView getIndex(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("index");

        return mav;
    }

}
