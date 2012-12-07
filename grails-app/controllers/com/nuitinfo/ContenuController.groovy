package com.nuitinfo

class ContenuController {

    def index() { }
	
	def add() {
		def id = params.id
		def patrimoine = Patrimoine.findById(id);
		
		def contenu = new Contenu(nom :'Commentaire',format: Format.findByNom('STRING'));
		contenu.save(flush:true);
		
		System.out.println(contenu);
		[patrimoine : patrimoine, contenu : contenu]
		
	}
	def save() {
		def patId = params.patId;
		def contenuId = params.contentId;
		def comment = params.comment;
		System.out.println(params);
		Contenu_Chaine cc = new Contenu_Chaine(chaine : comment, contenu: Contenu.findById(contenuId), patrimoine: Patrimoine.findById(patId));
		cc.save(flush:true)
		redirect(controller: 'index', action: 'index')
	}
}
