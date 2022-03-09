using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AlternativaSistemas.TesteTecnico.API.Models {
    public class Categoria {

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
    }
}
