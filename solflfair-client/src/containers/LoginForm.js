import React, { Component } from 'react'
import  userLogin from '../actions/userLogin'
import { connect } from 'react-redux'
import { NavLink } from 'react-router-dom';


export class LoginForm extends Component {
    state = {
        email: "",
        password: ""
    }

    handleChange = event => {
        this.setState({
            [event.target.name]: event.target.value
        })
    }

    handleSubmit = event => {
        event.preventDefault()
        this.setState({
            email: "",
            password: ""
        })
        this.props.userLogin(this.state)
        this.props.history.push("/")
    }

    render() {
        return (
            <div className="center">
            <div className={'container center white black-text'}id="login-card">
                <h2>Login</h2>
               <form onSubmit={this.handleSubmit} id="bottom" >
                   <div className={'input-field'}>
                    {/* <label for="email">Email:</label> */}
                    <input onChange={this.handleChange} type="text" name="email" placeholder="Email"></input><br></br><br></br>
                   </div>
                   <div>
                    {/* <label for="password">Password:</label> */}
                    <input onChange={this.handleChange} type="password" name="password" placeholder={'Password'}></input><br></br><br></br>
                   </div>
                    <button className={"waves-effect waves-light black text-white btn"}type='submit' name='submit' id='submit'>Login</button>
                    <NavLink to="/signup">
                    <p>New? Create new Account</p>
                    </NavLink>
                 </form> 
            </div>
            </div>
        )
    }
}



export default connect(null, { userLogin })(LoginForm)

