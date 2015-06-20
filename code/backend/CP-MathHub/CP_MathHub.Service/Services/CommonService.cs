using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Core.Interfaces.Services;
using CP_MathHub.Core.Configuration;
using CP_MathHub.Entity;
using CP_MathHub.Core.Interfaces.DAL;
using CP_MathHub.DAL;
using CP_MathHub.Service.Helpers;

namespace CP_MathHub.Service.Services
{
    public class CommonService : ICommonService
    {
        private IUnitOfWork dal;
        public CommonService(CPMathHubModelContainer context)
        {
            dal = new MathHubUoW(context);   
        }
        public List<Tag> GetTags(List<int> tagIds)
        {
            List<Tag> tags = new List<Tag>();
            foreach(int id in tagIds){
                Tag tag = dal.Repository<Tag>().GetById(id);
                tags.Add(tag);               
            }
            return tags;
        }
    }
}
