import React, { useEffect, useState } from "react";
import axios from "axios";

export default function ListerResponsable() {
    const [res, setRes] = useState([]);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/listerResponsable')
            .then((res) => {
                setRes(res.data);
            })
            .catch(error => console.log(error));
    }, []);

    const supprimer = (id) => {
        axios.delete(`http://127.0.0.1:8000/api/supprimerResponsable/${id}`).then((res) => {
            if (res.status === 200) {
                const newListe = res.filter(item => item.idR !== id);
                setRes(newListe);
            }
        }).catch(error => {
            console.error("Error deleting Responsable:", error);
        });
    }

    //const navigate = useNavigate()

    const modifier = (res) => {
      
    }


    return (
        <div>
            <h1 className="text text-light text-center bg-primary p-4">Afficher Les Responsable</h1>
            <br/>
            <table className="table table-striped">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nom</th>
                        <th>Adresse</th>
                        <th>N°Telephone</th>
                        <th> affectation magasin  </th>
                        <th>Login</th>
                        <th>Password</th>

                    </tr>
                </thead>
                <tbody>
                    {res.map((p) => (
                        <tr key={p.idR}>
                            <td>{p.idR}</td>
                            <td>{p.nom}</td>
                            <td>{p.adresse}</td>
                            <td>{p.tele}</td>
                            <td>{p.affectation_magasin  }</td>
                            <td>{p.login}</td>
                            <td>{p.mdp}</td>

                            <td>
                                <button onClick={()=>supprimer(p.idR)} >Suppremer</button>
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
