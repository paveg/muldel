import React from 'react'
import ReactDOM from 'react-dom'
import {Props} from "../types/entry"

const Element = (props: Props) => (
    <div>Muldel {props.name}!</div>
);

document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <Element name="React"/>,
        document.getElementById("app"),
    )
});