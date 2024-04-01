import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import ListeEntrepot from './stage/afficher_entrepot';
import LeftMenu from './stage/leftmenu';
import ListeProduit from './stage/afficher_produit';

function App() {
  return (
 
      <Router>
      <div className="container">
        <LeftMenu />
        <div className="content">
          <Routes>
            <Route path="/" element={<ListeEntrepot/>} />
            <Route path="/produit" element={<ListeProduit/>} />
          </Routes>
          
        </div>
      </div>
    </Router>
  );
}

// Créez des composants Produit, Settings, Logout pour les utiliser dans les routes correspondantes

export default App;
