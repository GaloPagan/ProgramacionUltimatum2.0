using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Servicios
{
    public abstract class FactoryServicio
    {
        public abstract IServicio GetServicio();
    }
}
