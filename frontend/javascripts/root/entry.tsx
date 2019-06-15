import * as React from "react";
import ReactDOM from "react-dom";
import { Props } from "../types/entry";

const Element = (props: Props) => <h1>Muldel {props.name}!</h1>;

document.addEventListener("DOMContentLoaded", () => {
  return ReactDOM.render(
    <Element name="React" />,
    document.getElementById("app")
  );
});
