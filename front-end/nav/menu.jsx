import React from 'react';
import {Route, BrowserRouter as Router, Routes, Link } from 'react-router-dom';



function Menupfe() {
    return (
        <Router>
            <nav className="navbar navbar-expand-lg navbar-light">
                <div className="container">
                    <Link className="navbar-brand" to="/listef">
                       
                        <h3 className='text text-primary'>  <img src='logopfe.jpg' width={'60px'} /> NEZAHA</h3>
                    </Link>
                    <button
                        className="navbar-toggler"
                        type="button"
                        data-toggle="collapse"
                        data-target="#navbarNav"
                        aria-controls="navbarNav"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                    >
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="navbarNav">
                        <ul className="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li className="nav-item">
                                <Link className="nav-link text-dark" to="/aff">
                                    Accueil
                                </Link>
                            </li>
                            <li className="nav-item">
                                <Link className="nav-link  text-dark" to="/listef">
                                    Voyage organisé
                                </Link>
                            </li>
                            <li className="nav-item">
                                <Link className="nav-link  text-dark" to="/ajouterfilm">
                                    Haj et Omra
                                </Link>
                            </li>
                            <li className="nav-item">
                                <Link className="nav-link  text-dark" to="/ajouterfilm">
                                    Vol
                                </Link>
                            </li>
                            <li className="nav-item">
                                <Link className="nav-link text-dark" to="/ajouterfilm">
                                    Contact
                                </Link>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <Routes>
                <Route path="/aff"  />
                <Route path="/listef"  />
                <Route path="/ajouterfilm"  />
                <Route path="/modifierfilm/:id"  />
            </Routes>
        </Router>
    );
}

export default Menupfe;
