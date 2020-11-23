<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>


<body class="${css_class}">


<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

	<button class="btn btn-dark font-menu-fechar" 
			type="button" 
			data-toggle="collapse" 
			data-target="#multiCollapseExample2" 
			aria-expanded="false" 
			aria-controls="multiCollapseExample2">
			<img src="${images_folder}/menu_icon.png"/>

			
	</button>
<header class="${header_css_class} menu-lateral flex-column height-full">
	<div class="container-fluid menu-lateral teste" id="banner" role="banner">
		<!--
		<div>
			<a class="${logo_css_class} navbar-brand" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
				<img alt="${logo_description}" height="56" src="${site_logo}" />
				<#if show_site_name>
					${site_name}
				</#if>
			</a>
		</div>
		data-target="#multiCollapseExample2" 
		-->
		<hr>
		<div class="col-2">
			<div class="row">
				<div class="col">
					<div class="collapse multi-collapse " id="multiCollapseExample2">
						<div class="card card-body menu-item">
							<#if has_navigation>
								<#include "${full_templates_path}/navigation.ftl" />
							</#if>
		
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>



<div class="container mt-0 pt-0 px-0 menu-lateral corpo-conteudo" id="wrapper">
	<section id="content" class="corpo-conteudo">
		<div id="honda-topo">
				<img src="${images_folder}/layout_set_logo.png" alt="" class="honda-topo_esquerda">
				<div class="honda-topo_direita">
					<#if is_signed_in>
						<div class="flex-column nav-userbar__title">
							<p>${user_first_name} ${user_last_name}</p>
							<p class="nav-userbar__sub">HND Dealer S.A.</p>
						</div>
					<#else>
						<p>Olá, convidado.</p>
					</#if>

					<@liferay.user_personal_bar />
				</div>
				<hr>
		</div>
		<div id="honda-conteudo-section">
			<h1 class="hide-accessible">${the_title}</h1>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</div>
	</section>

	<#if show_footer>
		<#include "${full_templates_path}/footer.ftl" />
	</#if>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>