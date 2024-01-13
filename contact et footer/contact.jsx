import React from "react";
 function Contact() {
    return (
        <div className="row">
            <div className="col-1"></div>
            <div className="col-5">
            <br/> <br/> <br/>
                <h2> <span className="text text-warning">NEZAHA Voyages</span> & Tourisme</h2>
                <h6>NEZAHA Voyages</h6>
                <br/>
                <div className="container">
                    <p><i class="fa-solid fa-location-dot">  </i>   N°108 Espace Paquet 1° Etage Angle rue Med Smiha et Pierre Parent Casablanca - Maroc</p>
                    <p><i class="fa-solid fa-envelope">  </i>   contact@nezahavoyage.com</p>
                    <p><i class="fa-solid fa-phone">  </i>  00212522302548</p>
                </div>
            </div>
            <div className="col-1"></div>
            <div className="col-4">
                <form>
                <br/> <br/>
                <h4>Avez-vous une demande spéciale ?</h4>
                <input type="text" placeholder="Votre nom" className="form-control" />
                <br/>
                <input type="text" placeholder="Votre prénom" className="form-control" />
                <br/>
                <input type="email" placeholder="Votre adresse email" className="form-control" />
                <br/>
                <select className="form-control">
                    <option value="demande">Demande</option>
                    <option value="hotel">Hôtel</option>
                    <option value="voyage">Voyage</option>
                    <option value="billet">Billet d'avion</option>
                    <option value="autres">Autres...</option>
                </select>
                <br/>
                <textarea cols={30} rows={5} placeholder="Votre message" className="form-control" />
                <br/>
                <input type="button" className="btn btn-warning" value="Envoyer" />
            </form>
        </div>
        <div className="col-1"></div>
        
    </div>

    )
}
export default Contact 