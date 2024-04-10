import React, { useEffect, useState } from "react";
import axios from "axios";
import Swal from "sweetalert2";
import { Dropdown, Modal, Button } from 'react-bootstrap';
import { useNavigate } from "react-router-dom";

export default function AfficherFornisseur() {
    const [ListDataFornisseur, setListDataFornisseur] = useState([]);
    const [Fornisseur, setFornisseur] = useState('');
    const [index, setIndex] = useState(0);
    const [entrepot, setEntrepot] = useState([]);
    const [newFornisseur, setNewFornisseur] = useState({ nom: '', tele: '', type: '', devise: '', idE: '', status: 'Active' });
    const [conteneur, setConteneur] = useState(1);
    const [message, setMessage] = useState(null);
    const [showModal, setShowModal] = useState(false);
    const [FornisseurModifier, setFornisseurModifier] = useState(null);
    const [entrepotsPrincipaux, setEntrepotsPrincipaux] = useState([]);
    const navigate = useNavigate();

    const handleCloseModal = () => {
        setShowModal(false);
        setFornisseurModifier(null);
    };

    const handleShowModal = () => setShowModal(true);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/f').then((res) => {
            setListDataFornisseur(res.data);
        });
    }, []);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/listeE')
            .then((res) => {
                const entrepots = res.data;
                setEntrepot(entrepots);
                const entrepotsPrincipaux = entrepots.filter(entrepot => entrepot.type === 'Principal');
                setEntrepotsPrincipaux(entrepotsPrincipaux);
            })
            .catch(error => console.log(error));
    }, []);
    console.log('entopet p',entrepotsPrincipaux);
    console.log('entopet s',entrepot);

    const getvalue = (event) => {
        setNewFornisseur((prevFornisseur) => ({
            ...prevFornisseur,
            [event.target.name]: event.target.value
        }));
    };

    const handlePrevPage = () => {
        setIndex(prevIndex => prevIndex - 5);
        setConteneur(prevConteur => prevConteur - 1);
    };

    const handleNextPage = () => {
        setIndex(prevIndex => prevIndex + 5);
        setConteneur(prevConteur => prevConteur + 1);
    };

    const Supprimerc = (id) => {
        Swal.fire({
            title: "Êtes-vous sûr ?",
            text: "Êtes-vous sûr de confirmer votre suppression !",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Oui, Supprimer !"
        }).then((result) => {
            if (result.isConfirmed) {
                axios.delete('http://127.0.0.1:8000/api/supprimerFornisseur/' + id).then((res) => {
                    if (res.status === 200) {
                        const updatedList = ListDataFornisseur.filter((c) => c.idF !== id);
                        setListDataFornisseur(updatedList);
                    }
                });
            }
        });
    };

    const Ajouter = () => {
        axios.post('http://127.0.0.1:8000/api/f/', newFornisseur).then((res) => {
            if (res.status === 201) {
                navigate('/Fornisseur');
                setNewFornisseur({ nom: '', tele: '', type: '', devise: '', idE: '', status: 'Active' });
                setMessage('Votre Fornisseur a été bien ajouté');
                handleCloseModal();
            } else {
                alert("Erreur d'ajout");
            }
        });
    };

    const modifierC = (c) => {
        setFornisseurModifier(c);
        setNewFornisseur({ 
            nom: newFornisseur.nom,
            tele: newFornisseur.tele,
            type: newFornisseur.type,
            devise: newFornisseur.devise,
            idE: newFornisseur.idE,
            status:'Active'
         }); // Assurez-vous de remplir les champs du formulaire avec les informations du Fornisseur
        handleShowModal();

    };
console.log('noveaux :',newFornisseur)
console.log('modifier :',FornisseurModifier)
    const modifierFornisseur = () => {
        axios.put(`http://127.0.0.1:8000/api/f/` + FornisseurModifier.idF, newFornisseur)
            .then((res) => {
                if (res.status === 200) {
                    navigate('/Fornisseur');
                    setFornisseurModifier(null);
                    setNewFornisseur({ nom: '', tele: '', type: '', devise: '', idE: '', status: 'Active' });
                    setMessage('Votre Fornisseur a été modifié avec succès');
                    handleCloseModal();
                } else {
                    alert("Erreur lors de la modification du Fornisseur");
                }
            })
    };
