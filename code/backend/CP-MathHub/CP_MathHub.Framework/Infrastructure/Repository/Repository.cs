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


        public TEntity GetById(int id)
        {
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

            if (filter != null)
            {
                query = query.Where(filter);
            }

            foreach (var includeProperty in includeProperties.Split
                (new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries))
            {
                query = query.Include(includeProperty);
            }

            if (orderBy != null)
            {
                return orderBy(query).Skip(skip).Take(take).ToList();
            }
            else
            {
                return query.Skip(skip).Take(take).ToList();
            }
        }

        public void Insert(TEntity entity)
        {
            dbSet.Add(entity);           
        }

        public void Delete(int id)
        {
            TEntity entityToDelete = dbSet.Find(id);
            Delete(entityToDelete);
        }

        public void Delete(TEntity entityToDelete)
        {
            if (context.Entry(entityToDelete).State == EntityState.Detached)
            {
                dbSet.Attach(entityToDelete);
            }
            dbSet.Remove(entityToDelete);
        }

        public void Update(TEntity entityToUpdate)
        {
            dbSet.Attach(entityToUpdate);
            context.Entry(entityToUpdate).State = EntityState.Modified;
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
