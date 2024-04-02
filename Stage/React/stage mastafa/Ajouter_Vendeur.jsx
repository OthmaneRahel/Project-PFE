import React, { useState } from "react";
import axios from "axios";

export default function AjouterVendeur() {
   const [vendeur, setVendeur] = useState({
      nom: '',
      adresse: '',
      tele: '',
      affectation_magasin : '', 
   });

   const getValue = (e) => {
      setVendeur({
         ...vendeur,
         [e.target.name]: e.target.value
      });
   };
   console.log(vendeur)

   const add = () => {
      axios.post("http://127.0.0.1:8000/api/listerVendeur/", vendeur)
         .then((res) => {
            if (res.status === 201) {
               alert('Votre Vendeur a été ajouté');
              setVendeur({
                  nom: '',
                  adresse: '',
                  tele: '',
                  affectation_magasin : '',
               });
            } else {
               alert('Impossible d\'ajouter le Vendeur');
            }
         })
         .catch(error => console.log(error));
   };

   return (
      <div style={{ width: '50%' ,  marginLeft: '30%' }} >
         <label style={{fontSize:'20px'}} className="form-label">Nom :</label>
         <input className="form-control" onChange={getValue} type="text" value={vendeur.nom} name="nom" /><br />
         <label style={{fontSize:'20px'}}  className="form-label">Adresse :</label>
         <input className="form-control" onChange={getValue} type="text" value={vendeur.adresse} name="adresse" /><br />
         <label style={{fontSize:'20px'}} className="form-label">N°Telephone :</label>
         <input className="form-control" onChange={getValue} type="number" value={vendeur.tele} name="tele" /><br />
         <label style={{fontSize:'20px'}} className="form-label">Affectation Magasin :</label>
         <input className="form-control" onChange={getValue} type="text" value={vendeur.affectation_magasin } name="affectation_magasin" /><br />
         <button style={{ width: '50%' }} onClick={add} className="btn btn-success">Ajouter Vendeur</button>
      </div>
   )
}
