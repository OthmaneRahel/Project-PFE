import React, { useEffect, useState } from "react";
import axios from "axios";

export default function ListerFornisseur() {
    const [res, setRes] = useState([]);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/listerFornisseur')
            .then((res) => {
                setRes(res.data);
            })
            .catch(error => console.log(error));
    }, []);

    const supprimer = (id) => {
        axios.delete(`http://127.0.0.1:8000/api/supprimerFornisseur/${id}`).then((res) => {
            if (res.status === 200) {
                const newListe = res.filter(item => item.idF !== id);
                setRes(newListe);
            }
        }).catch(error => {
            console.error("Error deleting Fornisseur:", error);
        });
    }

    //const navigate = useNavigate()

    const modifier = (res) => {
      
    }


    return (
        <div>
            <h1 className="text text-light text-center bg-primary p-4">Afficher Les Fornisseurs</h1>
            <br/>
            <table className="table table-striped">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nom</th>
                        <th>Adresse</th>
                        <th>N°Telephone</th>
                        <th>Affectation magasin </th>

                    </tr>
                </thead>
                <tbody>
                    {res.map((p) => (
                        <tr key={p.idF}>
                            <td>{p.idF}</td>
                            <td>{p.nom}</td>
                            <td>{p.adresse}</td>
                            <td>{p.tele}</td>
                            <td>{p.affectation_magasin }</td>

                            <td>
                                <button onClick={()=>supprimer(p.idF)} >Suppremer</button>
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
