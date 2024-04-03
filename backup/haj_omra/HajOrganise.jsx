import React from "react";
import { useDispatch, useSelector } from "react-redux";
import "./haj.css";
import { ajHajU , Viderhaj } from "./actions";


import Footer from "./footer";
export default function HajOrg(){
    const voyages = useSelector((state)=>state.Haj)
    const uniq = useSelector((state)=>state.HajUnq)

    
    const Dispatch = useDispatch()
    //const navigateM = () =>{
        //navigate('/aff')
    //}
    const Ajt = (HAJ)=>{
        Dispatch(Viderhaj())    
        Dispatch(ajHajU(HAJ))
        
    }
  
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
                return <div>
                    
                    <div className="col-9" style={{marginLeft:'13%'}} onClick={Ajt()}>
                            <div class="card hover-secondary">
                                <img src={i.imageVille} alt="" srcset="" />
                                <div class="card-body hover">
                                    <h5 class="card-title">{i.nomVille}</h5> 
                                    <h6 className="card-text">{i.time}</h6>
                                    <b id="titre" class="card-text text-warning">Dès</b><b id="price" className="text-center">{i.prixVoyage}</b><b id="titre" class="card-text text-warning">Dhs</b>{' '}<b id="tout" class="card-text text-warning">Par Personne</b><br />
                                    
                                    <button href="#" class="btn btn-primary">Revervez Maintenant</button>
                                </div>
                            </div>
                            
                        </div>
                        
                    </div>
            })
        }
            
    </div>
    </div>
}