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
