import React, { useState } from "react";
import { useSelector } from "react-redux";
import { useParams } from "react-router-dom";
export default function Reservation_Voyage(){
    const {id}=useParams();
    const voy = useSelector((state)=>state.voyages)
    // const [Vyg,setVyg] =useState([])
    const filterVoy = voy.map((i)=>i.RevervationDispo.find((v)=>v.idR == id))
    console.log(id)
    console.log(filterVoy)
    //console.log(voy)
    return <>
        <div>
            <div className="bg-primary text-light p-2 m-3">
                <h1>TARIFS ET DISPONIBILITES</h1>
            </div><br />
            <table className="table table-striped">
                        <thead className="bg-primary py-5" style={{fontSize:'23px'}}>
                            <th>DÉPART</th>
                            <th>FORMULE</th>
                            <th>PRIX</th>
                            <th>SÉLECTIONNER</th>
                        </thead>
                        <tbody>
                            {filterVoy.map((reservation) =>(
                                <>
    
                                {reservation && (
                                    <tr>
                                        <td>
                                            <img src={`/${reservation.AgenceVyg}`} alt="f" style={{width:'210px'}} /><br />
                                            <b style={{color:'#FFD43B',fontSize:'28px'}}><i class="fa-solid fa-plane-departure"></i></b>{' '}<b>Départ le : {reservation.Date_Debut_Vyg}</b>
                                            <br />|<br />
                                            <b style={{color:'#FFD43B',fontSize:'28px'}}><i class="fa-solid fa-plane-arrival"></i></b>{' '}<b> Retour le : {reservation.Date_Fin_Vyg}</b>
                                        </td>
                                        <td>
                                        <b>{reservation.FormuleDescr}</b>
                                        </td>
                                        <td>{reservation.prixVyg} Dhs</td>
                                        <td><button className="btn btn-lg btn-warning">Valider</button></td>
                                    </tr>             
                                )}
                            
                                </>
                                //  <tr>
                                //     <td>
                                //         <img src={i.AgenceVyg} className="my-3" alt="" srcset="" width={'40%'} /><br/>
                                //         <b style={{color:'#FFD43B',fontSize:'28px'}}><i class="fa-solid fa-plane-departure"></i></b>{' '}<b>Départ le : {i.Date_Debut_Vyg}</b>
                                //         <br />|<br />
                                //         <b style={{color:'#FFD43B',fontSize:'28px'}}><i class="fa-solid fa-plane-arrival"></i></b>{' '}<b> Retour le : {i.Date_Fin_Vyg}</b>
                                //     </td>
                                //     <td><b>{i.FormuleDescr}</b></td>
                                //     <td><b>{i.prixVyg} Dhs <br/><sub>Par Personne</sub></b></td>
                                    
                                // </tr>
                            ))}
                        </tbody>
                    </table> 
        </div>
    </>
}