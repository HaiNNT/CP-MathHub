using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;
using CP_MathHub.Core.Configuration;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface ICommonService
    {
        /// <summary>
        /// Get list of tag by list tag id
        /// </summary>
        /// <param name="listTagId"></param>
        /// <returns></returns>
        List<Tag> GetTags(List<int> tagIds);
    }
}