return (
    <div className="container mt-4">
        <div className="row">
            <div className="col-7"></div>
            <div className="col-3 mb-3">
                <input type="text" className="form-control" placeholder="Search Fornisseur" onChange={(e)=>setFornisseur(e.target.value)} />
            </div>
            <div className="col-1">
                <Dropdown>
                    <Dropdown.Toggle variant="dark">
                        <i className="bi bi-list" style={{fontSize:'18px'}}></i>
                    </Dropdown.Toggle>
                    <Dropdown.Menu>
                        <Dropdown.Item onClick={handleShowModal}>
                            <i className="bi bi-plus-circle" style={{paddingRight:'13px'}} ></i>Ajouter Fornisseur
                        </Dropdown.Item>
                        <hr className="m-3" style={{margin:'auto'}}/>
                        <Dropdown.Item onClick={Supprimerc}>
                            <i className="bi bi-trash-fill" style={{paddingRight:'13px'}}></i> Supprimer Fornisseur
                        </Dropdown.Item>
                    </Dropdown.Menu>
                </Dropdown>
                <Modal show={showModal} onHide={handleCloseModal}>
    <Modal.Header closeButton>
        <Modal.Title>{FornisseurModifier ? "Modifier Fornisseur" : "Ajouter Fornisseur"}</Modal.Title>
    </Modal.Header>
    <Modal.Body>
        <div className="row">
            <div className="col">
                <input 
                    type="text" 
                    className="form-control" 
                    placeholder="Nom" 
                    name="nom" 
                    onChange={getvalue}
                    Value={FornisseurModifier ? FornisseurModifier.nom : newFornisseur.nom}
                />
            </div>
            <div className="col">
                <input 
                    type="number" 
                    className="form-control" 
                    placeholder="Telephone" 
                    name="tele" 
                    onChange={getvalue}
                    Value={FornisseurModifier ? FornisseurModifier.tele : newFornisseur.tele}
                />
            </div>
        </div>
        <br/>
        <div className="row">
            <div className="col">
                <select name='type' Value={FornisseurModifier ? FornisseurModifier.type : newFornisseur.type} onChange={getvalue} className='form-select'>
                    <option >Choisir type Fornisseur</option>
                    <option value={'Interne'}>Interne</option>
                    <option value={'Externe'}>Externe</option>
                </select>
            </div>
            <div className="col">
            <select name='devise' Value={FornisseurModifier ? FornisseurModifier.devise : newFornisseur.devise} onChange={getvalue} className='form-select'>
                    <option>Choisir Devise</option>
                    <option value={'Dirhams'} >Dirhams</option>
                    <option  value={'Dolar'} >Dolar</option>
                    <option  value={'Euro'}>Euro</option>
                </select>
            </div>
        </div>
        <br/>
        <div className="row">
            <div className="col">
        {newFornisseur.type === 'Externe' && (
            <div className="col">
                <select name='idE' Value={FornisseurModifier ? FornisseurModifier.idE : newFornisseur.idE} onChange={getvalue} className='form-select'>
                    <option>Choisir Entrepot</option>
                    {entrepotsPrincipaux.map(entrepot => (
                        <option key={entrepot.idE} value={entrepot.idE}>{entrepot.nom}</option>
                    ))}
                </select>
            </div>
        )}
        {newFornisseur.type === 'Interne' && (
            <div className="col">
                <select name='idE' Value={FornisseurModifier ? FornisseurModifier.idE : newFornisseur.idE} onChange={getvalue} className='form-select'>
                    <option>Choisir Entrepot</option>
                    {entrepot.map(entrepot => (
                        <option key={entrepot.idE} value={entrepot.idE}>{entrepot.nom}</option>
                    ))}
                </select>
            </div>
)}

            </div>
        </div>
    </Modal.Body>
    <Modal.Footer>
        <Button variant="primary" onClick={FornisseurModifier ? modifierFornisseur : Ajouter}>
            <i className="bi bi-database-add" style={{paddingRight:'13px'}}></i> {FornisseurModifier ? "Modifier Fornisseur" : "Ajouter Fornisseur"}
        </Button>
    </Modal.Footer>
</Modal>

            </div>
        </div>
        {message == null ? null : <div className="alert alert-success" role="alert">
            <strong>{message}</strong>
        </div>}
        <table className="table table-striped" width={'100%'} style={{overflow:'auto'}}>
<thead className="text-black border-3 border-dark bg-primary">
    <tr>
        <th style={{width:'1%'}}><input type="checkbox" className="form-check-input" style={{fontSize:'25px'}}/></th>
        <th className="border-3">Id Fornisseur</th>
        <th className="border-3">Nom Fornisseur</th>
        <th className="border-3">Telephone</th>
        <th className="border-3">Entropet</th>
        <th className="border-3">Type</th>
        <th className="border-3">Devise</th>
        <th style={{width:'11%'}} className="border-3">Actions</th>
    </tr>
</thead>
<tbody>
    {ListDataFornisseur.length > 0 ?
ListDataFornisseur.filter((e) => {
    return Fornisseur.toLowerCase() === '' ? e : e.nom.toLowerCase().includes(Fornisseur);
}).slice(index, index + 5).map((c) => (
    <tr key={c.idC}>
        <td style={{ width: '1%' }} className="border-2 border-dark"><input type="checkbox" className="form-check-input" style={{ fontSize: '25px' }} /></td>
        <td className="border-2 border-dark">{c.idF}</td>
        <td className="border-2 border-dark">{c.nom}</td>
        <td className="border-2 border-dark">{c.tele}</td>
        <td className="border-2 border-dark">{c.idE}</td>
        <td className="border-2 border-dark">{c.type}</td>
        <td className="border-2 border-dark">{c.devise}</td>
        <td className="border-2 border-dark">
            <button className="btn btn-danger me-2 mb-2" onClick={() => Supprimerc(c.idF)}>
                <i className="bi bi-trash3-fill"></i>
            </button>
            <button className="btn btn-primary me-2 mb-2" onClick={() => modifierC(c)}>
                <i className="bi bi-pen"></i>
            </button>
        </td>
    </tr>
))
:
<tr>
    <td colSpan='6' className="bg-gray-100 text-center"> <strong>Aucun Fornisseur A afficher</strong></td>
</tr>
}
</tbody>
</table>

        {conteneur > 1 ?  <button onClick={handlePrevPage} className="btn btn-primary"> <i className="bi bi-chevron-double-left"></i> Prev page</button> : <button id="q" onClick={handlePrevPage} className="btn btn-primary" disabled> <i className="bi bi-chevron-double-left"></i> Prev page</button> }{' '} <b>{conteneur}</b> {' '}
        <button onClick={handleNextPage} className="btn btn-primary">  Next page <i className="bi bi-chevron-double-right"></i> </button>
    </div>
);   
}