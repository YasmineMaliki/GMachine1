package controller;

import beans.Machine;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import beans.Marque;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import service.MarqueService;

/**
 *
 *
 */
@WebServlet(urlPatterns = {"/MarqueController"})
public class MarqueController extends HttpServlet {

    private MarqueService ms = new MarqueService();

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
                List<Marque> marques = ms.findAll();
                Gson json = new Gson();
                response.getWriter().write(json.toJson(marques));
            }
            else if(request.getParameter("op").equals("delete")){
            	int id = Integer.parseInt(request.getParameter("id"));
				ms.delete(ms.findById(id));
				 response.setContentType("application/json");
	                List<Marque> marques = ms.findAll();
	                Gson json = new Gson();
	                response.getWriter().write(json.toJson(marques));
			}
            else if (request.getParameter("op").equals("update")) {
				int id = Integer.parseInt(request.getParameter("id"));
				Marque m = ms.findById(id);
				System.out.println(m);
				response.sendRedirect("tables.jsp?id=" + m.getId() + "&code=" + m.getCode()+ "&libelle=" + m.getLibelle());
			}
        }
        else if(!request.getParameter("id").equals("")){
            String  code = request.getParameter("code");
            String libelle = request.getParameter("libelle");
            int id = Integer.parseInt(request.getParameter("id"));
			Marque m = ms.findById(id);
			if(ms.findCodeExpectId(code,id)) {
				m.setCode(code);
				m.setLibelle(libelle);
				ms.update(m);
				response.setContentType("application/json");
	            List<Marque> marques = ms.findAll();
	            Gson json = new Gson();
	            response.getWriter().write(json.toJson(marques));
			}
			else {
				response.setContentType("application/json");
    			List<Marque> marques = ms.findAll();
			    JSONObject json = new JSONObject();
			    Gson Gson = new Gson();
			    json.put("machine",Gson.toJson(marques));
			    json.put("type",0);
			    response.getWriter().print(json);
			}
        }
        	else {
        		
			String  code = request.getParameter("code");
	        String libelle = request.getParameter("libelle");
	        if(code == "" || libelle == "") {
	        	
	        }
	        else if (ms.findMarque(code)){
	        	ms.create(new Marque(code, libelle));
	        	response.setContentType("application/json");
			    List<Marque> marques = ms.findAll();
			    Gson json = new Gson();
			    response.getWriter().write(json.toJson(marques));
	        }
	        else {
	        	response.setContentType("application/json");
    			List<Marque> marques = ms.findAll();
			    JSONObject json = new JSONObject();
			    Gson Gson = new Gson();
			    json.put("machine",Gson.toJson(marques));
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
