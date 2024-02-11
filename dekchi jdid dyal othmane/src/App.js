import './App.css';
import NavBar from './components/project_pfe/Acceuil';
import Accueil from './components/project_pfe/imageAcceuil';
import {Route, BrowserRouter as Router, Routes, Link } from 'react-router-dom';
import VoyageOrg from './components/project_pfe/VoyageOrganisee';
import Aff from './components/project_pfe/voyageUniq';
import Contact from './components/project_pfe/contact';
import Footer from './components/project_pfe/footer';
function App() {
  return (
    <div className="App">
        <Router>
            <nav className="navbar navbar-expand-lg navbar-light">
                <div className="container">
                    <Link className="navbar-brand" to="/aff">
                        <h3 className='text text-primary'>  <img src='logopfe.jpg' width={'60px'} /> NEZAHA VOYAGE</h3>
                    </Link>
                    <button className="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="navbarNav">
                        <ul className="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li className="nav-item">
                                <Link className="nav-link text-dark" to="/aff">
                                    <i class="fa-solid fa-house"></i> Accueil
                                </Link>
                            </li>
                            <li className="nav-item">
                                <Link className="nav-link  text-dark" to="/listef">
                                    <i class="fa-solid fa-person-walking-luggage"></i> Voyage organisé
                                </Link>
                            </li>
                            <li className="nav-item">
                                <Link className="nav-link  text-dark" to="/h">
                                    <i class="fa-solid fa-kaaba"></i> Haj et Omra
                                </Link>
                            </li>
                            <li className="nav-item">
                                <Link className="nav-link  text-dark" to="/v">
                                    <i class="fa-solid fa-plane-departure"></i> Vol
                                </Link>
                            </li>
                            <li className="nav-item">
                                <Link className="nav-link text-dark" to="/Contact">
                                    <i class="fa-solid fa-id-badge"></i> Contact
                                </Link>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <Routes>
                <Route path='/' element={<Accueil/>}/>
                <Route path="/aff" element={<Accueil/>}  />
                <Route path="/listef" element={<VoyageOrg/>} />
                <Route path="/Contact" element={<Contact/>}  />
                <Route path="/hh" element={<Aff/>}  />
                <Route path="/modifierfilm/:id"  />
            </Routes>
          </Router>
          <Footer/>
    </div>
  );
}

export default App;
