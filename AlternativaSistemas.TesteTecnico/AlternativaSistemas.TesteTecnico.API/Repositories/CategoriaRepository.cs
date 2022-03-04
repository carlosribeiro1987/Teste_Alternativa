using AlternativaSistemas.TesteTecnico.API.Models;
using AlternativaSistemas.TesteTecnico.API.Services;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AlternativaSistemas.TesteTecnico.API.Repositories {
    public class CategoriaRepository : ICategoriaRepository {
        public readonly DataContext _context;
        public CategoriaRepository(DataContext context) {
            _context = context;
        }
        public async Task<IEnumerable<Categoria>> Get() {
            return await _context.Categorias.ToListAsync();
        }
        public async Task<Categoria> Get(int id) {
            return await _context.Categorias.FindAsync(id);
        }
        public async Task<Categoria> Create(Categoria categoria) {
            _context.Categorias.Add(categoria);
                await _context.SaveChangesAsync();
            return categoria;
        }

        public async Task Delete(int id) {
            var categoria = _context.Categorias.FindAsync(id);
            
                _context.Remove(categoria);
                await _context.SaveChangesAsync();
            
        }

        

        public async Task Update(Categoria categoria) {
            _context.Entry(categoria).State = EntityState.Modified;
            await _context.SaveChangesAsync();
        }

        public async Task<bool> ProdutosNaCategoria(int categoryId) {
            return await _context.Produtos.FirstOrDefaultAsync(p => p.CategoryId == categoryId) == null;
        }

    }
}
