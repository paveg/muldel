import * as React from "react";
import ReactDOM from "react-dom";
import MainContainer from "@js/components/MainContainer";

const element = (
  <div className="App">
    <MainContainer />
  </div>
);

ReactDOM.render(element, document.getElementById("app"));
