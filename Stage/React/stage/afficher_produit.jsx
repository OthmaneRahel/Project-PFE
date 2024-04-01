import React, { useEffect, useState } from "react";
import axios from "axios";
export default function ListeProduit() {
    const [produit, setProduit] = useState([]);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/listeproduit')
            .then((res) => {
                setProduit(res.data);
            })
            .catch(error => console.log(error));
    }, []);
    return (
        <div>
            <h1 className="text text-light text-center bg-primary p-4">Afficher Les Produits</h1>
            <br/>
            <table className="table table-striped">
                <thead>
                    <tr>
                        <th>Code</th>
                        <th>Nom</th>
                        <th>Image</th>
                        <th>Marque</th>
                        <th>Categorie</th>
                        <th>Prix</th>
                        <th>Unite</th>
                        <th>Qauntite</th>
                        <th>Alert Quantite</th>
                        <th>Cout</th>
                    </tr>
                </thead>
                <tbody>
                    {produit.map((p) => (
                        <tr key={p.code}>
                            <td>{p.nom}</td>
                            <td>{p.image}</td>
                            <td>{p.Marque}</td>
                            <td>{p.categorie}</td>
                            <td>{p.prix}</td>
                            <td>{p.unite}</td>
                            <td>{p.quantite}</td>
                            <td>{p.AlertQuantite}</td>
                            <td>{p.cout}</td>
                            <td>
                               
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    )
}
