import React, { useState } from "react";
import axios from "axios";

export default function AjouterResponsable() {
   const [responsable, setRespnsable] = useState({
      nom: '',
      adresse: '',
      tele: '',
      affectation_magasin : '', // Renommé solde_initial
      login: '',
      mdp: '' // Renommé mdp
   });

   const getValue = (e) => {
      setRespnsable({
         ...responsable,
         [e.target.name]: e.target.value
      });
   };

   const add = () => {
      axios.post("http://127.0.0.1:8000/api/listerResponsable/", responsable)
         .then((res) => {
            if (res.status === 201) {
               alert('Votre Responsable a été ajouté');
               setRespnsable({
                  nom: '',
                  adresse: '',
                  tele: '',
                  affectation_magasin : '',
                  login: '',
                  mdp: ''
               });
            } else {
               alert('Impossible d\'ajouter le Responsable');
            }
         })
         .catch(error => console.log(error));
   };

   return (
      <div style={{ width: '50%' ,  marginLeft: '30%' }} >
         <label style={{fontSize:'20px'}} className="form-label">Nom :</label>
         <input className="form-control" onChange={getValue} type="text" value={responsable.nom} name="nom" /><br />
         <label style={{fontSize:'20px'}}  className="form-label">Adresse :</label>
         <input className="form-control" onChange={getValue} type="text" value={responsable.adresse} name="adresse" /><br />
         <label style={{fontSize:'20px'}} className="form-label">N°Telephone :</label>
         <input className="form-control" onChange={getValue} type="number" value={responsable.tele} name="tele" /><br />
         <label style={{fontSize:'20px'}} className="form-label">Affectation Magasin :</label>
         <input className="form-control" onChange={getValue} type="text" value={responsable.affectation_magasin } name="affectation_magasin" /><br />
         <label style={{fontSize:'20px'}} className="form-label">Login :</label>
         <input className="form-control" onChange={getValue} type="text" value={responsable.login} name="login" /><br />
         <label style={{fontSize:'20px'}} className="form-label">Mot de Passe :</label>
         <input className="form-control" onChange={getValue} type="password" value={responsable.mdp} name="mdp" /><br />
         <button style={{ width: '50%' }} onClick={add} className="btn btn-success">Ajouter Responable</button>
      </div>
   )
}
