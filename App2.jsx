import './App.css';
import NavBar from './components/project_pfe/Acceuil';
import Accueil from './components/project_pfe/imageAcceuil';
import {Route, BrowserRouter as Router, Routes, Link } from 'react-router-dom';
import VoyageOrg from './components/project_pfe/VoyageOrganisee';
import Aff from './components/project_pfe/voyageUniq';
import Contact from './components/project_pfe/contact';
import Footer from './components/project_pfe/footer';
import HajOrg from './components/project_pfe/HajOrganise';
import HajUnique from './components/project_pfe/HajUnique';
function App() {
    
  return (
    <div className="App">
        <Router>
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <Link className="navbar-brand" to="/">
                    <h3 className='text text-primary px-5'>  <img src='logopfe.jpg' width={'60px'} /> AGENCE DE VOYAGE</h3>
                </Link>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav justify-content-end">
                    <li class="nav-item">
                        <Link className="nav-link text-dark " to="/acceuil">
                            <i class="fa-solid fa-house"></i> Accueil
                        </Link>
                    </li>
                    <li class="nav-item">
                        <Link className="nav-link  text-dark" to="/listeVoyage">
                            <i class="fa-solid fa-person-walking-luggage"></i> Voyage organisé
                        </Link>
                    </li>
                    <li class="nav-item">
                        <Link className="nav-link  text-dark" to="/haj-omra">
                            <i class="fa-solid fa-kaaba"></i> Haj et Omra
                        </Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link  text-dark" to="/voyage-vol">
                            <i class="fa-solid fa-plane-departure"></i> Vol
                        </Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link text-dark" to="/Contact">
                            <i class="fa-solid fa-id-badge"></i> Contact
                        </Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link text-dark">
                            <i class="bi bi-brightness-high-fill" id="toggleDark"></i>
                        </Link>
                    </li>
                </ul>
                </div>
            </div>
            </nav>
            <Routes>
                <Route path='/' element={<Accueil/>}/>
                <Route path="/acceuil" element={<Accueil/>}  />
                <Route path="/listeVoyage" element={<VoyageOrg/>} />
                <Route path='/voyage-sel' element={<Aff/>}/>
                <Route path='/haj-sel' element={<HajUnique/>}/>
                <Route path="/Contact" element={<Contact/>}  />
                <Route path="/haj-omra" element={<HajOrg/>} />
            </Routes>
          </Router>
          <Footer/>
    </div>
  );
}

export default App;
