package net.tinvention.webcrud.spring.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.tinvention.webcrud.spring.model.contatto.Contatto;
import net.tinvention.webcrud.spring.service.contatto.ContattoManager;

@Controller
public class ListaContattiController {

	private static final Logger log = Logger.getLogger(ListaContattiController.class);

	@Autowired
	private ContattoManager contattoManager;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}

	@RequestMapping(value = "", method=RequestMethod.GET)
	public ModelAndView listaDeiContatti() {
		Map<String, List<Contatto>> modelData = new HashMap<String, List<Contatto>>();
		modelData.put("listaContatti", contattoManager.getContatti());
		return new ModelAndView("listaContatti", modelData);
	}

	@RequestMapping(value = "/nuovoContatto", method = RequestMethod.GET)
	public ModelAndView nuovoContatto(ModelAndView model) {
		Contatto nuovoContatto = new Contatto();
		model.addObject("contatto", nuovoContatto);
		model.setViewName("contattoForm");
		log.info("L'utente ha richiesto di inserire un nuovo contatto.");
		return model;
	}

	@RequestMapping(value = "/modificaContatto", method = RequestMethod.GET)
	public ModelAndView modificaContatto(HttpServletRequest request) {
		int contattoId = Integer.parseInt(request.getParameter("id"));
		Contatto contatto = contattoManager.getContatto(contattoId);
		ModelAndView model = new ModelAndView("contattoForm");
		model.addObject("contatto", contatto);
		log.info("L'utente ha richiesto di modificare un contatto esistente.");
		return model;
	}

	@RequestMapping(value = "/eliminaContatto", method = RequestMethod.GET)
	public ModelAndView eliminaContatto(HttpServletRequest request) {
		int contattoId = Integer.parseInt(request.getParameter("id"));
		contattoManager.eliminaContatto(contattoManager.getEmailContatto(contattoId));
		log.info("L'utente ha richiesto di eliminare un contatto esistente.");
		return listaDeiContatti();
	}

	@RequestMapping(value = "/ordinaContatti", method = RequestMethod.GET)
	public ModelAndView ordinaContatto(HttpServletRequest request) {
		Map<String, List<Contatto>> modelData = new HashMap<String, List<Contatto>>();
		modelData.put("listaContatti", contattoManager.ordinaContatti());
		log.info("L'utente ha richiesto di ordinare i contatti presenti nel db, dal più giovane al più anziano.");
		return new ModelAndView("listaContatti", modelData);
	}

	@RequestMapping(value = "/salvaContatto", method = RequestMethod.POST)
	public ModelAndView salvaContatto(@ModelAttribute Contatto contatto) {

		/* pensavo di aggiungere una pagina di errore generica provando il validator..
		 * 
		 * if (result.hasErrors()) { String errorMsg =
		 * redirectAttributes.toString(); Map<String, String> modelData = new
		 * HashMap<String, String>(); modelData.put("errorMsg", errorMsg);
		 * return new ModelAndView("errore", modelData); }
		 */

		contattoManager.saveOrUpdate(contatto);
		log.info("L'utente ha aggiornato un contatto.");
		return listaDeiContatti();
	}

}