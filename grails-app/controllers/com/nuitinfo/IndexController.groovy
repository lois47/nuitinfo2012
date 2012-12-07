package com.nuitinfo
import com.nuitinfo.Utilisateur;
import org.compass.core.engine.SearchEngineQueryParseException

/**
 * Ce controleur permet n'est l� que pour permettre de modifier la langue sur la page d'accueil. 
 * @author Thierry
 *
 */
class IndexController {

	def searchableService;
	UniversService universService;
	
    def index() {
		Univers[] universes = Univers.list() as Univers[];
		[listeunivers:universes, universService: universService]
		
		if (!params.q?.trim()) {
			return [:]
		}
		try {
			return [searchResult: searchableService.search(params.q, params)]
		} catch (SearchEngineQueryParseException ex) {
			return [parseException: true]
		}
	}
	
	/**
	 * Perform a bulk index of every searchable object in the database
	 */
	def indexAll = {
		Thread.start {
			searchableService.index()
		}
		render("bulk index started in a background thread")
	}

	/**
	 * Perform a bulk index of every searchable object in the database
	 */
	def unindexAll = {
		searchableService.unindex()
		render("unindexAll done")
	}
	
	
	
	/**
	 * permet de tester 
	 */
	def test() {
		def utilisateurInstance = new Utilisateur(nom: 'Weissbeck', prenom: 'Thierry', email: 'thierry.weissbeck@gmail.com', login: 'kazamafury', password: 'aze', enabled: true)
		println(utilisateurInstance == null)
		def hashCode = utilisateurInstance.login.hashCode();
		sendMail {
			to "thierry.weissbeck@gmail.com"
			subject "[French patrimoine] Bienvenu ${utilisateurInstance.prenom} ${utilisateurInstance.nom}"
			html g.render  (template:"/email/emailAccountActivation", model:[utilisateurInstance : utilisateurInstance, hashCode: hashCode])
		  }
		println(hashCode);
	}
	
	
}
