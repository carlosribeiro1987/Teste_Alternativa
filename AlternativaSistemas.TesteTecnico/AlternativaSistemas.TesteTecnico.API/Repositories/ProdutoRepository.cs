using AlternativaSistemas.TesteTecnico.API.Models;
using AlternativaSistemas.TesteTecnico.API.Services;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AlternativaSistemas.TesteTecnico.API.Repositories {
    public class ProdutoRepository : IProdutoRepository {
        public readonly DataContext _context;

        public ProdutoRepository(DataContext context) {
            _context = context;
        }
        public async Task<Produto> Create(Produto produto) {
            
            var cat = await _context.Categorias.FindAsync(produto.CategoryId);
            produto.Category = cat;
            _context.Produtos.Add(produto);
            await _context.SaveChangesAsync();
            return produto;
        }

        public async Task Delete(int id) {
            var produto = _context.Produtos.FindAsync(id).Result;            
            _context.Remove(produto);
            await _context.SaveChangesAsync();
           
        }

        public async Task<IEnumerable<Produto>> Get() {
            return await _context.Produtos.ToListAsync();
        }

        public async Task<Produto> Get(int id) {
            var produto = _context.Produtos.FindAsync(id).Result;            
            return produto;
        }

        public async Task Update(int id, Produto produto) {            
            _context.Entry(produto).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            var prod = _context.Produtos.FindAsync(id).Result;            
        }

        public async Task<bool> ProdutoExiste(int id) {
            return await _context.Produtos.AnyAsync(p => p.Id == id);
        }











    }
}
