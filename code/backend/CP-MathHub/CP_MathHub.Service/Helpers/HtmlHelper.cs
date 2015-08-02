using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Html;
using CP_MathHub.Entity;

namespace CP_MathHub.Service.Helpers
{
    public static class MhHtmlHelper
    {
        public static string PostCreatedTime(this HtmlHelper html, DateTime time, string type)
        {
            if (time == default(DateTime))
                return "";
            TimeSpan period = (DateTime.Now - time);

            if ((int)period.TotalSeconds < 60)
            {
                return "vừa " + type;
            }
            if ((int)period.TotalSeconds >= 60 && (int)period.TotalHours < 1)
            {
                return type + " " + (int)period.TotalMinutes + " phút trước";
            }
            if ((int)period.TotalMinutes >= 60 && (int)period.TotalHours < 24)
            {
                return type + " " + (int)period.TotalHours + " tiếng trước";
            }
            if ((int)period.TotalHours >= 24 && (int)period.TotalHours < 48)
            {
                return type + " " + "hôm qua" + " lúc " + time.ToShortTimeString();
            }
            return type + " vào ngày " + time.Date.ToShortDateString() + " lúc " + time.ToShortTimeString();
        }
        public static string CreatedTime(this HtmlHelper html, DateTime time)
        {
            if (time.Date == DateTime.Now.Date)
            {
                return "Hôm nay";
            }
            if (time.Date.AddDays(1) == DateTime.Now.Date)
            {
                return "Hôm qua";
            }
            return time.ToShortDateString();
        }
        public static string GetNotificationString(this HtmlHelper html, NotificationSettingEnum type)
        {
            string result = "";
            switch (type)
            {
                case NotificationSettingEnum.UserAnswerQuestion:
                    result = "đã trả lời câu hỏi của bạn:";
                    break;
                case NotificationSettingEnum.UserCommentMainPost:
                    result = "đã bình luận trong:";
                    break;
                case NotificationSettingEnum.Invited:
                    result = "đã mời bạn vào:";
                    break;
                case NotificationSettingEnum.UserComment:
                    result = "đã bình luận trả lời của bạn trong:";
                    break;
                case NotificationSettingEnum.AcceptedAnswer:
                    result = "đã chấp nhận trả lời của bạn trong:";
                    break;
                case NotificationSettingEnum.UserLikeComment:
                    result = "đã thích bình luận của bạn:";
                    break;
                case NotificationSettingEnum.ReceivedPrivilege:
                    result = "bạn đã nhận được danh hiệu:";
                    break;
                case NotificationSettingEnum.Banned:
                    result = "bạn đã bị khóa tài khoản:";
                    break;
                case NotificationSettingEnum.BlockedMainPost:
                    result = "bạn đã bị khóa bài:";
                    break;
                case NotificationSettingEnum.BlockedPost:
                    result = "bạn đã bị khóa bình luận:";
                    break;
                case NotificationSettingEnum.VotedQuestion:
                    result = "đã bình chọn câu hỏi của bạn:";
                    break;
                case NotificationSettingEnum.VotedAnswer:
                    result = "đã bình chọn câu trả lời của bạn tại:";
                    break;
                case NotificationSettingEnum.SettedRole:
                    result = "bạn được phân quyền mới:";
                    break;
                default:
                    result = "bạn có thông báo mới từ hệ thống:";
                    break;
            }
            return result;
        }
        public static string CheckStatusUser(this HtmlHelper html, UserStatusEnum? enU)
        {
            string s = "";
            switch (enU)
            {
                case UserStatusEnum.Active:
                    s = "Bình thường";
                    break;
                case UserStatusEnum.Banned:
                    s = "Bị khóa";
                    break;
                case UserStatusEnum.Pending:
                    s = "Đợi xác nhận mail";
                    break;
                default:
                    break;
            }
            return s;
        }
        public static string GetRoleUser(this HtmlHelper html, List<Accessment> assessments)
        {
            string s = "";
            foreach (Accessment assessment in assessments)
            {
                if (assessment.RoleId == 1)
                {
                    s += " Người dùng,";
                }
                else if (assessment.RoleId == 2)
                {
                    s += " Chuyên gia,";
                }
                else if (assessment.RoleId == 3)
                {
                    s += " Quản lý,";
                }
            }

            return s.Trim().TrimEnd(',');
        }
        public static string VoteNumer(this HtmlHelper html, int? vote)
        {
            if (vote == null)
            {
                return "0";
            }
            if (Math.Abs(vote.Value) > 1000)
            {
                return vote.Value / 1000 + "K";
            }
            return vote.Value + "";
        }
        public static MvcHtmlString RadioListForReporttypeEnum(this HtmlHelper htmlHelper, string name, string type)
        {
            string html = "";
            switch (type)
            {
                case "question":
                    html += RadioForEnum(ReportTypeEnum.DuplicateQuestion, "Câu hỏi trùng", name);
                    html += RadioForEnum(ReportTypeEnum.SpamQuestion, "Câu hỏi spam", name);
                    html += RadioForEnum(ReportTypeEnum.WrongMainPostPosition, "Sai vị trí", name);
                    break;
                case "answer":
                    html += RadioForEnum(ReportTypeEnum.SpamAnswer, "Trả lời spam", name);
                    break;
                case "mainpost":
                    html += RadioForEnum(ReportTypeEnum.WrongMainPostPosition, "Sai vị trí", name);
                    break;
                case "comment":
                    html += RadioForEnum(ReportTypeEnum.SpamComment, "Bình luận spam", name);
                    break;
                default:
                    break;
            }
            html += RadioForEnum(ReportTypeEnum.Swearing, "Sử dụng từ ngữ không phù hợp", name);
            html += RadioForEnum(ReportTypeEnum.Other, "Lý do khác", name);

            return MvcHtmlString.Create(html);
        }
        public static MvcHtmlString RadioListForGenderEnum(this HtmlHelper htmlHelper, string name, GenderEnum? gender = default(GenderEnum))
        {
            string html = "";
            html += InlineRadioForEnum(GenderEnum.Male, "Nam", name, gender == GenderEnum.Male, "mh-radio");
            html += InlineRadioForEnum(GenderEnum.Female, "Nữ", name, gender == GenderEnum.Female, "mh-radio");
            html += InlineRadioForEnum(GenderEnum.Other, "Khác", name, gender == GenderEnum.Other, "mh-radio");
            return MvcHtmlString.Create(html);
        }
        public static MvcHtmlString RadioListForReceiveEmailBoolean(this HtmlHelper htmlHelper, string name, Boolean? receiveEmail = default(Boolean))
        {
            string html = "";
            html += InlineRadioForBoolean(true, "Có", name, receiveEmail == true, "mh-radio");
            html += InlineRadioForBoolean(false, "Không", name, receiveEmail == false, "mh-radio");
            return MvcHtmlString.Create(html);
        }
        private static string RadioForEnum(Enum mhEnum, string display, string name, string cssClass = "")
        {
            var div = new TagBuilder("div");
            div.MergeAttribute("class", "radio");
            var label = new TagBuilder("label");
            var input = new TagBuilder("input");
            input.MergeAttribute("type", "radio");
            input.MergeAttribute("name", name);
            input.MergeAttribute("class", cssClass);
            input.MergeAttribute("id", name + 1);
            input.MergeAttribute("value", mhEnum.ToString());

            label.InnerHtml = input.ToString(TagRenderMode.SelfClosing) + display;
            div.InnerHtml = label.ToString(TagRenderMode.Normal);
            return div.ToString(TagRenderMode.Normal);
        }
        private static string InlineRadioForEnum(Enum mhEnum, string display, string name, bool check = false, string cssClass = "")
        {
            var label = new TagBuilder("label");
            label.MergeAttribute("class", "radio-inline");
            var input = new TagBuilder("input");
            input.MergeAttribute("type", "radio");
            input.MergeAttribute("name", name);
            input.MergeAttribute("class", cssClass);
            input.MergeAttribute("id", name + 1);
            input.MergeAttribute("value", mhEnum.ToString());
            if (check)
                input.MergeAttribute("checked", "checked");

            label.InnerHtml = input.ToString(TagRenderMode.SelfClosing) + display;
            return label.ToString(TagRenderMode.Normal);
        }
        private static string InlineRadioForBoolean(Boolean mhBoolean, string display, string name, bool check = false, string cssClass = "")
        {
            var label = new TagBuilder("label");
            label.MergeAttribute("class", "radio-inline");
            var input = new TagBuilder("input");
            input.MergeAttribute("type", "radio");
            input.MergeAttribute("name", name);
            input.MergeAttribute("class", cssClass);
            input.MergeAttribute("id", name + 1);
            input.MergeAttribute("value", mhBoolean.ToString());
            if (check)
                input.MergeAttribute("checked", "checked");

            label.InnerHtml = input.ToString(TagRenderMode.SelfClosing) + display;
            return label.ToString(TagRenderMode.Normal);
        }
        public static int GetMainPostIdOfNormalPost(this HtmlHelper html, Post post)
        {
            //Question question = new Question();
            //question = _dal.Repository<Question>().Table.First(q => q.Answers.Count(a => a.Id == id) >0);
            if (post.GetType().BaseType == typeof(Answer))
            {
                return ((Answer)post).QuestionId;
            }
            else if (post.GetType().BaseType == typeof(Comment))
            {
                Comment comment = (Comment)post;
                if (comment.Post.GetType().BaseType == typeof(Answer))
                {
                    return ((Answer)comment.Post).QuestionId;
                }
                else if (comment.Post.GetType().BaseType == typeof(Comment))
                {
                    return ((Comment)comment.Post).PostId;
                }
                else
                {
                    return comment.PostId;
                }
            }
            return 0;
        }
        public static string GetMainPostType(this HtmlHelper html, MainPost mainpost)
        {
            if (mainpost.GetType().BaseType == typeof(Question))
            {
                return "Question";
            }
            else if (mainpost.GetType().BaseType == typeof(Discussion))
            {
                return "Discussion";
            }
            else
            {
                return "Blog";
            }
        }
        public static string GetMainPostTypeNameOfNormalPost(this HtmlHelper html, Post post)
        {
            //Question question = new Question();
            //question = _dal.Repository<Question>().Table.First(q => q.Answers.Count(a => a.Id == id) >0);
            if (post.GetType().BaseType == typeof(Answer))
            {
                return "Question";
            }
            else if (post.GetType().BaseType == typeof(Comment))
            {
                Comment comment = (Comment)post;
                if (comment.Post.GetType().BaseType == typeof(Answer))
                {
                    return "Question";
                }
                else if (comment.Post.GetType().BaseType == typeof(Comment))
                {
                    Comment c = (Comment)comment.Post;
                    if (c.Post.GetType().BaseType == typeof(Discussion))
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
                    if (comment.Post.GetType().BaseType == typeof(Discussion))
                    {
                        return "Discussion";
                    }
                    else
                    {
                        return "Blog";
                    }
                }
            }
            return "";
        }

        public static string GetNormalPostType(this HtmlHelper html, Post post)
        {
            if (post.GetType().BaseType == typeof(Answer))
            {
                return "Answer";
            }
            else if (post.GetType().BaseType == typeof(Comment))
            {
                return "Comment";
            }
            return "";
        }
    }
}
