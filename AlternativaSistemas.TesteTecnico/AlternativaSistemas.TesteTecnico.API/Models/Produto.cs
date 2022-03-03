using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AlternativaSistemas.TesteTecnico.API.Models {
    public class Produto {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public float Value { get; set; }
        public string Brand { get; set; }
        public int CategoryId { get; set; }
        public Categoria Category { get; set; }
    }
}
