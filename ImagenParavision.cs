using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp
{
    public sealed class ImagenParavision
    {
        /// <summary>
        /// Instancia volatil de Class1
        /// </summary>
        private static volatile ImagenParavision instance;
        /// <summary>
        /// Objeto para verificar que no exista una instancia del objeto
        /// </summary>
        private static object syncRoot = new object();
        /// <summary>
        /// Constructor para Singleton
        /// </summary>
        public ImagenParavision()
        {
            this.image1 = new byte[0];
            this.image2 = new byte[0];
        }
        public byte[] image1
        {
            get;
            set;
        }
        public byte[] image2
        {
            get;
            set;
        }

    }
}