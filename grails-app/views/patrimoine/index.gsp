<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Patrimoine</title>
		<g:javascript src="timeline/storyjs-embed.js"></g:javascript>
		
		<script type="text/javascript">
				$(document).ready(function(){
					createStoryJS({
				        type:       'timeline', // C'est un timeline (fixe)
				        width:      '960', // Largeur visuelle de la timeline (fixe)
				        height:     '600', // Hauteur visuelle de la timeline (fixe)
				        source:     '/nuitinfo/patrimoine/getTimeLine', // chemin vers le fichier décrivant la timeline
				        embed_id:   'my-timeline', // l'id du contenu dans lequel insérer la timeline
				        
				        //lang: 		'fr',
				        //start_at_end: true,
				        // OR
				        //start_at_slide: 0,
				        debug:		true,
				        css:		'/nuitinfo/static/css/cssTimeLine/timeline.css'
				    });
				});
					
		</script>
	</head>
	<body>
		<div id="my-timeline"></div>
	</body>
</html>
