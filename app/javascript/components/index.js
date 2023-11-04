import { render } from "react-dom"
import h from "components/htm_create_element"

render(
    h`<h1>Hello world from html</h1>`,
    document.getElementById("root")
)