import { defineCustomElement } from 'vue'
import NewElement from '@/components/NewElement.ce.vue'

const MyCustomElement = defineCustomElement(NewElement)
window.customElements.define('new-element', MyCustomElement);