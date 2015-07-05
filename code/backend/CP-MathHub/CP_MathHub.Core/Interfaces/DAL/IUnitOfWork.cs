using CP_MathHub.Core.Interfaces.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CP_MathHub.Core.Interfaces.DAL
{
    public interface IUnitOfWork : IDisposable
    {
        void Save();
        IRepository<TEntity> Repository<TEntity>() where TEntity : class;
        void Dispose(bool disposed);
        void TurnOffLazzyLoading();
    }
}
