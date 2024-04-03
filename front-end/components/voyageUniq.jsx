import React from "react";
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import Footer from "./footer";
import { Fade } from 'react-reveal';
import { Link } from "react-router-dom";
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
                <Fade top>
                <div className="col-7">
                    <img src={u.imageVille} alt="" srcset="" width={'100%'} />
                </div>
                <div className="col-5">
                    <b className="" style={{fontSize:'29px'}} >A partir de {u.prixVoyage} Dhs Par Personne</b>
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
                    <div><br /> 
                    </div>
                    <ul className="">
                        <li>Hôtel - Petit déjeuner - Vol A / R - Transfert Aeroport</li>
                        <li>Hôtel 4 étoiles</li>
                    </ul>
                    <div data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="50">
                        <ul class="navbar-nav">
                            <li><a className="btn btn-primary" href="#section1">VOIR TARIFS & DISPOS</a></li>
                        </ul>

                    </div><br />
                </div>
                <br />
                <Fade top>
                    <h1 className="bg-warning py-3" style={{borderRadius:'190px'}}>Description sur ce voyage </h1>
                    <b>Le prix inclus :</b><br /> 
                    {u.description_Voyage_Prix_inclus.map((v)=>{
                        return <div>  
                            <p>{v}</p>
                        </div>
                    })}
                    <b>Le prix n'inclut pas :</b><br />
                    {u.description_V_Pas_inclut.map((v)=>{
                        return <div>  
                            <p>{v}</p>
                        </div>
                    })}
                </Fade>
                <Fade top>
                    <h1 id="section1" className="bg-warning py-3 my-5" style={{borderRadius:'190px'}}>TARIFS ET DISPONIBILITÉS</h1>
                    <table className="table table-striped">
                        <thead className="bg-primary py-5" style={{fontSize:'23px'}}>
                            <th>DÉPART</th>
                            <th>FORMULE</th>
                            <th>PRIX</th>
                            <th>SÉLECTIONNER</th>
                        </thead>
                        <tbody>
                            {u.RevervationDispo.map((i)=>{
                                return <tr>
                                    <td>
                                        <img src={i.AgenceVyg} className="my-3" alt="" srcset="" width={'40%'} /><br/>
                                        <b style={{color:'#FFD43B',fontSize:'28px'}}><i class="fa-solid fa-plane-departure"></i></b>{' '}<b>Départ le : {i.Date_Debut_Vyg}</b>
                                        <br />|<br />
                                        <b style={{color:'#FFD43B',fontSize:'28px'}}><i class="fa-solid fa-plane-arrival"></i></b>{' '}<b> Retour le : {i.Date_Fin_Vyg}</b>
                                    </td>
                                    <td><b>{i.FormuleDescr}</b></td>
                                    <td><b>{i.prixVyg} Dhs <br/><sub>Par Personne</sub></b></td>
                                    <td>
                                        <Link style={{fontSize:'20px' , borderRadius:'25px'}} to={`/reservation/${i.idR}`} className="btn btn-warning"><i class="fa-solid fa-handshake" style={{fontSize:'30px'}}></i>Je reserve</Link>
                                    </td>
                                </tr>
                            })}
                        </tbody>
                    </table>
                </Fade>
                <div className="d-grid p-5" id="buttonTarif">
                    <button className="btn btn-warning" onClick={NavigateToVoyages}>Retour</button>
                </div>
                </Fade>
            </div>
        })}
    </div>
}