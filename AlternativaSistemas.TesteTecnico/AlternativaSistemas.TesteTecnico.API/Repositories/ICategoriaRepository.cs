using AlternativaSistemas.TesteTecnico.API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AlternativaSistemas.TesteTecnico.API.Repositories {
    public interface ICategoriaRepository {
        Task<IEnumerable<Categoria>> Get();
        Task<Categoria> Get(int id);
        Task<Categoria> Create(Categoria categoria);
        Task Update(Categoria categoria);
        Task Delete(int id);

        Task<bool> CategoriaSemProdutos(int categoryId);
        Task<bool> CategoriaExiste(int id);
    }
}
