package com.nuitinfo

import org.springframework.dao.DataIntegrityViolationException

class CategorieController {
	
	def springSecurityService
	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def listePatrimoines(Long id) {
		if(!id) {
			redirect(uri:'/')
			return
		}
		Categorie categorie = Categorie.findById(id)
		if(!categorie) {
			redirect(uri:'/')
			return
		}
		[categorie: categorie]
	}

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [categorieInstanceList: Categorie.list(params), categorieInstanceTotal: Categorie.count()]
    }

    def create() {
		if (!springSecurityService.isLoggedIn()) {
			redirect (controller:'login', index:'index' )
		 }
        [categorieInstance: new Categorie(params)]
    }

    def save() {
		
		def user = springSecurityService.currentUser
		
        def categorieInstance = new Categorie(params)
		categorieInstance.setCreateur(user)
        if (!categorieInstance.save(flush: true)) {
            render(view: "create", model: [categorieInstance: categorieInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'categorie.label', default: 'Categorie'), categorieInstance.id])
        redirect(action: "show", id: categorieInstance.id)
    }

    def show(Long id) {
        def categorieInstance = Categorie.get(id)
        if (!categorieInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'categorie.label', default: 'Categorie'), id])
            redirect(action: "list")
            return
        }

        [categorieInstance: categorieInstance]
    }

    def edit(Long id) {
        def categorieInstance = Categorie.get(id)
        if (!categorieInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'categorie.label', default: 'Categorie'), id])
            redirect(action: "list")
            return
        }

        [categorieInstance: categorieInstance]
    }

    def update(Long id, Long version) {
        def categorieInstance = Categorie.get(id)
        if (!categorieInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'categorie.label', default: 'Categorie'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (categorieInstance.version > version) {
                categorieInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'categorie.label', default: 'Categorie')] as Object[],
                          "Another user has updated this Categorie while you were editing")
                render(view: "edit", model: [categorieInstance: categorieInstance])
                return
            }
        }

        categorieInstance.properties = params

        if (!categorieInstance.save(flush: true)) {
            render(view: "edit", model: [categorieInstance: categorieInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'categorie.label', default: 'Categorie'), categorieInstance.id])
        redirect(action: "show", id: categorieInstance.id)
    }

    def delete(Long id) {
        def categorieInstance = Categorie.get(id)
        if (!categorieInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'categorie.label', default: 'Categorie'), id])
            redirect(action: "list")
            return
        }

        try {
			Cat_Pat[] tab = Cat_Pat.findByCategorie(categorieInstance)
			for (Cat_Pat i: tab) {
				i.delete(flush: true)
			}
			for(Categorie c : Categorie.findAllByCategorieMere(categorieInstance)){
				c.setCategorieMere(null);
				c.save(flush:true)
			}
            categorieInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'categorie.label', default: 'Categorie'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'categorie.label', default: 'Categorie'), id])
            redirect(action: "show", id: id)
        }
    }
}
