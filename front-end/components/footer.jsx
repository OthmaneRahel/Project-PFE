import React from "react";
function Footer() {
    return (
        <div className="bg-primary">
            <br/><br/><br/>
            <div className="row">
                
                <div className="col-1"></div>
                <div className="col-4">
                <h3 className='text text-warning'>  <img className="rounded-circle" src='logopfe.jpg' width={'60px'} /> NEZAHA VOYAGE</h3>
                <p className='text text-light'>NEZAHA Voyages, leader du voyage au Maroc: plus de 500 000 hôtels au Maroc et dans le monde,
                    billets d'avion, voyages organisés, omra, hajj, croisières. paiement en dirhams</p>
                </div>
                
                <div className="col-2">
                    <h6 className='text text-warning'>NEZAHA Voyages</h6>
                    <p className='text text-light'>Nos Agences<br/>Contact</p>
                </div>
                <div className="col-1"></div>
                <div className="col-3">
                    <p className='text text-light'><i class="fas fa-mobile-alt"></i>  00212522302548</p>
                    <p className='text text-light'><i class="far fa-envelope"></i> contact@nezahavoyages.com </p>

                </div>
               
            </div>
            <div className="row">
            <div className="col-12 px-md-5 px-3">
                    <h1 className="flex-footer-child text-center text-light payment-footer">
                        <i  class="fab fa-cc-mastercard mx-2" ></i>
                        <i class="fab fa-cc-visa mx-2"></i>
                        <i class="fab fa-cc-amex mx-2"></i>
                        <i class="fab fa-cc-jcb mx-2"></i>
                    </h1>
            </div>
            <div className="col-12 px-md-5 px-3">
                <h1 className="text text-light text-center">
                        <i class="fab fa-facebook mx-2"></i>
                        <i class="fab fa-instagram mx-2"></i>
                        <i class="fab fa-whatsapp mx-2"></i>
                    
                </h1>
                <p className="px-md-5 px-0 mb-0 text-center text-white py-3">
                N°108 Espace Paquet 1° Etage Angle rue Med Smiha et Pierre Parent Casablanca - Maroc<br/>
                Téléphone : 00212522302548 Téléphone : 00212522302561 Email :
                contact@nezahavoyages.com
                </p>
            </div>
            <br/><br/>
            </div>

        </div>
    )
}
export default Footer