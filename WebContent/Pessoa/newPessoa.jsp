
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
		<head>
		<script>
	
	var 
	win = null;
	function NovaJanela(pagina,nome,w,h,scroll){
	LeftPosition = (screen.width) ? (screen.width-w)/2 : 0;
	TopPosition = (screen.height) ? (screen.height-h)/2 : 0;
	settings = 'height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',resizable'
	win = window.open(pagina,nome,settings);
	}

	</script>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			<title>New Pessoa</title>
			<link href="../Styles/buttonsImputs.css" rel="stylesheet" type="text/css">
		</head>
		<body>
			<div class="line-separator"></div>
			<div style="text-align:center">
			<h1 class="title">New Pessoa</h1>
			</div>
			<div class="line-separator"></div>
			<br>
			<h:form id="f1" prependId="false">
				<h:panelGrid columns="2" styleClass="table">
					<h:outputText value="cpf"/>
					<h:inputText required="true" label="cpf" value="#{PessoaManagedBean.pessoa.cpf}"/>
					<h:outputText value="nome"/>
					<h:inputText required="true" label="nome" value="#{PessoaManagedBean.pessoa.nome}"/>
					<h:outputText value="dataNascimento"/>
					<h:inputText required="true" label="dataNascimento" value="#{PessoaManagedBean.pessoa.dataNascimento}">
						<f:convertDateTime pattern="dd/MM/yyyy"/>
					</h:inputText>
					<h:outputText value="telefone"/>
					<h:inputText label="telefone" value="#{PessoaManagedBean.pessoa.telefone}"/>
				</h:panelGrid>
				<h:panelGrid columns="5" style=" width : 400px;">
				<h:outputText value ="Código Cidade"/>
				<h:inputText id="idCidade"  value="#{PessoaManagedBean.pessoa.cidade.id}" style=" width : 95px;">
				
				</h:inputText>
				
				<h:outputLink value="#" id="link" onclick="NovaJanela('../Pessoa/jan3.jsf','Consultas','800','550','yes');return false">
						<h:graphicImage value="/images/loupe_petit.bmp" />
					</h:outputLink>
								<h:inputText id="nomeCidade"  value="#{PessoaManagedBean.pessoa.cidade.nomeCidade}" style=" width : 267px;">
				
				</h:inputText>
								<h:inputText id="uf"  value="#{PessoaManagedBean.pessoa.cidade.uf}" style=" width : 28px;">
				
				</h:inputText>
				</h:panelGrid>
				<h:messages errorClass="error"></h:messages>
			    <div style="text-align:center">
					<h:commandButton value="Save" action="#{PessoaManagedBean.newPessoa}" styleClass="save" style=" width : 67px;"/>
					<h:commandButton value="Cancel" immediate="true" action="listPessoa" styleClass="cancel"/>
				</div>
			</h:form>
		</body>
	</html>
</f:view>
