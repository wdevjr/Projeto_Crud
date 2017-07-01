
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			<title>List of Disciplina</title>
			<link href="../Styles/yui-datatable.css" rel="stylesheet" type="text/css"> 
			<!-- <link href="../Yahoo-Ocean/stylesheet.css" rel="stylesheet" type="text/css"> -->
<style>

table {
    border-collapse: collapse;
}

table, th, td {
    border: 1px solid black;
}

</style>
		</head>
		<body>
			<div class="line-separator"></div>
			<div style="text-align:center">
				<h1 class="title">List of Disciplina</h1>
			</div>
			<div class="line-separator"></div>
			<br>
			
			<h:form style="width: 788px; ">
			<div align="justify">
				<h:dataTable value="#{DisciplinaManagedBean.listaDisciplinas}" var="item" styleClass="yui-datatable-theme" headerClass="header" rowClasses="row1,row2" style="width: 1058px; height: 77px">
					<h:column>
						<f:facet name="header" >
							<h:outputText value="Código"/>
						</f:facet>
						<h:outputText value="#{item.id}"/>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="Nome"/>
						</f:facet>
						<h:outputText value="#{item.nome}"/>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="Quantidade Creditos"/>
						</f:facet>
						<h:outputText value="#{item.quantidadeCreditos}"/>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="Nome Professor"/>
						</f:facet>
						<h:outputText value="#{item.nomeProfessor}"/>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="Curso"/>
						</f:facet>
						<h:outputText value="#{item.curso}">
							<f:converter converterId="CursoConverterList"/>
						</h:outputText>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="Editar"/>
						</f:facet>
						<h:commandLink type="submit" action="editDisciplina" actionListener="#{DisciplinaManagedBean.findDisciplina}" >
							<f:attribute name="codDisciplina" value="#{item.id}"/>
							<h:graphicImage value="/Yahoo-Ocean/edit.png" />
						</h:commandLink>
					</h:column>
					<h:column>
						<f:facet name="header" >
							<h:outputText value="Remover"/>
						</f:facet>
						<h:commandLink type="submit" actionListener="#{DisciplinaManagedBean.removeDisciplina}" >
							<f:attribute name="codDisciplina" value="#{item.id}"/>
							<h:graphicImage value="/Yahoo-Ocean/delete.png"></h:graphicImage>
						</h:commandLink>
					</h:column>
				</h:dataTable>
				<br>
				<div style="text-align:center">
					<h:commandButton value="Back to Index" immediate="true" action="index" styleClass="button"/>
					<h:commandButton value="New Disciplina" immediate="true" action="newDisciplina" styleClass="button"/>
				</div>
				</div>
			</h:form>
	
		</body>
	</html>
</f:view>
