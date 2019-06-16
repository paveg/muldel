import * as React from "react";
import ReactDOM from 'react-dom'
import MainContainer from "../components/MainContainer"

const element = (<div className="App"><MainContainer /></div>);

ReactDOM.render(
  element,
  document.getElementById('app')
);