import React from "react";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { ajtVygU , ViderTab } from "./actions";
import { Link } from "react-router-dom";
import { Fade } from "react-reveal";
import './InfosBVoyage.css'
import Footer from "./footer";
export default function VoyageOrg(){
    const voyages = useSelector((state)=>state.voyages)
    const uniq = useSelector((state)=>state.vygUnq)
    const navigate = useNavigate()
    const Dispatch = useDispatch()
    //const navigateM = () =>{
        //navigate('/aff')
    //}
    const Ajt = (voyage)=>{
        Dispatch(ViderTab())    
        Dispatch(ajtVygU(voyage))
        navigate('/voyage-sel')
    }
    //console.log(voyages)
    console.log(uniq)
    return <div>
        <div className="bg-primary p-5 text-light">
            <div className="row">
                <div className="col-3">
                    <label htmlFor="">Destination</label><br />
                    <select name="" id="" className="form-select">
                        <option value="">Votre destination</option>
                        {
                            voyages.map((vyg)=>{
                                return <option value="">{vyg.nomVille}</option>
                            })
                        }
                    </select>
                </div>
                <div className="col-2">
                    <label htmlFor="">Arivee</label><br />
                    <input type="date" name="" id="" className="form-control" />
                </div>
                <div className="col-2">
                    <label htmlFor="">Depart</label><br />
                    <input type="date" name="" id="" className="form-control" />
                </div>
                <div className="col-3">
                    <label htmlFor="">Chambres</label><br />
                    <input type="number" min={0} name="" id="" className="form-control" />
                </div>
                <div className="col-2">
                    <label htmlFor=""></label><br />
                    <button type="button" className="btn btn-danger">Rechercher</button>
                </div>
            </div>
        </div><br />
        <br />
        <div className="row m-5" >
        {
            voyages.map((i)=>{
                return <div className="col-4">
                            <div class="card hover-secondary p-5" onClick={()=>Ajt(i)}>
                                <Fade top>
                                <img src={i.imageVille} alt="" srcset="" />
                                <div class="card-body hover">
                                    <h5 class="card-title">{i.nomVille}</h5>
                                    <b id="titre"  class="card-text text-warning">Dès</b><b id="price" className="text-center">{i.prixVoyage}</b><b id="titre" class="card-text text-warning">Dhs</b>{' '}<b id="tout" class="card-text text-warning">Par Personne</b><br />
                                    <Link>
                                        <button href="#" class="btn btn-lg btn-outline-primary justify-content-end" style={{borderRadius:'23px'}}><i class="fa-solid fa-arrow-up"></i> Revervez Maintenant</button>
                                    </Link>
                                </div>
                                </Fade>   
                            </div>
    
                            <br />
                        </div>
                        
            })
        }
    </div>
    </div>
}