import React from 'react';
import { Link } from 'react-router-dom';

const LeftMenu = () => {
  return (
    <div className="sidebar">
      <ul className="navbar-nav">
        <li className="nav-item">
          <Link className="nav-link" to="/"><i className="fas fa-home"></i> Entrepot</Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="/produit"><i className="fas fa-box"></i> Produits</Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="/clients"><i className="fas fa-users"></i> Clients</Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="/commandes"><i className="fas fa-shopping-cart"></i> Commandes</Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="/parametres"><i className="fas fa-cog"></i> Paramètres</Link>
        </li>
      </ul>
    </div>
    
  );
}

export default LeftMenu;
