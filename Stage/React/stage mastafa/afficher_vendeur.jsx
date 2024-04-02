import React, { useEffect, useState } from "react";
import axios from "axios";

export default function ListerVendeur() {
    const [vendeur, setVendeur] = useState([]);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/listerVendeur')
            .then((res) => {
                setVendeur(res.data);
            })
            .catch(error => console.log(error));
    }, []);

    const supprimer = (id) => {
        axios.delete(`http://127.0.0.1:8000/api/supprimerVendeur/${id}`).then((res) => {
            if (res.status === 200) {
                const newListe = vendeur.filter(item => item.idV !== id);
                setVendeur(newListe);
            }
        }).catch(error => {
            console.error("Error deleting Client:", error);
        });
    }

    //const navigate = useNavigate()

    const modifier = (vendeur) => {
      
    }


    return (
        <div>
            <h1 className="text text-light text-center bg-primary p-4">Afficher Les Vendeurs </h1>
            <table className="table table-striped">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nom</th>
                        <th>Adresse</th>
                        <th>N°Telephone</th>
                        <th>Affectation Magasin </th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    {vendeur.map((p) => (
                        <tr key={p.idV}>
                            <td>{p.idV}</td>
                            <td>{p.nom}</td>
                            <td>{p.adresse}</td>
                            <td>{p.tele}</td>
                            <td>{p.affectation_magasin }</td>
                            <td>
                                <button onClick={()=>supprimer(p.idV)} >Suppremer</button>
                                <button onClick={()=>modifier(p)} >Modifier</button>
                            </td>
                            <td>
                               
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    )
}