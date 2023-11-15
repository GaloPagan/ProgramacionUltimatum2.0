using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Dominio
{
    public class Jugador
    {
        public int id;
        public string nom;
        public string ape;

        public int Numero { get; set; }

        public Pais pais { get; set; }
        public Posicion posicion { get; set; }
        public Club club { get; set; }
        //public string Nombre { get; set; }
        //public string Apellido { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public double Altura { get; set; }
        public double Peso { get; set; }
        public int IdJugador { get; set; }

        public Jugador()
        {
            IdJugador = 0;
            Peso = 0;
            Altura = 0;
            FechaNacimiento= DateTime.Now;
            club = new Club();
            pais = new Pais();
            posicion = new Posicion();
            Numero = 0;
            nom = string.Empty;
            ape = string.Empty;

        }

        public Jugador( int num, Pais pa, Posicion po, Club cl, string nom, string ap, DateTime dat, double alt, double pe)
        {
            
            Numero = num;
            pais = pa;
            posicion = po;
            club = cl;
            this.nom = nom;
            this.ape= ape;
            FechaNacimiento = dat;
            Altura = alt;
            Peso = pe;
        }
        public Jugador(int ID, int num, Pais pa, Posicion po, Club cl, string nom, string ap, DateTime dat, double alt, double pe)
        {
            IdJugador = ID;
            Numero = num;
            pais = pa;
            posicion = po;
            club = cl;
            this.nom = nom;
            ape = ap;
            FechaNacimiento = dat;
            Altura = alt;
            Peso = pe;
        }

        public Jugador(int id, string nom, string ape, int num)
        {
            IdJugador = id;
            this.nom= nom;
            this.nom = ape;
            Numero = num;

        }

        public Jugador(int id, string nom, string ape)
        {
            this.id = id;
            this.nom = nom;
            this.ape= ape;
        }

        public override string ToString()
        {
            return nom+" "+ape;
        }
    }
}
