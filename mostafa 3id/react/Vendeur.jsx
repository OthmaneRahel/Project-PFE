import React, { useEffect, useState } from "react";
import axios from "axios";
import Swal from "sweetalert2";
import { Dropdown, Modal, Button } from 'react-bootstrap';
import { useNavigate } from "react-router-dom";

export default function AfficherVendeur() {
    const [ListDataVendeur, setListDataVendeur] = useState([]);
    const [Vendeur, setVendeur] = useState('');
    const [index, setIndex] = useState(0);
    const [entrepot, setEntrepot] = useState([]);
    const [newVendeur, setNewVendeur] = useState({ nom: '', tele: '', login: '', password: '', idE: '', status: 'Active' });
    const [conteneur, setConteneur] = useState(1);
    const [message, setMessage] = useState(null);
    const [showModal, setShowModal] = useState(false);
    const [VendeurModifier, setVendeurModifier] = useState(null);
    const navigate = useNavigate();

    const handleCloseModal = () => {
        setShowModal(false);
        setVendeurModifier(null);
    };

    const handleShowModal = () => setShowModal(true);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/v').then((res) => {
            setListDataVendeur(res.data);
        });
    }, []);

    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/listeE')
            .then((res) => {
                setEntrepot(res.data);
            })
            .catch(error => console.log(error));
    }, []);

    const getvalue = (event) => {
        setNewVendeur((prevVendeur) => ({
            ...prevVendeur,
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
                axios.delete('http://127.0.0.1:8000/api/supprimerVendeur/' + id).then((res) => {
                    if (res.status === 200) {
                        const updatedList = ListDataVendeur.filter((c) => c.idV !== id);
                        setListDataVendeur(updatedList);
                    }
                });
            }
        });
    };

    const Ajouter = () => {
        axios.post('http://127.0.0.1:8000/api/v/', newVendeur).then((res) => {
            if (res.status === 201) {
                navigate('/Vendeur');
                setNewVendeur({ nom: '', tele: '', login: '', password: '', idE: '', status: 'Active' });
                setMessage('Votre Vendeur a été bien ajouté');
                handleCloseModal();
            } else {
                alert("Erreur d'ajout");
            }
        });
    };

    const modifierC = (c) => {
        setVendeurModifier(c);
        setNewVendeur({ 
            nom: newVendeur.nom,
            tele: newVendeur.tele,
            login: newVendeur.login,
            password: newVendeur.password,
            idE: newVendeur.idE,
            status:'Active'
         }); // Assurez-vous de remplir les champs du formulaire avec les informations du Vendeur
        handleShowModal();

    };
console.log('noveaux :',newVendeur)
console.log('modifier :',VendeurModifier)
    const modifierVendeur = () => {
        axios.put(`http://127.0.0.1:8000/api/v/` + VendeurModifier.idV, newVendeur)
            .then((res) => {
                if (res.status === 200) {
                    navigate('/Vendeur');
                    setVendeurModifier(null);
                    setMessage('Votre Vendeur a été modifié avec succès');
                    handleCloseModal();
                } else {
                    alert("Erreur lors de la modification du Vendeur");
                }
            })
    };
