import React from 'react'
import {NavLink, useNavigate} from "react-router-dom"

export default function NavBar({user, setUser}) {

    let navigate = useNavigate()
    return (
        <nav className="black">
        <div className="nav-wrapper">
          <a href="/" className="brand-logo">Playlister</a>
          <ul id="nav-mobile" className="right hide-on-med-and-down">
            {!!user.id ? 
            <div>
                <li><NavLink to={`/users/${user.id}`}>Profile</NavLink></li>
                <li><a href="/delete" onClick={(e) => {
                    e.preventDefault()
                    fetch('/api/logout', {
                        method: "DELETE",
                        headers: {
                            "Accept": "application/json",
                            "Content-Type": "application/json"
                        }
                    }).then(resp => {
                        setUser({})
                        navigate("/")
                    })
                }}>Logout</a></li>
            </div>
            :
            <div>
                <li><NavLink to="/signup" >Signup</NavLink></li>
                <li><NavLink to="/login" >Login</NavLink></li>
            </div>
            }
            <li><NavLink to="/" >Home</NavLink></li>
          </ul>
        </div>
      </nav>
    )
}
