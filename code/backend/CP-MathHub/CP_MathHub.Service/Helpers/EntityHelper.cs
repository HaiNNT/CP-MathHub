using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CP_MathHub.Service.Helpers
{
    public static class EntityHelper
    {
        public static string GetMainPostTypeNameOfNormalPost(Post post)
        {
            //Question question = new Question();
            //question = _dal.Repository<Question>().Table.First(q => q.Answers.Count(a => a.Id == id) >0);
            if (post is Answer)
            {
                return "Question";
            }
            else if (post is Comment)
            {
                Comment comment = (Comment)post;
                if (comment.Post is Answer)
                {
                    return "Question";
                }
                else if (comment.Post is Comment)
                {
                    Comment c = (Comment)comment.Post;
                    if (c.Post is Discussion)
                    {
                        return "Discussion";
                    }
                    else
                    {
                        return "Blog";
                    }
                }
                else
                {
                    if (comment.Post is Discussion)
                    {
                        return "Discussion";
                    }
                    else if (comment.Post is Question)
                    {
                        return "Question";
                    }
                    else
                    {
                        return "Blog";
                    }
                }
            }
            return "";
        }
    }
}
