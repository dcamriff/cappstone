import React, { Component } from 'react'

class SignUpLogIn extends Component {
    state = {
        email: '',
        password: '',
        password_confirmation: ''
    }

    signUp = (event) => {
        event.preventDefault()
        this.props.signUp(
            this.state.email,
            this.state.password,
            this.state.password_confirmation
        )
    }

    logIn = (event) => {
        event.preventDefault()
        this.props.logIn(
            this.state.email,
            this.state.password
        )
    }

    handleChange = (event) => {
        const newState = {...this.state}
        newState[event.target.name] = event.target.value
        this.setState(newState)
    }

    render() {
        return (
            <div>
                <form>
                    <div>
                        <label htmlFor="email">e-mail: </label>
                        <input onChange={this.handleChange} type="text" name="email" value={this.state.email}/>
                    </div>
                    <div>
                        <label htmlFor="password">password: </label>
                        <input onChange={this.handleChange} type="password" name="password" value={this.state.password}/>
                    </div>
                    <div>
                        <label htmlFor="password_confirmation">confirm password: </label>
                        <input onChange={this.handleChange} type="password" name="password_confirmation" value={this.state.password_confirmation}/>
                    </div>

                    <button onClick={this.signUp}>Sign Up</button>
                    <button onClick={this.logIn}>Log In</button>
                </form>
            </div>
        )
    }
}

export default SignUpLogIn