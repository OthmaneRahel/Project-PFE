import React, { useEffect, useState } from "react";
import axios from "axios";

export default function ListerClient() {
    const [client, setClient] = useState([]);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/listerClient')
            .then((res) => {
                setClient(res.data);
            })
            .catch(error => console.log(error));
    }, []);

    const supprimer = (id) => {
        axios.delete(`http://127.0.0.1:8000/api/supprimerClient/${id}`).then((res) => {
            if (res.status === 200) {
                const newListe = client.filter(item => item.idC !== id);
                setClient(newListe);
            }
        }).catch(error => {
            console.error("Error deleting Client:", error);
        });
    }

    //const navigate = useNavigate()

    const modifier = (client) => {
      
    }


    return (
        <div>
            <h1 className="text text-light text-center bg-primary p-4">Afficher Les Clients</h1>
            <br/>
            <table className="table table-striped">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nom</th>
                        <th>Adresse</th>
                        <th>N°Telephone</th>
                        <th>Solde intial</th>
                        <th>Login</th>
                        <th>Password</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    {client.map((p) => (
                        <tr key={p.idC}>
                            <td>{p.idC}</td>
                            <td>{p.nom}</td>
                            <td>{p.adresse}</td>
                            <td>{p.tele}</td>
                            <td>{p.solde_intial}</td>
                            <td>{p.login}</td>
                            <td>{p.mdp}</td>
                            <td>
                                <button onClick={()=>supprimer(p.idC)} >Suppremer</button>
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
