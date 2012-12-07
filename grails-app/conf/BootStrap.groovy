import com.nuitinfo.Role
import com.nuitinfo.Utilisateur
import com.nuitinfo.UtilisateurRole
import com.nuitinfo.*;

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
  
		def testUser = new Utilisateur(login: 'admin', enabled: true, password: 'admin', nom:'admin', prenom:'admin', email:'thierry.weissbeck@gmail.com')
		testUser.save(flush: true)
  
		UtilisateurRole.create testUser, adminRole, true
  
		assert Utilisateur.count() == 1
		assert Role.count() == 2
		assert UtilisateurRole.count() == 1
		
		def univ1 = new Univers(nom: 'univ1');
		univ1.save(flush:true);
		def cat1 = new Categorie(nom: 'cat1', univers : univ1)
		cat1.save(flush:true)
		
    }
    def destroy = {
    }
}
