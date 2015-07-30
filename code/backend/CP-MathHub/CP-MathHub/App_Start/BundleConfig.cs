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
                      "~/Content/jquery-ui/jquery-ui.js",
                      "~/Content/js/auto-complete.js"));

            bundles.Add(new ScriptBundle("~/bundles/questionjs").Include(
                      "~/Content/js/script-question.js"));

            bundles.Add(new ScriptBundle("~/bundles/discussionjs").Include(
                      "~/Content/js/script-discussion.js"));

            bundles.Add(new ScriptBundle("~/bundles/profilejs").Include(
                      "~/Content/js/jquery.cropit.js",
                      "~/Content/js/script-profile.js"));

            bundles.Add(new ScriptBundle("~/bundles/blogjs").Include(
                      "~/Content/js/responsiveCarousel-slideshow.js",
                      "~/Content/js/script-blog.js"));

            bundles.Add(new ScriptBundle("~/bundles/adminjs").Include(
                      "~/Content/js/jquery.scrollTo.min.js",
                      "~/Content/js/jquery.nicescroll.js",
                      "~/Content/js/respond.min.js",
                      "~/Content/js/common-scripts.js",
                      "~/Content/js/script-admin.js"));

            bundles.Add(new ScriptBundle("~/bundles/adminDashboardjs").Include(
                      "~/Content/js/count.js"));

            bundles.Add(new ScriptBundle("~/bundles/adminManageUsersjs").Include(
                      "~/Content/js/count.js",
                      "~/Content/js/bootstrap-select.js",
                      "~/Content/assets/data-tables/jquery.dataTables.js",
                      "~/Content/assets/data-tables/DT_bootstrap.js"));

            bundles.Add(new ScriptBundle("~/bundles/adminManageRulesjs").Include(
                      "~/Content/assets/data-tables/jquery.dataTables.js",
                      "~/Content/assets/data-tables/DT_bootstrap.js",
                      "~/Content/js/editable-table-rule.js",
                      
                      "~/Content/js/spinner.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/adminManageInfracPostsjs").Include(
                      "~/Content/assets/data-tables/jquery.dataTables.js",
                      "~/Content/assets/data-tables/DT_bootstrap.js",
                      "~/Content/js/bootstrap-switch.js",
                      "~/Content/js/count.js",
                      "~/Content/js/js/bootstrap-select.js"));

            bundles.Add(new ScriptBundle("~/bundles/realtimejs").Include(
                      "~/Scripts/jquery.signalR-2.1.2.min.js",
                      "~/signalr/hubs"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/css/bootstrap.min.css",
                      "~/Content/jquery-ui/jquery-ui.css",
                      "~/Content/css/font-awesome.min.css",
                      "~/Content/css/style.css"));

            bundles.Add(new StyleBundle("~/Content/question/css").Include(
                      "~/Content/css/style-question.css"));

            bundles.Add(new StyleBundle("~/Content/blog/css").Include(
                      "~/Content/css/style-blog.css",
                      "~/Content/css/styles-slideshow.css"));

            bundles.Add(new StyleBundle("~/Content/discussion/css").Include(
                      "~/Content/css/style-discussion.css"));

            bundles.Add(new StyleBundle("~/Content/profile/css").Include(
                      "~/Content/css/style-profile.css"));

            bundles.Add(new StyleBundle("~/Content/authentication/css").Include(
                      "~/Content/css/style-authentication.css"));

            bundles.Add(new StyleBundle("~/Content/admincss").Include(
                      "~/Content/css/bootstrap.min.css",
                      "~/Content/css/bootstrap-reset.css",
                      "~/Content/assets/font-awesome/css/font-awesome.css",
                      "~/Content/css/font-awesome.min.css",
                      "~/Content/css/style-admin.css",
                      "~/Content/css/style-responsive-admin.css"));

            bundles.Add(new StyleBundle("~/Content/selectPickercss").Include(
                      "~/Content/css/bootstrap-select.css"));

            bundles.Add(new StyleBundle("~/Content/adminManageUser").Include(
                      "~/Content/assets/data-tables/DT_bootstrap.css"));
        }
    }
}
