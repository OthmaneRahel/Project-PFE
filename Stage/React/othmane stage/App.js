import React, { useEffect } from 'react';
import './App.css';

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
            <a href="#" className="sidebar-link">
            <i class="bi bi-building"></i>
              <span>Entrepots</span>
            </a>
          </li>
          <li className="sidebar-item">
            <a href="#" className="sidebar-link collapsed has-dropdown" data-bs-toggle="collapse" data-bs-target="#auth" aria-expanded="false" aria-controls="auth">
              <i class="bi bi-people"></i>
              <span>Utilisateurs</span>
            </a>
            <ul id="auth" className="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
              <li className="sidebar-item">
                <a href="#" className="sidebar-link"><i class="bi bi-person-lines-fill"></i> Liste utilisateurs</a>
              </li>
              <li className="sidebar-item">
                <a href="#" className="sidebar-link"> <i class="bi bi-person-plus"></i> Ajouter utilisateur</a>
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
          <h1>
            Sidebar Bootstrap 5
          </h1>
        </div>
      </div>
    </div>
  );
}
