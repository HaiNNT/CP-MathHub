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
            return vote.Value+"";
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
    }
}
