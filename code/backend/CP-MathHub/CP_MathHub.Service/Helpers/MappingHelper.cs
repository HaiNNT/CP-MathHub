using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace CP_MathHub.Service.Helpers
{
    public static class MappingHelper<TSource, TDest>
        where TSource :class  
        where TDest : class
    {
        //private static TSource _source;
        public static ICollection<TDest> MapCollection(List<TSource> viewModel)
        {
            CreateMappers(typeof(TSource), typeof(TDest));
            return Mapper.Map<TSource[], ICollection<TDest>>(viewModel.ToArray());
        }
        public static TDest Map(TSource viewModel)
        {
            //_source = (List<>)viewModel;
            CreateMappers(typeof(TSource), typeof(TDest));
            return Mapper.Map<TSource, TDest>(viewModel);
        }

        //public static void CreateMappers(Type sourceType, Type destinationType)
        //{
        //    Mapper.CreateMap<TSource, TDest>();
        //}

        /// <summary>
        /// Recursively create mappings between types
        /// </summary>
        /// <param name="sourceType"></param>
        /// <param name="destinationType"></param>
        public static void CreateMappers(Type sourceType, Type destinationType)
        {
            if (!sourceType.Equals(typeof(List<>)))
            {
                PropertyInfo[] sourceProperties = sourceType.GetProperties(BindingFlags.Public | BindingFlags.Instance);
                PropertyInfo[] destinationProperties = destinationType.GetProperties(BindingFlags.Public | BindingFlags.Instance);
                foreach (var destinationProperty in destinationProperties)
                {
                    Type destinationPropertyType = destinationProperty.PropertyType;
                    if (Filter(destinationPropertyType))
                        continue;

                    PropertyInfo sourceProperty = sourceProperties.FirstOrDefault(prop => NameMatches(prop.Name, destinationProperty.Name));
                    if (sourceProperty == null)
                        continue;

                    Type sourcePropertyType = sourceProperty.PropertyType;
                    if (destinationPropertyType.IsGenericType)
                    {
                        Type destinationGenericType = destinationPropertyType.GetGenericArguments()[0];
                        if (Filter(destinationGenericType))
                            continue;

                        Type sourceGenericType = sourcePropertyType.GetGenericArguments()[0];
                        CreateMappers(sourceGenericType, destinationGenericType);
                    }
                    else
                    {
                        CreateMappers(sourcePropertyType, destinationPropertyType);
                    }
                }

                Mapper.CreateMap(sourceType, destinationType);
            }
            else
            {
                CreateMappers(sourceType.GetGenericArguments().Single(), destinationType.GetGenericArguments().Single());            
            }
        }



        /// <summary>
        /// 过滤 (Filter)
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        static bool Filter(Type type)
        {
            return type.IsPrimitive || NoPrimitiveTypes.Contains(type.Name);
        }

        static readonly HashSet<string> NoPrimitiveTypes = new HashSet<string>() { "String", "DateTime", "Decimal" };

        private static bool NameMatches(string memberName, string nameToMatch)
        {
            return String.Compare(memberName, nameToMatch, StringComparison.OrdinalIgnoreCase) == 0;
        }
    }
}
