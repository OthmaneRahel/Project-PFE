import React, { useEffect, useState } from "react";
import axios from "axios";
export default function ListeEntrepot() {
    const [entrepot, setEntrepot] = useState([]);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/listeentrepot')
            .then((res) => {
                setEntrepot(res.data);
            })
            .catch(error => console.log(error));
    }, []);
    return (
        <div>
            <h1 className="text text-light text-center bg-primary p-4">Afficher Les Entrepots</h1>
            <br/>
            <table className="table table-striped">
                <thead>
                    <tr>
                        <th>Code</th>
                        <th>Nom Entrepot</th>
                        <th>Adresse</th>
                        <th>Type</th>
                    </tr>
                </thead>
                <tbody>
                    {entrepot.map((p) => (
                        <tr key={p.code}>
                            <td>{p.nom}</td>
                            <td>{p.adresse}</td>
                            <td>{p.type}</td>
                            <td>
                               
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    )
}
