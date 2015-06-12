using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CP_MathHub.Core.Configuration
{
    /// <summary>
    /// Store all common constant
    /// </summary>
    public static class Constant
    {
        /// <summary>
        /// Constant group for Question
        /// </summary>
        public static class Question
        {
            public static class Integer
            {
                public const int PagingDefaultTake = 10;

            }

            public static class String
            {
                //Home Tab Constant
                public const string HomeDefaultTab = "Newest";
                public const string HomeNewestTab = "Newest";
                public const string HomeUnAnsweredTab = "Unanswered";
                public const string HomeHotTab = "Hot";
            }

        }
        /// <summary>
        /// Constant group for Blog
        /// </summary>
        public static class Blog
        {
            public static class Integer
            {

            }

            public static class String
            {

            }
        }

        
    }


}
