using System.Web;
using System.Web.Optimization;

namespace CP_MathHub
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Content/js/jquery-{version}.js"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Content/js/bootstrap.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/script").Include(
                      "~/Content/js/infinity-loading.js",
                      "~/Content/ckeditor/ckeditor.js",
                      "~/Content/js/auto-complete.js"));

            bundles.Add(new ScriptBundle("~/bundles/questionjs").Include(
                      "~/Content/js/script-question.js"));

            bundles.Add(new ScriptBundle("~/bundles/blogjs").Include(
                      "~/Content/js/responsiveCarousel-slideshow.js",
                      "~/Content/js/script-blog.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/css/bootstrap.min.css",
                      "~/Content/css/font-awesome.min.css",
                      "~/Content/css/style.css"));

            bundles.Add(new StyleBundle("~/Content/question/css").Include(
                      "~/Content/css/style-question.css"));

            bundles.Add(new StyleBundle("~/Content/blog/css").Include(
                      "~/Content/css/style-blog.css",
                      "~/Content/css/styles-slideshow.css"));
        }
    }
}
