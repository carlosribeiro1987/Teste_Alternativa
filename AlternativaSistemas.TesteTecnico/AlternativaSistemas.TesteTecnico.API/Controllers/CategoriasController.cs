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
    public class CategoriasController : ControllerBase {
        private readonly ICategoriaRepository _categoriaRepository;
        private readonly IProdutoRepository _produtoRepository;
        public CategoriasController(ICategoriaRepository categoriaRepository) {
            _categoriaRepository = categoriaRepository;
            
        }

        [HttpGet]
        public async Task<IEnumerable<Categoria>> GetCategorias() {
            return await _categoriaRepository.Get();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Categoria>> GetCategoria(int id) {
            return await _categoriaRepository.Get(id);
        }

        [HttpPost]
        public async Task<ActionResult<Categoria>> CreateCategoria([FromBody] Categoria categoria) {
            var novaCategoria = await _categoriaRepository.Create(categoria);
            return categoria;

        }
        [HttpDelete("{id}")]
        public async Task<ActionResult> Delete(int id) {
            
            var categoria = await _categoriaRepository.Get(id);
            var canDelete = _categoriaRepository.ProdutosNaCategoria(id) == null;
            if(categoria != null && canDelete){
                await _categoriaRepository.Delete(categoria.Id);
                return NoContent();
            }
            else {
                return NotFound();
            }
        }

        [HttpPut]
        public async Task<ActionResult> PutCategoria(int id, [FromBody] Categoria categoria) {
            if(id == categoria.Id) {
                await _categoriaRepository.Update(categoria);
                return NoContent();
            }
            else {
                return BadRequest();
            }
        }
    }
}
