package modelo;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@Table(name = "cidade")
public class Cidade implements Serializable {

private static final long serialVersionUID = 1L;
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
@Column(name = "IDCidade", nullable=false)
private int id;


@Basic(optional = false)
@Column(name = "NomeCidade", nullable=false)
private String nomeCidade;


@Basic(optional = false)
@Column(name = "uf", nullable=true)
private String uf;


public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public String getNomeCidade() {
	return nomeCidade;
}


public void setNomeCidade(String nomeCidade) {
	this.nomeCidade = nomeCidade;
}


public String getUf() {
	return uf;
}


public void setUf(String uf) {
	this.uf = uf;
}


}
