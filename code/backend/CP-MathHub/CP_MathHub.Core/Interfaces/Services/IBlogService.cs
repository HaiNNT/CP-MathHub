using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CP_MathHub.Entity;
using CP_MathHub.Core.Configuration;

namespace CP_MathHub.Core.Interfaces.Services
{
    public interface IBlogService
    {
        /// <summary>
        /// Get Articles by tab
        /// </summary>
        /// <param name="tab"></param>
        /// <param name="skip"></param>
        /// <returns></returns>
        List<Article> GetArticles(string tab, int skip);


    }
}
