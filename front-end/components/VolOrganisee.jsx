import React from "react";
import './VolCSS.css';
export default function VolOrganisee(){
    return <div>
        <div className="bg-primary p-5 text-light">
            <div className="row">
                <div className="col-3">
                    <label htmlFor="">Destination</label><br />
                    {/* onChange={(e)=>setVoyageSel(e.target.value)} */}
                    <select className="form-select" >
                        <option value={''}>Votre destination</option>
                        {/* {
                            voyages.map((vyg)=>{
                                return <option value={vyg.nomVille}>{vyg.nomVille}</option>
                            })
                        } */}
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
                    <button type="button" className="btn btn-danger"> <i class="fa-solid fa-magnifying-glass" style={{color:'#ffffff'}}></i> Rechercher</button>
                </div>
            </div>
        </div><br />
        <br />
        <div className="row m-5" >
        {/* {
            voyages.filter((item)=>{
                return voyageSel.toLowerCase()=== '' ? item : item.nomVille.toLowerCase().includes(voyageSel)
             }).map((i)=>{
                return <Fade top>
                        <div className="col-4">
                            <div class="card hover-secondary p-3"  onClick={()=>Ajt(i)}>
                                <img src={i.imageVille} alt="" srcset=""/>
                                <div class="card-body hover">
                                    <h5 class="card-title">{i.nomVille}</h5>
                                    <b id="titre"  class="card-text text-warning">Dès</b><b id="price" className="text-center">{i.prixVoyage}</b><b id="titre" class="card-text text-warning">Dhs</b>{' '}<b id="tout" class="card-text text-warning">Par Personne</b><br />
                                    <Link>
                                        <button href="#" class="btn btn-outline-primary" style={{borderRadius:'23px'}}><i class="fa-solid fa-arrow-up"></i> Revervez Maintenant</button>
                                    </Link>
                                </div> 
                            </div>
                            <br />
                        </div>
                    </Fade>      
            })
        } */}
    </div>
    </div>
}