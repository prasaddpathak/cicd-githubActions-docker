/**
 * @jest-environment jsdom
 */
import { setupCounter } from '../counter'

describe('Check default values', ()=>{
    it('Check default counter value', ()=>{

        var el = document.createElement('div')
        setupCounter(el) 
        expect(el.textContent).toBe('count is 0')
    })
})