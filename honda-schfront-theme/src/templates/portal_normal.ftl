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
		<div>
<!-- inicio logo e usuário-->
			<div class="container ">
				<div class="align-items-center autofit-row">
					<a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
						<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />
		
						<#if show_site_name>
							<h2 class="font-weight-bold h2 mb-0 text-dark" role="heading" aria-level="1">${site_name}</h2>
						</#if>
					</a>
		
					<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />
		
					<div class="autofit-col autofit-col-expand">
						<#--  <#if show_header_search>
							<div class="justify-content-md-end mr-4 navbar-form" role="search">
								<@liferay.search_bar default_preferences="${preferences}" />
							</div>
						</#if>  -->
					</div>
		
					<div class="autofit-col nav-userbar">
						<div>
							<#if is_signed_in>
								<div class="flex-column nav-userbar__title menu-lateral">
									<span>${user_first_name} ${user_last_name}</span><br/>
									<span class="hnd-dealer">HND Dealer S.A.</span>
								</div>
							<#else>
								<p>Olá, convidado.</p>
							</#if>
							<div class="menu-lateral-direita">
								<@liferay.user_personal_bar />
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- fim logo e usuário-->		
		</div>
		<div id="hr">
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
<!-- Teste itens Roberta-->

	<#if show_footer>
		<#include "${full_templates_path}/footer.ftl" />
	</#if>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>