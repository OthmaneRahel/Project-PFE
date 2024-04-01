import React, { useEffect } from 'react';
import './App.css';
import { BrowserRouter as Router , Route , Routes , Link } from 'react-router-dom';
import AfficherListEntrepots from './Entrepots/ListEntrepots';
import ModifierEntrepot from './Entrepots/ModifierEntrepot';
export default function App() {
  useEffect(() => {
    const handleClick = () => {
      document.querySelector("#sidebar").classList.toggle("expand");
    };

    const hamBurger = document.querySelector(".toggle-btn");
    hamBurger.addEventListener("click", handleClick);

    // Nettoyage de l'écouteur d'événements lorsque le composant est démonté
    return () => {
      hamBurger.removeEventListener("click", handleClick);
    };
  }, []);

  return (
    <>
    <Router>
      <div className="wrapper">
      <aside id="sidebar">
        <div className="d-flex">
          <button className="toggle-btn" type="button">
          <i class="bi bi-list"></i>
          </button>
          <div className="sidebar-logo">
            <a href="#">Stage projet</a>
          </div>
        </div>
        <ul className="sidebar-nav">
          <li className="sidebar-item">
            <Link to={'/Entrepots'} className="sidebar-link">
            <i class="bi bi-building"></i>
              <span>Entrepots</span>
            </Link>
          </li>
          <li className="sidebar-item">
            <a href="#" className="sidebar-link collapsed has-dropdown" data-bs-toggle="collapse" data-bs-target="#auth" aria-expanded="false" aria-controls="auth">
              <i class="bi bi-people"></i>
              <span>Clients</span>
            </a>
            <ul id="auth" className="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
              <li className="sidebar-item">
                <Link to={'/Clients'} className="sidebar-link"><i class="bi bi-person-lines-fill"></i> List Clients</Link>
              </li>
              <li className="sidebar-item">
                <Link to={'/Ajouter-client'} className="sidebar-link"> <i class="bi bi-person-plus"></i> Ajouter client</Link>
              </li>
              <li className="sidebar-item">
                <Link to={'/Vendeurs'} className="sidebar-link"> <i class="bi bi-person-lines-fill"></i> Liste vendeur</Link>
              </li>
              <li className="sidebar-item">
                <Link to={'/Ajouter-vendeur'} className="sidebar-link"> <i class="bi bi-person-plus"></i> Ajouter vendeur</Link>
              </li>
              <li className="sidebar-item">
                <Link to={'/Fournisseurs'} className="sidebar-link"> <i class="bi bi-person-lines-fill"></i> List fournisseur</Link>
              </li>
              <li className="sidebar-item">
                <Link to={'/Ajouter-fournisseur'} className="sidebar-link"> <i class="bi bi-person-plus"></i> Ajouter fournisseur</Link>
              </li>
            </ul>
          </li>
          {/* <li className="sidebar-item">
            <a href="#" className="sidebar-link">
              <i className="lni lni-agenda"></i>
              <span>Task</span>
            </a>
          </li> */}
          <li className="sidebar-item">
            <a href="#" className="sidebar-link collapsed has-dropdown" data-bs-toggle="collapse" data-bs-target="#auth" aria-expanded="false" aria-controls="auth">
              <i class="bi bi-app-indicator"></i>
              <span>Produits</span>
            </a>
            <ul id="auth" className="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
              <li className="sidebar-item">
                <a href="#" className="sidebar-link"> <i class="bi bi-basket2-fill"></i> List produit</a>
              </li>
              <li className="sidebar-item">
                <a href="#" className="sidebar-link"> <i class="bi bi-bag-plus-fill"></i> Ajouter produit</a>
              </li>
              
            </ul>
          </li>
          <li className="sidebar-item">
            <a href="#" className="sidebar-link collapsed has-dropdown" data-bs-toggle="collapse" data-bs-target="#multi" aria-expanded="false" aria-controls="multi">
              <i class="bi bi-building-add"></i>
              <span>Multi Level</span>
            </a>
            <ul id="multi" className="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
              <li className="sidebar-item">
                <a href="#" className="sidebar-link collapsed" data-bs-toggle="collapse" data-bs-target="#multi-two" aria-expanded="false" aria-controls="multi-two">
                  Two Links
                </a>
                <ul id="multi-two" className="sidebar-dropdown list-unstyled collapse">
                  <li className="sidebar-item">
                    <a href="#" className="sidebar-link">Link 1</a>
                  </li>
                  <li className="sidebar-item">
                    <a href="#" className="sidebar-link">Link 2</a>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <li className="sidebar-item">
            <a href="#" className="sidebar-link">
              <i class="bi bi-bell"></i>
              <span>Notification</span>
            </a>
          </li>
          <li className="sidebar-item">
            <a href="#" className="sidebar-link">
              <i class="bi bi-gear"></i>
              <span>Setting</span>
            </a>
          </li>
        </ul>
        <div className="sidebar-footer">
          <a href="#" className="sidebar-link">
          <i class="bi bi-box-arrow-in-left"></i>
            <span>Logout</span>
          </a>
        </div>
      </aside>
      <div className="main p-3">
        <div className="text-center">
        <Routes>
        <Route path='/Entrepots' element={<AfficherListEntrepots/>}/>
        <Route path='/Entrepots/modifier' element={<ModifierEntrepot/>}/>
      </Routes>
        </div>
      </div>
    </div>
      
    </Router>
    </>
  );
}
