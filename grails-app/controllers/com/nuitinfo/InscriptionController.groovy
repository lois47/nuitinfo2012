package com.nuitinfo

class InscriptionController {

    def index() { 
		[utilisateurInstance: new Utilisateur(params)]
	}
	
	def save() {
		Utilisateur utilisateurInstance = new Utilisateur(params)
		utilisateurInstance.metaClass.setProperty('passwordConfirmation', params.passwordConfirmation)
		// V�rification du mot de passe
		if(!params.passwordConfirmation.equals(params.password) || !utilisateurInstance.validate()){
			if(!params.passwordConfirmation.equals(params.password)){
				utilisateurInstance.errors.reject('inscription.save.error.passwordDontMatch');
			}
			utilisateurInstance.password = "";
			render(view: "index", model: [utilisateurInstance: utilisateurInstance])
		}
		else
		{
			def hashCode = utilisateurInstance.login.hashCode();
			// Envoie d'un mail au nouvel utilisateur (mail d'activation du compte)
			sendMail {
				to utilisateurInstance.email
				subject "[French patrimoine] Bienvenue ${utilisateurInstance.prenom} ${utilisateurInstance.nom}"
				html g.render  (template:"/email/emailAccountActivation", model:[utilisateurInstance : utilisateurInstance, hashCode : hashCode])
			  }
			
			
			// Sauvegarde de l'utilisateur
			utilisateurInstance.setAccountExpired(false)
			utilisateurInstance.setEnabled(false)
			utilisateurInstance.setAccountLocked(false)
			utilisateurInstance.setPasswordExpired(false)
			utilisateurInstance.save(flush :true)
			flash.message = message(code: 'inscription.save.compteCree', args: [utilisateurInstance.login])
			
		}
	}
	
	def activation(){
		def erreur = false;
		// Récupération de l'utilisateur
		def utilisateurInstance = Utilisateur.findByLogin(params.login);
		if(utilisateurInstance != null){
			def hashCode = utilisateurInstance.login.hashCode()		
			if(hashCode.toString() == params.hash){
				utilisateurInstance.setEnabled(true)
				utilisateurInstance.save(flush : true)
				flash.message = message(code: 'inscription.activation.flash')
			}
			else{
				erreur = true;
			}
		}
		else {
			erreur = true;
		}
		
		[utilisateurInstance : utilisateurInstance, erreur : erreur]
	}
}
