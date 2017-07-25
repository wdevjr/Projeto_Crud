
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>


	<html>
	
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			<title>List of Pessoa</title>
			<link type="text/css" href="../Styles/tablecloth.css" rel="stylesheet" /> 
 		    <link href="../Styles/yui-datatable.css" rel="stylesheet" type="text/css"> 
 			<link href="../Yahoo-Ocean/stylesheet.css" rel="stylesheet" type="text/css"> 
			<!-- <link href="../Styles/buttonsImputs.css" rel="stylesheet" type="text/css"> --> 
			<style>
.row1 {
   background: #F2F5F9;
}
.row2 {
   background: #ffffff;
}


</style>
<script>
	
	var 
	win = null;
	function NovaJanela(pagina,nome,w,h,scroll){
	LeftPosition = (screen.width) ? (screen.width-w)/2 : 0;
	TopPosition = (screen.height) ? (screen.height-h)/2.8 : 0;
	settings = 'height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',resizable'
	win = window.open(pagina,nome,settings);
	   document.f1.enviar.value = "";
	   win.focus();
	}

	</script>
		</head>
		<body>
		<f:view>
			<div class="line-separator"></div>
			<div style="text-align:center">
				<h1 class="title">List of Pessoa</h1>
			</div>
			<div class="line-separator"></div>
         <h:form>
			<fieldset>
	        <legend>Pesquisa de Pessoas</legend>
			<h:panelGrid columns="5" style=" width : 590px;">
			
			    <h:outputLabel id="nomeLabel" value="Digite o nome: " />
			                                                  
				<h:inputText id="nomeInput" value="#{PessoaManagedBean.descPessoa}" style=" width : 321px;" />
 
				<h:commandButton value="Pesquisar" action="#{PessoaManagedBean.pesquisaPessoas}" styleClass="submit" style="width : 90px; height : 36px;"/>
				
    		</h:panelGrid>
			</fieldset>

			<br />
			<br>
			
				<h:dataTable value="#{PessoaManagedBean.lista}"  var="item" styleClass="tablecloth-theme" headerClass="header" rowClasses="row1,row2" style="height: 82px; ">
					<h:column>
						<f:facet name="header" >
							<h:outputText value="cpf"/>
						</f:facet>
						<h:outputText value="#{item.cpf}"/>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="nome"/>
						</f:facet>
						<h:outputText value="#{item.nome}"/>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="Cod. Cidade"/>
						</f:facet>
						<h:outputText value="#{item.cidade.id}"/>
					</h:column>					<h:column>
						<f:facet name="header" >
							<h:outputText value="Nome Cidade"/>
						</f:facet>
						<h:outputText value="#{item.cidade.nomeCidade}"/>
					</h:column> 					<h:column>
						<f:facet name="header" >
							<h:outputText value="UF"/>
						</f:facet>
						<h:outputText value="#{item.cidade.uf}"/>
					</h:column> 
					<h:column>
						<f:facet name="header" >
							<h:outputText value="dataNascimento"/>
						</f:facet>
						<h:outputText value="#{item.dataNascimento}">
							<f:convertDateTime pattern="dd/MM/yyyy"/>
						</h:outputText>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="telefone"/>
						</f:facet>
						<h:outputText value="#{item.telefone}"/>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="Editar"/>
						</f:facet>
						<h:commandLink value="editar" type="submit" action="editPessoa" actionListener="#{PessoaManagedBean.findPessoa}" >
							<f:attribute name="codPessoa" value="#{item.cpf}"/>
							<h:graphicImage value="/Yahoo-Ocean/edit.png" />
						</h:commandLink>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="Remover"/>
						</f:facet>
						<h:commandLink value="remover" type="submit" actionListener="#{PessoaManagedBean.removePessoa}" onclick="if (!confirm('Confirma a exclusão da Pessoa: #{item.nome}?')) return false;">
							<f:attribute name="codPessoa" value="#{item.cpf}"/>
							<h:graphicImage value="/Yahoo-Ocean/delete.png" />
						</h:commandLink>
					</h:column>
 					<h:column>
					<f:facet name="header" >
							<h:outputText value="Selecionar"/>
						</f:facet>
					<h:commandLink>
						<h:outputText value="Selecionar"/>
						<f:setPropertyActionListener  value="#{item}" target="#{PessoaManagedBean.pessoa}"/>
					<h:graphicImage value="/Yahoo-Ocean/cablenet_com_cy.gif" />
					</h:commandLink>
					</h:column> 
				</h:dataTable>
				<br>
				</h:form>
				<h:messages errorClass="error"></h:messages><h:form  id="f1" prependId="false">
				<div style="text-align:center">
					<h:commandButton value="Back to Index"  immediate="true" action="index" styleClass="" style="width : 93px; height : 37px;"/>
					
					<h:commandButton value="New Pessoa" label="Nova Pessoa"  immediate="true" action="newPessoa" styleClass="button" style="width : 91px; height : 37px;">
					
				</h:commandButton>
				</div>

			
			<div class="line-separator"></div>
			
			<div style="text-align:center">
				
			</div>
			<div class="line-separator" style=" width : 1206px;"></div>
			<br>
			

				
				<table class="table">
					<tr>
						<td>cpf</td>
						<td>
							<h:inputHidden value="#{PessoaManagedBean.pessoa.cpf}"/>
							<h:inputText disabled="true" value="#{PessoaManagedBean.pessoa.cpf}" style=" width : 185px;"/>
						</td>
					</tr>
					<tr>
						<td>nome</td>
						<td>
							<h:inputText required="true" label="nome" value="#{PessoaManagedBean.pessoa.nome}" style=" width : 313px;"/>
						</td>
					</tr>
					<tr>
						<td>dataNascimento</td>
						<td>
							<h:inputText required="true" label="dataNascimento" value="#{PessoaManagedBean.pessoa.dataNascimento}">
								<f:convertDateTime pattern="dd/MM/yyyy"/>
							</h:inputText>
						</td>
					</tr>
					<tr>
						<td>telefone</td>
						<td>
							<h:inputText label="telefone" value="#{PessoaManagedBean.pessoa.telefone}"/>
						</td>
					</tr>
				</table>
				<h:panelGrid columns="5" style=" width : 400px;">
				<h:outputText value ="Código Cidade"/>
				<h:inputText id="idCidade"  value="#{PessoaManagedBean.pessoa.cidade.id}" style=" width : 95px;">
				
				</h:inputText>
				
				<h:outputLink value="#" id="link" onclick="NovaJanela('../Pessoa/jan3.jsf','Consultas','800','500','yes');return false">
						<h:graphicImage value="/images/loupe_petit.bmp" />
					</h:outputLink>
				<h:inputText id="nomeCidade"  value="#{PessoaManagedBean.pessoa.cidade.nomeCidade}" style=" width : 267px;">
				
				</h:inputText>
				<h:inputText id="uf"  value="#{PessoaManagedBean.pessoa.cidade.uf}" style=" width : 28px;">
				
				</h:inputText>
				</h:panelGrid>
				
				<div style="text-align:center">
					<h:commandButton value="Save"  action="#{PessoaManagedBean.editPessoa()}" style="width: 71px; height: 30px; "/>
					<h:commandButton value="Cancel" immediate="true" action="listPessoa" styleClass="cancel" style="width: 73px; height: 29px; "/>
				</div>
			</h:form>
			</f:view>
		</body>
	</html>
