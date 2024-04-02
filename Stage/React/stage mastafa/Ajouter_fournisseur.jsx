import React, { useState } from "react";
import axios from "axios";

export default function AjouterFornisseur() {
   const [fornisseur, setFornisseur] = useState({
      nom: '',
      adresse: '',
      tele: '',
     devise : '', 
   });

   const getValue = (e) => {
      setFornisseur({
         ...fornisseur,
         [e.target.name]: e.target.value
      });
   };

   const add = () => {
      axios.post("http://127.0.0.1:8000/api/listerFornisseur/", fornisseur)
         .then((res) => {
            if (res.status === 201) {
               alert('Votre fornisseur a été ajouté');
              setFornisseur({
                  nom: '',
                  adresse: '',
                  tele: '',
                  devise : '',
               });
            } else {
               alert('Impossible d\'ajouter le fornisseur');
            }
         })
         .catch(error => console.log(error));
   };

   return (
      <div style={{ width: '50%' ,  marginLeft: '30%' }} >
         <label style={{fontSize:'20px'}} className="form-label">Nom :</label>
         <input className="form-control" onChange={getValue} type="text" value={fornisseur.nom} name="nom" /><br />
         <label style={{fontSize:'20px'}}  className="form-label">Adresse :</label>
         <input className="form-control" onChange={getValue} type="text" value={fornisseur.adresse} name="adresse" /><br />
         <label style={{fontSize:'20px'}} className="form-label">N°Telephone :</label>
         <input className="form-control" onChange={getValue} type="number" value={fornisseur.tele} name="tele" /><br />
         <label style={{fontSize:'20px'}} className="form-label">Devise :</label>
         <input className="form-control" onChange={getValue} type="text" value={fornisseur.devise } name="devise" /><br />
         <button style={{ width: '50%' }} onClick={add} className="btn btn-success">Ajouter Fornisseur</button>
      </div>
   )
}
