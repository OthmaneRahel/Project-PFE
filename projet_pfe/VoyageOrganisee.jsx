import React from "react";
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
export default function VoyageOrg(){
    const voyages = useSelector((state)=>state.voyages)
    const navigate = useNavigate()
    const navigateM = () =>{
        navigate('/aff')
    }
    console.log(voyages)
    return <div>
        <div className="bg-primary p-5 text-light">
            <div className="row">
                <div className="col-3">
                    <label htmlFor="">Destination</label><br />
                    <select name="" id="" className="form-select">
                        <option value="">hh</option>
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
                    <input type="text" name="" id="" className="form-control" />
                </div>
                <div className="col-2">
                    <label htmlFor=""></label><br />
                    <button type="button" className="btn btn-danger">Rechercher</button>
                </div>
            </div>
        </div><br />
        <br />
        <div className="row">
        {
            voyages.map((i)=>{
                return <div className="col-4">
                            <div class="card">
                                <img src={i.imageVille} alt="" srcset="" />
                                <div class="card-body">
                                    <h5 class="card-title" onClick={navigateM}>{i.nomVille}</h5>
                                    <b id="titre" class="card-text text-warning">Dès</b><b id="price" className="text-center">{i.prixVoyage}</b><b id="titre" class="card-text text-warning">Dhs</b>{' '}<b id="tout" class="card-text text-warning">Par Personne</b><br />
                                    <a href="#" class="btn btn-primary">Revervez</a>
                                </div>
                            </div><br />
                        </div>
            })
        }
    </div>
    </div>
}