import React from 'react';
import './NavBar.css';
export default function Accueil() {
    return (
        <div className='row'>
            <div className='col-6 p-5 w3-container w3-center w3-animate-top'>
                <h1 className='ms-3 p-5' style={{ fontFamily : 'Cursive' ,fontSize:'55px'}}>
                    TIME TO<br /><h1 style={{fontSize:'100px' ,fontFamily:'Impact, fantasy'}} className='text-primary' >TRAVELING</h1>
                </h1><br />
            </div>
            <div className='col-6 w3-container w3-center w3-animate-top' >
                <img style={{height:'700px' , width:'800px' , paddingBottom:'115px'}} src="LogodesignVoayge.png" class="rounded float-end" alt="..."></img>
            </div><br />
            <div className='row p-5'>
                <h1 className='float-center bg-black text-white p-3' style={{textAlign:'center'}}>Nos services </h1>
                <div className='p-5 w3-container w3-center w3-animate-top'>
                    <div id="carouselExampleDark" className="carousel carousel-dark slide text-light">
                        <div className="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" className="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div className="carousel-inner">
                            <div className="carousel-item active" data-bs-interval="10000">
                                <img src="malaisie.jpeg" className="d-block mx-auto" alt="..." style={{ maxHeight: '100vh', maxWidth: '100%', objectFit: 'contain' }} />
                                <div className="carousel-caption d-none d-md-block">
                                    <h5 className='text-light'>First slide label</h5>
                                    <p className='text-light'>Some representative placeholder content for the first slide.</p>
                                </div>
                            </div>
                            <div className="carousel-item" data-bs-interval="2000">
                                <img src="turkish.jpg" className="d-block mx-auto" alt="..." style={{ maxHeight: '100vh', maxWidth: '100%', objectFit: 'contain' }} />
                                <div className="carousel-caption d-none d-md-block">
                                    <h5 className='text-light'>Second slide label</h5>
                                    <p className='text-light'>Some representative placeholder content for the second slide.</p>
                                </div>
                            </div>
                            <div className="carousel-item">
                                <img src="dubai.jpg" className="d-block mx-auto" alt="..." style={{ maxHeight: '100vh', maxWidth: '100%', objectFit: 'contain' }} />
                                <div className="carousel-caption d-none d-md-block">
                                    <h5 className='text-light'>Third slide label</h5>
                                    <p className='text-light'>Some representative placeholder content for the third slide.</p>
                                </div>
                            </div>
                        </div>
                        <button className="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                            <span className="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span className="visually-hidden">Previous</span>
                        </button>
                        <button className="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                            <span className="carousel-control-next-icon" aria-hidden="true"></span>
                            <span className="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
            <div className='row px-5'>
                <h1 className='float-center bg-black text-white p-3' style={{textAlign:'center'}}>Pourquoi choisir Nezaha voyage ?</h1>
                <br />
                <div className='col-4'>
                    <i style={{fontSize:'90px'}} class="fa-solid fa-medal p-4"></i>
                    <h3>La garantie du meilleur prix</h3>
                    <p className='p-4 '>Des garanties pour réserver l'esprit tranquille au meilleur prix</p>
                </div>
                <div className='col-4'>
                    <i style={{fontSize:'90px'}} class="fa-solid fa-plane-circle-check p-4"></i>
                    <h3>La garantie du meilleur prix</h3>
                    <p className='p-4 '>Une séléction d'hôtels de charmes sur toutes nos  destinations, avec plus de 1200 compagnies aériennes !</p>
                </div>
                <div className='col-4'>
                    <i style={{fontSize:'90px'}} class="fa-solid fa-ranking-star p-4"></i>
                    <h3 className='text-xl5'>La garantie du meilleur prix</h3>
                    <p className='p-4 '>Des expertes ayant visites toutes les distinations qui vous conseillent</p> 
                </div>
            </div>
            <div className='row px-5'>
                <h1 className='float-center bg-black text-white p-3 mb-4' style={{textAlign:'center'}}>Notre position </h1>
                <div className='col-12 mb-4'>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13302.254039496185!2d-7.618702744580077!3d33.53873250000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda6339903ab7601%3A0xbc437b449e869b29!2sEnjaaz%20Travel!5e0!3m2!1sfr!2sma!4v1711707500762!5m2!1sfr!2sma" width="1200" height="450" style={{border:0}} allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    )
}