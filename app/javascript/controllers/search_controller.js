import { Controller } from "stimulus";

export default class extends Controller {
  clearSearch(event) {
    event.preventDefault();
    this.element.querySelector("input[name='query']").value = "";
    this.element.querySelector("#resultados-pesquisa").innerHTML = "";
  }
}
