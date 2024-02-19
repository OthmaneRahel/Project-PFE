import React from "react";
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import Footer from "./footer";
import './InfosBVoyage.css'
//import { useParams } from "react-router-dom";
export default function Aff(){
    //const {id} = useParams()
    const uniq = useSelector((state)=>state.vygUnq)
    const navigate = useNavigate()
    //const Voyage = uniq.find((i)=>i.id == id)
    console.log(uniq)
    const NavigateToVoyages = () =>{
        navigate('/listeVoyage')
    }
    console.log(uniq)
    return <div>
        {uniq.map((u)=>{
            return <div className="row px-5">
                <div className="col-8">
                    <img src={u.imageVille} alt="" srcset="" width={'100%'} />
                </div>
                <div className="col-4">
                    <b style={{fontSize:'33px'}}>A partir de {u.prixVoyage} Dhs Par Personne</b>
                    <br />
                    <br />
                    <div className="row">
                            <div className='col-6'>
                                <b className="text-center"><i style={{fontSize:'30px'}} class="fa-solid fa-stopwatch"></i> 8 jours / 7 nuits</b>
                            </div>
                            <div className='col-6'>
                                <b className="text-center"><i style={{fontSize:'30px'}} class="fa-solid fa-utensils"></i> Petit déjeuner</b>
                            </div>
                    </div><br />
                    <div className="row py-3">
                            <div className='col-6'>
                                <b className="text-center"><i style={{fontSize:'30px'}} class="fa-solid fa-plane-up"></i> Vol A/R</b>
                            </div>
                            <div className='col-6'>
                                <b className="text-center"><i style={{fontSize:'30px'}} class="fa-solid fa-bus"></i> Transfert Aeroport</b>
                            </div>
                    </div>
                    <b style={{textAlign:'center' , fontSize:'30px'}}>Réservez directement au</b><br />
                    <b style={{fontSize:'25px'}}><i class="fa-solid fa-square-phone"></i>+21277-083904</b><br />
                    <div>
                    </div>
                    <ul className="p-4">
                        <li>Hôtel - Petit déjeuner - Vol A / R - Transfert Aeroport</li>
                        <li>Hôtel 4 étoiles</li>
                    </ul>
                    <div className="d-grid">
                        <button className="btn btn-primary">Voir les tarifs & Dispo</button>
                    </div>
                </div>
                <div className="d-grid p-5" id="buttonTarif">
                    <button className="btn btn-warning" onClick={NavigateToVoyages}>Retour</button>
                </div>
            </div>
        })}
    </div>
}