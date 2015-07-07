using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;
using System.Data;
using System.Data.Entity;
using CP_MathHub.Core.Interfaces.Repository;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Entity;


namespace CP_MathHub.Framework.Infrastructure.Repository
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {
        internal CPMathHubModelContainer context;
        internal DbSet<TEntity> dbSet;

        public Repository(CPMathHubModelContainer context)
        {
            this.context = context;
            this.dbSet = context.Set<TEntity>();
        }


        public TEntity GetById(int id, string properties = "")
        {
            foreach (var includeProperty in properties.Split
                (new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries))
            {
                dbSet.Include(includeProperty);
            }
            return dbSet.Find(id);
        }

        public IEnumerable<TEntity> Get(
            Expression<Func<TEntity, bool>> filter = null,
            Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null,
            string includeProperties = "",
            int skip = 0,
            int take = Constant.Question.Integer.PagingDefaultTake)
        {
            IQueryable<TEntity> query = dbSet;
            query = query.AsNoTracking();
            if (filter != null)
            {
                query = query.Where(filter);
            }

            foreach (var includeProperty in includeProperties.Split
                (new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries))
            {
                query = query.Include(includeProperty);
                query = query.Distinct();
            }

            if (orderBy != null)
            {
                query = orderBy(query);
            }

            if (take == 0)
            {
                return query;
            }
            else
            {
                if (query.Count() - 1 >= skip)
                {
                    query = query.Skip(skip).Take(take);
                    return query;
                }
            }
            return new List<TEntity>();
        }

        public void Insert(TEntity entity)
        {
            context.Entry(entity).State = EntityState.Added;
            dbSet.Add(entity);
        }

        public bool Delete(int id)
        {
            TEntity entityToDelete = dbSet.Find(id);
            return Delete(entityToDelete);
        }

        public bool Delete(TEntity entityToDelete)
        {
            if (context.Entry(entityToDelete).State == EntityState.Detached)
            {
                dbSet.Attach(entityToDelete);
            }
            dbSet.Remove(entityToDelete);
            return true;
        }

        public bool Update(TEntity entityToUpdate)
        {
            dbSet.Attach(entityToUpdate);
            context.Entry(entityToUpdate).State = EntityState.Modified;
            return true;
        }

        public IRepository<TEntity> Include(string includeProperties)
        {
            foreach (var includeProperty in includeProperties.Split
                (new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries))
            {
                dbSet.Include(includeProperty);
            }
            return this;
        }

        public IQueryable<TEntity> Table
        {
            get
            {
                return this.dbSet;
            }
        }

    }
}
