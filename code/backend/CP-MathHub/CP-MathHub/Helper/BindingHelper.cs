using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Globalization;
using CP_MathHub.Models.Account;

namespace CP_MathHub.Helper
{
    public class BindingHelper : DefaultModelBinder
    {
        // protected override object GetPropertyValue(ControllerContext controllerContext,
        //ModelBindingContext bindingContext,
        //System.ComponentModel.PropertyDescriptor propertyDescriptor,
        //IModelBinder propertyBinder)
        // {
        //     //check if it the 'FullStartDateTime' property
        //     if (propertyDescriptor.Name == "Profile.Birthday")
        //     {
        //         //try to get the date part
        //         var dateValue = bindingContext.ValueProvider.GetValue("Profile.Birthday");
        //         DateTime date;
        //         if (!string.IsNullOrEmpty(dateValue.AttemptedValue) &&
        //             DateTime.TryParseExact(dateValue.AttemptedValue, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out date))
        //         {
        //             return date;
        //         }

        //         //could not bind
        //         return null;
        //     }

        //     //let the default model binder do it's thing
        //     return base.GetPropertyValue(controllerContext, bindingContext, propertyDescriptor, propertyBinder);
        // }
        protected override void BindProperty(ControllerContext controllerContext, ModelBindingContext bindingContext, System.ComponentModel.PropertyDescriptor propertyDescriptor)
        {
            if (propertyDescriptor.Name == "Profile")
            {
                //try to get the date part
                var dateValue = bindingContext.ValueProvider.GetValue("Profile.Birthday");
                if (dateValue != null)
                {
                    DateTime date;
                    if (!string.IsNullOrEmpty(dateValue.AttemptedValue) &&
                        DateTime.TryParseExact(dateValue.AttemptedValue, "dd-MM-yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out date))
                    {
                        var model = (ProfileViewModel)bindingContext.Model;
                        model.Profile = new Entity.Profile();
                        model.Profile.Birthday = date;
                    }
                }
                else
                {
                    base.BindProperty(controllerContext, bindingContext, propertyDescriptor);
                }

            }
            else
            {
                //let the default model binder do it's thing
                base.BindProperty(controllerContext, bindingContext, propertyDescriptor);
            }

        }
    }
}