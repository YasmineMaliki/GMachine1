package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import beans.Machine;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.MachineService;
import service.MarqueService;

/**
 *
 *
 */
@WebServlet(urlPatterns = {"/MachineAcheteController"})
public class MachineAcheteController extends HttpServlet {

    private MachineService ms = new MachineService();
    MarqueService mms = new MarqueService();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("op") != null) {
         
            
        }
        else {
    		Date date1 = new Date(request.getParameter("date1").replace("-", "/")); 
    		Date date2 = new Date(request.getParameter("date2").replace("-", "/"));
		    response.setContentType("application/json");
            List<Machine> machines = ms.findMachineBetweenTwoDates(date1,date2);
            Gson json = new Gson();
            response.getWriter().write(json.toJson(machines));
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