return (
    <div className="container mt-4">
        <div className="row">
            <div className="col-7"></div>
            <div className="col-3 mb-3">
                <input type="text" className="form-control" placeholder="Search Vendeur" onChange={(e)=>setVendeur(e.target.value)} />
            </div>
            <div className="col-1">
                <Dropdown>
                    <Dropdown.Toggle variant="dark">
                        <i className="bi bi-list" style={{fontSize:'18px'}}></i>
                    </Dropdown.Toggle>
                    <Dropdown.Menu>
                        <Dropdown.Item onClick={handleShowModal}>
                            <i className="bi bi-plus-circle" style={{paddingRight:'13px'}} ></i>Ajouter Vendeur
                        </Dropdown.Item>
                        <hr className="m-3" style={{margin:'auto'}}/>
                        <Dropdown.Item onClick={Supprimerc}>
                            <i className="bi bi-trash-fill" style={{paddingRight:'13px'}}></i> Supprimer Vendeur
                        </Dropdown.Item>
                    </Dropdown.Menu>
                </Dropdown>
                <Modal show={showModal} onHide={handleCloseModal}>
    <Modal.Header closeButton>
        <Modal.Title>{VendeurModifier ? "Modifier Vendeur" : "Ajouter Vendeur"}</Modal.Title>
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
                    Value={VendeurModifier ? VendeurModifier.nom : newVendeur.nom}
                />
            </div>
            <div className="col">
                <input 
                    type="number" 
                    className="form-control" 
                    placeholder="Telephone" 
                    name="tele" 
                    onChange={getvalue}
                    Value={VendeurModifier ? VendeurModifier.tele : newVendeur.tele}
                />
            </div>
        </div>
        <br/>
        <div className="row">
            <div className="col">
                <input 
                    type="text" 
                    className="form-control" 
                    placeholder="Login" 
                    name="login" 
                    onChange={getvalue}
                    Value={VendeurModifier ? VendeurModifier.login : newVendeur.login}
                />
            </div>
            <div className="col">
                <input 
                    type="password" 
                    className="form-control" 
                    placeholder="password" 
                    name="password" 
                    onChange={getvalue}
                    Value={VendeurModifier ? VendeurModifier.password : newVendeur.password}
                />
            </div>
        </div>
        <br/>
        <div className="row">
            <div className="col">
                <select name='idE' Value={VendeurModifier ? VendeurModifier.idE : newVendeur.idE} onChange={getvalue} className='form-select'>
                    <option key="default" value="">Choisir Entrepot</option>
                    {entrepot.map((e) => (
                        <option key={e.idE} value={e.idE}>{e.nom}</option>
                    ))}
                </select>
            </div>
        </div>
    </Modal.Body>
    <Modal.Footer>
        <Button variant="primary" onClick={VendeurModifier ? modifierVendeur : Ajouter}>
            <i className="bi bi-database-add" style={{paddingRight:'13px'}}></i> {VendeurModifier ? "Modifier Vendeur" : "Ajouter Vendeur"}
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
        <th className="border-3">Id Vendeur</th>
        <th className="border-3">Nom Vendeur</th>
        <th className="border-3">Telephone</th>
        <th className="border-3">Entropet</th>
        <th style={{width:'11%'}} className="border-3">Actions</th>
    </tr>
</thead>
<tbody>
    {ListDataVendeur.length > 0 ?
ListDataVendeur.filter((e) => {
    return Vendeur.toLowerCase() === '' ? e : e.nom.toLowerCase().includes(Vendeur);
}).slice(index, index + 5).map((c) => (
    <tr key={c.idC}>
        <td style={{ width: '1%' }} className="border-2 border-dark"><input type="checkbox" className="form-check-input" style={{ fontSize: '25px' }} /></td>
        <td className="border-2 border-dark">{c.idV}</td>
        <td className="border-2 border-dark">{c.nom}</td>
        <td className="border-2 border-dark">{c.tele}</td>
        <td className="border-2 border-dark">{c.idE}</td>
        <td className="border-2 border-dark">
            <button className="btn btn-danger me-2 mb-2" onClick={() => Supprimerc(c.idV)}>
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
    <td colSpan='6' className="bg-gray-100 text-center"> <strong>Aucun Vendeur A afficher</strong></td>
</tr>
}
</tbody>
</table>

        {conteneur > 1 ?  <button onClick={handlePrevPage} className="btn btn-primary"> <i className="bi bi-chevron-double-left"></i> Prev page</button> : <button id="q" onClick={handlePrevPage} className="btn btn-primary" disabled> <i className="bi bi-chevron-double-left"></i> Prev page</button> }{' '} <b>{conteneur}</b> {' '}
        <button onClick={handleNextPage} className="btn btn-primary">  Next page <i className="bi bi-chevron-double-right"></i> </button>
    </div>
);   
}