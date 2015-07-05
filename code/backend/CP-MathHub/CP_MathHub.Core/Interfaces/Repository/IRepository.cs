using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Entity;
using System.Linq.Expressions;
using CP_MathHub.Core.Configuration;

namespace CP_MathHub.Core.Interfaces.Repository
{
    public interface IRepository<TEntity> where TEntity : class
    {
        /// <summary>
        /// Get an entity by id
        /// </summary>
        /// <param name="id">entity id</param>
        /// <returns></returns>
        TEntity GetById(int id, string properties = "");
        /// <summary>
        /// Get multiple entities with condition parameters
        /// </summary>
        /// <param name="filter">filter condition</param>
        /// <param name="orderBy">sort condition</param>
        /// <param name="includeProperties">eager propertise loading</param>
        /// <param name="skip">skip to specific index, default = 0</param>
        /// <param name="take">take specific number of entities, default = 10</param>
        /// <returns></returns>
        IEnumerable<TEntity> Get(
            Expression<Func<TEntity, bool>> filter = null,
            Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null,
            string includeProperties = "",
            int skip = 0,
            int take = Constant.Question.Integer.PagingDefaultTake);
        void Insert(TEntity entity);
        bool Update(TEntity entity);
        bool Delete(TEntity entity);
        bool Delete(int id);
        IRepository<TEntity> Include(string includeProperties);
        IQueryable<TEntity> Table { get; }
    }
}
