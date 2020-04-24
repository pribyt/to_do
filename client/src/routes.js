import * as React from 'react'
import { Router, Route } from 'react-router-dom'
import { createBrowserHistory } from 'history'
import App from './App'
 
const history = createBrowserHistory({})
 
const Routes = () => (
  <Router history={history}>
    <div>
      <Route exact={true} path="/" component={App} />
    </div>
  </Router>
)

export default Routes;