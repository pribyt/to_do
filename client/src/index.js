import React from 'react';
import ReactDOM from 'react-dom';
import registerServiceWorker from './registerServiceWorker';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware } from 'redux';
import reducers from './reducers'
import Routes from './routes'
import thunk from 'redux-thunk'
import { composeWithDevTools } from 'redux-devtools-extension'

const store = createStore(reducers, composeWithDevTools(applyMiddleware(thunk)));

ReactDOM.render(<Provider store={store}><Routes /></Provider>, document.getElementById('root'));
registerServiceWorker();

export default store;
