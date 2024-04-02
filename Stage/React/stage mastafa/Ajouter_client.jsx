import React, { useState } from "react";
import axios from "axios";

export default function AjouterClient() {
   const [client, setClient] = useState({
      nom: '',
      adresse: '',
      tele: '',
      solde_initial: 0, // Renommé solde_initial
      login: '',
      mdp: '' // Renommé mdp
   });

   const getValue = (e) => {
      setClient({
         ...client,
         [e.target.name]: e.target.value
      });
   };

   const add = () => {
      axios.post("http://127.0.0.1:8000/api/listerClient/", client)
         .then((res) => {
            if (res.status === 201) {
               alert('Votre Client a été ajouté');
               setClient({
                  nom: '',
                  adresse: '',
                  tele: '',
                  solde_initial: 0,
                  login: '',
                  mdp: ''
               });
            } else {
               alert('Impossible d\'ajouter le client');
            }
         })
         .catch(error => console.log(error));
   };

   return (
      <div style={{ width: '50%' ,  marginLeft: '30%' }} >
         <label style={{fontSize:'20px'}} className="form-label">Nom :</label>
         <input className="form-control" onChange={getValue} type="text" value={client.nom} name="nom" /><br />
         <label style={{fontSize:'20px'}}  className="form-label">Adresse :</label>
         <input className="form-control" onChange={getValue} type="text" value={client.adresse} name="adresse" /><br />
         <label style={{fontSize:'20px'}} className="form-label">N°Telephone :</label>
         <input className="form-control" onChange={getValue} type="number" value={client.tele} name="tele" /><br />
         <label style={{fontSize:'20px'}} className="form-label">Solde Initial :</label>
         <input className="form-control" onChange={getValue} type="number" value={client.solde_initial} name="solde_initial" /><br />
         <label style={{fontSize:'20px'}} className="form-label">Login :</label>
         <input className="form-control" onChange={getValue} type="text" value={client.login} name="login" /><br />
         <label style={{fontSize:'20px'}} className="form-label">Mot de Passe :</label>
         <input className="form-control" onChange={getValue} type="password" value={client.mdp} name="mdp" /><br />
         <button style={{ width: '50%' }} onClick={add} className="btn btn-success">Ajouter Client</button>
      </div>
   )
}
