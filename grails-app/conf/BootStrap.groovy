import com.nuitinfo.*;

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
  
		def admin = new Utilisateur(login: 'admin', enabled: true, password: 'admin', nom:'admin', prenom:'admin', email:'thierry.weissbeck@gmail.com')
		admin.save(flush: true)
  
		Utilisateur user1 = new Utilisateur(login: 'user1', enabled: true, password: 'user1', nom:'user1', prenom:'user1', email:'user1@gmail.com')
		user1.save(flush: true)
		
		Utilisateur user2 = new Utilisateur(login: 'user2', enabled: true, password: 'user2', nom:'user2', prenom:'user2', email:'user2@gmail.com')
		user2.save(flush: true)
		
		UtilisateurRole.create admin, adminRole, true
		UtilisateurRole.create user1, userRole, true
		UtilisateurRole.create user2, userRole, true
		
		assert Utilisateur.count() == 3
		assert Role.count() == 2
		assert UtilisateurRole.count() == 3
		
		Univers universGastro = new Univers(nom: "Gastronomie")
		universGastro.save(flush:true)
		Univers UniversCulture = new Univers(nom: "Culture")
		UniversCulture.save(flush:true)
		Univers UniversGeo = new Univers(nom: "Geography")
		UniversGeo.save(flush:true)
		
		
		Categorie categTlse = new Categorie(nom: "Toulouse", createur: admin, univers: UniversGeo)
		categTlse.save(flush:true)
		
		Categorie categMonument = new Categorie(nom: "Monument", createur: user1, univers: UniversCulture)
		categMonument.save(flush:true)
		
		Categorie categMusee = new Categorie(nom: "Musee", categorieMere: categMonument, createur: user1, univers: UniversCulture)
		categMusee.save(flush:true)
		
		Categorie categCamenbert = new Categorie(nom: "Camenbert", createur: user2, univers: universGastro)
		categCamenbert.save(flush:true)
		
		assert Categorie.count() == 4
		
		
		Patrimoine patrimoineRecette = new Patrimoine(nom: "recette camenbert au four")
		patrimoineRecette.save(flush:true)
		Patrimoine patrimoineMuseeCam = new Patrimoine(nom: "musee du camenbert")
		patrimoineMuseeCam.save(flush:true)
		
		assert Patrimoine.count() == 2
		
		
		Cat_Pat catPat = new Cat_Pat(categorie: categCamenbert, patrimoine: patrimoineRecette)
		catPat.save(flush:true)
		Cat_Pat catPat2 = new Cat_Pat(categorie: categCamenbert, patrimoine: patrimoineMuseeCam)
		catPat2.save(flush:true)
		Cat_Pat catPat3 = new Cat_Pat(categorie: categMusee, patrimoine: patrimoineMuseeCam)
		catPat3.save(flush:true)
		
		assert Cat_Pat.count() == 3
		
		def format = new Format(nom :'STRING');
		format.save(flush: true);
		
    }
	
    def destroy = {
    }
}
