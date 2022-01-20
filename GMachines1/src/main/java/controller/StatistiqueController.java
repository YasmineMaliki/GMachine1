package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.google.gson.Gson;
import java.io.IOException;
import java.util.Map;

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
@WebServlet(urlPatterns = {"/StatistiqueController"})
public class StatistiqueController extends HttpServlet {

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

		if (request.getParameter("id") == null) {
			if(request.getParameter("marque")== null) {
			Map<String,Integer> m = ms.findMachinesLesPlusAchete();		
			Gson json = new Gson();
			response.getWriter().write(json.toJson(m));
			}
			else {
			
				String marque = request.getParameter("marque");
				Map<Integer,Integer> mm = ms.findMachinesByMarque(mms.findIdMarque(marque).getId());	
				Gson json = new Gson();
				response.getWriter().write(json.toJson(mm));
			}
			
		}
		else {
			Map<String,Integer> m = ms.findVariationMarque();		
			Gson json = new Gson();
			response.getWriter().write(json.toJson(m));
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
