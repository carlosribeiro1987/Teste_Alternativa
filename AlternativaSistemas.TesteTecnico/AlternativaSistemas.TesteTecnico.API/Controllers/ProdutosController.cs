using AlternativaSistemas.TesteTecnico.API.Models;
using AlternativaSistemas.TesteTecnico.API.Repositories;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AlternativaSistemas.TesteTecnico.API.Controllers {
    [Route("api/[controller]")]
    [ApiController]
    public class ProdutosController : ControllerBase {
        private readonly IProdutoRepository _produtoRepository;
        public ProdutosController(IProdutoRepository produtoRepository) {
            _produtoRepository = produtoRepository;
        }

        [HttpGet]
        public async Task<IEnumerable<Produto>> GetProdutos() {
            return await _produtoRepository.Get();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Produto>> GetProduto(int id) {
            var produto = await _produtoRepository.Get(id);
            if(produto == null) {
                return NotFound("Produto inexistente.");
            }
            return produto;
        }

        [HttpPost]
        public async Task<ActionResult<Produto>> CreateProduto([FromBody] Produto produto) {
            produto.Category = null;
            produto.Id = 0;
            

           var prod = await _produtoRepository.Create(produto);
           return prod;

        }
        [HttpDelete("{id}")]
        public async Task<ActionResult> Delete(int id) {

            var produto = await _produtoRepository.Get(id);
            
            if(produto != null) {
                await _produtoRepository.Delete(produto.Id);
                return NoContent();
            }
            else {
                return NotFound("Produto inexistente.");
            }
        }

        [HttpPut]
        public async Task<ActionResult> PutProduto(int id, [FromBody] Produto produto) {
            var produtoExiste = await _produtoRepository.ProdutoExiste(id);
            if(!produtoExiste) {
                return NotFound("Produto inexistente.");
            }
            if(id == produto.Id) {
                await _produtoRepository.Update(id, produto);
                return NoContent();
            }
            else {
                return BadRequest();
            }
        }

    }
}
