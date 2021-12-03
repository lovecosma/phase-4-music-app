import logo from './logo.svg';
import './App.css';
import {BrowserRouter as Router, Routes, Route} from "react-router-dom"
import UsersContainer from './containers/UsersContainer';
import Welcome from './components/Welcome';
import Login from './components/Login';
import Signup from './components/Signup';
import NavBar from './components/NavBar';
import React, {useState, useEffect} from "react"


function App() {
  
  const [user, setUser] = useState({})


  return (
    <div>
      <Router>
        <NavBar user={user} setUser={setUser}/>
        <Routes>
          <Route path="/" element={<Welcome/>}/>
          <Route path="/login"  element={<Login setUser={setUser}/>}/>
          <Route path="/signup"  element={<Signup setUser={setUser}/>}/>
          <Route path="users/*" element={<UsersContainer user={user}/>}/>
        </Routes>
      </Router>
    </div>
  );
}

export default App;
