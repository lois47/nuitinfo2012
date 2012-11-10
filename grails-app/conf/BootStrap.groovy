import com.nuitinfo.Role
import com.nuitinfo.Utilisateur
import com.nuitinfo.UtilisateurRole

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
  
		def testUser = new Utilisateur(login: 'admin', enabled: true, password: 'admin')
		testUser.save(flush: true)
  
		UtilisateurRole.create testUser, adminRole, true
  
		assert Utilisateur.count() == 1
		assert Role.count() == 2
		assert UtilisateurRole.count() == 1
		
    }
    def destroy = {
    }
}
