using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Core.Interfaces.DAL;
using CP_MathHub.Entity;
using System.Data;
using System.Data.Entity;
using CP_MathHub.Framework.Infrastructure.Repository;
using CP_MathHub.Core.Interfaces.Repository;

namespace CP_MathHub.DAL
{
    public class MathHubUoW : IUnitOfWork
    {
        private readonly CPMathHubModelContainer context;
        private readonly Type repositoryClass;
        private bool disposed;
        private Dictionary<string, object> repositories;

        public MathHubUoW()
       {
           this.context = new CPMathHubModelContainer();
           this.repositoryClass = typeof(Repository<>);
       }
        public MathHubUoW(CPMathHubModelContainer context)
       {
           this.context = context;
       }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        public void Save()
        {
            context.SaveChanges();
        }

        public virtual void Dispose(bool disposed)
        {
            if (!this.disposed)
            {
                if (disposed)
                {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }

        public IRepository<TEnity> Repository<TEnity>() where TEnity : class
        {
            if (repositories == null)
            {
                repositories = new Dictionary<string, object>();
            }

            var type = typeof(TEnity).Name;

            if (!repositories.ContainsKey(type))
            {
                //var repositoryType = typeof(Repository<>);
                var repositoryInstance = Activator.CreateInstance(repositoryClass.MakeGenericType(typeof(TEnity)), context);
                repositories.Add(type, repositoryInstance);
            }
            return (Repository<TEnity>)repositories[type];
        }
    }
}
