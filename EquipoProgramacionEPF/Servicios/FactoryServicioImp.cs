﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EquipoProgramacionEPF.Servicios
{
    public class FactoryServicioImp:FactoryServicio
    {

        public override IServicio GetServicio()
        {
            return new Servicio();
        }
    }
}
