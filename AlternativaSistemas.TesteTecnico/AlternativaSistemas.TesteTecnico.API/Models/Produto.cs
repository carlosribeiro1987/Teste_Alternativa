using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace AlternativaSistemas.TesteTecnico.API.Models {
    public class Produto {

        [Key]
        [Column("id")]
        public int Id { get; set; }

        [Column("name")]
        [Required(ErrorMessage = "Este campo é obrigatório.")]
        [MaxLength(50, ErrorMessage = "Este campo deve conter no máximo 50 caracteres.")]
        public string Name { get; set; }


        [Column("description")]
        [Required(ErrorMessage = "Este campo é obrigatório.")]
        [MaxLength(1024, ErrorMessage = "Este campo deve conter no máximo 1024 caracteres.")]
        public string Description { get; set; }


        [Column("value", TypeName = "decimal(10,2)")]
        [Required(ErrorMessage = "Este campo é obrigatório.")]
        [Range(0, int.MaxValue, ErrorMessage = "O valor não pode ser negativo.")]
        public decimal Value { get; set; }


        [Column("brand")]
        [Required(ErrorMessage = "Este campo é obrigatório.")]
        [MaxLength(50, ErrorMessage = "Este campo deve conter no máximo 50 caracteres.")]
        public string Brand { get; set; }


        [Column("category_id")]
        [Required(ErrorMessage = "Este campo é obrigatório.")]
        [Range(1, int.MaxValue, ErrorMessage = "Categoria inválida.")]
        public int CategoryId { get; set; }    
        
        public Categoria Category { get; set; }
    }
}
