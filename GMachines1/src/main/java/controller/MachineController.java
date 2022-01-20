package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import beans.Machine;
import beans.Marque;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import service.MachineService;
import service.MarqueService;

/**
 *
 *
 */
@WebServlet(urlPatterns = {"/MachineController"})
public class MachineController extends HttpServlet {

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
            if (request.getParameter("op").equals("load")) {
                response.setContentType("application/json");
                List<Machine> machines = ms.findAll();
                Gson json = new Gson();
                response.getWriter().write(json.toJson(machines));
            }
            else if (request.getParameter("op").equals("loadMarque")) {
				response.setContentType("application/json");
				List<Marque> machines = mms.findAll();
				Gson json = new Gson();
				response.getWriter().write(json.toJson(machines));
			}
            else if(request.getParameter("op").equals("delete")){
            	int id = Integer.parseInt(request.getParameter("id"));
				ms.delete(ms.findById(id));
				 response.setContentType("application/json");
	                List<Machine> machines = ms.findAll();
	                Gson json = new Gson();
	                response.getWriter().write(json.toJson(machines));
			}
            else if (request.getParameter("op").equals("update")) {
				int id = Integer.parseInt(request.getParameter("id"));
				Machine m = ms.findById(id);
				response.sendRedirect("gestionMachine.jsp?id=" + m.getId() + "&reference=" + m.getReference()+ "&dateAchat=" + m.getDateAchat() + "&prix=" + m.getPrix() + "&marque="+m.getMarque().getLibelle());
			}
            
        } 
        else if(!request.getParameter("id").equals("")){
            String reference = request.getParameter("reference");
            double prix = Double.parseDouble(request.getParameter("prix"));
            Date dateAchat = new Date(request.getParameter("dateAchat").replace("-", "/"));
            String Marque = request.getParameter("marque");
			int id = Integer.parseInt(request.getParameter("id"));
			Machine m = ms.findById(id);
			if(ms.findReferenceExpectId(reference,id)) {
				m.setReference(reference);
				m.setPrix(prix);
				m.setDateAchat(dateAchat);
				m.setMarque(mms.findIdMarque(Marque));
				ms.update(m);
				response.setContentType("application/json");
	            List<Machine> machines = ms.findAll();
	            Gson json = new Gson();
	            response.getWriter().write(json.toJson(machines));
			}
			else {
				response.setContentType("application/json");
    			List<Machine> machines = ms.findAll();
			    JSONObject json = new JSONObject();
			    Gson Gson = new Gson();
			    json.put("machine",Gson.toJson(machines));
			    json.put("type",0);
			    response.getWriter().print(json);
			}

        }
        	else {
       
        	//MarqueService mms = new MarqueService();
            String reference = request.getParameter("reference");
            double prix = Double.parseDouble(request.getParameter("prix"));
            Date dateAchat = new Date(request.getParameter("dateAchat").replace("-", "/"));
            String Marque = request.getParameter("marque");
            if(ms.findReference(reference)) {
            	ms.create(new Machine(reference, dateAchat, prix,mms.findIdMarque(Marque)));
			    response.setContentType("application/json");
			    List<Machine> machines = ms.findAll();
			    Gson json = new Gson();
			    response.getWriter().write(json.toJson(machines));
            }
            else {
            	response.setContentType("application/json");
    			List<Machine> machines = ms.findAll();
			    JSONObject json = new JSONObject();
			    Gson Gson = new Gson();
			    json.put("machine",Gson.toJson(machines));
			    json.put("type",0);
			    response.getWriter().print(json);
            } 
          
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
