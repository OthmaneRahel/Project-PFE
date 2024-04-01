import axios from "axios";
import React, { useEffect, useState } from "react";
import Swal from "sweetalert2";
import './indexListEntrepot.css';
import { useNavigate } from "react-router-dom";

export default function AfficherListEntrepots(){
    const [listDataEntrepots , setListDataEntrepots] = useState([{}]);
    const [entrepotSel , setentrepotSel ] = useState('')
    const Navigate = useNavigate();
    
    useEffect(()=>{
        axios.get('http://127.0.0.1:8000/api/AfficherListEntrepots').then((res)=>{
            setListDataEntrepots(res.data)
        })
    },[])

    const SupprimerEntrepot = (id) =>{
        Swal.fire({
            title: "Avez-vous sur ?",
            text: "Avez-vous sur de confirmer votre suppression !",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, Supprimer !"
        }).then((result) => {
            if (result.isConfirmed) {
                axios.delete('http://127.0.0.1:8000/api/AfficherListEntrepots/'+id).then((res)=>{
                    if(res.status === 200){
                        const listEnt = listDataEntrepots.filter((i)=>i.code !== id);
                        setListDataEntrepots(listEnt);
                    }
                })
            }
        })
    }

    const ModifierEntrepot = (entrepot) =>{
        Navigate('/Entrepots/modifier' , {state :{listDataEntrepots : entrepot}})
    }

    return (
        <div className="container">
            <h1 className="text-bold text-gray-500">List Entrepots</h1>
            <label htmlFor="table-search" className="sr-only">Search</label>
            <div className="mb-3">
                <input type="text" className="form-control" placeholder="Search entrepot" onChange={(e)=>setentrepotSel(e.target.value)} />
            </div>
            <table className="table table-striped">
                <thead className="bg-gray-800 text-white">
                    <tr>
                        <th>Code</th>
                        <th>Nom</th>
                        <th>Adresse</th>
                        <th>Type</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    { listDataEntrepots.length > 0 ?
                        listDataEntrepots.filter((e)=>{
                            return entrepotSel.toLowerCase() === '' ? e : e.nom.toLowerCase().includes(entrepotSel)
                        }).map((entrepot) => (
                            <tr key={entrepot.code}>
                                <td>{entrepot.code}</td>
                                <td>{entrepot.nom}</td>
                                <td>{entrepot.adresse}</td>
                                <td>{entrepot.type}</td>
                                <td>
                                    <button className="btn btn-danger me-2 mb-2" onClick={()=>SupprimerEntrepot(entrepot.code)}><i className="bi bi-trash3-fill"></i></button>
                                    <button className="btn btn-primary me-2 mb-2" onClick={()=>ModifierEntrepot(entrepot)}><i className="bi bi-pen"></i></button>
                                </td>
                            </tr>
                        ))
                    :
                        <tr>
                            <td colSpan='5' className="bg-gray-100 text-center"> <strong>Aucun Entrepot A afficher</strong></td>
                        </tr>
                    }
                </tbody>
            </table>
        </div>
    );
}
