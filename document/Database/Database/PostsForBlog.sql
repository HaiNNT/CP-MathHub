INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-55322087842676758">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" height="460" src="http://4.bp.blogspot.com/-ViI9J2ICkTo/VZ8-U8NGqLI/AAAAAAAAFcE/Z_YzaFgQyww/s640/james7.png" width="640"/>
  </div>
  <br/>
  <span style="color: purple; font-size: x-large;">
    T
  </span>
  hông thường ở các bài toán 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    hình học dựng hình
  </a>
  , chúng ta được phép dùng thước kẻ và compa. Hôm nay chúng ta xem xét một loại bài toán hơi lạ một chút xíu, đó là chỉ được phép dùng compa để dựng hình.
  <br/>
  <a name="more">
  </a>
  <br/>
  <span style="color: purple; font-size: x-large;">
    T
  </span>
  rong toán học có một định lý đặc biệt gọi là 
  <span style="color: purple;">
    <b>
      Định lý Mohr-Mascheroni
    </b>
  </span>
  . Định lý này nói rằng bất kỳ điểm nào dựng được bằng thước kẻ và compa thì cũng có thể dựng được 
  <span style="color: purple;">
    <i>
      chỉ bằng compa
    </i>
  </span>
  . Có nghĩa là thước kẻ trong dựng hình là không cần thiết.
  <br/>
  <br/>
  
Định lý này được biết đến nhờ nhà toán học người Ý, Lorenzo Mascheroni. Trong cuốn sách "Hình học compa" (Geometria del Compasso) xuất bản năm 1797, ông đã chứng minh định lý này. Và vì vậy trong một thời gian dài, định lý này được gọi là Định lý Mascheroni.
  <br/>
  <br/>
  
Nhưng hoá ra Mascheroni không phải là người đầu tiên tìm ra định lý. Hơn cả trăm năm về trước, có một nhà toán học người Đan Mạch tên là Georg Mohr đã tìm ra định lý này. Ông Mohr viết định lý này trong cuốn sách "Hình học Đan Mạch" (Euclides Danicus) xuất bản năm 1672.
  <br/>
  <div>
    <br/>
  </div>
  <div>
    
Cuốn sách của nhà toán học Mohr bị rơi vào quên lãng cho tới khi nó được tìm thấy trong một hiệu sách ở thủ đô Đan Mạch vào năm 1928. Và từ đó người ta gọi định lý là Định lý Mohr-Mascheroni để ghi nhận sự đóng góp của nhà toán học Mohr. 
  </div>
  <div>
    <br/>
  </div>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Định lý Mohr-Mascheroni.
      </b>
       Bất kỳ điểm nào dựng được bằng thước kẻ và compa thì cũng có thể dựng được chỉ bằng cách dùng compa.
    </span>
  </blockquote>
  <div>
    <br/>
  </div>
  <div>
    <span style="color: purple; font-size: x-large;">
      C
    </span>
    ó hai 
    <a href="http://vuontoanblog.blogspot.com/2014/11/construction-algorithm.html" target="_blank">
      bài toán dựng hình
    </a>
     bằng thước kẻ và compa đơn giản nhất, đó là

    <br/>
    <ul>
      <li>
        nhân gấp bội lần một đoạn thẳng cho trước, và
      </li>
      <li>
        chia đều một đoạn thẳng cho trước. 
      </li>
    </ul>
    <br/>
    <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
      <tbody>
        <tr>
          <td style="text-align: center;">
            <img border="0" height="58" src="http://2.bp.blogspot.com/-lOdjO2sSuLU/VGGm3pQcQZI/AAAAAAAADrg/gLsfsGc3qMg/s1600/vuontoan_mathgarden_ca1.png" style="margin-left: auto; margin-right: auto;" width="400"/>
          </td>
        </tr>
        <tr>
          <td class="tr-caption" style="text-align: center;">
            cho trước AB, bằng thước kẻ và compa, chúng ta dễ dàng dựng được đoạn thẳng AC dài gấp ba lần AB
          </td>
        </tr>
      </tbody>
    </table>
    <br/>
    <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
      <tbody>
        <tr>
          <td style="text-align: center;">
            <img border="0" height="245" src="http://3.bp.blogspot.com/--bV_ICl_CcM/Uj_jGc_sbKI/AAAAAAAABK8/TTXcICfsyIw/s1600/vuontoan-mathgarden-ruler-compas7.png" style="margin-left: auto; margin-right: auto;" width="400"/>
          </td>
        </tr>
        <tr>
          <td class="tr-caption" style="text-align: center;">
            cho trước AB, bằng thước kẻ và compa, chúng ta dễ dàng chia đều AB ra thành năm đoạn thẳng bằng nhau
          </td>
        </tr>
      </tbody>
    </table>
    <br/>
    <br/>
    <br/>
    
Như vậy theo Định lý Mohr-Mascheroni, 
    <b>
      chỉ cần bằng compa
    </b>
    , chúng ta có thể nhân gấp bội lần một đoạn thẳng, và chúng ta có thể chia đều một đoạn thẳng cho trước. Hôm nay chúng ta sẽ giải bài toán đầu tiên, còn bài toán thứ hai chúng ta để dành cho kỳ sau.
    <br/>
    <br/>
    <br/>
    <br/>
    <span style="color: #0b5394; font-size: large;">
      Nhân gấp bội lần một đoạn thẳng bằng compa
    </span>
    <br/>
    <br/>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Bài toán.
        </b>
         Cho trước hai điểm A và B, chỉ dùng compa, dựng điểm C trên đường thẳng AB sao cho AC = 3 AB.
      </span>
    </blockquote>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://1.bp.blogspot.com/-JkMA4T-q05c/VZ9TfrDaWFI/AAAAAAAAFcU/6xiI9YtBfdw/s1600/vuontoan_mathgarden_triangle1.png"/>
    </div>
    <br/>
    
Nếu chúng ta dùng compa để vẽ đường tròn có tâm là A và đi qua B, và một đường tròn khác có tâm là B đi qua A, thì hai đường tròn sẽ cắt nhau tại hai điểm, và chúng ta đã tạo ra hai 
    <b>
      tam giác đều
    </b>
     có cạnh là AB. Nếu chúng ta tiếp tục dựng hình như vậy thì chúng ta sẽ dựng được một 
    <b>
      lưới điểm 
    </b>
    tam giác đều. Vậy bài toán nhân gấp bội lần một đoạn thẳng bằng compa dễ dàng được giải quyết.
  </div>
  <div>
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" height="212" src="http://3.bp.blogspot.com/-WJxQ0Nmohm8/VZ9WfvzafqI/AAAAAAAAFcg/xDFbq1MWqeU/s640/vuontoan_mathgarden_triangle2.png" width="640"/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
    
Chúng ta tạm dừng ở đây. Hẹn gặp lại các bạn ở kỳ sau.
    <br/>
    <br/>
    <br/>
    <br/>
    <i>
      Bài tập về nhà.
    </i>
    <br/>
    <br/>
    
1. Cho trước hai điểm A và B, 
    <i>
      chỉ dùng compa
    </i>
    , dựng trung điểm của AB.
    <br/>
    <br/>
    
2. Cho trước hai điểm A và B, 
    <i>
      chỉ dùng compa
    </i>
    , dựng hai điểm 
    <span class="MathJax_Preview">
      M_1
    </span>
    <script type="math/tex">
//<![CDATA[
M_1
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      M_2
    </span>
    <script type="math/tex">
//<![CDATA[
M_2
//]]>
    </script>
     để chia ba đoạn thẳng AB, tức là 
    <span class="MathJax_Preview">
      A M_1 = M_1 M_2 = M_2 B
    </span>
    <script type="math/tex">
//<![CDATA[
A M_1 = M_1 M_2 = M_2 B
//]]>
    </script>
    .
    <br/>
    <br/>
    
3. Cho trước ba điểm A, B, và C, 
    <i>
      chỉ dùng compa
    </i>
    , dựng tâm đường tròn ngoại tiếp tam giác ABC.
    <br/>
    <br/>
    <br/>
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" height="434" src="http://4.bp.blogspot.com/-zEsNJxmYqio/VU3hHGgUadI/AAAAAAAAFA4/9_M-N1joTzo/s640/vuontoan_mathgarden_triangle.jpg" width="640"/>
  </div>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','18','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-3344631802527726819">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" height="434" src="http://4.bp.blogspot.com/-zEsNJxmYqio/VU3hHGgUadI/AAAAAAAAFA4/9_M-N1joTzo/s640/vuontoan_mathgarden_triangle.jpg" width="640"/>
  </div>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','15','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-4765953537577944768">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-lpABQC-KAFU/VSz6mprOcWI/AAAAAAAAE9s/xBJqVRax2Wo/s1600/vuontoan_mathgarden_james_starofdavid.jpg" height="320" width="308"/>
  </div>
  <br/>
  <span style="color: purple; font-size: large;">
    H
  </span>
  ôm nay xin giới thiệu với các bạn một định lý hình học rất đẹp gọi là 
  <span style="color: purple;">
    <b>
      Định lý Ngôi Sao Do Thái
    </b>
  </span>
  . Định lý này là hệ quả của 
  <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
    <span style="color: purple;">
      <b>
        Định lý Lục giác kỳ diệu
      </b>
    </span>
  </a>
   của Pascal và 
  <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
    <span style="color: purple;">
      <b>
        Định lý Pappus
      </b>
    </span>
  </a>
  .
  <br/>
  <br/>
  <br/>
  <a name="more">
  </a>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-ny_WON0mdBQ/VSJfjjhjm9I/AAAAAAAAE9I/njShNT6HeCY/s1600/vuontoan_mathgarden_davidstar1d.png" height="320" width="319"/>
  </div>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Định lý Ngôi Sao Do Thái. 
      </b>
      Cho hai tam giác 
      <span class="MathJax_Preview">
        abc
      </span>
      <script type="math/tex">
//<![CDATA[
abc
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        xyz
      </span>
      <script type="math/tex">
//<![CDATA[
xyz
//]]>
      </script>
       cùng nội tiếp một đường tròn. Các cạnh của hai tam giác này cắt nhau tại sáu điểm:

      <span class="MathJax_Preview">
        p = ab \cap yz, ~~s = bc \cap zx, ~~q = ca \cap yz, ~~r = bc \cap xy, ~~1 = ab \cap xy, ~~3 = ca \cap zx.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
p = ab \cap yz, ~~s = bc \cap zx, ~~q = ca \cap yz, ~~r = bc \cap xy, ~~1 = ab \cap xy, ~~3 = ca \cap zx.
//]]>
      </script>
      
Vậy thì ba đường thẳng 
      <span class="MathJax_Preview">
        ps
      </span>
      <script type="math/tex">
//<![CDATA[
ps
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        qr
      </span>
      <script type="math/tex">
//<![CDATA[
qr
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        13
      </span>
      <script type="math/tex">
//<![CDATA[
13
//]]>
      </script>
       phải đồng quy tại một điểm.
    </span>
  </blockquote>
  <br/>
  <span style="color: purple; font-size: large;">
    Đ
  </span>
  ể chứng minh ba đường thẳng 
  <span class="MathJax_Preview">
    ps
  </span>
  <script type="math/tex">
//<![CDATA[
ps
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    qr
  </span>
  <script type="math/tex">
//<![CDATA[
qr
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    13
  </span>
  <script type="math/tex">
//<![CDATA[
13
//]]>
  </script>
   đồng quy, chúng ta sẽ gọi giao điểm 
  <span class="MathJax_Preview">
    ps \cap qr = 2
  </span>
  <script type="math/tex">
//<![CDATA[
ps \cap qr = 2
//]]>
  </script>
   rồi chứng minh rằng ba điểm 
  <span class="MathJax_Preview">
    1
  </span>
  <script type="math/tex">
//<![CDATA[
1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    2
  </span>
  <script type="math/tex">
//<![CDATA[
2
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    3
  </span>
  <script type="math/tex">
//<![CDATA[
3
//]]>
  </script>
   thẳng hàng.
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-CP3IsQOlDNw/VSJXUJ24jMI/AAAAAAAAE7U/TjIp2JY_S98/s1600/vuontoan_mathgarden_davidstar2d.png" height="320" width="318"/>
  </div>
  <br/>
  <br/>
  
Nhìn hình vẽ trên, chúng ta thấy nó có rất nhiều nét giống 
  <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
    Định lý Lục giác Pascal
  </a>
   và 
  <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
    Định lý Pappus
  </a>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-ijrOTz79-7Q/VSJlWHHYCuI/AAAAAAAAE9Y/gVlWRpdR6Ms/s1600/vuontoan_mathgarden_pascal_pappus.png" height="297" width="640"/>
  </div>
  <br/>
  <br/>
  
Do đó chúng ta sẽ dùng 
  <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
    Định lý Lục giác Pascal
  </a>
   và 
  <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
    Định lý Pappus
  </a>
   để chứng minh 
  <span style="color: purple;">
    <b>
      Định lý Ngôi Sao Do Thái
    </b>
  </span>
  .
  <br/>
  <br/>
  
Vẽ các giao điểm sau: 
  <span class="MathJax_Preview">
    4 = yc \cap bz, ~~ 5 = pc \cap rz, ~~ 6 = ys \cap bq.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
4 = yc \cap bz, ~~ 5 = pc \cap rz, ~~ 6 = ys \cap bq.
//]]>
  </script>
  <br/>
  
Chúng ta sẽ chứng minh rằng sáu điểm 
  <span class="MathJax_Preview">
    1
  </span>
  <script type="math/tex">
//<![CDATA[
1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    2
  </span>
  <script type="math/tex">
//<![CDATA[
2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    3
  </span>
  <script type="math/tex">
//<![CDATA[
3
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    4
  </span>
  <script type="math/tex">
//<![CDATA[
4
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    5
  </span>
  <script type="math/tex">
//<![CDATA[
5
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    6
  </span>
  <script type="math/tex">
//<![CDATA[
6
//]]>
  </script>
   thẳng hàng.
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-S9kTdpGGtdk/VSJXUpFK9zI/AAAAAAAAE7g/Wsy686Q2pbA/s1600/vuontoan_mathgarden_davidstar3d.png" height="320" width="318"/>
  </div>
  <br/>
  <span style="color: purple; font-size: large;">
    D
  </span>
  ưới đây là phát thảo cách chứng minh:

  <br/>
  <ul>
    <li>
      Ba điểm 
      <span class="MathJax_Preview">
        1
      </span>
      <script type="math/tex">
//<![CDATA[
1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        4
      </span>
      <script type="math/tex">
//<![CDATA[
4
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        3
      </span>
      <script type="math/tex">
//<![CDATA[
3
//]]>
      </script>
       thẳng hàng theo 
      <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
        Định lý Pascal
      </a>
    </li>
    <li>
      Ba điểm 
      <span class="MathJax_Preview">
        1
      </span>
      <script type="math/tex">
//<![CDATA[
1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        4
      </span>
      <script type="math/tex">
//<![CDATA[
4
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        5
      </span>
      <script type="math/tex">
//<![CDATA[
5
//]]>
      </script>
       thẳng hàng theo 
      <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
        Định lý Pappus
      </a>
    </li>
    <li>
      Ba điểm 
      <span class="MathJax_Preview">
        3
      </span>
      <script type="math/tex">
//<![CDATA[
3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        5
      </span>
      <script type="math/tex">
//<![CDATA[
5
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        2
      </span>
      <script type="math/tex">
//<![CDATA[
2
//]]>
      </script>
       thẳng hàng theo 
      <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
        Định lý Pappus
      </a>
    </li>
    <li>
      Ba điểm 
      <span class="MathJax_Preview">
        1
      </span>
      <script type="math/tex">
//<![CDATA[
1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        2
      </span>
      <script type="math/tex">
//<![CDATA[
2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        6
      </span>
      <script type="math/tex">
//<![CDATA[
6
//]]>
      </script>
       thẳng hàng theo 
      <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
        Định lý Pappus
      </a>
    </li>
    <li>
      Ba điểm 
      <span class="MathJax_Preview">
        3
      </span>
      <script type="math/tex">
//<![CDATA[
3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        4
      </span>
      <script type="math/tex">
//<![CDATA[
4
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        6
      </span>
      <script type="math/tex">
//<![CDATA[
6
//]]>
      </script>
       thẳng hàng theo 
      <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
        Định lý Pappus
      </a>
    </li>
  </ul>
  <span style="color: purple; font-size: large;">
    C
  </span>
  húng ta sẽ vẽ hình cho từng trường hợp để các bạn thấy một cách rõ ràng hơn.
  <br/>
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://4.bp.blogspot.com/-r521aU1UkCw/VSJXVRIusgI/AAAAAAAAE7k/RHmQQnS6Z-c/s1600/vuontoan_mathgarden_davidstar4d.png" height="320" width="318"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: xx-small; text-align: start;">
            Ba điểm 
            <span class="MathJax_Preview">
              1
            </span>
            <script type="math/tex">
//<![CDATA[
1
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              4
            </span>
            <script type="math/tex">
//<![CDATA[
4
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              3
            </span>
            <script type="math/tex">
//<![CDATA[
3
//]]>
            </script>
             thẳng hàng theo 
            <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
              Định lý Pascal
            </a>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://4.bp.blogspot.com/-FaX1pKV8hgs/VSJXVsfpZTI/AAAAAAAAE7s/tYoSwBLSltY/s1600/vuontoan_mathgarden_davidstar5d.png" height="320" width="318"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: xx-small; text-align: start;">
            Ba điểm 
            <span class="MathJax_Preview">
              1
            </span>
            <script type="math/tex">
//<![CDATA[
1
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              4
            </span>
            <script type="math/tex">
//<![CDATA[
4
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              5
            </span>
            <script type="math/tex">
//<![CDATA[
5
//]]>
            </script>
             thẳng hàng theo 
            <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
              Định lý Pappus
            </a>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://1.bp.blogspot.com/-posq4yv2k0w/VSJXWPRhk8I/AAAAAAAAE7w/c9Gs9DSNnAI/s1600/vuontoan_mathgarden_davidstar6d.png" height="320" width="318"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: xx-small; text-align: start;">
            Ba điểm 
            <span class="MathJax_Preview">
              3
            </span>
            <script type="math/tex">
//<![CDATA[
3
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              5
            </span>
            <script type="math/tex">
//<![CDATA[
5
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              2
            </span>
            <script type="math/tex">
//<![CDATA[
2
//]]>
            </script>
             thẳng hàng theo 
            <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
              Định lý Pappus
            </a>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://3.bp.blogspot.com/-gBgKNnrCXeM/VSJXWiRAZKI/AAAAAAAAE74/l1eCuFr8NsU/s1600/vuontoan_mathgarden_davidstar7d.png" height="320" width="318"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: xx-small; text-align: start;">
            Ba điểm 
            <span class="MathJax_Preview">
              1
            </span>
            <script type="math/tex">
//<![CDATA[
1
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              2
            </span>
            <script type="math/tex">
//<![CDATA[
2
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              6
            </span>
            <script type="math/tex">
//<![CDATA[
6
//]]>
            </script>
             thẳng hàng theo 
            <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
              Định lý Pappus
            </a>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://4.bp.blogspot.com/-8vicR5ggG-Y/VSJXWyEbplI/AAAAAAAAE8A/DqArsFqb_7w/s1600/vuontoan_mathgarden_davidstar8d.png" height="320" width="318"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: xx-small; text-align: start;">
            Ba điểm 
            <span class="MathJax_Preview">
              3
            </span>
            <script type="math/tex">
//<![CDATA[
3
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              4
            </span>
            <script type="math/tex">
//<![CDATA[
4
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              6
            </span>
            <script type="math/tex">
//<![CDATA[
6
//]]>
            </script>
             thẳng hàng theo 
            <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum3.html" target="_blank">
              Định lý Pappus
            </a>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    Định lý Ngôi Sao Do Thái cho các đường cônic
  </span>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-G4cxRkIubUU/VUK4EF7NKaI/AAAAAAAAE_k/DS1ktZ4Dp7M/s1600/vuontoan_mathgarden_star_david_sand.jpg" height="225" width="400"/>
  </div>
  <br/>
  <span style="color: purple; font-size: large;">
    Ở
  </span>
   trên, chúng ta phát biểu 
  <span style="color: purple;">
    <b>
      Định lý Ngôi Sao Do Thái
    </b>
  </span>
   cho đường tròn. Nhưng 
  <b>
    <span style="color: purple;">
      Định lý Ngôi Sao Do Thái
    </span>
  </b>
   thú vị ở chỗ là nó đúng cho tất cả các đường cônic. Đó là vì 
  <b>
    <span style="color: purple;">
      Định lý Ngôi Sao Do Thái
    </span>
  </b>
   là hệ quả của 
  <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
    Định lý Lục giác Pascal
  </a>
  , và 
  <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
    Định lý Lục giác Pascal
  </a>
   đúng cho cả đường tròn, đường elíp, đường parabol, và đường hypebol.
  <br/>
  <div>
    <br/>
    <br/>
    
Dưới đây là ví dụ cho đường elíp:
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-sPHoUXSgFiI/VSJXXFdF_bI/AAAAAAAAE78/tiiavYSvuwE/s1600/vuontoan_mathgarden_davidstar_ellipse_d.png" height="277" width="400"/>
  </div>
  <br/>
  
Đây là đường parabol:
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-gTmwhLO4knk/VSJXYH-kzkI/AAAAAAAAE8M/f7HVMb_7Nt4/s1600/vuontoan_mathgarden_davidstar_parad.png" height="197" width="320"/>
  </div>
  <br/>
  <br/>
  
Còn đây là đường hypebol:
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-cgk0_cN1WKE/VSJXXqcbfqI/AAAAAAAAE8U/ym-KSylsV18/s1600/vuontoan_mathgarden_davidstar_hyd.png" height="282" width="400"/>
  </div>
  <br/>
  <span style="color: purple; font-size: large;">
    C
  </span>
  húng ta tạm dừng ở đây, hẹn gặp lại các bạn ở kỳ sau.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Vẽ hình 
  <b>
    <span style="color: purple;">
      Định lý Ngôi Sao Do Thái
    </span>
  </b>
   cho những vị trí khác nhau của hai hình tam giác. 
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-nxHsihpVEjI/VS3pWYvp83I/AAAAAAAAE98/8OhATNpxcGw/s1600/vuontoan_mathgarden_starofdavid.png" height="202" width="400"/>
  </div>
  <br/>
  <br/>
  
2. Chứng minh chặt chẽ 
  <b>
    <span style="color: purple;">
      Định lý Ngôi Sao Do Thái
    </span>
  </b>
   dựa vào những bước phát thảo ở trên.

  <br/>
  <br/>
  <br/>
  
3. Vào trang 
  <a href="http://google.com/">
    google.com
  </a>
   để tìm đọc các ứng dụng khác của 
  <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
    Định lý Pascal
  </a>
  .
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-9YA8ZMQHMOk/VI4byssM4NI/AAAAAAAAETM/0cQrAPtbsqA/s1600/francis_hope_faith_love.jpg" height="298" width="320"/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','77','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-5322677118362414940">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-1T8Myz9TE-8/VTXCRyXiNVI/AAAAAAAAE-4/AbpesTkXsL0/s1600/vuontoan_mathgarden_chess.png" height="350" width="640"/>
  </div>
  <br/>
  <span style="color: purple; font-size: large;">
    B
  </span>
  ạn đã nghe qua câu chuyện huyền thoại về bàn cờ vua chưa? Câu chuyện kể rằng ngày xưa có một nhà thông thái giới thiệu cho một vị vua nọ trò chơi cờ vua. Nhà vua thấy trò chơi này rất là thú vị nên muốn tặng cho nhà thông thái một phần thưởng. Nhà vua nói rằng ông muốn chọn gì thì chọn. Trước sự ngạc nhiên của nhà vua, nhà thông thái nọ chỉ tay vào bàn cờ vua và xin nhà vua 
  <i>
    <span style="color: purple;">
      1 hạt gạo
    </span>
  </i>
   cho ô vuông đầu tiên, 
  <i>
    <span style="color: purple;">
      2 hạt gạo
    </span>
  </i>
   cho ô cờ thứ hai, 
  <i>
    <span style="color: purple;">
      4 hạt gạo
    </span>
  </i>
   cho ô cờ thứ ba, 
  <i>
    <span style="color: purple;">
      8 hạt gạo
    </span>
  </i>
   cho ô cờ thứ tư, và cứ thế, với mỗi ô cờ tiếp theo, nhà thông thái xin nhà vua số hạt gạo gấp đôi số hạt gạo ở ô cờ trước. Câu chuyện kết thúc với một kết cục khá là ngạc nhiên, đó là nhà vua đã không có đủ số gạo để thưởng cho nhà thông thái.
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    H
  </span>
  ôm nay, chúng ta sẽ cùng tính toán xem, nếu chúng ta xếp số gạo mà nhà thông thái yêu cầu thành hình kim tự tháp thì chúng ta sẽ được bao nhiêu kim tự tháp.
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-cepCbmiO744/VTXBtzdE-NI/AAAAAAAAE-o/BsHsH5C_E94/s1600/vuontoan_mathgarden_pyramids2.png" height="320" width="640"/>
  </div>
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <span style="color: #3d85c6; font-size: large;">
    Bước 1. Tìm tổng số hạt gạo
  </span>
  <br/>
  <br/>
  
Chúng ta thấy bàn cờ vua có 
  <span class="MathJax_Preview">
    8 \times 8 = 64
  </span>
  <script type="math/tex">
//<![CDATA[
8 \times 8 = 64
//]]>
  </script>
   ô vuông và nhà thông thái đã xin nhà vua như sau:

  <br/>
  <ul>
    <li>
      Ô vuông 1: số hạt gạo 
      <span class="MathJax_Preview">
        =1
      </span>
      <script type="math/tex">
//<![CDATA[
=1
//]]>
      </script>
    </li>
    <li>
      Ô vuông 2: số hạt gạo 
      <span class="MathJax_Preview">
        =2
      </span>
      <script type="math/tex">
//<![CDATA[
=2
//]]>
      </script>
    </li>
    <li>
      Ô vuông 3: số hạt gạo 
      <span class="MathJax_Preview">
        = 4=2^2
      </span>
      <script type="math/tex">
//<![CDATA[
= 4=2^2
//]]>
      </script>
    </li>
    <li>
      Ô vuông 4: số hạt gạo 
      <span class="MathJax_Preview">
        = 8=2^3
      </span>
      <script type="math/tex">
//<![CDATA[
= 8=2^3
//]]>
      </script>
    </li>
    <li>
      Ô vuông 5: số hạt gạo 
      <span class="MathJax_Preview">
        =16=2^4
      </span>
      <script type="math/tex">
//<![CDATA[
=16=2^4
//]]>
      </script>
    </li>
    <li>
      Ô vuông 
      <span class="MathJax_Preview">
        n
      </span>
      <script type="math/tex">
//<![CDATA[
n
//]]>
      </script>
      : số hạt gạo 
      <span class="MathJax_Preview">
        =2^{n-1}
      </span>
      <script type="math/tex">
//<![CDATA[
=2^{n-1}
//]]>
      </script>
    </li>
    <li>
      Ô vuông 63: số hạt gạo 
      <span class="MathJax_Preview">
        =2^{62}
      </span>
      <script type="math/tex">
//<![CDATA[
=2^{62}
//]]>
      </script>
    </li>
    <li>
      Ô vuông 64: số hạt gạo 
      <span class="MathJax_Preview">
        =2^{63}
      </span>
      <script type="math/tex">
//<![CDATA[
=2^{63}
//]]>
      </script>
    </li>
  </ul>
  <br/>
  
Vậy tổng số hạt gạo bằng

  <span class="MathJax_Preview">
    S = 1 + 2 + 4 + 8 + 2^4 + \dots + 2^{62} + 2^{63}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
S = 1 + 2 + 4 + 8 + 2^4 + \dots + 2^{62} + 2^{63}
//]]>
  </script>
  <br/>
  <br/>
  
Chúng ta có thể rút gọn công thức 
  <span class="MathJax_Preview">
    S
  </span>
  <script type="math/tex">
//<![CDATA[
S
//]]>
  </script>
   như sau.
  <br/>
  <br/>
  
Nhân hai vế của công thức 
  <span class="MathJax_Preview">
    S
  </span>
  <script type="math/tex">
//<![CDATA[
S
//]]>
  </script>
   với 2, chúng ta có

  <span class="MathJax_Preview">
    2S = 2 + 4 + 8 + 16 + 2^5 + \dots + 2^{63} + 2^{64}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
2S = 2 + 4 + 8 + 16 + 2^5 + \dots + 2^{63} + 2^{64}
//]]>
  </script>
  <br/>
  
Trừ vế theo vế với đẳng thức ban đầu

  <span class="MathJax_Preview">
    S = 1 + 2 + 4 + 8 + 2^4 + \dots + 2^{62} + 2^{63}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
S = 1 + 2 + 4 + 8 + 2^4 + \dots + 2^{62} + 2^{63}
//]]>
  </script>
  
chúng ta có

  <span class="MathJax_Preview">
    S = 2^{64} - 1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
S = 2^{64} - 1
//]]>
  </script>
  <br/>
  <br/>
  <br/>
  <span style="color: #3d85c6; font-size: large;">
    Bước 2. Ước lượng tổng thể tích của toàn bộ các hạt gạo
  </span>
  <br/>
  <br/>
  
Ở trên, chúng ta đã tính được tổng số hạt gạo bằng 
  <span class="MathJax_Preview">
    S = 2^{64} - 1
  </span>
  <script type="math/tex">
//<![CDATA[
S = 2^{64} - 1
//]]>
  </script>
  . 
Để cho đơn giản, chúng ta tặng thêm cho nhà thông thái 1 hạt gạo để 
  <span class="MathJax_Preview">
    S = 2^{64}
  </span>
  <script type="math/tex">
//<![CDATA[
S = 2^{64}
//]]>
  </script>
  . Chúng ta giả sử rằng mỗi hạt gạo có thể tích bằng 2 mili mét khối.
Vậy tổng thể tích toàn bộ các hạt gạo bằng 
  <span class="MathJax_Preview">
    V = 2^{65}
  </span>
  <script type="math/tex">
//<![CDATA[
V = 2^{65}
//]]>
  </script>
   mili mét khối.

  <br/>
  <br/>
  
Làm sao để chúng ta ước lượng số 
  <span class="MathJax_Preview">
    2^{65}
  </span>
  <script type="math/tex">
//<![CDATA[
2^{65}
//]]>
  </script>
  ?
  <br/>
  <br/>
  
Trong khoa học điện toán, chúng ta nói rằng

  <br/>
  <ul>
    <li>
      1 kilo byte = 
      <span class="MathJax_Preview">
        2^{10}
      </span>
      <script type="math/tex">
//<![CDATA[
2^{10}
//]]>
      </script>
       byte 
      <span class="MathJax_Preview">
        \approx
      </span>
      <script type="math/tex">
//<![CDATA[
\approx
//]]>
      </script>
       1000 byte,
    </li>
    <li>
      1 mega byte = 
      <span class="MathJax_Preview">
        2^{10}
      </span>
      <script type="math/tex">
//<![CDATA[
2^{10}
//]]>
      </script>
       kilo byte 
      <span class="MathJax_Preview">
        \approx
      </span>
      <script type="math/tex">
//<![CDATA[
\approx
//]]>
      </script>
       1000 kilo byte,
    </li>
    <li>
      1 giga byte = 
      <span class="MathJax_Preview">
        2^{10}
      </span>
      <script type="math/tex">
//<![CDATA[
2^{10}
//]]>
      </script>
       mega byte 
      <span class="MathJax_Preview">
        \approx
      </span>
      <script type="math/tex">
//<![CDATA[
\approx
//]]>
      </script>
       1000 mega byte,
    </li>
    <li>
      1 tera byte = 
      <span class="MathJax_Preview">
        2^{10}
      </span>
      <script type="math/tex">
//<![CDATA[
2^{10}
//]]>
      </script>
       giga byte 
      <span class="MathJax_Preview">
        \approx
      </span>
      <script type="math/tex">
//<![CDATA[
\approx
//]]>
      </script>
       1000 giga byte.
    </li>
  </ul>
  <br/>
  
Chúng ta đã làm phép xấp xỉ 
  <span class="MathJax_Preview">
    2^{10} = 1024 &gt;\approx 1000
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
2^{10} = 1024 >\approx 1000
//]]>
  </script>
  <br/>
  
Vậy chúng ta sẽ dùng xấp xỉ 
  <span class="MathJax_Preview">
    2^{10} \approx 1000
  </span>
  <script type="math/tex">
//<![CDATA[
2^{10} \approx 1000
//]]>
  </script>
   để ước lượng tổng thể tích các hạt gạo 
  <span class="MathJax_Preview">
    V = 2^{65}
  </span>
  <script type="math/tex">
//<![CDATA[
V = 2^{65}
//]]>
  </script>
   (mili mét khối):

  <span class="MathJax_Preview">
    V = 2^{65} = 2^{5} \times 2^{60} = 32 \times 2^{60} &gt;\approx 32 \times 1000^{6}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
V = 2^{65} = 2^{5} \times 2^{60} = 32 \times 2^{60} >\approx 32 \times 1000^{6}
//]]>
  </script>
  <br/>
  <span style="color: purple;">
    Vậy 
    <span class="MathJax_Preview">
      V \approx 32 \times 1000^{6}
    </span>
    <script type="math/tex">
//<![CDATA[
V \approx 32 \times 1000^{6}
//]]>
    </script>
     mili mét khối 
    <span class="MathJax_Preview">
      =32 \times 1000^{3}
    </span>
    <script type="math/tex">
//<![CDATA[
=32 \times 1000^{3}
//]]>
    </script>
     mét khối.
  </span>
  <br/>
  <br/>
  <br/>
  
Chúng ta đã ước lượng được thể tích của toàn bộ các hạt gạo là
  <br/>
  <div style="text-align: center;">
    <span style="color: purple;">
      <b>
        <span class="MathJax_Preview">
          V\approx
        </span>
        <script type="math/tex">
//<![CDATA[
V\approx
//]]>
        </script>
         32 tỷ mét khối!
      </b>
    </span>
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: #3d85c6; font-size: large;">
    Bước 3. Ước lượng thể tích của kim tự tháp
  </span>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-jtNDmRahP3o/VTXBtwwxekI/AAAAAAAAE-k/w5_eSjs6Ddc/s1600/vuontoan_mathgarden_pyramids1.png" height="282" width="640"/>
  </div>
  <br/>
  <span style="color: purple; font-size: large;">
    Ở 
  </span>
  hình trên chúng ta thấy các kim tự tháp Giza ở vùng ngoại ô thành phố Cairo - thủ đô Ai Cập. Những kim tự tháp này là mộ của các vị vua pha-ra-ông của Ai Cập. Theo thứ tự, cái cuối cùng đàng sau là kim tự tháp lớn nhất, cao 147 mét, là mộ của pha-ra-ông Khufu được xây đầu tiên, 2550 năm trước ngày Chúa giáng sinh. Kim tự tháp chính giữa, cao 144 mét, là mộ của pha-ra-ông Khafre, 2520 BC. Phía trước là kim tự tháp nhỏ nhất và được xây sau cùng, cao 65 mét, là mộ của pha-ra-ông Menkaure, xây vào năm 2490 trước ngày Chúa giáng sinh.
  <br/>
  <br/>
  
Kim tự tháp có đáy là hình vuông, xây theo hình chóp. Để tính thể tích kim tự tháp chúng ta dùng công thức 
  <span class="MathJax_Preview">
    V = \frac{1}{3} a^2 h
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
V = \frac{1}{3} a^2 h
//]]>
  </script>
   trong đó ký hiệu 
  <span class="MathJax_Preview">
    V
  </span>
  <script type="math/tex">
//<![CDATA[
V
//]]>
  </script>
   là thể tích, 
  <span class="MathJax_Preview">
    h
  </span>
  <script type="math/tex">
//<![CDATA[
h
//]]>
  </script>
   là chiều cao, 
  <span class="MathJax_Preview">
    a
  </span>
  <script type="math/tex">
//<![CDATA[
a
//]]>
  </script>
   là độ dài cạnh đáy hình vuông.


  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-yFftOYqWZl4/VTXBt6Ks5aI/AAAAAAAAE-g/iBoqh5hGR3o/s1600/vuontoan_mathgarden_pyramid_volume.png" height="187" width="400"/>
  </div>
  <br/>
  
Theo công thức tính thể tích, chúng ta có:

  <br/>
  <div style="text-align: center;">
    <table align="center" border="1">
      <tbody>
        <tr>
          <td/>
          <td>
            chiều cao h
          </td>
          <td>
            cạnh đáy a
          </td>
          <td>
            thể tích V
          </td>
        </tr>
        <tr>
          <td>
            Kim tự tháp Khufu
          </td>
          <td>
            147 mét
          </td>
          <td>
            230 mét
          </td>
          <td>
            2,592,100 mét khối
          </td>
        </tr>
        <tr>
          <td>
            Kim tự tháp Khafre
          </td>
          <td>
            144 mét
          </td>
          <td>
            215 mét
          </td>
          <td>
            2,218,800 mét khối
          </td>
        </tr>
        <tr>
          <td>
            Kim tự tháp Menkaure
          </td>
          <td>
            65 mét
          </td>
          <td>
            105 mét
          </td>
          <td>
            238,875 mét khối
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  <br/>
  
Vậy, kim tự tháp Khufu là lớn nhất và có thể tích xấp xỉ 2.6 triệu mét khối.


  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: #3d85c6; font-size: large;">
    Bước 4. Tìm số lượng các kim tự tháp xây bằng gạo
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    B
  </span>
  ây giờ chúng ta đã sẵn sàng để trả lời câu hỏi ở đầu bài. Chúng ta đã tính ước lượng được số gạo mà nhà thông thái yêu cầu là 
  <span style="color: purple;">
    32 tỷ mét khối
  </span>
  . Nếu chúng ta xếp đống gạo này theo hình kim tự tháp lớn nhất có thể tích cỡ 
  <span style="color: purple;">
    2.6 triệu mét khối
  </span>
   thì chúng ta sẽ xây được số kim tự tháp là

  <span class="MathJax_Preview">
    \frac{32 \times 1000^3}{2.6 \times 1000^2} &gt; \approx 12000
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{32 \times 1000^3}{2.6 \times 1000^2} > \approx 12000
//]]>
  </script>
  <br/>
  
Tóm lại phần thưởng mà nhà thông thái yêu cầu nhà vua là nhiều hơn 12 ngàn đống gạo hình kim tự tháp. Thảo nào nhà vua đã không có đủ gạo để thưởng cho nhà thông thái !

  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    C
  </span>
  húng ta tạm dừng ở đây.
Các hình ảnh về kim tự tháp Giza ở trên được lấy từ 
  <a href="https://maps.google.com/" target="_blank">
    Google Maps
  </a>
  . Hình vẽ bàn cờ vua ở đầu bài được lấy từ bộ phim "
  <a href="https://www.youtube.com/watch?v=oVthC6neqVc" target="_blank">
    Inspirations
  </a>
  " của Cristóbal Vila, mời các bạn xem phim ở đây:
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="https://www.youtube.com/watch?v=oVthC6neqVc">
      <img border="0" src="http://1.bp.blogspot.com/-m3FzgAsQzS4/VLWWpKjaVKI/AAAAAAAAEtc/vQakEX9Xm-0/s1600/youtube_small.png"/>
    </a>
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  <br/>
  
1. Vào 
  <a href="http://google.com/">
    google.com
  </a>
   để tìm hiểu xem diện tích của bề mặt mặt trăng là bao nhiêu. Liệu số gạo mà nhà thông thái yêu cầu có thể dùng để phủ kín toàn bộ bề mặt của mặt trăng được không?


  <br/>
  <br/>
  
2. Rút gọn biểu thức 
  <span class="MathJax_Preview">
    1 + \frac{1}{2} + \frac{1}{4} + + \frac{1}{8} + \dots + + \frac{1}{2^{64}}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
1 + \frac{1}{2} + \frac{1}{4} + + \frac{1}{8} + \dots + + \frac{1}{2^{64}}
//]]>
  </script>
  <br/>
  <br/>
  
3. Rút gọn biểu thức 
  <span class="MathJax_Preview">
    1 + 3 + 9 + 27 + \dots + 3^{64}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
1 + 3 + 9 + 27 + \dots + 3^{64}
//]]>
  </script>
  <br/>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-bb09qB-zB7s/VTXertdbZlI/AAAAAAAAE_I/b2-WsJy2IM0/s1600/vuontoan_mathgarden_vianney_chess.jpg" height="488" width="640"/>
  </div>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','8','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-8681041225528843147">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-mrSq2iVvxAs/VTWw3VxIZAI/AAAAAAAAE-Q/Txjc21XlbuQ/s1600/vuontoan_mathgarden_matthew_math_symbol.jpg" height="242" width="400"/>
  </div>
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <br/>
  <div style="text-align: center;">
    <span style="color: purple; font-size: x-large;">
      Vậy, 
      <span class="MathJax_Preview">
        \frac{1}{3}
      </span>
      <script type="math/tex">
//<![CDATA[
\frac{1}{3}
//]]>
      </script>
       có bằng 0.3333333... không?!
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple; font-size: x-large;">
      <br/>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple; font-size: x-large;">
      <br/>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple; font-size: x-large;">
      <br/>
    </span>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','43','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-6156997390868179199">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-tM5PK1TG_Jk/VR9gryTlkDI/AAAAAAAAE7A/mfJONkT_N80/s1600/vuontoan_mathgarden_francis_euler.jpg" height="283" width="400"/>
  </div>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    H
  </span>
  ôm nay xin giới thiệu với các bạn một lời giải độc đáo của nhà toán học Euler cho hằng đẳng thức sau đây:

  <span class="MathJax_Preview">
    \frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \frac{1}{5^2} + \dots = \frac{\pi^2}{6}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \frac{1}{5^2} + \dots = \frac{\pi^2}{6}
//]]>
  </script>
  <br/>
  
Euler tìm ra cách chứng minh này vào năm 1734 khi ông 28 tuổi.
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    C
  </span>
  húng ta sẽ trình bày phương pháp của Euler theo từng bước.
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Bước 1. Dùng 
    <a href="http://vuontoanblog.blogspot.com/2015/04/Taylor-series.html" target="_blank">
      khai triển Taylor
    </a>
     cho hàm số 
    <span class="MathJax_Preview">
      f(x) = \sin(x)
    </span>
    <script type="math/tex">
//<![CDATA[
f(x) = \sin(x)
//]]>
    </script>
  </span>
  <br/>
  <br/>
  
Chúng ta có
  <br/>
  <span class="MathJax_Preview">
    f(x) = \sin(x) ~\Rightarrow ~ f(0) = 0
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f(x) = \sin(x) ~\Rightarrow ~ f(0) = 0
//]]>
  </script>
  <span class="MathJax_Preview">
    f(x) = \cos(x) ~\Rightarrow ~ f(0) = 1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f(x) = \cos(x) ~\Rightarrow ~ f(0) = 1
//]]>
  </script>
  <span class="MathJax_Preview">
    f''(x) = -\sin(x) ~\Rightarrow ~ f''(0) = 0
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f''(x) = -\sin(x) ~\Rightarrow ~ f''(0) = 0
//]]>
  </script>
  <span class="MathJax_Preview">
    f^{(3)}(x) = -\cos(x) ~\Rightarrow ~ f^{(3)}(0) = -1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f^{(3)}(x) = -\cos(x) ~\Rightarrow ~ f^{(3)}(0) = -1
//]]>
  </script>
  <span class="MathJax_Preview">
    f^{(4)}(x) = \sin(x) ~\Rightarrow ~ f^{(4)}(0) = 0
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f^{(4)}(x) = \sin(x) ~\Rightarrow ~ f^{(4)}(0) = 0
//]]>
  </script>
  <span class="MathJax_Preview">
    f^{(5)}(x) = \cos(x) ~\Rightarrow ~ f^{(5)}(0) = 1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f^{(5)}(x) = \cos(x) ~\Rightarrow ~ f^{(5)}(0) = 1
//]]>
  </script>
  <span class="MathJax_Preview">
    f^{(6)}(x) = -\sin(x) ~\Rightarrow ~ f^{(6)}(0) = 0
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f^{(6)}(x) = -\sin(x) ~\Rightarrow ~ f^{(6)}(0) = 0
//]]>
  </script>
  <span class="MathJax_Preview">
    f^{(7)}(x) = -\cos(x) ~\Rightarrow ~ f^{(7)}(0) = -1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f^{(7)}(x) = -\cos(x) ~\Rightarrow ~ f^{(7)}(0) = -1
//]]>
  </script>
  <br/>
  
Khai triển 
  <a href="http://vuontoanblog.blogspot.com/2015/04/Taylor-series.html" target="_blank">
    chuỗi Taylor
  </a>
   của hàm số 
  <span class="MathJax_Preview">
    f(x) = \sin(x)
  </span>
  <script type="math/tex">
//<![CDATA[
f(x) = \sin(x)
//]]>
  </script>
   là như sau:
  <br/>
  <span class="MathJax_Preview">
    f(x) = f(0) + f(0) x + \frac{f''(0)}{2!} x^2 + \frac{f^{(3)}(0)}{3!} x^3 + \frac{f^{(4)}(0)}{4!} x^4 + \dots + \frac{f^{(n)}(0)}{n!} x^n + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f(x) = f(0) + f(0) x + \frac{f''(0)}{2!} x^2 + \frac{f^{(3)}(0)}{3!} x^3 + \frac{f^{(4)}(0)}{4!} x^4 + \dots + \frac{f^{(n)}(0)}{n!} x^n + \dots
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \sin(x) = x - \frac{1}{3!} x^3 + \frac{1}{5!} x^5 - \frac{1}{7!} x^7 + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\sin(x) = x - \frac{1}{3!} x^3 + \frac{1}{5!} x^5 - \frac{1}{7!} x^7 + \dots
//]]>
  </script>
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <span class="MathJax_Preview">
        \sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
\sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots
//]]>
      </script>
    </span>
  </blockquote>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    Bước 2. Tìm nghiệm của hàm số 
    <span class="MathJax_Preview">
      f(x) = \sin(x)
    </span>
    <script type="math/tex">
//<![CDATA[
f(x) = \sin(x)
//]]>
    </script>
  </span>
  <br/>
  <br/>
  
Phương trình lượng giác 
  <span class="MathJax_Preview">
    f(x) = \sin(x) = 0
  </span>
  <script type="math/tex">
//<![CDATA[
f(x) = \sin(x) = 0
//]]>
  </script>
   có nghiệm 
  <span class="MathJax_Preview">
    x=0, ~x = \pm \pi, ~x = \pm 2 \pi, ~x = \pm 3 \pi, \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
x=0, ~x = \pm \pi, ~x = \pm 2 \pi, ~x = \pm 3 \pi, \dots
//]]>
  </script>
  <br/>
  <br/>
  
Do đó
  <br/>
  <span class="MathJax_Preview">
    \sin(x) = C x (x - \pi)(x + \pi)(x - 2\pi)(x + 2 \pi)(x - 3\pi)(x + 3\pi) \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\sin(x) = C x (x - \pi)(x + \pi)(x - 2\pi)(x + 2 \pi)(x - 3\pi)(x + 3\pi) \dots
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \sin(x) = C x (x^2 - \pi^2)(x^2 - 2^2 \pi^2)(x^2 - 3^2 \pi^2)(x^2 - 4^2 \pi^2) \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\sin(x) = C x (x^2 - \pi^2)(x^2 - 2^2 \pi^2)(x^2 - 3^2 \pi^2)(x^2 - 4^2 \pi^2) \dots
//]]>
  </script>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Bước 3. Kết hợp bước 1 và bước 2
  </span>
  <br/>
  <br/>
  
Kết hợp bước 1 và bước 2, chúng ta có
  <br/>
  <span class="MathJax_Preview">
    \sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots
//]]>
  </script>
  <span class="MathJax_Preview">
    = C x (x^2 - \pi^2)(x^2 - 2^2 \pi^2)(x^2 - 3^2 \pi^2)(x^2 - 4^2 \pi^2) \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= C x (x^2 - \pi^2)(x^2 - 2^2 \pi^2)(x^2 - 3^2 \pi^2)(x^2 - 4^2 \pi^2) \dots
//]]>
  </script>
  <br/>
  <br/>
  
Do đó
  <br/>
  <span class="MathJax_Preview">
    1 - \frac{x^2}{3!} + \frac{x^4}{5!} - \frac{x^6}{7!} + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
1 - \frac{x^2}{3!} + \frac{x^4}{5!} - \frac{x^6}{7!} + \dots
//]]>
  </script>
  <span class="MathJax_Preview">
    = C (x^2 - \pi^2)(x^2 - 2^2 \pi^2)(x^2 - 3^2 \pi^2)(x^2 - 4^2 \pi^2) \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= C (x^2 - \pi^2)(x^2 - 2^2 \pi^2)(x^2 - 3^2 \pi^2)(x^2 - 4^2 \pi^2) \dots
//]]>
  </script>
  <br/>
  <br/>
  
Thay 
  <span class="MathJax_Preview">
    x^2
  </span>
  <script type="math/tex">
//<![CDATA[
x^2
//]]>
  </script>
   bằng 
  <span class="MathJax_Preview">
    x
  </span>
  <script type="math/tex">
//<![CDATA[
x
//]]>
  </script>
  , chúng ta có
  <br/>
  <span class="MathJax_Preview">
    1 - \frac{x}{3!} + \frac{x^2}{5!} - \frac{x^3}{7!} + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
1 - \frac{x}{3!} + \frac{x^2}{5!} - \frac{x^3}{7!} + \dots
//]]>
  </script>
  <span class="MathJax_Preview">
    = C (x - \pi^2)(x - 2^2 \pi^2)(x - 3^2 \pi^2)(x - 4^2 \pi^2) \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= C (x - \pi^2)(x - 2^2 \pi^2)(x - 3^2 \pi^2)(x - 4^2 \pi^2) \dots
//]]>
  </script>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Bước 4. Chuẩn hoá để triệt tiêu hằng số 
    <span class="MathJax_Preview">
      C
    </span>
    <script type="math/tex">
//<![CDATA[
C
//]]>
    </script>
  </span>
  <br/>
  <br/>
  
Nếu chúng ta có một phương trình dạng
  <br/>
  <span class="MathJax_Preview">
    f(x) = C g_1(x) g_2(x) g_3(x) \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f(x) = C g_1(x) g_2(x) g_3(x) \dots
//]]>
  </script>
  <br/>
  
thì để chuẩn hoá, chúng ta làm như sau
  <br/>
  <span class="MathJax_Preview">
    \frac{f(x)}{f(0)} = \frac{g_1(x)}{g_1(0)} \frac{g_2(x)}{g_2(0)} \frac{g_3(x)}{g_3(0)} \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{f(x)}{f(0)} = \frac{g_1(x)}{g_1(0)} \frac{g_2(x)}{g_2(0)} \frac{g_3(x)}{g_3(0)} \dots
//]]>
  </script>
  <br/>
  
Vậy, với phương trình ở bước 3
  <br/>
  <span class="MathJax_Preview">
    1 - \frac{x}{3!} + \frac{x^2}{5!} - \frac{x^3}{7!} + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
1 - \frac{x}{3!} + \frac{x^2}{5!} - \frac{x^3}{7!} + \dots
//]]>
  </script>
  <span class="MathJax_Preview">
    = C (x - \pi^2)(x - 2^2 \pi^2)(x - 3^2 \pi^2)(x - 4^2 \pi^2) \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= C (x - \pi^2)(x - 2^2 \pi^2)(x - 3^2 \pi^2)(x - 4^2 \pi^2) \dots
//]]>
  </script>
  <br/>
  
làm chuẩn hoá, chúng ta có
  <br/>
  <span class="MathJax_Preview">
    1 - \frac{x}{3!} + \frac{x^2}{5!} - \frac{x^3}{7!} + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
1 - \frac{x}{3!} + \frac{x^2}{5!} - \frac{x^3}{7!} + \dots
//]]>
  </script>
  <span class="MathJax_Preview">
    = \frac{(x - \pi^2)}{-\pi^2} \frac{(x - 2^2 \pi^2)}{-2^2 \pi^2} \frac{(x - 3^2 \pi^2)}{-3^2 \pi^2} \frac{(x - 4^2 \pi^2)}{-4^2 \pi^2} \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= \frac{(x - \pi^2)}{-\pi^2} \frac{(x - 2^2 \pi^2)}{-2^2 \pi^2} \frac{(x - 3^2 \pi^2)}{-3^2 \pi^2} \frac{(x - 4^2 \pi^2)}{-4^2 \pi^2} \dots
//]]>
  </script>
  <span class="MathJax_Preview">
    = (1 - \frac{x}{\pi^2})  (1 - \frac{x}{2^2 \pi^2}) (1 - \frac{x}{3^2 \pi^2}) (1 - \frac{x}{4^2 \pi^2})\dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= (1 - \frac{x}{\pi^2})  (1 - \frac{x}{2^2 \pi^2}) (1 - \frac{x}{3^2 \pi^2}) (1 - \frac{x}{4^2 \pi^2})\dots
//]]>
  </script>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    Bước 5. Dùng công thức Vieta
  </span>
  <br/>
  <br/>
  
So sánh hệ số của đơn thức 
  <span class="MathJax_Preview">
    x
  </span>
  <script type="math/tex">
//<![CDATA[
x
//]]>
  </script>
   ở hai vế phương trình
  <br/>
  <span class="MathJax_Preview">
    1 - \frac{x}{3!} + \frac{x^2}{5!} - \frac{x^3}{7!} + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
1 - \frac{x}{3!} + \frac{x^2}{5!} - \frac{x^3}{7!} + \dots
//]]>
  </script>
  <span class="MathJax_Preview">
    = (1 - \frac{x}{\pi^2})  (1 - \frac{x}{2^2 \pi^2}) (1 - \frac{x}{3^2 \pi^2}) (1 - \frac{x}{4^2 \pi^2})\dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= (1 - \frac{x}{\pi^2})  (1 - \frac{x}{2^2 \pi^2}) (1 - \frac{x}{3^2 \pi^2}) (1 - \frac{x}{4^2 \pi^2})\dots
//]]>
  </script>
  <br/>
  
chúng ta có

  <span class="MathJax_Preview">
    - \frac{x}{3!} = - \frac{x}{\pi^2} - \frac{x}{2^2 \pi^2} - \frac{x}{3^2 \pi^2} - \frac{x}{4^2 \pi^2} - \dots 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
- \frac{x}{3!} = - \frac{x}{\pi^2} - \frac{x}{2^2 \pi^2} - \frac{x}{3^2 \pi^2} - \frac{x}{4^2 \pi^2} - \dots 
//]]>
  </script>
  <br/>
  
Vậy cho nên

  <span class="MathJax_Preview">
    \frac{1}{3!} = \frac{1}{\pi^2} + \frac{1}{2^2 \pi^2} + \frac{1}{3^2 \pi^2} + \frac{1}{4^2 \pi^2} + \dots 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{1}{3!} = \frac{1}{\pi^2} + \frac{1}{2^2 \pi^2} + \frac{1}{3^2 \pi^2} + \frac{1}{4^2 \pi^2} + \dots 
//]]>
  </script>
  <br/>
  
Từ đây chúng ta rút ra được điều cần chứng minh
  <br/>
  <span class="MathJax_Preview">
    \frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \dots =\frac{\pi^2}{3!}= \frac{\pi^2}{6}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \dots =\frac{\pi^2}{3!}= \frac{\pi^2}{6}
//]]>
  </script>
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    C
  </span>
  húng ta tạm dừng ở đây. Ở phần bài tập về nhà, các bạn có thể dùng phương pháp của Euler cho hàm số 
  <span class="MathJax_Preview">
    f(x) = \cos(x)
  </span>
  <script type="math/tex">
//<![CDATA[
f(x) = \cos(x)
//]]>
  </script>
   để thiết lập một vài hằng đẳng thức thú vị. Hẹn gặp lại các bạn ở kỳ sau.
  <br/>
  <br/>
  <i>
    <br/>
  </i>
  <i>
    <br/>
  </i>
  <i>
    <br/>
  </i>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Chứng minh rằng công thức khai triển chuỗi Taylor cho hàm số 
  <span class="MathJax_Preview">
    f(x) = \cos(x)
  </span>
  <script type="math/tex">
//<![CDATA[
f(x) = \cos(x)
//]]>
  </script>
   là như sau

  <span class="MathJax_Preview">
    \cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots
//]]>
  </script>
  <br/>
  <br/>
  
2. Nghiệm của phương trình lượng giác 
  <span class="MathJax_Preview">
    \cos(x) = 0
  </span>
  <script type="math/tex">
//<![CDATA[
\cos(x) = 0
//]]>
  </script>
   là 
  <span class="MathJax_Preview">
    x = \pm \frac{\pi}{2}, ~x = \pm \frac{3 \pi}{2}, ~x = \pm \frac{5 \pi}{2}, \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
x = \pm \frac{\pi}{2}, ~x = \pm \frac{3 \pi}{2}, ~x = \pm \frac{5 \pi}{2}, \dots
//]]>
  </script>
  <br/>
  
từ đó suy ra
  <br/>
  <span class="MathJax_Preview">
    \cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots = (1 - \frac{4 x^2}{\pi^2})(1 - \frac{4 x^2}{3^2 \pi^2})(1 - \frac{4 x^2}{5^2 \pi^2}) \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots = (1 - \frac{4 x^2}{\pi^2})(1 - \frac{4 x^2}{3^2 \pi^2})(1 - \frac{4 x^2}{5^2 \pi^2}) \dots
//]]>
  </script>
  <br/>
  <br/>
  
3. Chứng minh rằng
  <br/>
  <span class="MathJax_Preview">
    \frac{1 }{1^2} + \frac{1 }{3^2} + \frac{1 }{5^2} + \dots = \frac{\pi^2}{8} 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{1 }{1^2} + \frac{1 }{3^2} + \frac{1 }{5^2} + \dots = \frac{\pi^2}{8} 
//]]>
  </script>
  <br/>
  <br/>
  
4. Chứng minh rằng
  <br/>
  <span class="MathJax_Preview">
    \frac{1 }{1^2} + \frac{1 }{3^2} + \frac{1 }{5^2} + \dots = \frac{3}{4} \left( \frac{1 }{1^2} + \frac{1 }{2^2} + \frac{1 }{3^2} + \frac{1 }{4^2} + \dots \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{1 }{1^2} + \frac{1 }{3^2} + \frac{1 }{5^2} + \dots = \frac{3}{4} \left( \frac{1 }{1^2} + \frac{1 }{2^2} + \frac{1 }{3^2} + \frac{1 }{4^2} + \dots \right)
//]]>
  </script>
  <br/>
  
từ đó suy ra
  <br/>
  <span class="MathJax_Preview">
     \frac{1 }{1^2} + \frac{1 }{2^2} + \frac{1 }{3^2} + \frac{1 }{4^2} + \dots = \frac{\pi^2}{6}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
 \frac{1 }{1^2} + \frac{1 }{2^2} + \frac{1 }{3^2} + \frac{1 }{4^2} + \dots = \frac{\pi^2}{6}
//]]>
  </script>
  <br/>
  <br/>
  
5. Dùng 
  <a href="http://google.com/">
    google.com
  </a>
   để tìm hiểu về bài toán Basel và hàm số zeta của Riemann.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div>
    <br/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','92','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-7594473501181747050">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-BKbef1h1E6w/VRyIIp_NvrI/AAAAAAAAE6s/KDfCJxW3J7I/s1600/vuontoan_mathgarden_james_art.jpg" height="309" width="320"/>
  </div>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    K
  </span>
  ỳ trước nhân dịp 
  <a href="http://vuontoanblog.blogspot.com/2015/03/pi-2015.html" target="_blank">
    ngày số 
    <span class="MathJax_Preview">
      \pi
    </span>
    <script type="math/tex">
//<![CDATA[
\pi
//]]>
    </script>
  </a>
  , chúng ta được giới thiệu một hằng đẳng thức rất đẹp của Euler
  <br/>
  <span class="MathJax_Preview">
    \frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \frac{1}{5^2} + \dots = \frac{\pi^2}{6}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \frac{1}{5^2} + \dots = \frac{\pi^2}{6}
//]]>
  </script>
  <br/>
  <br/>
  
Nhà toán học Euler có một phương pháp rất độc đáo để thiết lập công thức này.
Phương pháp của Euler sử dụng phép khai triển Taylor, và vì vậy, hôm nay chúng ta sẽ làm quen với chuỗi Taylor,
rồi kỳ sau chúng ta sẽ học về cách chứng minh của Euler.
  <br/>
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Ví dụ về đa thức bậc 2
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    T
  </span>
  rước khi đi vào tìm hiểu chuỗi Taylor, các bạn thử tìm câu trả lời cho một câu đố nhỏ sau đây:
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      Cho đa thức bậc 2, 
      <span class="MathJax_Preview">
        p(x) = a x^2 + b x + c
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
p(x) = a x^2 + b x + c
//]]>
      </script>
    </span>
    <span style="color: purple;">
      Tìm một công thức cho hệ số 
      <span class="MathJax_Preview">
        c
      </span>
      <script type="math/tex">
//<![CDATA[
c
//]]>
      </script>
       dựa vào hàm số 
      <span class="MathJax_Preview">
        p
      </span>
      <script type="math/tex">
//<![CDATA[
p
//]]>
      </script>
      .
    </span>
  </blockquote>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  
Các bạn đã tìm ra câu trả lời chưa?
  <br/>
  <br/>
  
Công thức cho hệ số 
  <span class="MathJax_Preview">
    c
  </span>
  <script type="math/tex">
//<![CDATA[
c
//]]>
  </script>
   là:

  <span class="MathJax_Preview">
    c = p(0)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
c = p(0)
//]]>
  </script>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    C
  </span>
  âu đố tiếp theo là như sau
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      Cho đa thức bậc 2, 
      <span class="MathJax_Preview">
        p(x) = a x^2 + b x + c
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
p(x) = a x^2 + b x + c
//]]>
      </script>
    </span>
    <br/>
    <span style="color: purple;">
      Tìm một công thức cho hệ số 
      <span class="MathJax_Preview">
        b
      </span>
      <script type="math/tex">
//<![CDATA[
b
//]]>
      </script>
       dựa vào hàm số 
      <span class="MathJax_Preview">
        p
      </span>
      <script type="math/tex">
//<![CDATA[
p
//]]>
      </script>
      .
    </span>
    <br/>
    <span style="color: purple;">
      (
      <i>
        Gợi ý: lấy đạo hàm của 
        <span class="MathJax_Preview">
          p
        </span>
        <script type="math/tex">
//<![CDATA[
p
//]]>
        </script>
        .
      </i>
      )
    </span>
  </blockquote>
  <br/>
  <br/>
  <br/>
  <br/>
  
Lấy đạo hàm của 
  <span class="MathJax_Preview">
    p
  </span>
  <script type="math/tex">
//<![CDATA[
p
//]]>
  </script>
   chúng ta có

  <span class="MathJax_Preview">
    p(x) = 2 a x + b
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
p(x) = 2 a x + b
//]]>
  </script>
  <br/>
  
Vậy 
  <span class="MathJax_Preview">
    b = p(0)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
b = p(0)
//]]>
  </script>
  <br/>
  <br/>
  
Đến đây chắc các bạn đã đoán ra công thức cho hệ số 
  <span class="MathJax_Preview">
    a
  </span>
  <script type="math/tex">
//<![CDATA[
a
//]]>
  </script>
   rồi phải không?!
  <br/>
  <br/>
  
Lấy đạo hàm một lần nữa chúng ta có 
  <span class="MathJax_Preview">
    p''(x) = 2a
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
p''(x) = 2a
//]]>
  </script>
  <br/>
  
Vậy chúng ta có 
  <span class="MathJax_Preview">
    c = p(0), ~~ b = p(0), ~~ a = \frac{1}{2} p''(0).
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
c = p(0), ~~ b = p(0), ~~ a = \frac{1}{2} p''(0).
//]]>
  </script>
  <br/>
  <br/>
  
Thay các hệ số này vào công thức bậc 2, chúng ta có

  <span class="MathJax_Preview">
    p(x) = a x^2 + bx + c=\frac{1}{2} p''(0) x^2 + p(0) x + p(0)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
p(x) = a x^2 + bx + c=\frac{1}{2} p''(0) x^2 + p(0) x + p(0)
//]]>
  </script>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Ví dụ về đa thức bậc 5
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    B
  </span>
  ây giờ, giả sử chúng ta có đa thức bậc 5 như sau:

  <span class="MathJax_Preview">
    p(x) = a_5 x^5 + a_4 x^4 + a_3 x^3 + a_2 x^2 + a_1 x + a_0
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
p(x) = a_5 x^5 + a_4 x^4 + a_3 x^3 + a_2 x^2 + a_1 x + a_0
//]]>
  </script>
  <br/>
  <br/>
  
Làm tương tự như trên chúng ta dễ dàng tìm ra công thức cho các hệ số 
  <span class="MathJax_Preview">
    a_i
  </span>
  <script type="math/tex">
//<![CDATA[
a_i
//]]>
  </script>
  .
  <br/>
  <br/>
  
Đầu tiên chúng ta có

  <span class="MathJax_Preview">
    a_0 = p(0)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
a_0 = p(0)
//]]>
  </script>
  <br/>
  <br/>
  
Lấy đạo hàm bậc 1 chúng ta có

  <span class="MathJax_Preview">
    p(x) = 5 a_5 x^4 + 4 a_4 x^3 + 3 a_3 x^2 + 2 a_2 x + a_1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
p(x) = 5 a_5 x^4 + 4 a_4 x^3 + 3 a_3 x^2 + 2 a_2 x + a_1
//]]>
  </script>
  <br/>
  <br/>
  
Vậy 
  <span class="MathJax_Preview">
    a_1 = p(0)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
a_1 = p(0)
//]]>
  </script>
  <br/>
  <br/>
  
Lấy đạo hàm bậc 2 chúng ta có

  <span class="MathJax_Preview">
    p''(x) = 5 \times 4 \, a_5 x^3 + 4 \times 3 \, a_4 x^2 + 3 \times 2 \, a_3 x + 2 a_2
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
p''(x) = 5 \times 4 \, a_5 x^3 + 4 \times 3 \, a_4 x^2 + 3 \times 2 \, a_3 x + 2 a_2
//]]>
  </script>
  <br/>
  <br/>
  
Vậy 
  <span class="MathJax_Preview">
    a_2 = \frac{p''(0)}{2}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
a_2 = \frac{p''(0)}{2}
//]]>
  </script>
  <br/>
  <br/>
  
Lấy đạo hàm bậc 3 chúng ta có

  <span class="MathJax_Preview">
    p''(x) = 5 \times 4 \times 3 \, a_5 x^2 + 4 \times 3 \times 2 \, a_4 x + 3 \times 2 \times 1 \, a_3
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
p''(x) = 5 \times 4 \times 3 \, a_5 x^2 + 4 \times 3 \times 2 \, a_4 x + 3 \times 2 \times 1 \, a_3
//]]>
  </script>
  <br/>
  <br/>
  
Vậy 
  <span class="MathJax_Preview">
    a_3 = \frac{p''(0)}{3 \times 2 \times 1} = \frac{p''(0)}{3!}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
a_3 = \frac{p''(0)}{3 \times 2 \times 1} = \frac{p''(0)}{3!}
//]]>
  </script>
  <br/>
  <br/>
  <span style="color: purple;">
    (Ký hiệu 
    <span class="MathJax_Preview">
      n!
    </span>
    <script type="math/tex">
//<![CDATA[
n!
//]]>
    </script>
     đọc là 
    <span class="MathJax_Preview">
      n
    </span>
    <script type="math/tex">
//<![CDATA[
n
//]]>
    </script>
     giai thừa, 
    <span class="MathJax_Preview">
      n!= 1 \times 2 \times \dots \times (n-1) \times n
    </span>
    <script type="math/tex">
//<![CDATA[
n!= 1 \times 2 \times \dots \times (n-1) \times n
//]]>
    </script>
    )
  </span>
  <br/>
  <br/>
  
Lấy đạo hàm bậc 4 chúng ta có

  <span class="MathJax_Preview">
    p''''(x) = 5 \times 4 \times 3 \times 2 \, a_5 x + 4 \times 3 \times 2 \times 1 \, a_4
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
p''''(x) = 5 \times 4 \times 3 \times 2 \, a_5 x + 4 \times 3 \times 2 \times 1 \, a_4
//]]>
  </script>
  <br/>
  <br/>
  
Vậy 
  <span class="MathJax_Preview">
    a_4 = \frac{p''''(0)}{4 \times 3 \times 2 \times 1} = \frac{p^{(4)}(0)}{4!}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
a_4 = \frac{p''''(0)}{4 \times 3 \times 2 \times 1} = \frac{p^{(4)}(0)}{4!}
//]]>
  </script>
  <br/>
  <br/>
  <span style="color: purple;">
    (Để cho gọn, chúng ta sẽ dùng ký hiệu 
    <span class="MathJax_Preview">
      p^{(n)}(x)
    </span>
    <script type="math/tex">
//<![CDATA[
p^{(n)}(x)
//]]>
    </script>
     để chỉ đạo hàm bậc 
    <span class="MathJax_Preview">
      n
    </span>
    <script type="math/tex">
//<![CDATA[
n
//]]>
    </script>
     của 
    <span class="MathJax_Preview">
      p(x)
    </span>
    <script type="math/tex">
//<![CDATA[
p(x)
//]]>
    </script>
    )
  </span>
  <br/>
  <br/>
  
Cuối cùng, lấy đạo hàm bậc 5 chúng ta có

  <span class="MathJax_Preview">
    p^{(5)}(x) = 5 \times 4 \times 3 \times 2 \times 1 \, a_5
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
p^{(5)}(x) = 5 \times 4 \times 3 \times 2 \times 1 \, a_5
//]]>
  </script>
  <br/>
  <br/>
  
Và 
  <span class="MathJax_Preview">
    a_5 = \frac{p^{(5)}(0)}{5!}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
a_5 = \frac{p^{(5)}(0)}{5!}
//]]>
  </script>
  <br/>
  <br/>
  
Chúng ta thấy công thức tổng quát là

  <span class="MathJax_Preview">
    a_n = \frac{p^{(n)}(0)}{n!}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
a_n = \frac{p^{(n)}(0)}{n!}
//]]>
  </script>
  <br/>
  
vậy,

  <span class="MathJax_Preview">
    p(x) = a_5 x^5 + a_4 x^4 + a_3 x^3 + a_2 x^2 + a_1 x + a_0
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
p(x) = a_5 x^5 + a_4 x^4 + a_3 x^3 + a_2 x^2 + a_1 x + a_0
//]]>
  </script>
  <span class="MathJax_Preview">
    = \frac{p^{(5)}(0)}{5!} x^5 + \frac{p^{(4)}(0)}{4!} x^4 + \frac{p^{(3)}(0)}{3!} x^3 + \frac{p''(0)}{2!} x^2 + p(0) x + p(0)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= \frac{p^{(5)}(0)}{5!} x^5 + \frac{p^{(4)}(0)}{4!} x^4 + \frac{p^{(3)}(0)}{3!} x^3 + \frac{p''(0)}{2!} x^2 + p(0) x + p(0)
//]]>
  </script>
  <span class="MathJax_Preview">
    = p(0) + p(0) x + \frac{p''(0)}{2!} x^2 + \frac{p^{(3)}(0)}{3!} x^3 + \frac{p^{(4)}(0)}{4!} x^4 + \frac{p^{(5)}(0)}{5!} x^5
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= p(0) + p(0) x + \frac{p''(0)}{2!} x^2 + \frac{p^{(3)}(0)}{3!} x^3 + \frac{p^{(4)}(0)}{4!} x^4 + \frac{p^{(5)}(0)}{5!} x^5
//]]>
  </script>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Chuỗi Taylor
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    B
  </span>
  ây giờ chúng ta đã sẵn sàng để học về phép khai triển chuỗi Taylor.
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Khai triển chuỗi Taylor
      </b>
       của một hàm số 
      <span class="MathJax_Preview">
        f(x)
      </span>
      <script type="math/tex">
//<![CDATA[
f(x)
//]]>
      </script>
       là như sau:
    </span>
    <span style="color: purple;">
      <span class="MathJax_Preview">
        f(x) = f(0) + f(0) x + \frac{f''(0)}{2!} x^2 + \frac{f^{(3)}(0)}{3!} x^3 + \frac{f^{(4)}(0)}{4!} x^4 + \dots + \frac{f^{(n)}(0)}{n!} x^n + \dots
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
f(x) = f(0) + f(0) x + \frac{f''(0)}{2!} x^2 + \frac{f^{(3)}(0)}{3!} x^3 + \frac{f^{(4)}(0)}{4!} x^4 + \dots + \frac{f^{(n)}(0)}{n!} x^n + \dots
//]]>
      </script>
    </span>
  </blockquote>
  <br/>
  <br/>
  
Nếu sau này các bạn nhỡ quên về công thức này thì các bạn có thể dùng ví dụ về đa thức bậc 2, bậc 3,... để nhớ lại.
  <br/>
  <br/>
  <br/>
  <br/>
  
Bây giờ chúng ta sẽ tìm chuỗi Taylor cho hàm số 
  <span class="MathJax_Preview">
    e^x
  </span>
  <script type="math/tex">
//<![CDATA[
e^x
//]]>
  </script>
  . 
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Hàm số mũ tự nhiên 
    <span class="MathJax_Preview">
      e^x
    </span>
    <script type="math/tex">
//<![CDATA[
e^x
//]]>
    </script>
  </span>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    T
  </span>
  rong toán học có hai hằng số quan trọng nhất, đó là số 
  <span class="MathJax_Preview">
    \pi \approx 3.14
  </span>
  <script type="math/tex">
//<![CDATA[
\pi \approx 3.14
//]]>
  </script>
   và hằng số Euler 
  <span class="MathJax_Preview">
    e \approx 2.72
  </span>
  <script type="math/tex">
//<![CDATA[
e \approx 2.72
//]]>
  </script>
  .
  <br/>
  
Chúng ta có 
  <span class="MathJax_Preview">
    \lim_{n \to \infty}{\left( 1 + \frac{1}{n} \right)^n} = e
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\lim_{n \to \infty}{\left( 1 + \frac{1}{n} \right)^n} = e
//]]>
  </script>
  <br/>
  <br/>
  
Hàm số mũ tự nhiên 
  <span class="MathJax_Preview">
    f(x) = e^x
  </span>
  <script type="math/tex">
//<![CDATA[
f(x) = e^x
//]]>
  </script>
   là một hàm số rất đặc biệt vì hàm số này có đạo hàm bằng chính nó.
Do đó, nếu chúng ta lấy đạo hàm bao nhiêu lần đi nữa thì kết quả vẫn là 
  <span class="MathJax_Preview">
    e^x
  </span>
  <script type="math/tex">
//<![CDATA[
e^x
//]]>
  </script>
  :

  <span class="MathJax_Preview">
    f(x) = f(x) = f''(x) = f^{(3)}(x) = f^{(4)}(x) = f^{(5)}(x) = \dots = e^x
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f(x) = f(x) = f''(x) = f^{(3)}(x) = f^{(4)}(x) = f^{(5)}(x) = \dots = e^x
//]]>
  </script>
  <br/>
  <br/>
  
Vì vậy

  <span class="MathJax_Preview">
    f(0) = f(0) = f''(0) = f^{(3)}(0) = f^{(4)}(0) = f^{(5)}(0) = \dots = e^0 = 1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f(0) = f(0) = f''(0) = f^{(3)}(0) = f^{(4)}(0) = f^{(5)}(0) = \dots = e^0 = 1
//]]>
  </script>
  <br/>
  <br/>
  
Khai triển chuỗi Taylor của hàm số 
  <span class="MathJax_Preview">
    f(x) = e^x
  </span>
  <script type="math/tex">
//<![CDATA[
f(x) = e^x
//]]>
  </script>
   là như sau:

  <span class="MathJax_Preview">
    f(x) = f(0) + f(0) x + \frac{f''(0)}{2!} x^2 + \frac{f^{(3)}(0)}{3!} x^3 + \frac{f^{(4)}(0)}{4!} x^4 + \dots + \frac{f^{(n)}(0)}{n!} x^n + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f(x) = f(0) + f(0) x + \frac{f''(0)}{2!} x^2 + \frac{f^{(3)}(0)}{3!} x^3 + \frac{f^{(4)}(0)}{4!} x^4 + \dots + \frac{f^{(n)}(0)}{n!} x^n + \dots
//]]>
  </script>
  <span class="MathJax_Preview">
    e^x = 1 + x + \frac{1}{2!} x^2 + \frac{1}{3!} x^3 + \frac{1}{4!} x^4 + \dots + \frac{1}{n!} x^n + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
e^x = 1 + x + \frac{1}{2!} x^2 + \frac{1}{3!} x^3 + \frac{1}{4!} x^4 + \dots + \frac{1}{n!} x^n + \dots
//]]>
  </script>
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <span class="MathJax_Preview">
        e^x = 1 + \frac{x}{1!} + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \dots + \frac{x^n}{n!} + \dots
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
e^x = 1 + \frac{x}{1!} + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \dots + \frac{x^n}{n!} + \dots
//]]>
      </script>
    </span>
  </blockquote>
  <br/>
  
Thay 
  <span class="MathJax_Preview">
    x = \pm 1
  </span>
  <script type="math/tex">
//<![CDATA[
x = \pm 1
//]]>
  </script>
   chúng ta có hai hằng đẳng thức sau đây:

  <span class="MathJax_Preview">
    e = 1 + \frac{1}{1!} + \frac{1}{2!} + \frac{1}{3!} + \frac{1}{4!} + \frac{1}{5!} + \dots 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
e = 1 + \frac{1}{1!} + \frac{1}{2!} + \frac{1}{3!} + \frac{1}{4!} + \frac{1}{5!} + \dots 
//]]>
  </script>
  <span class="MathJax_Preview">
    \frac{1}{e} = 1 - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \frac{1}{4!} - \frac{1}{5!} + \dots 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{1}{e} = 1 - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \frac{1}{4!} - \frac{1}{5!} + \dots 
//]]>
  </script>
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: large;">
    C
  </span>
  húng ta tạm dừng ở đây. Kỳ sau chúng ta sẽ dùng công thức chuỗi Taylor để chứng minh hằng đẳng thức Euler
  <br/>
  <span class="MathJax_Preview">
    \frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \frac{1}{5^2} + \dots = \frac{\pi^2}{6}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \frac{1}{5^2} + \dots = \frac{\pi^2}{6}
//]]>
  </script>
  <br/>
  
Hẹn gặp lại các bạn.
  <br/>
  <br/>
  <i>
    <br/>
  </i>
  <i>
    <br/>
  </i>
  <i>
    <br/>
  </i>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Dùng khai triển chuỗi Taylor cho hàm số 
  <span class="MathJax_Preview">
    g(x)
  </span>
  <script type="math/tex">
//<![CDATA[
g(x)
//]]>
  </script>
  <span class="MathJax_Preview">
    g(x) = g(0) + g(0) x + \frac{g''(0)}{2!} x^2 + \frac{g^{(3)}(0)}{3!} x^3 + \frac{g^{(4)}(0)}{4!} x^4 + \dots + \frac{g^{(n)}(0)}{n!} x^n + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
g(x) = g(0) + g(0) x + \frac{g''(0)}{2!} x^2 + \frac{g^{(3)}(0)}{3!} x^3 + \frac{g^{(4)}(0)}{4!} x^4 + \dots + \frac{g^{(n)}(0)}{n!} x^n + \dots
//]]>
  </script>
  <br/>
  
Sau đó đặt 
  <span class="MathJax_Preview">
    f(x+a) = g(x)
  </span>
  <script type="math/tex">
//<![CDATA[
f(x+a) = g(x)
//]]>
  </script>
  , chứng minh rằng

  <span class="MathJax_Preview">
    f(x+a) = f(a) + f(a) x + \frac{f''(a)}{2!} x^2 + \frac{f^{(3)}(a)}{3!} x^3 + \frac{f^{(4)}(a)}{4!} x^4 + \dots + \frac{f^{(n)}(a)}{n!} x^n + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f(x+a) = f(a) + f(a) x + \frac{f''(a)}{2!} x^2 + \frac{f^{(3)}(a)}{3!} x^3 + \frac{f^{(4)}(a)}{4!} x^4 + \dots + \frac{f^{(n)}(a)}{n!} x^n + \dots
//]]>
  </script>
  <br/>
  
Từ đó suy ra
  <br/>
  <span class="MathJax_Preview">
    f(x) = f(a) + f(a) (x-a) + \frac{f''(a)}{2!} (x-a)^2 + \frac{f^{(3)}(a)}{3!} (x-a)^3 + \frac{f^{(4)}(a)}{4!} (x-a)^4 + \dots + \frac{f^{(n)}(a)}{n!} (x-a)^n + \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
f(x) = f(a) + f(a) (x-a) + \frac{f''(a)}{2!} (x-a)^2 + \frac{f^{(3)}(a)}{3!} (x-a)^3 + \frac{f^{(4)}(a)}{4!} (x-a)^4 + \dots + \frac{f^{(n)}(a)}{n!} (x-a)^n + \dots
//]]>
  </script>
  <br/>
  
Công thức này gọi là khai triển chuỗi Taylor tại điểm 
  <span class="MathJax_Preview">
    x =a
  </span>
  <script type="math/tex">
//<![CDATA[
x =a
//]]>
  </script>
  .
  <br/>
  <br/>
  <br/>
  
2. Chứng minh rằng công thức khai triển chuỗi Taylor cho hàm số 
  <span class="MathJax_Preview">
    \sin(x)
  </span>
  <script type="math/tex">
//<![CDATA[
\sin(x)
//]]>
  </script>
   là như sau:

  <span class="MathJax_Preview">
    \sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \frac{x^9}{9!} - \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \frac{x^9}{9!} - \dots
//]]>
  </script>
  <br/>
  <br/>
  
3. Chứng minh rằng công thức khai triển chuỗi Taylor cho hàm số 
  <span class="MathJax_Preview">
    \cos(x)
  </span>
  <script type="math/tex">
//<![CDATA[
\cos(x)
//]]>
  </script>
   là như sau:

  <span class="MathJax_Preview">
    \cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \frac{x^8}{8!} - \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \frac{x^8}{8!} - \dots
//]]>
  </script>
  <br/>
  <br/>
  
4. Tìm công thức khai triển chuỗi Taylor cho hàm số 
  <span class="MathJax_Preview">
    f(x) = \log_{e}(1 + x)
  </span>
  <script type="math/tex">
//<![CDATA[
f(x) = \log_{e}(1 + x)
//]]>
  </script>
  .
  <br/>
  <br/>
  
5. Tìm công thức khai triển chuỗi Taylor cho hàm số 
  <span class="MathJax_Preview">
    f(x) = \sqrt{x + 1}
  </span>
  <script type="math/tex">
//<![CDATA[
f(x) = \sqrt{x + 1}
//]]>
  </script>
  .
  <br/>
  <br/>
  
6. Dùng 
  <a href="http://google.com/">
    google.com
  </a>
   để tìm hiểu về hằng số Euler 
  <span class="MathJax_Preview">
    e
  </span>
  <script type="math/tex">
//<![CDATA[
e
//]]>
  </script>
   và ứng dụng của nó trong việc tính lãi suất ngân hàng.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','28','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-1966213587924286710">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-gLWPB_annts/VPqA9COO3uI/AAAAAAAAE3Q/qNcAKNz9qgE/s1600/vuontoan_mathgarden_pi_f.jpg" height="223" width="320"/>
  </div>
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <br/>
  
Tháng 3 ngày 14 hằng năm được gọi là 
  <span style="color: purple;">
    <b>
      <i>
        Ngày số 
        <span class="MathJax_Preview">
          \pi
        </span>
        <script type="math/tex">
//<![CDATA[
\pi
//]]>
        </script>
      </i>
    </b>
  </span>
   vì 
  <span class="MathJax_Preview">
    \pi \approx 3.14
  </span>
  <script type="math/tex">
//<![CDATA[
\pi \approx 3.14
//]]>
  </script>
  .
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-I6Pl9q8Ejok/VO_uawPl4JI/AAAAAAAAE1w/UvzDUeKUd-E/s1600/vuontoan_mathgarden_pi1c.png" height="199" width="200"/>
  </div>
  <br/>
  
Nếu chúng ta vẽ một đường tròn có bán kính bằng 1, thì số 
  <span class="MathJax_Preview">
    \pi
  </span>
  <script type="math/tex">
//<![CDATA[
\pi
//]]>
  </script>
   chính là độ dài của một 
  <b>
    nửa
  </b>
   đường tròn.
  <br/>
  <br/>
  
Độ dài của toàn bộ đường tròn gọi là 
  <span class="MathJax_Preview">
    \tau
  </span>
  <script type="math/tex">
//<![CDATA[
\tau
//]]>
  </script>
  , cho nên 
  <span class="MathJax_Preview">
    \tau = 2 \pi \approx 6.28
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\tau = 2 \pi \approx 6.28
//]]>
  </script>
  <br/>
  <br/>
  <br/>
  
Ở hình vẽ dưới đây chúng ta thấy chu vi của lục giác đều là 6, cho nên chu vi của đường tròn lớn hơn và xấp xỉ với 6:
  <br/>
  <span class="MathJax_Preview">
    \tau &gt; \approx 6
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\tau > \approx 6
//]]>
  </script>
  <br/>
  
và như vậy 
  <span class="MathJax_Preview">
    \pi
  </span>
  <script type="math/tex">
//<![CDATA[
\pi
//]]>
  </script>
   chỉ lớn hơn 3 một chút xíu:
  <br/>
  <span class="MathJax_Preview">
    \pi &gt; \approx 3
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\pi > \approx 3
//]]>
  </script>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-V6ACM83pEiM/VO_npiXaQbI/AAAAAAAAE1g/ceYivFHwB2A/s1600/vuontoan_mathgarden_pi1.png" height="197" width="200"/>
  </div>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-2aJz1I9J74A/VPp9_1e9MZI/AAAAAAAAE24/IBN4byBFUUY/s1600/vuontoan_mathgarden_pi_m.jpg" height="206" width="320"/>
  </div>
  <br/>
  
Năm nay, nhân dịp ngày số 
  <span class="MathJax_Preview">
    \pi
  </span>
  <script type="math/tex">
//<![CDATA[
\pi
//]]>
  </script>
  , xin giới thiệu với các bạn một đẳng thức rất đẹp về số 
  <span class="MathJax_Preview">
    \pi
  </span>
  <script type="math/tex">
//<![CDATA[
\pi
//]]>
  </script>
   của nhà toán học Euler:
  <br/>
  <span class="MathJax_Preview">
    \frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \frac{1}{5^2} + \dots = \frac{\pi^2}{6}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \frac{1}{4^2} + \frac{1}{5^2} + \dots = \frac{\pi^2}{6}
//]]>
  </script>
  <br/>
  
Hẹn gặp lại các bạn ở kỳ sau. Happy 
  <span class="MathJax_Preview">
    \pi
  </span>
  <script type="math/tex">
//<![CDATA[
\pi
//]]>
  </script>
   day everyone!!!
  <br/>
  <br/>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-NjL0Us_t84c/VPp_4Gfr8II/AAAAAAAAE3E/vwps7EGX4_M/s1600/vuontoan_mathgarden_pi_v2.jpg" height="245" width="320"/>
  </div>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','91','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-5989331043283712055">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-mEf0WhRbutg/VKyFZSbcdOI/AAAAAAAAEms/WYqUyKbkC8c/s1600/james_MBHT.jpg" height="301" width="400"/>
  </div>
  <br/>
  <span style="color: purple; font-size: x-large;">
    T
  </span>
  rong lãng mạn của tình yêu, người ta thường ví von rằng đôi mắt của người mình yêu như "
  <i>
    chứa đựng mây bốn phương trời
  </i>
  ", như "
  <i>
    chứa cả bầu trời trăng sao
  </i>
  ". Hôm nay chúng ta sẽ chứng minh rằng đây không chỉ là những lời đường mật lãng mạn của tình yêu mà còn là những mệnh đề toán học hoàn toàn đúng đắn!!!
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta sẽ chứng minh bằng toán học một sự thật sau đây:
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://3.bp.blogspot.com/-6tZhD746dSk/VKyfIkyXREI/AAAAAAAAEm8/PI-jDnbyOq0/s1600/vuontoan_mathgarden_eye.png" height="190" width="320"/>
        </td>
      </tr>
      <tr>
        <td style="text-align: center;">
          <span style="text-align: start;">
            <i>
              tồn tại một đa giác có chu vi bằng chu vi trái đất ở trong con mắt
            </i>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <i>
        Trong một hình tròn đường kính 1 cm (cỡ bằng tròng đen con mắt của chúng ta), tồn tại một đa giác có chu vi bằng chu vi của trái đất (cỡ 40,000 km)!
      </i>
    </span>
  </blockquote>
  <br/>
  <a name="more">
  </a>
  <br/>
  
Chúng ta sẽ xây dựng đa giác đó như sau. Đầu tiên chúng ta vẽ một 
  <b>
    tam giác đều
  </b>
   thật nhỏ có chu vi bằng 1 cm nằm chính giữa con mắt.
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-c51sHs7eezM/VK32GKaG4JI/AAAAAAAAEno/vXP5KuGpcxI/s1600/vuontoan_mathgarden_eye2.png" height="190" width="320"/>
  </div>
  <br/>
  
Sau đó, chia mỗi cạnh của tam giác đều này ra thành 
  <i>
    ba đoạn thẳng bằng nhau
  </i>
  . Lần lượt lấy đoạn thẳng chính giữa làm cạnh, vẽ ra bên ngoài các tam giác đều. Như vậy chúng ta vẽ được một đa giác mới có 12 cạnh.
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-HM5Nf551HIM/VK36UKdScdI/AAAAAAAAEoA/ydvQszhFbJQ/s1600/vuontoan-mathgarden-k1-2b.png" height="180" width="400"/>
  </div>
  <br/>
  
Bước tiếp theo chúng ta làm tương tự như trên.  Chúng ta chia mỗi cạnh của đa giác thành ba đoạn thẳng bằng nhau rồi lần lượt lấy đoạn thẳng chính giữa làm cạnh, vẽ ra bên ngoài các tam giác đều. Đa giác mới này sẽ có 48 cạnh.
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-k9RF2fuD1eQ/VK3_bT3isyI/AAAAAAAAEoQ/f0ioj6mhE4I/s1600/vuontoan-mathgarden-k1-3.png" height="250" width="640"/>
  </div>
  <br/>
  <br/>
  
Cứ làm tương tự như vậy, sau mỗi bước chúng ta dựng được một đa giác mới. Các bạn thấy các đa giác này có hình như một bông tuyết. Trong toán học, chúng ta gọi chúng là 
  <b>
    <span style="color: purple;">
      <i>
        bông tuyết Koch
      </i>
    </span>
  </b>
   bởi vì cách dựng hình này do nhà toán học Koch nghĩ ra vào năm 1904.
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://4.bp.blogspot.com/-mxy4HelpU84/VK3ab1HyDZI/AAAAAAAAEnY/bPCUkniDiEc/s1600/vuontoan-mathgarden-k1-6.png" height="442" width="640"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: xx-small; text-align: start;">
            đa giác có hình bông tuyết Koch
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <br/>
  <br/>
  
Chúng ta sẽ chứng minh rằng sau một số hữu hạn bước dựng hình như trên, chúng ta sẽ dựng được một đa giác hình bông tuyết Koch có 
  <i>
    chu vi lớn hơn chu vi của trái đất
  </i>
  !
  <br/>
  <br/>
  
Thật vậy, chúng ta thấy rằng sau mỗi bước dựng hình, chu vi của đa giác mới tăng gấp 
  <span class="MathJax_Preview">
    \frac{4}{3}
  </span>
  <script type="math/tex">
//<![CDATA[
\frac{4}{3}
//]]>
  </script>
   lần so với chu vi của đa giác cũ.
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://4.bp.blogspot.com/-95duBOD5zhA/VK4BT1X61FI/AAAAAAAAEoc/TJJeZpeUWSE/s1600/vuontoan-mathgarden-k1-2c.png" height="218" width="400"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: xx-small; text-align: start;">
            chu vi của đa giác mới bằng 
            <span class="MathJax_Preview">
              \frac{4}{3}
            </span>
            <script type="math/tex">
//<![CDATA[
\frac{4}{3}
//]]>
            </script>
             lần so với chu vi của đa giác cũ
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <br/>
  
Bởi vì chu vi của tam giác đều ban đầu là 
  <span class="MathJax_Preview">
    1
  </span>
  <script type="math/tex">
//<![CDATA[
1
//]]>
  </script>
   cm, cho nên
  <br/>
  <ul>
    <li>
      sau bước dựng hình đầu tiên, đa giác mới có 12 cạnh sẽ có chu vi bằng 
      <span class="MathJax_Preview">
        \frac{4}{3} \approx 1.3
      </span>
      <script type="math/tex">
//<![CDATA[
\frac{4}{3} \approx 1.3
//]]>
      </script>
       cm
    </li>
  </ul>
  <ul>
    <li>
      sau bước dựng hình kế tiếp, đa giác mới có 48 cạnh sẽ có chu vi bằng 
      <span class="MathJax_Preview">
        \frac{4}{3} \times \frac{4}{3} \approx 1.7
      </span>
      <script type="math/tex">
//<![CDATA[
\frac{4}{3} \times \frac{4}{3} \approx 1.7
//]]>
      </script>
       cm
    </li>
  </ul>
  <ul>
    <li>
      sau bước thứ ba, đa giác mới có 192 cạnh sẽ có chu vi bằng 
      <span class="MathJax_Preview">
        \frac{4}{3} \times \frac{4}{3} \times \frac{4}{3} \approx 2.3
      </span>
      <script type="math/tex">
//<![CDATA[
\frac{4}{3} \times \frac{4}{3} \times \frac{4}{3} \approx 2.3
//]]>
      </script>
       cm
    </li>
  </ul>
  <ul>
    <li>
      sau 
      <span class="MathJax_Preview">
        n
      </span>
      <script type="math/tex">
//<![CDATA[
n
//]]>
      </script>
       bước, chúng ta sẽ dựng được đa giác có chu vi bằng 
      <span class="MathJax_Preview">
        \left( \frac{4}{3} \right)^n
      </span>
      <script type="math/tex">
//<![CDATA[
\left( \frac{4}{3} \right)^n
//]]>
      </script>
       cm
    </li>
  </ul>
  <br/>
  <br/>
  
Chúng ta có hai nhận xét sau đây:
  <br/>
  <ul>
    <li>
      Sau 
      <span class="MathJax_Preview">
        10^{11}
      </span>
      <script type="math/tex">
//<![CDATA[
10^{11}
//]]>
      </script>
       bước dựng hình thì chu vi của đa giác hình bông tuyết sẽ lớn hơn chu vi trái đất, đó là vì 

      <span class="MathJax_Preview">
        \left( \frac{4}{3} \right)^n cm &gt; 100,000 ~km \mbox{ khi chúng ta chọn } n = 10^{11}
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
\left( \frac{4}{3} \right)^n cm > 100,000 ~km \mbox{ khi chúng ta chọn } n = 10^{11}
//]]>
      </script>
       
    </li>
  </ul>
  <ul>
    <li>
      Cho dù số 
      <span class="MathJax_Preview">
        n
      </span>
      <script type="math/tex">
//<![CDATA[
n
//]]>
      </script>
       lớn cỡ nào đi nữa thì đa giác hình bông tuyết vẫn nằm bên trong hình tam giác đều 
      <span class="MathJax_Preview">
        ABC
      </span>
      <script type="math/tex">
//<![CDATA[
ABC
//]]>
      </script>
       như hình dưới đây. Vì vậy nên đa giác bông tuyết sẽ nằm gọn bên trong con mắt chứ không thể vượt ra ngoài được. 
    </li>
  </ul>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://3.bp.blogspot.com/-dO-g3aqhx-M/VK4MPgmW7-I/AAAAAAAAEos/73DfriFuJUY/s1600/vuontoan-mathgarden-bound-koch.png" height="272" width="640"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: xx-small; text-align: start;">
            đa giác bông tuyết Koch luôn luôn nằm bên trong tam giác đều 
            <span class="MathJax_Preview">
              ABC
            </span>
            <script type="math/tex">
//<![CDATA[
ABC
//]]>
            </script>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <br/>
  <br/>
  <br/>
  
Vậy chúng ta đã chứng minh xong một sự thật quá đỗi ngạc nhiên sau đây
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <i>
        Trong một hình tròn đường kính 1 cm (cỡ bằng tròng đen con mắt của chúng ta), tồn tại một đa giác có chu vi lớn hơn chu vi của trái đất (cỡ 40,000 km), lớn hơn chu vi mặt trời (cỡ 4,400,000 km), và thậm chí là lớn hơn cả chu vi của vũ trụ (nếu vũ trụ là hữu hạn như các nhà vật lý tính toán được)!!!
      </i>
    </span>
  </blockquote>
  <div>
    <br/>
  </div>
  <div>
    <span style="color: purple; font-size: x-large;">
      Đ
    </span>
    ể kết thúc, mời các bạn thưởng thức bài hát 
    <a href="http://www.youtube.com/watch?v=19afOE_yqF8">
      <span style="color: purple;">
        <i>
          Mắt Biếc Hồ Thu
        </i>
      </span>
    </a>
    , thơ của nhà toán học nổi tiếng 
    <a href="http://vi.wikipedia.org/wiki/Nguy%E1%BB%85n_Xu%C3%A2n_Vinh" target="_blank">
      <span style="color: purple;">
        Nguyễn Xuân Vinh
      </span>
    </a>
    . 
  </div>
  <div style="text-align: center;">
    <a href="http://www.youtube.com/watch?v=19afOE_yqF8">
      http://www.youtube.com/watch?v=19afOE_yqF8
    </a>
  </div>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://www.youtube.com/watch?v=19afOE_yqF8">
      <img border="0" src="http://1.bp.blogspot.com/-m3FzgAsQzS4/VLWWpKjaVKI/AAAAAAAAEtc/vQakEX9Xm-0/s1600/youtube_small.png"/>
    </a>
  </div>
  <br/>
  <div style="text-align: center;">
    <i style="color: purple;">
      Mắt em là cả hồ thu  
    </i>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Tiếng em thánh thót như ru men tình  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Ước sao chỉ có đôi mình  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Nhưng đâu chỉ có chúng mình ước ao  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Đêm nào ngước mắt trông sao  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Cùng em mơ ước nơi nào viễn du  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Nhìn em đáy mắt hồ thu  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Anh quên giấc mộng viễn du nơi nào  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Bâng khuâng gió lọt song đào  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Nhớ đôi mắt biếc hôm nào tương tư  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Đường trần một cõi hoang vu  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Đi hoài mới biết thiên thu nhớ người  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Nơi đây có núi cùng đồi  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Có con suối nhỏ da trời màu xanh  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Em ngồi xoã tóc bên mành  
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <i>
        Bài thơ anh mới viết thành tặng em 
      </i>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      <br/>
    </span>
  </div>
  <div style="text-align: center;">
    <span style="color: purple;">
      (Toàn Phong Nguyễn Xuân Vinh)
    </span>
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
  
Hẹn gặp lại các bạn ở kỳ sau.
  <br/>
  <br/>
  <br/>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Sử dụng 
  <a href="http://vuontoanblog.blogspot.com/2012/09/pascal-triangle.html" target="_blank">
    nhị thức Newton
  </a>
  , chứng minh rằng với mọi 
  <span class="MathJax_Preview">
    x &gt; 0
  </span>
  <script type="math/tex">
//<![CDATA[
x > 0
//]]>
  </script>
   thì
  <br/>
  <span class="MathJax_Preview">
    (1 + x)^n &gt; 1 + n x
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
(1 + x)^n > 1 + n x
//]]>
  </script>
  <br/>
  <br/>
  
Từ đó suy ra chu vi của đa giác hình bông tuyết sau 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
   bước dựng hình thoã mãn
  <br/>
  <span class="MathJax_Preview">
    \left( \frac{4}{3} \right)^n &gt; \frac{n}{10}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\left( \frac{4}{3} \right)^n > \frac{n}{10}
//]]>
  </script>
  <br/>
  <br/>
  
Với 
  <span class="MathJax_Preview">
    n = 10^{11}
  </span>
  <script type="math/tex">
//<![CDATA[
n = 10^{11}
//]]>
  </script>
  , chứng minh rằng
  <br/>
  <span class="MathJax_Preview">
    \left( \frac{4}{3} \right)^n cm &gt; 100,000 ~km
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\left( \frac{4}{3} \right)^n cm > 100,000 ~km
//]]>
  </script>
  <br/>
  <br/>
  
2. Dùng 
  <a href="http://vuontoanblog.blogspot.com/2012/09/induction1.html" target="_blank">
    quy nạp
  </a>
   để chứng minh rằng với mọi giá trị của 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
  , sau 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
   bước dựng, đa giác hình bông tuyết vẫn nằm bên trong tam giác đều 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
   như hình dưới đây.
  <br/>
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://3.bp.blogspot.com/-dO-g3aqhx-M/VK4MPgmW7-I/AAAAAAAAEos/73DfriFuJUY/s1600/vuontoan-mathgarden-bound-koch.png" height="272" width="640"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <br/>
        </td>
      </tr>
    </tbody>
  </table>
  
3. Sau 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
   bước dựng hình, đa giác hình bông tuyết sẽ có bao nhiêu cạnh?
  <br/>
  <br/>
  
4. Sau 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
   bước dựng hình, tính diện tích đa giác hình bông tuyết. Chứng minh rằng diện tích là một số hữu hạn.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','85','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-4432763449810039306">
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-TyUyBKCr6no/VIp5aOueEaI/AAAAAAAAECk/BEkMGPGBXn4/s1600/james_mother_Mary.jpg" height="640" width="457"/>
  </div>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-9YA8ZMQHMOk/VI4byssM4NI/AAAAAAAAETM/0cQrAPtbsqA/s1600/francis_hope_faith_love.jpg" height="596" width="640"/>
  </div>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-hVx1qs0uCzA/VQHzZB7hxWI/AAAAAAAAE38/7dWkiqPS0UM/s1600/vuontoan_mathgarden_newyear2015_vn.png" height="282" width="640"/>
  </div>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-8MwgREwkJWs/VI4a4NB650I/AAAAAAAAETE/TireGZdXyp4/s1600/matthew_Christmas.jpg" height="640" width="464"/>
  </div>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','55','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-7193639497694823808">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-hREoUAR5Chs/VJCzx5sSIsI/AAAAAAAAEXM/j8FiNnfnWdQ/s1600/james_face.jpg" height="640" width="444"/>
  </div>
  <br/>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay, chúng ta ghi lại các công thức lượng giác tuyệt vời của nhà toán học Gauss cho đa giác đều 17 cạnh.
  <br/>
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <br/>
  
 
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{17}} = \frac{1}{16} \left( 1 - \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{34 + 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{\pi}{17}} = \frac{1}{16} \left( 1 - \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{34 + 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{2 \pi}{17}} = \frac{1}{16} \left( -1 + \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{2 \pi}{17}} = \frac{1}{16} \left( -1 + \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{3 \pi}{17}} = \frac{1}{16} \left( 1 + \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{17 - 3 \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{34 - 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{3 \pi}{17}} = \frac{1}{16} \left( 1 + \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{17 - 3 \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{34 - 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{4 \pi}{17}} = \frac{1}{16} \left( -1 + \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{34 + 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{4 \pi}{17}} = \frac{1}{16} \left( -1 + \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{34 + 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{5 \pi}{17}} = \frac{1}{16} \left( 1 + \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{17 - 3 \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{34 - 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{5 \pi}{17}} = \frac{1}{16} \left( 1 + \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{17 - 3 \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{34 - 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{6 \pi}{17}} = \frac{1}{16} \left( -1 - \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{17 - 3 \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{34 - 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{6 \pi}{17}} = \frac{1}{16} \left( -1 - \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{17 - 3 \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{34 - 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{7 \pi}{17}} = \frac{1}{16} \left( 1 + \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{17 - 3 \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{34 - 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{7 \pi}{17}} = \frac{1}{16} \left( 1 + \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{17 - 3 \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{34 - 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{8 \pi}{17}} = \frac{1}{16} \left( -1 + \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{8 \pi}{17}} = \frac{1}{16} \left( -1 + \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{9 \pi}{17}} = \frac{1}{16} \left( 1 - \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{9 \pi}{17}} = \frac{1}{16} \left( 1 - \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{10 \pi}{17}} = \frac{1}{16} \left( -1 - \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{17 - 3 \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{34 - 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{10 \pi}{17}} = \frac{1}{16} \left( -1 - \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{17 - 3 \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{34 - 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{11 \pi}{17}} = \frac{1}{16} \left( 1 + \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{17 - 3 \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{34 - 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{11 \pi}{17}} = \frac{1}{16} \left( 1 + \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{17 - 3 \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{34 - 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{12 \pi}{17}} = \frac{1}{16} \left( -1 - \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{17 - 3 \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{34 - 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{12 \pi}{17}} = \frac{1}{16} \left( -1 - \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} + 2 \sqrt{17 - 3 \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{34 - 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{13 \pi}{17}} = \frac{1}{16} \left( 1 - \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{17 + 3 \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{34 + 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{13 \pi}{17}} = \frac{1}{16} \left( 1 - \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{17 + 3 \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{34 + 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{14 \pi}{17}} = \frac{1}{16} \left( -1 - \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{17 - 3 \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{34 - 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{14 \pi}{17}} = \frac{1}{16} \left( -1 - \sqrt{17} - \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{17 - 3 \sqrt{17} + \sqrt{34 + 2 \sqrt{17}} - 2 \sqrt{34 - 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{15 \pi}{17}} = \frac{1}{16} \left( 1 - \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{15 \pi}{17}} = \frac{1}{16} \left( 1 - \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{16 \pi}{17}} = \frac{1}{16} \left( -1 + \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{17 + 3 \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{34 + 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{16 \pi}{17}} = \frac{1}{16} \left( -1 + \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{17 + 3 \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{34 + 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <br/>
  <br/>
  
Nếu bạn tò mò muốn biết phương pháp của Gauss để tìm ra các công thức này, xin đón đọc ở các kỳ sau.
  <br/>
  <br/>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-usz_JZS7hmI/VGlQtYDuNjI/AAAAAAAADvc/RE1p2WkOCVg/s1600/20141101_113141.jpg" height="260" width="400"/>
  </div>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','32','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-657313307389838256">
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-MS3SZcg1APo/VGcBH2Ng24I/AAAAAAAADvM/5OrivqgGOzE/s1600/james_geometry.png" height="508" width="640"/>
  </div>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','11','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-1774892286443169811">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-vJF4SloJcnU/VE2CPVeJBrI/AAAAAAAADis/_0Siny_ybII/s1600/matthew1.jpg" height="268" width="400"/>
  </div>
  <br/>
  <span style="color: purple; font-size: x-large;">
    K
  </span>
  ỳ trước, chúng ta đã học về 
  <i>
    tam giác đồng dạng
  </i>
   và 
  <i>
    <span style="color: purple;">
      <a href="http://vuontoanblog.blogspot.com/2014/08/right-triangle-altitude-theorem.html" target="_blank">
        định lý đường cao tam giác vuông
      </a>
    </span>
  </i>
  . Hôm nay, tiếp tục du ngoạn trong khu vườn hình học, chúng ta sẽ đi tìm câu trả lời cho bài toán sau đây:
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      Cho trước một đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        r
      </span>
      <script type="math/tex">
//<![CDATA[
r
//]]>
      </script>
      . Bằng thước và compa, chúng ta có thể dựng được những đoạn thẳng có độ dài bằng bao nhiêu?
    </span>
  </blockquote>
  <a name="more">
  </a>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  ó hai trường hợp đơn giản nhất mà chúng ta có thể trả lời ngay được, đó là
  <br/>
  <ul>
    <li>
      Chúng ta có thể nhân gấp bội lần một đoạn thẳng cho trước, và
    </li>
    <li>
      Chúng ta có thể chia đều một đoạn thẳng cho trước.
    </li>
  </ul>
  <br/>
  
Dưới đây là ví dụ
  <br/>
  <ul>
    <li>
      Cho trước đoạn thẳng 
      <span class="MathJax_Preview">
        AB = r
      </span>
      <script type="math/tex">
//<![CDATA[
AB = r
//]]>
      </script>
      , dùng thước và compa, chúng ta có thể dựng được dễ dàng đoạn thẳng 
      <span class="MathJax_Preview">
        AC = 3r
      </span>
      <script type="math/tex">
//<![CDATA[
AC = 3r
//]]>
      </script>
      .
    </li>
  </ul>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-lOdjO2sSuLU/VGGm3pQcQZI/AAAAAAAADrg/gLsfsGc3qMg/s1600/vuontoan_mathgarden_ca1.png" height="58" width="400"/>
  </div>
  <br/>
  <ul>
    <li>
      Cho trước đoạn thẳng 
      <span class="MathJax_Preview">
        AB=r
      </span>
      <script type="math/tex">
//<![CDATA[
AB=r
//]]>
      </script>
      , dựng tia 
      <span class="MathJax_Preview">
        Ax
      </span>
      <script type="math/tex">
//<![CDATA[
Ax
//]]>
      </script>
       và trên đó dựng các điểm thoã mãn 
      <span class="MathJax_Preview">
        AC_1=C_1 C_2 = C_2 C_3 = C_3 C_4 = C_4 C_5,
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
AC_1=C_1 C_2 = C_2 C_3 = C_3 C_4 = C_4 C_5,
//]]>
      </script>
       qua 
      <span class="MathJax_Preview">
        C_1
      </span>
      <script type="math/tex">
//<![CDATA[
C_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C_2
      </span>
      <script type="math/tex">
//<![CDATA[
C_2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C_3
      </span>
      <script type="math/tex">
//<![CDATA[
C_3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C_4
      </span>
      <script type="math/tex">
//<![CDATA[
C_4
//]]>
      </script>
      , dựng các đường thẳng song song với 
      <span class="MathJax_Preview">
        BC_5
      </span>
      <script type="math/tex">
//<![CDATA[
BC_5
//]]>
      </script>
       cắt đoạn thẳng 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
       tại 
      <span class="MathJax_Preview">
        D_1
      </span>
      <script type="math/tex">
//<![CDATA[
D_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        D_2
      </span>
      <script type="math/tex">
//<![CDATA[
D_2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        D_3
      </span>
      <script type="math/tex">
//<![CDATA[
D_3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        D_4
      </span>
      <script type="math/tex">
//<![CDATA[
D_4
//]]>
      </script>
      , và chúng ta có 
      <span class="MathJax_Preview">
        AD_1=D_1 D_2 = D_2 D_3 = D_3 D_4 = D_4 B = \frac{r}{5}.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
AD_1=D_1 D_2 = D_2 D_3 = D_3 D_4 = D_4 B = \frac{r}{5}.
//]]>
      </script>
    </li>
  </ul>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/--bV_ICl_CcM/Uj_jGc_sbKI/AAAAAAAABK8/TTXcICfsyIw/s1600/vuontoan-mathgarden-ruler-compas7.png" height="245" width="400"/>
  </div>
  <br/>
  <ul>
    <li>
      Cho trước đoạn thẳng 
      <span class="MathJax_Preview">
        AB = r
      </span>
      <script type="math/tex">
//<![CDATA[
AB = r
//]]>
      </script>
      , chúng ta dựng 
      <span class="MathJax_Preview">
        AC = 3r
      </span>
      <script type="math/tex">
//<![CDATA[
AC = 3r
//]]>
      </script>
       rồi chia nó thành 5 phần bằng nhau, chúng ta dựng được đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        \frac{3}{5} r
      </span>
      <script type="math/tex">
//<![CDATA[
\frac{3}{5} r
//]]>
      </script>
      .
    </li>
  </ul>
  <br/>
  <br/>
  
Từ những trường hợp đơn giản trên đây, chúng ta rút ra kết luận
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      Cho trước một đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        r
      </span>
      <script type="math/tex">
//<![CDATA[
r
//]]>
      </script>
      , và 
      <span class="MathJax_Preview">
        \frac{p}{q}
      </span>
      <script type="math/tex">
//<![CDATA[
\frac{p}{q}
//]]>
      </script>
       là một số hữu tỷ, thì bằng thước và compa chúng ta có thể dựng được đoạn thẳng có độ dài bằng 
      <span class="MathJax_Preview">
        \frac{p}{q} r
      </span>
      <script type="math/tex">
//<![CDATA[
\frac{p}{q} r
//]]>
      </script>
      .
    </span>
  </blockquote>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    B
  </span>
  ây giờ chúng ta xem xét hai ví dụ khác phức tạp hơn, đó là dựng hình 
  <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
    ngũ giác đều
  </a>
   và dựng hình 
  <a href="http://vuontoanblog.blogspot.com/2014/03/regular-polygon-construction.html" target="_blank">
    đa giác đều 17 cạnh
  </a>
  .
  <br/>
  <br/>
  
Để dựng hình ngũ giác đều, trước hết chúng ta dựng một đường tròn rồi chọn một đỉnh 
  <span class="MathJax_Preview">
    P_0
  </span>
  <script type="math/tex">
//<![CDATA[
P_0
//]]>
  </script>
  . Nếu chúng ta dựng được điểm 
  <span class="MathJax_Preview">
    H
  </span>
  <script type="math/tex">
//<![CDATA[
H
//]]>
  </script>
   thì từ 
  <span class="MathJax_Preview">
    H
  </span>
  <script type="math/tex">
//<![CDATA[
H
//]]>
  </script>
   chúng ta dựng được đỉnh 
  <span class="MathJax_Preview">
    P_1
  </span>
  <script type="math/tex">
//<![CDATA[
P_1
//]]>
  </script>
  . Từ 
  <span class="MathJax_Preview">
    P_1
  </span>
  <script type="math/tex">
//<![CDATA[
P_1
//]]>
  </script>
   chúng ta có thể dựng được các đỉnh còn lại của hình ngũ giác.
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-7tIyc3WjgEc/VGGsA2KeLqI/AAAAAAAADrw/72OfjTZP9-k/s1600/vuontoan_mathgarden_ca2.png" height="400" width="398"/>
  </div>
  <br/>
  
Giả sử 
  <span class="MathJax_Preview">
    r
  </span>
  <script type="math/tex">
//<![CDATA[
r
//]]>
  </script>
   là bán kính của đường tròn, theo công thức lượng giác
  <br/>
  <span class="MathJax_Preview">
    \angle P_0 O P_1 = \frac{2 \pi}{5}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\angle P_0 O P_1 = \frac{2 \pi}{5}
//]]>
  </script>
  <span class="MathJax_Preview">
    OH = r \cos{\frac{2 \pi}{5}}  = r \frac{\sqrt{5}-1}{4} 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
OH = r \cos{\frac{2 \pi}{5}}  = r \frac{\sqrt{5}-1}{4} 
//]]>
  </script>
  <br/>
  <br/>
  
Vậy, để dựng được hình ngũ giác đều, chúng ta cần dựng đoạn thẳng 
  <span class="MathJax_Preview">
    OH
  </span>
  <script type="math/tex">
//<![CDATA[
OH
//]]>
  </script>
   có độ dài 
  <span class="MathJax_Preview">
    \frac{\sqrt{5}-1}{4} r
  </span>
  <script type="math/tex">
//<![CDATA[
\frac{\sqrt{5}-1}{4} r
//]]>
  </script>
  .
  <br/>
  <br/>
  <br/>
  
Tương tự như vậy, để dựng được hình đa giác đều 17 cạnh sau đây, chúng ta cần dựng đoạn thẳng 
  <span class="MathJax_Preview">
    OH = r \cos{\frac{2 \pi}{17}} 
  </span>
  <script type="math/tex">
//<![CDATA[
OH = r \cos{\frac{2 \pi}{17}} 
//]]>
  </script>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-FId6quBDx2A/VGGy1BO9oQI/AAAAAAAADsA/WI0ETwsfcr4/s1600/vuontoan_mathgarden_ca3.png" height="390" width="400"/>
  </div>
  <br/>
  
Vào năm 1796, lúc đó chỉ mới 19 tuổi, nhà toán học Gauss tìm được bước đột phá cho 
  <a href="http://vuontoanblog.blogspot.com/2014/03/regular-polygon-construction.html" target="_blank">
    bài toán dựng hình đa giác đều
  </a>
  . Dùng những kiến thức về modulo trong số học ông tính được
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{2 \pi}{17}} = \frac{1}{16} \left( -1 + \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{2 \pi}{17}} = \frac{1}{16} \left( -1 + \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  
và chứng minh rằng đa giác đều 17 cạnh là dựng được.
  <br/>
  <br/>
  <br/>
  
Qua hai ví dụ ở trên, các bạn có đoán ra được quy luật gì không?
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    Số dựng được
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta định nghĩa khái niệm về "
  <span style="color: purple;">
    số dựng được
  </span>
  ".
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      Một số 
      <span class="MathJax_Preview">
        \alpha
      </span>
      <script type="math/tex">
//<![CDATA[
\alpha
//]]>
      </script>
       gọi là một 
      <b>
        số dựng được
      </b>
       nếu 
      <span class="MathJax_Preview">
        \alpha
      </span>
      <script type="math/tex">
//<![CDATA[
\alpha
//]]>
      </script>
       được xây dựng từ các số tự nhiên bằng các phép toán cộng, trừ, nhân, chia, và căn bậc hai.
    </span>
  </blockquote>
  
Ví dụ,
  <br/>
  <span class="MathJax_Preview">
    \frac{3}{5} \mbox{ là số dựng được,} 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{3}{5} \mbox{ là số dựng được,} 
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \cos \frac{2 \pi}{5}=\frac{\sqrt{5}-1}{4} \mbox{ là số dựng được,} 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos \frac{2 \pi}{5}=\frac{\sqrt{5}-1}{4} \mbox{ là số dựng được,} 
//]]>
  </script>
  <br/>
  <span class="MathJax_Preview">
    \frac{\sqrt{\sqrt{2} + 5 \sqrt{3} - 2}}{\sqrt{\frac{2}{5}} + 1} \mbox{ là số dựng được.} 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{\sqrt{\sqrt{2} + 5 \sqrt{3} - 2}}{\sqrt{\frac{2}{5}} + 1} \mbox{ là số dựng được.} 
//]]>
  </script>
  <br/>
  <br/>
  
Chúng ta có định lý sau đây.
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Định lý cơ bản của dựng hình. 
      </b>
      Cho trước một đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        r
      </span>
      <script type="math/tex">
//<![CDATA[
r
//]]>
      </script>
      , và 
      <span class="MathJax_Preview">
        \alpha
      </span>
      <script type="math/tex">
//<![CDATA[
\alpha
//]]>
      </script>
       là một 
      <b>
        số dựng được
      </b>
      , thì bằng thước và compa chúng ta có thể dựng được đoạn thẳng có độ dài bằng 
      <span class="MathJax_Preview">
        \alpha \, r
      </span>
      <script type="math/tex">
//<![CDATA[
\alpha \, r
//]]>
      </script>
      .
    </span>
  </blockquote>
  <br/>
  
Chúng ta sẽ chứng minh định lý trên đây bằng cách chỉ ra một thuật toán dựng hình.
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Thuật toán dựng hình
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  ho trước ba đoạn thẳng có độ dài 
  <span class="MathJax_Preview">
    r
  </span>
  <script type="math/tex">
//<![CDATA[
r
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    a r
  </span>
  <script type="math/tex">
//<![CDATA[
a r
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    b r
  </span>
  <script type="math/tex">
//<![CDATA[
b r
//]]>
  </script>
  . Dùng thước và compa, chúng ta dựng được
  <br/>
  <ul>
    <li>
      đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        (a+b)r
      </span>
      <script type="math/tex">
//<![CDATA[
(a+b)r
//]]>
      </script>
    </li>
  </ul>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-gPEh91hF55A/VGG97S-PuFI/AAAAAAAADsQ/MxCDvPw-kXM/s1600/vuontoan_mathgarden_ca4a.png" height="80" width="400"/>
  </div>
  <ul>
    <li>
      đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        (a−b)r
      </span>
      <script type="math/tex">
//<![CDATA[
(a−b)r
//]]>
      </script>
    </li>
  </ul>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-LAi16Fd6K3w/VGG-Cc4LukI/AAAAAAAADsY/nwM6KtrhjNA/s1600/vuontoan_mathgarden_ca4.png" height="91" width="320"/>
  </div>
  <ul>
    <li>
      đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        (ab) r
      </span>
      <script type="math/tex">
//<![CDATA[
(ab) r
//]]>
      </script>
       
    </li>
  </ul>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://4.bp.blogspot.com/-Z7kPyYVUcm4/VGHBJPPWw0I/AAAAAAAADso/kMMVvniybuE/s1600/vuontoan_mathgarden_ca5b.png" height="166" width="320"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: small; text-align: left;">
            <span class="MathJax_Preview">
              AB
            </span>
            <script type="math/tex">
//<![CDATA[
AB
//]]>
            </script>
             song song với 
            <span class="MathJax_Preview">
              CD
            </span>
            <script type="math/tex">
//<![CDATA[
CD
//]]>
            </script>
            : 
            <span class="MathJax_Preview">
              \frac{OD}{OC} = \frac{OA}{OB} = a \to OD = abr
            </span>
            <script type="math/tex">
//<![CDATA[
\frac{OD}{OC} = \frac{OA}{OB} = a \to OD = abr
//]]>
            </script>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <ul>
    <li>
      đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        (a/b) r
      </span>
      <script type="math/tex">
//<![CDATA[
(a/b) r
//]]>
      </script>
       
    </li>
  </ul>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://3.bp.blogspot.com/-3rVZuwJuGs8/VGHBOmGO03I/AAAAAAAADsw/yRDJ0RoLIr8/s1600/vuontoan_mathgarden_ca5a.png" height="166" width="320"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: small; text-align: left;">
            <span class="MathJax_Preview">
              AB
            </span>
            <script type="math/tex">
//<![CDATA[
AB
//]]>
            </script>
             song song với 
            <span class="MathJax_Preview">
              CD
            </span>
            <script type="math/tex">
//<![CDATA[
CD
//]]>
            </script>
            : 
            <span class="MathJax_Preview">
              \frac{OD}{OC} = \frac{OA}{OB} = \frac{a}{b} \to OD = \frac{a}{b} r
            </span>
            <script type="math/tex">
//<![CDATA[
\frac{OD}{OC} = \frac{OA}{OB} = \frac{a}{b} \to OD = \frac{a}{b} r
//]]>
            </script>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <ul>
    <li>
      đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        (\sqrt{ab}) r
      </span>
      <script type="math/tex">
//<![CDATA[
(\sqrt{ab}) r
//]]>
      </script>
        
    </li>
  </ul>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://3.bp.blogspot.com/-iFvd8SsrgOs/VGHEVIE_fuI/AAAAAAAADs8/yEc1vgn6yNw/s1600/vuontoan_mathgarden_ca6.png" height="182" width="320"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: small; text-align: left;">
            sử dụng 
          </span>
          <i style="font-size: medium; text-align: left;">
            <span style="color: purple;">
              <a href="http://vuontoanblog.blogspot.com/2014/08/right-triangle-altitude-theorem.html" target="_blank">
                định lý đường cao tam giác vuông
              </a>
            </span>
          </i>
          <span style="font-size: small; text-align: left;">
            : 
            <span class="MathJax_Preview">
              HC^2 = HA \times HB = abr^2 \to HC = \sqrt{ab}r
            </span>
            <script type="math/tex">
//<![CDATA[
HC^2 = HA \times HB = abr^2 \to HC = \sqrt{ab}r
//]]>
            </script>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <br/>
  
Với thuật toán này, nếu 
  <span class="MathJax_Preview">
    \alpha
  </span>
  <script type="math/tex">
//<![CDATA[
\alpha
//]]>
  </script>
   là một 
  <i>
    số dựng được
  </i>
   thì từ một đoạn thẳng có độ dài 
  <span class="MathJax_Preview">
    r
  </span>
  <script type="math/tex">
//<![CDATA[
r
//]]>
  </script>
   ban đầu, chúng ta sẽ chỉ ra được các bước để dựng đoạn thẳng có độ dài 
  <span class="MathJax_Preview">
    \alpha r
  </span>
  <script type="math/tex">
//<![CDATA[
\alpha r
//]]>
  </script>
  .
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta tạm dừng ở đây. Các kỳ tới, chúng ta sẽ học về 
  <i>
    Định lý nhỏ Fermat,
  </i>
  <i>
    vòng tròn modulo
  </i>
   và nhiều thứ hấp dẫn khác, rồi chúng ta sẽ dùng những kiến thức này để tìm ra công thức lượng giác của nhà toán học Gauss
  <br/>
  <span class="MathJax_Preview">
    \cos{\frac{2 \pi}{17}} =  \frac{1}{16} \left( -1 + \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{2 \pi}{17}} =  \frac{1}{16} \left( -1 + \sqrt{17} + \sqrt{34 - 2 \sqrt{17}} + 2 \sqrt{17 + 3 \sqrt{17} - \sqrt{34 - 2 \sqrt{17}} - 2 \sqrt{34 + 2 \sqrt{17}}} \right)
//]]>
  </script>
  <br/>
  <br/>
  
Hẹn gặp lại các bạn.
  <br/>
  <br/>
  <i>
    <br/>
  </i>
  <i>
    <br/>
  </i>
  <i>
    <br/>
  </i>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Chứng minh rằng 
  <span class="MathJax_Preview">
    \cos \frac{2 \pi}{5}=\frac{\sqrt{5}-1}{4}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos \frac{2 \pi}{5}=\frac{\sqrt{5}-1}{4}
//]]>
  </script>
  <br/>
  <br/>
  
2. Dùng 
  <a href="http://vuontoanblog.blogspot.com/2013/01/complex2.html" target="_blank">
    công thức Moivre
  </a>
   để tìm một đa thức hệ số nguyên nhận 
  <span class="MathJax_Preview">
    \cos \frac{2 \pi}{17}
  </span>
  <script type="math/tex">
//<![CDATA[
\cos \frac{2 \pi}{17}
//]]>
  </script>
   làm nghiệm.
  <br/>
  <br/>
  
3. 
  <i>
    Chúng ta sẽ dùng ký hiệu 
    <span class="MathJax_Preview">
      (PQ)
    </span>
    <script type="math/tex">
//<![CDATA[
(PQ)
//]]>
    </script>
     để chỉ đường thẳng 
    <span class="MathJax_Preview">
      PQ
    </span>
    <script type="math/tex">
//<![CDATA[
PQ
//]]>
    </script>
     và dùng ký hiệu 
    <span class="MathJax_Preview">
      (P, PQ)
    </span>
    <script type="math/tex">
//<![CDATA[
(P, PQ)
//]]>
    </script>
     để chỉ đường tròn tâm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     và bán kính 
    <span class="MathJax_Preview">
      PQ
    </span>
    <script type="math/tex">
//<![CDATA[
PQ
//]]>
    </script>
    .
  </i>
  <br/>
  <br/>
  <b>
    Định lý cơ bản của dựng hình.
  </b>
  <br/>
  <br/>
  
Cho trước 
  <span class="MathJax_Preview">
    AB = r
  </span>
  <script type="math/tex">
//<![CDATA[
AB = r
//]]>
  </script>
  . Một điểm 
  <span class="MathJax_Preview">
    M
  </span>
  <script type="math/tex">
//<![CDATA[
M
//]]>
  </script>
   trên mặt phẳng gọi là 
  <span style="color: purple;">
    <b>
      dựng được
    </b>
  </span>
   từ 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
   nếu tồn tại một dãy các điểm 
  <span class="MathJax_Preview">
    X_1
  </span>
  <script type="math/tex">
//<![CDATA[
X_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    X_2
  </span>
  <script type="math/tex">
//<![CDATA[
X_2
//]]>
  </script>
  , ..., 
  <span class="MathJax_Preview">
    X_n
  </span>
  <script type="math/tex">
//<![CDATA[
X_n
//]]>
  </script>
   sao cho
  <br/>
  <ul>
    <li>
      <span class="MathJax_Preview">
        X_1 = A
      </span>
      <script type="math/tex">
//<![CDATA[
X_1 = A
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        X_2 = B
      </span>
      <script type="math/tex">
//<![CDATA[
X_2 = B
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        X_n = M
      </span>
      <script type="math/tex">
//<![CDATA[
X_n = M
//]]>
      </script>
    </li>
    <li>
      Với mọi 
      <span class="MathJax_Preview">
        3 \leq i \leq n
      </span>
      <script type="math/tex">
//<![CDATA[
3 \leq i \leq n
//]]>
      </script>
      , điểm 
      <span class="MathJax_Preview">
        X_i
      </span>
      <script type="math/tex">
//<![CDATA[
X_i
//]]>
      </script>
       hoặc là giao điểm của hai đường thẳng 
      <span class="MathJax_Preview">
        (X_{k_1} X_{k_2})
      </span>
      <script type="math/tex">
//<![CDATA[
(X_{k_1} X_{k_2})
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        (X_{k_3} X_{k_4})
      </span>
      <script type="math/tex">
//<![CDATA[
(X_{k_3} X_{k_4})
//]]>
      </script>
      , hoặc là giao điểm của đường thẳng 
      <span class="MathJax_Preview">
        (X_{k_1} X_{k_2})
      </span>
      <script type="math/tex">
//<![CDATA[
(X_{k_1} X_{k_2})
//]]>
      </script>
       với đường tròn 
      <span class="MathJax_Preview">
        (X_{k_3}, X_{k_3} X_{k_4})
      </span>
      <script type="math/tex">
//<![CDATA[
(X_{k_3}, X_{k_3} X_{k_4})
//]]>
      </script>
      , hoặc là giao điểm của đường tròn 
      <span class="MathJax_Preview">
        (X_{k_1}, X_{k_1} X_{k_2})
      </span>
      <script type="math/tex">
//<![CDATA[
(X_{k_1}, X_{k_1} X_{k_2})
//]]>
      </script>
       với đường tròn 
      <span class="MathJax_Preview">
        (X_{k_3}, X_{k_3} X_{k_4})
      </span>
      <script type="math/tex">
//<![CDATA[
(X_{k_3}, X_{k_3} X_{k_4})
//]]>
      </script>
      , trong đó 
      <span class="MathJax_Preview">
        1\leq k_1, k_2, k_3, k_4 &lt; i
      </span>
      <script type="math/tex">
//<![CDATA[
1\leq k_1, k_2, k_3, k_4 < i
//]]>
      </script>
      .
    </li>
  </ul>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-GzhMnmT2jos/VGHLMRbs2LI/AAAAAAAADtM/94tXkV2C5eU/s1600/vuontoan_mathgarden_ca7.png" height="239" width="320"/>
  </div>
  <br/>
  
Vẽ một trục tọa độ vuông góc 
  <span class="MathJax_Preview">
    Axy
  </span>
  <script type="math/tex">
//<![CDATA[
Axy
//]]>
  </script>
   trong đó 
  <span class="MathJax_Preview">
    B
  </span>
  <script type="math/tex">
//<![CDATA[
B
//]]>
  </script>
   nằm trên 
  <span class="MathJax_Preview">
    Ax
  </span>
  <script type="math/tex">
//<![CDATA[
Ax
//]]>
  </script>
  , vậy thì mỗi điểm 
  <span class="MathJax_Preview">
    M
  </span>
  <script type="math/tex">
//<![CDATA[
M
//]]>
  </script>
   nằm trong mặt phẳng sẽ có một tọa độ 
  <span class="MathJax_Preview">
    M(x,y)
  </span>
  <script type="math/tex">
//<![CDATA[
M(x,y)
//]]>
  </script>
  .
  <br/>
  <br/>
  
Chứng minh rằng điểm 
  <span class="MathJax_Preview">
    M(x,y)
  </span>
  <script type="math/tex">
//<![CDATA[
M(x,y)
//]]>
  </script>
  <i>
    <span style="color: purple;">
      dựng được
    </span>
  </i>
   từ 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
  <b>
    khi và chỉ khi
  </b>
  <span class="MathJax_Preview">
    x = \alpha_1 r
  </span>
  <script type="math/tex">
//<![CDATA[
x = \alpha_1 r
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    y = \alpha_2 r
  </span>
  <script type="math/tex">
//<![CDATA[
y = \alpha_2 r
//]]>
  </script>
   trong đó 
  <span class="MathJax_Preview">
    \alpha_1
  </span>
  <script type="math/tex">
//<![CDATA[
\alpha_1
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    \alpha_2
  </span>
  <script type="math/tex">
//<![CDATA[
\alpha_2
//]]>
  </script>
   là hai 
  <i>
    <span style="color: purple;">
      số dựng được
    </span>
  </i>
  .
  <br/>
  <br/>
  
4. Hãy viết về một bài toán 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    dựng hình
  </a>
   mà bạn yêu thích. Dùng 
  <a href="http://google.com/">
    google.com
  </a>
   để tìm hiểu thêm về bài toán đó.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-dzLtmIRyZjE/VGGMwmnG9lI/AAAAAAAADrQ/punLFL7mceE/s1600/wolf.jpg" height="480" width="640"/>
  </div>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','1','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-7224357251272115837">
  <div class="separator" style="clear: both; text-align: center;">
    <br class="Apple-interchange-newline"/>
    <img border="0" src="http://2.bp.blogspot.com/-wsyzrAgAbe0/VCS79T7IfuI/AAAAAAAADHs/0t__ipnF9Zg/s1600/matthewptg.png" height="276" width="400"/>
  </div>
  <div>
    <br/>
  </div>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay chúng ta sẽ học về 
  <span style="color: purple;">
    <i>
      <b>
        Định lý đường cao tam giác vuông
      </b>
    </i>
  </span>
   và dùng nó để chứng minh 
  <i>
    <b>
      <span style="color: purple;">
        Định lý Pitago
      </span>
    </b>
  </i>
  .
  <br/>
  <div>
    <br/>
  </div>
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Định lý đường cao tam giác vuông
  </span>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta biết rằng hai tam giác đồng dạng là hai tam giác có ba cặp góc bằng nhau và ba cặp cạnh tỷ lệ với nhau.
  <br/>
  <br/>
  
Nếu ai đó hỏi bạn, bạn thích nhất ví dụ nào về tam giác đồng dạng, bạn sẽ trả lời như thế nào?
  <br/>
  <br/>
  
Đối với tôi, có một ví dụ về tam giác đồng dạng mà tôi rất thích, đó là ví dụ về 
  <b>
    <i>
      <span style="color: purple;">
        Định lý đường cao tam giác vuông
      </span>
    </i>
  </b>
  .
  <br/>
  <br/>
  
Ví dụ đó là như sau. Bạn hãy vẽ một tam giác vuông 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
   (vuông ở đỉnh 
  <span class="MathJax_Preview">
    B
  </span>
  <script type="math/tex">
//<![CDATA[
B
//]]>
  </script>
  ). Sau đó bạn hãy vẽ đường cao 
  <span class="MathJax_Preview">
    BH
  </span>
  <script type="math/tex">
//<![CDATA[
BH
//]]>
  </script>
   để chia hình tam giác 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
   thành hai hình tam giác vuông con 
  <span class="MathJax_Preview">
    BHA
  </span>
  <script type="math/tex">
//<![CDATA[
BHA
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    BHC
  </span>
  <script type="math/tex">
//<![CDATA[
BHC
//]]>
  </script>
  . Bạn có thấy rằng tam giác mẹ 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
   đồng dạng với hai tam giác con 
  <span class="MathJax_Preview">
    BHA
  </span>
  <script type="math/tex">
//<![CDATA[
BHA
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    BHC
  </span>
  <script type="math/tex">
//<![CDATA[
BHC
//]]>
  </script>
   này không?
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-VbFaphO0vtU/U73izDz-onI/AAAAAAAACzY/Kyi54bbpqHM/s1600/vuontoan_mathgarden_dunghinh2.png" height="165" width="320"/>
  </div>
  <br/>
  
Các bạn có thể vẽ hình trên giấy rồi dùng kéo cắt các hình tam giác vuông này như sau.
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-kLATmbgt2iA/U73ieXrdvgI/AAAAAAAACzQ/gZBsW_4A_eE/s1600/vuontoan_mathgarden_dunghinh1.png" height="278" width="640"/>
  </div>
  <br/>
  
Các bạn hãy nhìn tam giác mẹ 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
   và tam giác con 
  <span class="MathJax_Preview">
    AHB
  </span>
  <script type="math/tex">
//<![CDATA[
AHB
//]]>
  </script>
  . Rõ ràng chúng có cặp góc vuông hiển nhiên bằng nhau 
  <span class="MathJax_Preview">
    \angle B = \angle H = 90^{o}
  </span>
  <script type="math/tex">
//<![CDATA[
\angle B = \angle H = 90^{o}
//]]>
  </script>
  . Ngoài ra chúng có chung một cặp góc 
  <span class="MathJax_Preview">
    A
  </span>
  <script type="math/tex">
//<![CDATA[
A
//]]>
  </script>
  . Vậy chúng có hai cặp góc bằng nhau, cho nên đồng dạng với nhau.
  <br/>
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://3.bp.blogspot.com/-84_JHPlC9J0/U73jmuu74BI/AAAAAAAACzk/L3GW8H98KA4/s1600/vuontoan_mathgarden_dunghinh3.png" height="127" width="400"/>
    </div>
    
Tỷ lệ giữa các cặp cạnh của hai tam giác 
    <span class="MathJax_Preview">
      ABC
    </span>
    <script type="math/tex">
//<![CDATA[
ABC
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      AHB
    </span>
    <script type="math/tex">
//<![CDATA[
AHB
//]]>
    </script>
    : 
    <span class="MathJax_Preview">
      \frac{{\bf AB}}{{\bf AH}} = \frac{BC}{HB} = \frac{{\bf AC}}{{\bf AB}}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\frac{{\bf AB}}{{\bf AH}} = \frac{BC}{HB} = \frac{{\bf AC}}{{\bf AB}}
//]]>
    </script>
     cho chúng ta hằng đẳng thức 
    <span class="MathJax_Preview">
      AB^2 = AH \times AC
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
AB^2 = AH \times AC
//]]>
    </script>
    <br/>
    <br/>
    
Tỷ lệ giữa các cặp cạnh của tam giác mẹ 
    <span class="MathJax_Preview">
      ABC
    </span>
    <script type="math/tex">
//<![CDATA[
ABC
//]]>
    </script>
     và tam giác con 
    <span class="MathJax_Preview">
      BHC
    </span>
    <script type="math/tex">
//<![CDATA[
BHC
//]]>
    </script>
    : 
    <span class="MathJax_Preview">
      \frac{AB}{BH} = \frac{{\bf BC}}{{\bf HC}} = \frac{{\bf AC}}{{\bf BC}}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\frac{AB}{BH} = \frac{{\bf BC}}{{\bf HC}} = \frac{{\bf AC}}{{\bf BC}}
//]]>
    </script>
     cho chúng ta hằng đẳng thức 
    <span class="MathJax_Preview">
      CB^2 = CH \times CA
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
CB^2 = CH \times CA
//]]>
    </script>
    <br/>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://3.bp.blogspot.com/-nkv_ARQ553c/U73pjmdZauI/AAAAAAAACz0/oi2WOfAr6BM/s1600/vuontoan_mathgarden_dunghinh4.png" height="121" width="640"/>
    </div>
    <br/>
    
Tỷ lệ giữa các cặp cạnh của hai tam giác con 
    <span class="MathJax_Preview">
      AHB
    </span>
    <script type="math/tex">
//<![CDATA[
AHB
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      BHC
    </span>
    <script type="math/tex">
//<![CDATA[
BHC
//]]>
    </script>
    <span class="MathJax_Preview">
      \frac{{\bf AH}}{{\bf BH}} = \frac{{\bf HB}}{{\bf HC}} = \frac{AB}{BC}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\frac{{\bf AH}}{{\bf BH}} = \frac{{\bf HB}}{{\bf HC}} = \frac{AB}{BC}
//]]>
    </script>
     cho chúng ta hằng đẳng thức 
    <span class="MathJax_Preview">
      HB^2 = HA \times HC
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
HB^2 = HA \times HC
//]]>
    </script>
    <br/>
    <br/>
    
Tóm lại, chúng ta có 3 hằng đẳng thức cho tam giác vuông. Chúng ta tạm gọi là 
    <i>
      đẳng thức bên phải
    </i>
    , 
    <i>
      đẳng thức bên trái
    </i>
     và 
    <i>
      đẳng thức ở giữa
    </i>
    . Và đây chính là 
    <i>
      <span style="color: purple;">
        <b>
          Định lý đường cao tam giác vuông
        </b>
      </span>
    </i>
    <br/>
    <br/>
    <br/>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Định lý đường cao tam giác vuông:
        </b>
      </span>
    </blockquote>
    <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
      <tbody>
        <tr>
          <td>
            <img border="0" src="http://4.bp.blogspot.com/-sSKxrq6wuBk/U73sYquEExI/AAAAAAAAC0A/8Mv25DbwEt8/s1600/vuontoan_mathgarden_dunghinh5.png" height="272" width="640"/>
          </td>
        </tr>
        <tr>
          <td class="tr-caption" style="font-size: 13px;">
            <i style="font-size: medium; text-align: start;">
              đẳng thức bên trái
            </i>
            <span class="MathJax_Preview">
              AB^2 = AH \times AC
            </span>
            <script type="math/tex">
//<![CDATA[
AB^2 = AH \times AC
//]]>
            </script>
            <br/>
            <i style="font-size: medium; text-align: start;">
              đẳng thức bên phải
            </i>
            <span class="MathJax_Preview">
              CB^2 = CH \times CA
            </span>
            <script type="math/tex">
//<![CDATA[
CB^2 = CH \times CA
//]]>
            </script>
            <br/>
            <i style="font-size: medium; text-align: start;">
              và đẳng thức ở giữa
            </i>
            <span class="MathJax_Preview">
              HB^2 = HA \times HC
            </span>
            <script type="math/tex">
//<![CDATA[
HB^2 = HA \times HC
//]]>
            </script>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    Định lý Pitago
  </span>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <br/>
  <div>
    
Chúng ta sẽ sử dụng các hằng đẳng thức ở trên để chứng minh Định lý Pitago.
    <br/>
    <br/>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Định lý Pitago:
        </b>
         Trong tam giác vuông 
        <span class="MathJax_Preview">
          ABC
        </span>
        <script type="math/tex">
//<![CDATA[
ABC
//]]>
        </script>
         vuông ở đỉnh 
        <span class="MathJax_Preview">
          B
        </span>
        <script type="math/tex">
//<![CDATA[
B
//]]>
        </script>
         thì 
        <span class="MathJax_Preview">
          AB^2 + BC^2 = AC^2
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
AB^2 + BC^2 = AC^2
//]]>
        </script>
      </span>
    </blockquote>
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-1NFn3PM8DT8/U_Ljzu8fJoI/AAAAAAAAC7E/wvOwW4TroLs/s1600/vuontoan_mathgarden_dunghinh6.png" height="640" width="524"/>
  </div>
  <br/>
  <br/>
  
Định lý Pitago nói rằng 
  <b>
    hai hình vuông nhỏ
  </b>
  <span class="MathJax_Preview">
    ABXY
  </span>
  <script type="math/tex">
//<![CDATA[
ABXY
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    BCPQ
  </span>
  <script type="math/tex">
//<![CDATA[
BCPQ
//]]>
  </script>
   có tổng diện tích bằng 
  <b>
    hình vuông lớn
  </b>
  <span class="MathJax_Preview">
    CAIJ
  </span>
  <script type="math/tex">
//<![CDATA[
CAIJ
//]]>
  </script>
  .

  <br/>
  <ul>
    <li>
      Sử dụng 
      <i>
        hằng đẳng thức bên trái
      </i>
      <span class="MathJax_Preview">
        AB^2 = AH \times AC = AH \times AI
      </span>
      <script type="math/tex">
//<![CDATA[
AB^2 = AH \times AC = AH \times AI
//]]>
      </script>
       cho chúng ta thấy 
      <i>
        <span style="color: purple;">
          hình vuông nhỏ
        </span>
      </i>
      <span class="MathJax_Preview">
        ABXY
      </span>
      <script type="math/tex">
//<![CDATA[
ABXY
//]]>
      </script>
       có diện tích bằng 
      <i>
        <span style="color: purple;">
          hình chữ nhật
        </span>
      </i>
      <span class="MathJax_Preview">
        AHMI
      </span>
      <script type="math/tex">
//<![CDATA[
AHMI
//]]>
      </script>
      .
    </li>
  </ul>
  <ul>
    <li>
      Còn 
      <i>
        hằng đẳng thức bên phải
      </i>
      <span class="MathJax_Preview">
        CB^2 = CH \times CA = CH \times CJ
      </span>
      <script type="math/tex">
//<![CDATA[
CB^2 = CH \times CA = CH \times CJ
//]]>
      </script>
       cho chúng ta thấy 
      <i>
        <span style="color: #0b5394;">
          hình vuông nhỏ
        </span>
      </i>
       
      <span class="MathJax_Preview">
        BCPQ
      </span>
      <script type="math/tex">
//<![CDATA[
BCPQ
//]]>
      </script>
       có diện tích đúng bằng 
      <i>
        <span style="color: #0b5394;">
          hình chữ nhật
        </span>
      </i>
      <span class="MathJax_Preview">
        CHMJ
      </span>
      <script type="math/tex">
//<![CDATA[
CHMJ
//]]>
      </script>
      .
    </li>
  </ul>
  <br/>
  
Như vậy 
  <i>
    hình vuông lớn
  </i>
  <span class="MathJax_Preview">
    CAIJ
  </span>
  <script type="math/tex">
//<![CDATA[
CAIJ
//]]>
  </script>
   rõ ràng bằng tổng của hai hình vuông nhỏ 
  <span class="MathJax_Preview">
    ABXY
  </span>
  <script type="math/tex">
//<![CDATA[
ABXY
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    BCPQ
  </span>
  <script type="math/tex">
//<![CDATA[
BCPQ
//]]>
  </script>
  , và định lý Pitago đã được chứng minh.
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta tạm dừng ở đây. Kỳ sau chúng ta sẽ xem xét vì sao, bằng cách sử dụng các hằng đẳng thức trong tam giác vuông này, nhà toán học Gauss đã dựng được hình đa giác đều 17 cạnh.
  <br/>
  <br/>
  
Hẹn gặp lại các bạn ở kỳ sau.
  <br/>
  <br/>
  <br/>
  <br/>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Chứng minh rằng nếu hai tam giác có 
  <i>
    hai
  </i>
   cặp góc bằng nhau thì cả 
  <i>
    ba
  </i>
   cặp góc của hai tam giác này sẽ bằng nhau.
  <br/>
  <br/>
  
2. Bạn hãy viết về một ví dụ tam giác đồng dạng mà bạn thích.
  <br/>
  <br/>
  
3. Nếu bạn đã học về lượng giác, hãy dùng công thức lượng giác để giải thích các hằng đẳng thức hình học ở trên.
  <br/>
  <br/>
  
4. Cho trước ba đoạn thẳng có độ dài 
  <span class="MathJax_Preview">
    r
  </span>
  <script type="math/tex">
//<![CDATA[
r
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    r a
  </span>
  <script type="math/tex">
//<![CDATA[
r a
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    r b
  </span>
  <script type="math/tex">
//<![CDATA[
r b
//]]>
  </script>
  . Dùng thước và compa, hãy
  <br/>
  <ul>
    <li>
      dựng một đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        r (a+b)
      </span>
      <script type="math/tex">
//<![CDATA[
r (a+b)
//]]>
      </script>
    </li>
    <li>
      dựng một đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        r (a-b)
      </span>
      <script type="math/tex">
//<![CDATA[
r (a-b)
//]]>
      </script>
    </li>
    <li>
      dựng một đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        r (ab)
      </span>
      <script type="math/tex">
//<![CDATA[
r (ab)
//]]>
      </script>
    </li>
    <li>
      dựng một đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        r (a/b)
      </span>
      <script type="math/tex">
//<![CDATA[
r (a/b)
//]]>
      </script>
    </li>
    <li>
      dựng một đoạn thẳng có độ dài 
      <span class="MathJax_Preview">
        r \sqrt{ab}
      </span>
      <script type="math/tex">
//<![CDATA[
r \sqrt{ab}
//]]>
      </script>
    </li>
  </ul>
  <br/>
  
5. Cho trước một đoạn thẳng có độ dài bằng 
  <span class="MathJax_Preview">
    r
  </span>
  <script type="math/tex">
//<![CDATA[
r
//]]>
  </script>
  . Bằng thước và compa, bạn có thể dựng được những đoạn thẳng có độ dài bằng bao nhiêu?
  <br/>
  <br/>
  
6. Vào 
  <a href="http://google.com/">
    google.com
  </a>
   để tìm hiểu về các phép dựng hình.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','61','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-2481830394450344605">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-dvMYbR7ixq0/U8cd3Gkl0zI/AAAAAAAAC0Q/S0phgBStX20/s1600/vuontoan_mathgarden_matthew_bug.png" height="396" width="640"/>
  </div>
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    K
  </span>
  ỳ trước chúng ta đã học về cách 
  <a href="http://vuontoanblog.blogspot.com/2014/06/construct-15gon.html" target="_blank">
    dựng đa giác đều 15 cạnh
  </a>
   bằng 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    thước và compa
  </a>
  . Điểm thú vị là cách dựng này liên quan mật thiết đến phương trình nghiệm nguyên 
  <span class="MathJax_Preview">
    3x + 5y = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
3x + 5y = 1.
//]]>
  </script>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-US4Vx0rrpX4/U6eglZ82xcI/AAAAAAAACx0/r-g9mAfcRNg/s1600/vuontoan_mathgarden_p15_2.png" height="304" width="640"/>
  </div>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta cũng đã học về 
  <a href="http://vuontoanblog.blogspot.com/2014/04/measuring-liquid-puzzle.html" target="_blank">
    bài toán đo lường
  </a>
  ,
  <i>
     làm thế nào để đong ra được 1 lít nước bằng cách dùng hai bình thể tích 3 lít và 5 lít
  </i>
  . Chúng ta có hai lời giải và hai lời giải này tương ứng với hai nghiệm của phương trình 
  <span class="MathJax_Preview">
    3x + 5y = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
3x + 5y = 1.
//]]>
  </script>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <br class="Apple-interchange-newline"/>
    <img border="0" src="http://4.bp.blogspot.com/-LZJXdQv3O2w/VCS47-CxuUI/AAAAAAAADHM/bBBfH2pEu5Q/s1600/vuontoan_mathgarden_1L.png" height="290" width="400"/>
  </div>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: purple; font-size: x-large;">
    
H
  </span>
  ôm nay, xin giới thiệu với các bạn một bài toán thứ ba liên quan đến phương trình nghiệm nguyên 
  <span class="MathJax_Preview">
    3x + 5y = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
3x + 5y = 1.
//]]>
  </script>
  <br/>
  <br/>
  
Chúng ta sẽ nêu các câu hỏi để các bạn cùng suy nghĩ. Bạn nào có câu trả lời thì viết lên đây để chúng ta cùng trao đổi.
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Bài toán con bọ cạp.
      </b>
       Chúng ta cùng chơi một trò chơi. Luật chơi là, mỗi bước chúng ta dời con bọ cạp 
      <b>
        3 bước
      </b>
       hoặc 
      <b>
        5 bước
      </b>
       qua 
      <b>
        bên phải
      </b>
       hoặc 
      <b>
        bên trái
      </b>
       tùy ý.
    </span>
  </blockquote>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-qI-rs8LqikI/U8niyNt90XI/AAAAAAAAC1M/eAW_-4JHOWU/s1600/vuontoan_mathgarden_bug11.png" height="98" width="640"/>
  </div>
  <br/>
  <i>
    <span style="color: purple; font-size: x-large;">
      C
    </span>
    âu hỏi:
  </i>
  <br/>
  <br/>
  <ul>
    <li>
      Có bao nhiêu cách để dời con bọ cạp từ một điểm 
      <span class="MathJax_Preview">
        A
      </span>
      <script type="math/tex">
//<![CDATA[
A
//]]>
      </script>
       sang điểm bên cạnh nó? Có sự liên hệ gì giữa cách dời với phương trình 
      <span class="MathJax_Preview">
        3x+5y=1
      </span>
      <script type="math/tex">
//<![CDATA[
3x+5y=1
//]]>
      </script>
      ?
    </li>
  </ul>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-umfcoV8Djb0/U8cuc7qNvOI/AAAAAAAAC0w/82RYXAIkaQg/s1600/vuontoan_mathgarden_bug3.png" height="98" width="640"/>
  </div>
  <br/>
  <ul>
    <li>
      Chứng minh rằng, theo luật chơi, thì từ một điểm 
      <span class="MathJax_Preview">
        A
      </span>
      <script type="math/tex">
//<![CDATA[
A
//]]>
      </script>
      , sau một số bước đi, chúng ta có thể di dời con bọ cạp đến một điểm 
      <span class="MathJax_Preview">
        B
      </span>
      <script type="math/tex">
//<![CDATA[
B
//]]>
      </script>
       bất kỳ.
    </li>
  </ul>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-_wK75EAqo7E/U8ctvutMQjI/AAAAAAAAC0o/DHIrS8e1oZQ/s1600/vuontoan_mathgarden_bug2.png" height="98" width="640"/>
  </div>
  <br/>
  <br/>
  <ul>
    <li>
      Thay vì cho con bọ cạp di dời trên đường thẳng, chúng ta cho con bọ cạp bò trên hình tròn. Có sự liên hệ gì giữa bài toán con bọ cạp và bài toán 
      <a href="http://vuontoanblog.blogspot.com/2014/06/construct-15gon.html" target="_blank">
        dựng hình đa giác đều 15 cạnh
      </a>
      ?
    </li>
  </ul>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-0eJCJKSY3Rs/U8cvk-dc0pI/AAAAAAAAC08/sSAxFWj2kV4/s1600/vuontoan_mathgarden_p15_1b_bug.png" height="272" width="320"/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    
Hẹn gặp lại các bạn!
    <br/>
    <br/>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','4','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-1957218277054411226">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-US4Vx0rrpX4/U6eglZ82xcI/AAAAAAAACx4/ZZnLMhqZ1nA/s1600/vuontoan_mathgarden_p15_2.png" height="304" width="640"/>
  </div>
  <span style="color: purple; font-size: x-large;">
    <br/>
  </span>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay để thoã mãn sự tò mò của các bạn, chúng ta sẽ học về cách 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-c" target="_blank">
    dựng hình
  </a>
   đa giác đều 15 cạnh. Chúng ta sẽ thấy rằng có một sự liên hệ thú vị giữa bài toán dựng hình này với 
  <a href="http://vuontoanblog.blogspot.com/2014/04/measuring-liquid-puzzle.html" target="_blank">
    câu đố mẹo về đo lường
  </a>
   mà chúng ta đã học ở bài trước.
  <br/>
  <div>
    <br/>
  </div>
  <br/>
  <a name="more">
  </a>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Câu đố mẹo về đo lường
  </span>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <br class="Apple-interchange-newline"/>
    <img border="0" src="http://4.bp.blogspot.com/-LZJXdQv3O2w/VCS47-CxuUI/AAAAAAAADHM/bBBfH2pEu5Q/s1600/vuontoan_mathgarden_1L.png" height="290" width="400"/>
  </div>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: purple; font-size: x-large;">
    T
  </span>
  rước hết chúng ta xem lại câu đố mẹo về đo lường mà chúng ta đã học ở bài trước.
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Câu đố đo lường. 
      </b>
      Dùng hai bình thể tích 
      <b>
        3 lít
      </b>
       và 
      <b>
        5 lít
      </b>
      , hãy tìm cách đong ra được đúng 
      <b>
        1 lít
      </b>
       nước.
    </span>
  </blockquote>
  <br/>
  
Với những bài toán đong đếm này, thoạt nhìn qua, chúng ta thấy có vẻ như có vô vàn cách để đong qua đong lại giữa hai bình nước. Nhưng nếu chúng ta xem xét kỹ một chút thì sẽ thấy rằng chúng ta có thể sắp xếp các bước đo lường này theo 8 thể loại như hình sau:
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-Clqgr6yNG0g/U0dWbsReGzI/AAAAAAAACtA/mb-kcgYuRFQ/s1600/vuontoan_mathgarden_1from5and3b.png" height="595" width="640"/>
  </div>
  <br/>
  
Với 8 thể loại đo lường như trên, chúng ta thấy rằng lượng nước 
  <span class="MathJax_Preview">
    (a,b)
  </span>
  <script type="math/tex">
//<![CDATA[
(a,b)
//]]>
  </script>
   trong hai bình sẽ khởi đầu với giá trị 
  <span class="MathJax_Preview">
    (0~ lít, 0~ lít)
  </span>
  <script type="math/tex">
//<![CDATA[
(0~ lít, 0~ lít)
//]]>
  </script>
   và sau mỗi bước đong qua đong lại thì giá trị của 
  <span class="MathJax_Preview">
    (a,b)
  </span>
  <script type="math/tex">
//<![CDATA[
(a,b)
//]]>
  </script>
   sẽ thay đổi thành một trong 8 giá trị sau 
  <span class="MathJax_Preview">
    (0,b), ~~(a,0), ~~(3,b), ~~(a,5),
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
(0,b), ~~(a,0), ~~(3,b), ~~(a,5),
//]]>
  </script>
  <span class="MathJax_Preview">
    (0,a+b), ~~(a+b,0), ~~(a+b-5,5), ~~(3,a+b-3).
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
(0,a+b), ~~(a+b,0), ~~(a+b-5,5), ~~(3,a+b-3).
//]]>
  </script>
  <br/>
  <br/>
  
Từ đó chúng ta dễ dàng chứng minh được kết quả
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Lượng nước (theo đơn vị lít) trong hai bình luôn luôn là một số có dạng 
        <span class="MathJax_Preview">
          3x+5y
        </span>
        <script type="math/tex">
//<![CDATA[
3x+5y
//]]>
        </script>
         trong đó 
        <span class="MathJax_Preview">
          x
        </span>
        <script type="math/tex">
//<![CDATA[
x
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          y
        </span>
        <script type="math/tex">
//<![CDATA[
y
//]]>
        </script>
         là hai số nguyên.
      </b>
    </span>
  </blockquote>
  <br/>
  
Có nghĩa là nếu chúng ta muốn đong ra được chính xác 
  <b>
    1 lít
  </b>
   nước thì chúng ta phải biểu diễn con số 
  <span class="MathJax_Preview">
    1
  </span>
  <script type="math/tex">
//<![CDATA[
1
//]]>
  </script>
   (lít) thành số có dạng 
  <span class="MathJax_Preview">
    3x+5y
  </span>
  <script type="math/tex">
//<![CDATA[
3x+5y
//]]>
  </script>
  . Vậy câu đố này đưa về việc giải phương trình nghiệm nguyên  
  <span class="MathJax_Preview">
    3x + 5y = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
3x + 5y = 1.
//]]>
  </script>
  <br/>
  <br/>
  
Phương trình nghiệm nguyên này có vô số nghiệm. Chúng ta dễ dàng thấy được hai nghiệm của phương trình là 
  <span class="MathJax_Preview">
    (x=2,y=-1)
  </span>
  <script type="math/tex">
//<![CDATA[
(x=2,y=-1)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (x=-3,y=2)
  </span>
  <script type="math/tex">
//<![CDATA[
(x=-3,y=2)
//]]>
  </script>
  . Hai nghiệm này tương ứng với việc biểu diễn số 
  <span class="MathJax_Preview">
    1
  </span>
  <script type="math/tex">
//<![CDATA[
1
//]]>
  </script>
   thành dạng 
  <span class="MathJax_Preview">
    {\bf 3} \times 2 - {\bf 5} \times 1 = 1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
{\bf 3} \times 2 - {\bf 5} \times 1 = 1
//]]>
  </script>
  <span class="MathJax_Preview">
    {\bf 5} \times 2 - {\bf 3} \times 3 = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
{\bf 5} \times 2 - {\bf 3} \times 3 = 1.
//]]>
  </script>
  <br/>
  <br/>
  
Từ đó chúng ta có hai đáp án cho câu đố như sau:
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td>
          <img border="0" src="http://3.bp.blogspot.com/-6SRWdaPR7D0/U0eB0scO9NI/AAAAAAAACtk/UAH0hPGtdhM/s1600/vuontoan_mathgarden_1from5and3a.png" height="147" width="640"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption">
          <span style="font-size: small; text-align: start;">
            Đáp án 1: 
            <span class="MathJax_Preview">
              {\bf 3} \times 2 - {\bf 5} \times 1 = 1
            </span>
            <script type="math/tex">
//<![CDATA[
{\bf 3} \times 2 - {\bf 5} \times 1 = 1
//]]>
            </script>
            : Đong đầy bình 3 lít 
            <b>
              hai lần
            </b>
             và đổ qua làm đầy bình 5 lít 
            <b>
              một lần
            </b>
            , ta được 1 lít.
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td>
          <img border="0" src="http://1.bp.blogspot.com/-00b_oVM5qvc/U0du7E0rcJI/AAAAAAAACtU/ATQJtVMF64E/s1600/vuontoan_mathgarden_1from5and3c.png" height="288" width="640"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="font-size: 12.666666984558105px;">
          <span style="font-size: small; text-align: start;">
            Đáp án 2: 
            <span class="MathJax_Preview">
              {\bf 5} \times 2 - {\bf 3} \times 3 = 1
            </span>
            <script type="math/tex">
//<![CDATA[
{\bf 5} \times 2 - {\bf 3} \times 3 = 1
//]]>
            </script>
            : Đong đầy bình 5 lít 
            <b>
              hai lần
            </b>
             và đổ qua làm đầy bình 3 lít 
            <b>
              ba lần
            </b>
            , ta được 1 lít.
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta vừa thấy rằng câu đố về đo lường có liên quan mật thiết đến việc giải phương trình nghiệm nguyên 
  <span class="MathJax_Preview">
    3x+5y=1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
3x+5y=1.
//]]>
  </script>
   Một chút xíu nữa, chúng ta sẽ thấy chính phương trình nghiệm nguyên này sẽ giúp chúng ta dựng được hình đa giác đều 15 cạnh!
  <br/>
  <div>
    <br/>
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Bài toán dựng hình đa giác đều
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta sẽ gọi một đa giác có 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
   cạnh là một 
  <b>
    <span class="MathJax_Preview">
      n
    </span>
    <script type="math/tex">
//<![CDATA[
n
//]]>
    </script>
    -giác
  </b>
  . Ví dụ 
  <span class="MathJax_Preview">
    3
  </span>
  <script type="math/tex">
//<![CDATA[
3
//]]>
  </script>
  -giác là hình tam giác, còn 
  <span class="MathJax_Preview">
    5
  </span>
  <script type="math/tex">
//<![CDATA[
5
//]]>
  </script>
  -giác là hình ngũ giác. 
  <a href="http://vuontoanblog.blogspot.com/2014/03/regular-polygon-construction.html" target="_blank">
    Đa giác 
    <b>
      đều
    </b>
  </a>
   là một đa giác có các cạnh bằng nhau và các góc bằng nhau.
  <br/>
  <div>
    <br/>
  </div>
  
Bài toán 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    dựng hình
  </a>
  <a href="http://vuontoanblog.blogspot.com/2014/03/regular-polygon-construction.html" target="_blank">
    đa giác đều
  </a>
   bằng thước và compa là một bài toán cổ điển. Nó được đặt ra từ thời xa xưa. Mặc dù phát biểu đơn giản nhưng đây là một bài toán cực kỳ khó. Đã từ lâu, chúng ta biết được cách dựng hình tam giác đều và 
  <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
    ngũ giác đều
  </a>
  . Chẳng hạn từ thời Hy Lạp cổ đại, trong bộ sách 
  <i>
    "Cơ sở Toán học"
  </i>
   nổi tiếng, Euclid đã trình bày một cách dựng hình
  <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
     ngũ giác đều
  </a>
  . Vậy nhưng qua gần hai ngàn năm, không ai tìm ra được cách dựng 7-giác đều, 9-giác đều, 11-giác đều hay 13-giác đều, mọi nỗ lực dường như rơi vào bế tắc. Mãi cho tới năm 1796, nhà toán học Gauss, lúc đó mới 19 tuổi, tìm được bước đột phá đầu tiên cho 
  <a href="http://vuontoanblog.blogspot.com/2014/03/regular-polygon-construction.html" target="_blank">
    bài toán
  </a>
  . Gauss đã thành công tìm ra được cách dựng hình 17-giác đều. Bài toán được giải quyết hoàn toàn vào năm 1837 với 
  <a href="http://vuontoanblog.blogspot.com/2014/03/regular-polygon-construction.html" target="_blank">
    định lý tuyệt vời
  </a>
   sau đây
  <br/>
  <div>
    <br/>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Định lý Gauss-Wantzel.
        </b>
         Với một 
        <i>
          số lẻ
        </i>
        <span class="MathJax_Preview">
          n
        </span>
        <script type="math/tex">
//<![CDATA[
n
//]]>
        </script>
        , đa giác đều 
        <span class="MathJax_Preview">
          n
        </span>
        <script type="math/tex">
//<![CDATA[
n
//]]>
        </script>
         cạnh có thể dựng được bằng thước và compa 
        <i>
          khi và chỉ khi
        </i>
        <span class="MathJax_Preview">
          n=p_1 \times \dots \times p_t
        </span>
        <script type="math/tex">
//<![CDATA[
n=p_1 \times \dots \times p_t
//]]>
        </script>
        , trong đó 
        <span class="MathJax_Preview">
          p_1, \dots, p_t
        </span>
        <script type="math/tex">
//<![CDATA[
p_1, \dots, p_t
//]]>
        </script>
         là các 
        <i>
          số nguyên tố Fermat
        </i>
        <b>
          phân biệt
        </b>
        .
      </span>
    </blockquote>
  </div>
  <div>
    <br/>
  </div>
  
Vậy 
  <b>
    số nguyên tố Fermat
  </b>
   trong Định lý Gauss là số nguyên tố gì? Chúng ta có định nghĩa sau đây.
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Số nguyên tố Fermat.
      </b>
       Một số nguyên tố được gọi là số nguyên tố Fermat nếu nó có dạng 
      <span class="MathJax_Preview">
        F_k = 2^{2^k}+1.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
F_k = 2^{2^k}+1.
//]]>
      </script>
    </span>
    <br/>
    <div>
      <span style="color: purple;">
        <br/>
      </span>
    </div>
  </blockquote>
  
Theo định nghĩa trên thì:
  <br/>
  <ul>
    <li>
      <span class="MathJax_Preview">
        k=0
      </span>
      <script type="math/tex">
//<![CDATA[
k=0
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        F_0 = 2^{2^0}+1 = 2^1 + 1 = 3
      </span>
      <script type="math/tex">
//<![CDATA[
F_0 = 2^{2^0}+1 = 2^1 + 1 = 3
//]]>
      </script>
       là 
      <span style="color: purple;">
        số nguyên tố
      </span>
       nên nó là số nguyên tố Fermat,
    </li>
    <li>
      <span class="MathJax_Preview">
        k=1
      </span>
      <script type="math/tex">
//<![CDATA[
k=1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        F_1 = 2^{2^1}+1 = 2^2 + 1 = 5
      </span>
      <script type="math/tex">
//<![CDATA[
F_1 = 2^{2^1}+1 = 2^2 + 1 = 5
//]]>
      </script>
       là 
      <span style="color: purple;">
        số nguyên tố
      </span>
       nên nó là số nguyên tố Fermat,
    </li>
    <li>
      <span class="MathJax_Preview">
        k=2
      </span>
      <script type="math/tex">
//<![CDATA[
k=2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        F_2 = 2^{2^2}+1 = 2^4 + 1 = 17
      </span>
      <script type="math/tex">
//<![CDATA[
F_2 = 2^{2^2}+1 = 2^4 + 1 = 17
//]]>
      </script>
       là 
      <span style="color: purple;">
        số nguyên tố
      </span>
       nên nó là số nguyên tố Fermat,
    </li>
    <li>
      <span class="MathJax_Preview">
        k=3
      </span>
      <script type="math/tex">
//<![CDATA[
k=3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        F_3 = 2^{2^3}+1 = 2^8 + 1 = 257
      </span>
      <script type="math/tex">
//<![CDATA[
F_3 = 2^{2^3}+1 = 2^8 + 1 = 257
//]]>
      </script>
       là 
      <span style="color: purple;">
        số nguyên tố
      </span>
       nên nó là số nguyên tố Fermat,
    </li>
    <li>
      <span class="MathJax_Preview">
        k=4
      </span>
      <script type="math/tex">
//<![CDATA[
k=4
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        F_4 = 2^{2^4}+1 = 2^{16} + 1 = 65537
      </span>
      <script type="math/tex">
//<![CDATA[
F_4 = 2^{2^4}+1 = 2^{16} + 1 = 65537
//]]>
      </script>
       là 
      <span style="color: purple;">
        số nguyên tố
      </span>
       nên nó là số nguyên tố Fermat,
    </li>
    <li>
      <span class="MathJax_Preview">
        k=5
      </span>
      <script type="math/tex">
//<![CDATA[
k=5
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        F_5 = 2^{2^5}+1 = 2^{32} + 1 = 4294967297 = 641 \times 6700417
      </span>
      <script type="math/tex">
//<![CDATA[
F_5 = 2^{2^5}+1 = 2^{32} + 1 = 4294967297 = 641 \times 6700417
//]]>
      </script>
       là một 
      <span style="color: #cc0000;">
        hợp số
      </span>
      .
    </li>
  </ul>
  <br/>
  
Bởi vì 
  <span class="MathJax_Preview">
    3
  </span>
  <script type="math/tex">
//<![CDATA[
3
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    5
  </span>
  <script type="math/tex">
//<![CDATA[
5
//]]>
  </script>
   là hai số nguyên tố Fermat, nên theo định lý Gauss-Wantzel, tam giác đều và 
  <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
    ngũ giác đều
  </a>
   dựng được. Ngoài ra vì 
  <span class="MathJax_Preview">
    15 = 3 \times 5
  </span>
  <script type="math/tex">
//<![CDATA[
15 = 3 \times 5
//]]>
  </script>
   nên chúng ta cũng dựng được 15-giác đều. Tuy nhiên có một điểm lưu ý trong định lý, đó là các số nguyên tố Fermat trong tích 
  <span class="MathJax_Preview">
    n=p_1 \times \dots \times p_t
  </span>
  <script type="math/tex">
//<![CDATA[
n=p_1 \times \dots \times p_t
//]]>
  </script>
   phải khác nhau. Cho nên mặc dù 
  <span class="MathJax_Preview">
    9 = 3 \times 3
  </span>
  <script type="math/tex">
//<![CDATA[
9 = 3 \times 3
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    25 = 5 \times 5
  </span>
  <script type="math/tex">
//<![CDATA[
25 = 5 \times 5
//]]>
  </script>
  , nhưng 
  <span class="MathJax_Preview">
    9
  </span>
  <script type="math/tex">
//<![CDATA[
9
//]]>
  </script>
  -giác đều và 
  <span class="MathJax_Preview">
    25
  </span>
  <script type="math/tex">
//<![CDATA[
25
//]]>
  </script>
  -giác đều thì không dựng được bằng 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    thước và compa
  </a>
  .
  <br/>
  <div>
    <br/>
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Dựng hình đa giác đều 15 cạnh
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    N
  </span>
  hư đã nói ở trên, vì 
  <span class="MathJax_Preview">
    15
  </span>
  <script type="math/tex">
//<![CDATA[
15
//]]>
  </script>
   là tích của hai số nguyên tố Fermat 
  <i>
    phân biệt
  </i>
   (3 và 5), nên theo 
  <a href="http://vuontoanblog.blogspot.com/2014/03/regular-polygon-construction.html" target="_blank">
    định lý Gauss-Wantzel
  </a>
  , 15-giác đều có thể dựng được bằng 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    thước và compa
  </a>
  . Nhưng chúng ta dựng nó bằng cách nào?
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-c71ij3A9jwM/U6eeUPWGnkI/AAAAAAAACxo/QAf0Dx__pWI/s1600/vuontoan_mathgarden_p15_1b.png" height="320" width="320"/>
  </div>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta hãy nhìn hình vẽ của một đa giác đều 15 cạnh. Chúng ta thấy rằng các đỉnh của đa giác tạo thành rất nhiều các 
  <i>
    tam giác đều
  </i>
   và các 
  <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
    ngũ giác đều
  </a>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-US4Vx0rrpX4/U6eglZ82xcI/AAAAAAAACx0/r-g9mAfcRNg/s1600/vuontoan_mathgarden_p15_2.png" height="304" width="640"/>
  </div>
  <br/>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ình vẽ trên gợi cho chúng ta một ý tưởng. Đó là, chúng ta hãy thử dựng 
  <i>
    tam giác đều
  </i>
   và 
  <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
    ngũ giác đều
  </a>
   trước xem sao.
  <br/>
  <br/>
  
Chúng ta hãy vẽ một hình tròn, rồi chọn một đỉnh 
  <span class="MathJax_Preview">
    P_0
  </span>
  <script type="math/tex">
//<![CDATA[
P_0
//]]>
  </script>
   bất kỳ trên hình tròn đó. Sau đó chúng ta dựng một hình 
  <i>
    tam giác đều
  </i>
  <span class="MathJax_Preview">
    A_0 A_1 A_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_0 A_1 A_2
//]]>
  </script>
   và một hình
  <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
     ngũ giác đều
  </a>
  <span class="MathJax_Preview">
    B_0 B_1 B_2 B_3 B_4
  </span>
  <script type="math/tex">
//<![CDATA[
B_0 B_1 B_2 B_3 B_4
//]]>
  </script>
   với đỉnh 
  <span class="MathJax_Preview">
    A_0 = B_0=P_0
  </span>
  <script type="math/tex">
//<![CDATA[
A_0 = B_0=P_0
//]]>
  </script>
  . Như vậy, mặc dù chúng ta chưa hoàn toàn dựng xong 15-giác đều, nhưng chúng ta đã dựng được "
  <i>
    một phần
  </i>
  " của nó!
  <br/>
  <div>
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-1m29TqRxWdw/U6en64nielI/AAAAAAAACyE/H_XPlbfm_Qg/s1600/vuontoan_mathgarden_p15_3b.png" height="307" width="320"/>
  </div>
  <br/>
  
Nhìn kỹ hình vẽ trên. Liệu chúng ta dựng tiếp được các đỉnh khác của hình 15-giác đều hay không? 
  <i>
    Aaaa! ĐƯỢC RỒI!!!
  </i>
  <br/>
  <br/>
  
Rõ ràng từ hình vẽ thì chúng ta đã xác định được hai cạnh của hình 15-giác đều, đó là cạnh 
  <span class="MathJax_Preview">
    A_1 B_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_1 B_2
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    B_3 A_2
  </span>
  <script type="math/tex">
//<![CDATA[
B_3 A_2
//]]>
  </script>
  . Nhưng một khi chúng ta dựng được một cạnh thì tất cả các cạnh khác đều dựng được. Ví dụ, chúng ta có thể dùng compa vẽ đường tròn tâm 
  <span class="MathJax_Preview">
    P_0
  </span>
  <script type="math/tex">
//<![CDATA[
P_0
//]]>
  </script>
   và bán kính bằng 
  <span class="MathJax_Preview">
    A_1 B_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_1 B_2
//]]>
  </script>
   thì đường tròn này sẽ cắt đường tròn lớn tại 
  <span class="MathJax_Preview">
    P_1
  </span>
  <script type="math/tex">
//<![CDATA[
P_1
//]]>
  </script>
  . Rồi từ 
  <span class="MathJax_Preview">
    P_1
  </span>
  <script type="math/tex">
//<![CDATA[
P_1
//]]>
  </script>
   chúng ta dựng tiếp 
  <span class="MathJax_Preview">
    P_2
  </span>
  <script type="math/tex">
//<![CDATA[
P_2
//]]>
  </script>
  , v.v..., tiếp tục như vậy thì chúng ta sẽ dựng được hết các đỉnh còn lại.
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    B
  </span>
  ây giờ, chúng ta cùng nhau viết lại cách dựng hình 15-giác đều
  <br/>
  <ul>
    <li>
      <span style="color: purple;">
        Dựng một đường tròn và chọn một điểm 
        <span class="MathJax_Preview">
          P_0
        </span>
        <script type="math/tex">
//<![CDATA[
P_0
//]]>
        </script>
         trên đó.
      </span>
    </li>
    <li>
      <span style="color: purple;">
        Dựng tam giác đều 
        <span class="MathJax_Preview">
          P_0 P_5 P_{10}
        </span>
        <script type="math/tex">
//<![CDATA[
P_0 P_5 P_{10}
//]]>
        </script>
         và 
        <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
          ngũ giác đều
        </a>
        <span class="MathJax_Preview">
          P_0 P_3 P_6 P_9 P_{12}
        </span>
        <script type="math/tex">
//<![CDATA[
P_0 P_3 P_6 P_9 P_{12}
//]]>
        </script>
        .
      </span>
    </li>
    <li>
      <span style="color: purple;">
        Nối hai cạnh 
        <span class="MathJax_Preview">
          P_5 P_6
        </span>
        <script type="math/tex">
//<![CDATA[
P_5 P_6
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          P_9 P_{10}
        </span>
        <script type="math/tex">
//<![CDATA[
P_9 P_{10}
//]]>
        </script>
        .
      </span>
    </li>
    <li>
      <span style="color: purple;">
        Dựng đường tròn tâm 
        <span class="MathJax_Preview">
          P_0
        </span>
        <script type="math/tex">
//<![CDATA[
P_0
//]]>
        </script>
         bán kính bằng 
        <span class="MathJax_Preview">
          P_5 P_6
        </span>
        <script type="math/tex">
//<![CDATA[
P_5 P_6
//]]>
        </script>
        , đường tròn này cắt đường tròn ban đầu tại 
        <span class="MathJax_Preview">
          P_1
        </span>
        <script type="math/tex">
//<![CDATA[
P_1
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          P_{14}
        </span>
        <script type="math/tex">
//<![CDATA[
P_{14}
//]]>
        </script>
        .
      </span>
    </li>
    <li>
      <span style="color: purple;">
        Dựng đường tròn tâm 
        <span class="MathJax_Preview">
          P_3
        </span>
        <script type="math/tex">
//<![CDATA[
P_3
//]]>
        </script>
         bán kính bằng 
        <span class="MathJax_Preview">
          P_5 P_6
        </span>
        <script type="math/tex">
//<![CDATA[
P_5 P_6
//]]>
        </script>
        , đường tròn này cắt đường tròn ban đầu tại 
        <span class="MathJax_Preview">
          P_2
        </span>
        <script type="math/tex">
//<![CDATA[
P_2
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          P_{4}
        </span>
        <script type="math/tex">
//<![CDATA[
P_{4}
//]]>
        </script>
        . 
      </span>
    </li>
    <li>
      <span style="color: purple;">
        Các đỉnh còn lại 
        <span class="MathJax_Preview">
          P_7
        </span>
        <script type="math/tex">
//<![CDATA[
P_7
//]]>
        </script>
        , 
        <span class="MathJax_Preview">
          P_8
        </span>
        <script type="math/tex">
//<![CDATA[
P_8
//]]>
        </script>
        , 
        <span class="MathJax_Preview">
          P_{11}
        </span>
        <script type="math/tex">
//<![CDATA[
P_{11}
//]]>
        </script>
        , 
        <span class="MathJax_Preview">
          P_{13}
        </span>
        <script type="math/tex">
//<![CDATA[
P_{13}
//]]>
        </script>
         được dựng tương tự.
      </span>
    </li>
  </ul>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-7lZr1spciOk/U6erliQ04iI/AAAAAAAACyQ/ifW6n3a-aL4/s1600/vuontoan_mathgarden_p15_4.png" height="312" width="320"/>
  </div>
  <br/>
  <span style="color: purple; font-size: x-large;">
    <br/>
  </span>
  <span style="color: purple; font-size: x-large;">
    V
  </span>
  ậy là chúng ta đã biết được cách dựng hình đa giác đều 15 cạnh. Bây giờ chúng ta hãy cùng nhau suy ngẫm để tìm ra lý do vì sao chúng ta có được cách dựng này. Rõ ràng điểm mấu chốt trong cách dựng trên là việc chúng ta phát hiện ra đỉnh 
  <span class="MathJax_Preview">
    A_1
  </span>
  <script type="math/tex">
//<![CDATA[
A_1
//]]>
  </script>
   nằm cạnh đỉnh 
  <span class="MathJax_Preview">
    B_2
  </span>
  <script type="math/tex">
//<![CDATA[
B_2
//]]>
  </script>
  , và đỉnh 
  <span class="MathJax_Preview">
    B_3
  </span>
  <script type="math/tex">
//<![CDATA[
B_3
//]]>
  </script>
   nằm cạnh đỉnh 
  <span class="MathJax_Preview">
    A_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_2
//]]>
  </script>
  . Vì vậy mà chúng ta đã dựng được hai cạnh 
  <span class="MathJax_Preview">
    A_1 B_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_1 B_2
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    B_3 A_2
  </span>
  <script type="math/tex">
//<![CDATA[
B_3 A_2
//]]>
  </script>
   cho hình đa giác đều. Tính chất này có thể được giải thích dựa vào phương trình nghiệm nguyên 
  <span class="MathJax_Preview">
    3x+5y=1
  </span>
  <script type="math/tex">
//<![CDATA[
3x+5y=1
//]]>
  </script>
   như sau.
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-HSeyYDiTOsU/U62QbevRX3I/AAAAAAAACzA/MghSYve5joU/s1600/vuontoan_mathgarden_p15_99.png" height="294" width="640"/>
  </div>
  <br/>
  <br/>
  
Chúng ta hãy chia hình tròn thành 15 đơn vị, thì mỗi cạnh của hình tam giác đều sẽ chiếm 5 đơn vị, còn mỗi cạnh của hình ngũ giác đều ứng với 3 đơn vị. Nếu chúng ta dùng 
  <span class="MathJax_Preview">
    P_0
  </span>
  <script type="math/tex">
//<![CDATA[
P_0
//]]>
  </script>
   làm điểm mốc để đo khoảng cách các đỉnh thì đỉnh 
  <span class="MathJax_Preview">
    A_1
  </span>
  <script type="math/tex">
//<![CDATA[
A_1
//]]>
  </script>
   ở tại vị trí 5 đơn vị và đỉnh 
  <span class="MathJax_Preview">
    A_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_2
//]]>
  </script>
   ở tại vị trí 10 đơn vị. Còn các đỉnh của 
  <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
    ngũ giác đều
  </a>
   thì, đỉnh 
  <span class="MathJax_Preview">
    B_1
  </span>
  <script type="math/tex">
//<![CDATA[
B_1
//]]>
  </script>
   ở vị trí 3, đỉnh 
  <span class="MathJax_Preview">
    B_2
  </span>
  <script type="math/tex">
//<![CDATA[
B_2
//]]>
  </script>
   vị trí 6, đỉnh 
  <span class="MathJax_Preview">
    B_3
  </span>
  <script type="math/tex">
//<![CDATA[
B_3
//]]>
  </script>
   vị trí 9, và đỉnh 
  <span class="MathJax_Preview">
    B_4
  </span>
  <script type="math/tex">
//<![CDATA[
B_4
//]]>
  </script>
   vị trí 12.
  <br/>
  <br/>
  
Một cách tổng quát thì đỉnh 
  <span class="MathJax_Preview">
    A_i
  </span>
  <script type="math/tex">
//<![CDATA[
A_i
//]]>
  </script>
   ở vị trí 
  <span class="MathJax_Preview">
    5i
  </span>
  <script type="math/tex">
//<![CDATA[
5i
//]]>
  </script>
   còn đỉnh 
  <span class="MathJax_Preview">
    B_j
  </span>
  <script type="math/tex">
//<![CDATA[
B_j
//]]>
  </script>
   ở vị trí 
  <span class="MathJax_Preview">
    3j
  </span>
  <script type="math/tex">
//<![CDATA[
3j
//]]>
  </script>
  . Vậy khoảng cách giữa 
  <span class="MathJax_Preview">
    A_i
  </span>
  <script type="math/tex">
//<![CDATA[
A_i
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    B_j
  </span>
  <script type="math/tex">
//<![CDATA[
B_j
//]]>
  </script>
   trên đường tròn sẽ là 
  <span class="MathJax_Preview">
    A_i B_j = |5i - 3j|.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
A_i B_j = |5i - 3j|.
//]]>
  </script>
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td>
          <img border="0" src="http://2.bp.blogspot.com/-1m29TqRxWdw/U6en64nielI/AAAAAAAACyI/l4L2baEWKL0/s1600/vuontoan_mathgarden_p15_3b.png" height="307" width="320"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="font-size: 13px;">
          <span style="font-size: small; text-align: start;">
            <span class="MathJax_Preview">
              A_i
            </span>
            <script type="math/tex">
//<![CDATA[
A_i
//]]>
            </script>
             ở vị trí 
            <span class="MathJax_Preview">
              5i
            </span>
            <script type="math/tex">
//<![CDATA[
5i
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              B_j
            </span>
            <script type="math/tex">
//<![CDATA[
B_j
//]]>
            </script>
             ở vị trí 
            <span class="MathJax_Preview">
              3j
            </span>
            <script type="math/tex">
//<![CDATA[
3j
//]]>
            </script>
            , nên khoảng cách giữa 
            <span class="MathJax_Preview">
              A_i
            </span>
            <script type="math/tex">
//<![CDATA[
A_i
//]]>
            </script>
             và 
            <span class="MathJax_Preview">
              B_j
            </span>
            <script type="math/tex">
//<![CDATA[
B_j
//]]>
            </script>
             là 
            <span class="MathJax_Preview">
              A_i B_j = |5i - 3j|
            </span>
            <script type="math/tex">
//<![CDATA[
A_i B_j = |5i - 3j|
//]]>
            </script>
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  
Theo công thức tính khoảng cách này thì đỉnh 
  <span class="MathJax_Preview">
    A_i
  </span>
  <script type="math/tex">
//<![CDATA[
A_i
//]]>
  </script>
   nằm cạnh đỉnh 
  <span class="MathJax_Preview">
    B_j
  </span>
  <script type="math/tex">
//<![CDATA[
B_j
//]]>
  </script>
   khi và chỉ khi khoảng cách giữa 
  <span class="MathJax_Preview">
    A_i
  </span>
  <script type="math/tex">
//<![CDATA[
A_i
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    B_j
  </span>
  <script type="math/tex">
//<![CDATA[
B_j
//]]>
  </script>
   là 1 đơn vị, tức là khi 
  <span class="MathJax_Preview">
    5i-3j = \pm 1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
5i-3j = \pm 1
//]]>
  </script>
  <br/>
  <br/>
  
Một nghiệm của phương trình này là 
  <span class="MathJax_Preview">
    i=2
  </span>
  <script type="math/tex">
//<![CDATA[
i=2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    j=3
  </span>
  <script type="math/tex">
//<![CDATA[
j=3
//]]>
  </script>
  , theo đó 
  <span class="MathJax_Preview">
    {\bf 5} \times 2 - {\bf 3} \times 3 = 1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
{\bf 5} \times 2 - {\bf 3} \times 3 = 1
//]]>
  </script>
   và đây chính là lý do vì sao 
  <span class="MathJax_Preview">
    A_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_2
//]]>
  </script>
   nằm cạnh 
  <span class="MathJax_Preview">
    B_3
  </span>
  <script type="math/tex">
//<![CDATA[
B_3
//]]>
  </script>
   để tạo ra một cạnh 
  <span class="MathJax_Preview">
    B_3 A_2
  </span>
  <script type="math/tex">
//<![CDATA[
B_3 A_2
//]]>
  </script>
   cho hình 15-giác.
  <br/>
  <br/>
  
Một nghiệm khác của phương trình là 
  <span class="MathJax_Preview">
    i=1
  </span>
  <script type="math/tex">
//<![CDATA[
i=1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    j=2
  </span>
  <script type="math/tex">
//<![CDATA[
j=2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    {\bf 5} \times 1 - {\bf 3} \times 2 = -1
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
{\bf 5} \times 1 - {\bf 3} \times 2 = -1
//]]>
  </script>
   nghiệm này là lý do để 
  <span class="MathJax_Preview">
    A_1
  </span>
  <script type="math/tex">
//<![CDATA[
A_1
//]]>
  </script>
   nằm cạnh 
  <span class="MathJax_Preview">
    B_2
  </span>
  <script type="math/tex">
//<![CDATA[
B_2
//]]>
  </script>
  .
  <br/>
  <br/>
  
Như vậy hai cạnh 
  <span class="MathJax_Preview">
    B_3 A_2
  </span>
  <script type="math/tex">
//<![CDATA[
B_3 A_2
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    A_1 B_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_1 B_2
//]]>
  </script>
   của hình 15-giác đều được dựng nhờ vào hai nghiệm nguyên của phương trình 
  <span class="MathJax_Preview">
    3x+5y=1
  </span>
  <script type="math/tex">
//<![CDATA[
3x+5y=1
//]]>
  </script>
  . Thật là thú vị phải không các bạn!
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    T
  </span>
  ừ đây chúng ta dễ dàng mở rộng bài toán như sau
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      Vẽ một đường tròn và chọn một điểm 
      <span class="MathJax_Preview">
        P_0
      </span>
      <script type="math/tex">
//<![CDATA[
P_0
//]]>
      </script>
       trên nó. Vẽ một 
      <span class="MathJax_Preview">
        p
      </span>
      <script type="math/tex">
//<![CDATA[
p
//]]>
      </script>
      -giác đều 
      <span class="MathJax_Preview">
        A_0 A_1 \dots A_{p-1}
      </span>
      <script type="math/tex">
//<![CDATA[
A_0 A_1 \dots A_{p-1}
//]]>
      </script>
       và một 
      <span class="MathJax_Preview">
        q
      </span>
      <script type="math/tex">
//<![CDATA[
q
//]]>
      </script>
      -giác đều 
      <span class="MathJax_Preview">
        B_0 B_1 \dots B_{q-1}
      </span>
      <script type="math/tex">
//<![CDATA[
B_0 B_1 \dots B_{q-1}
//]]>
      </script>
       với đỉnh 
      <span class="MathJax_Preview">
        A_0 = B_0 = P_0
      </span>
      <script type="math/tex">
//<![CDATA[
A_0 = B_0 = P_0
//]]>
      </script>
      . Nếu 
      <span class="MathJax_Preview">
        p
      </span>
      <script type="math/tex">
//<![CDATA[
p
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        q
      </span>
      <script type="math/tex">
//<![CDATA[
q
//]]>
      </script>
       là hai số nguyên tố cùng nhau thì chắc chắn sẽ tồn tại ít nhất hai đỉnh 
      <span class="MathJax_Preview">
        A_x
      </span>
      <script type="math/tex">
//<![CDATA[
A_x
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        B_y
      </span>
      <script type="math/tex">
//<![CDATA[
B_y
//]]>
      </script>
       sao cho 
      <span class="MathJax_Preview">
        A_x B_y
      </span>
      <script type="math/tex">
//<![CDATA[
A_x B_y
//]]>
      </script>
       tạo thành một cạnh của hình 
      <span class="MathJax_Preview">
        pq
      </span>
      <script type="math/tex">
//<![CDATA[
pq
//]]>
      </script>
      -giác đều. Có nghĩa là nếu 
      <span class="MathJax_Preview">
        p
      </span>
      <script type="math/tex">
//<![CDATA[
p
//]]>
      </script>
      -giác đều dựng được và 
      <span class="MathJax_Preview">
        q
      </span>
      <script type="math/tex">
//<![CDATA[
q
//]]>
      </script>
      -giác đều dựng được, thì 
      <span class="MathJax_Preview">
        pq
      </span>
      <script type="math/tex">
//<![CDATA[
pq
//]]>
      </script>
      -giác đều cũng dựng được.

    </span>
  </blockquote>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta tạm dừng ở đây. Các kỳ sau chúng ta sẽ học về cách 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    dựng hình
  </a>
   đa giác đều 17 cạnh của nhà toán học Gauss. Hẹn gặp lại các bạn.
  <br/>
  <br/>
  <br/>
  <div>
    <br/>
  </div>
  <div>
    <div>
      <i>
        Bài tập về nhà.
      </i>
    </div>
    <div>
      <br/>
    </div>
    <div>
      
1. Chứng minh phần mở rộng nói ở cuối bài:
      <br/>
      <blockquote class="tr_bq">
        
Cho 
        <span class="MathJax_Preview">
          p
        </span>
        <script type="math/tex">
//<![CDATA[
p
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          q
        </span>
        <script type="math/tex">
//<![CDATA[
q
//]]>
        </script>
         là hai số nguyên tố cùng nhau. Chứng minh rằng nếu bằng 
        <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
          thước và compa
        </a>
         chúng ta dựng được 
        <span class="MathJax_Preview">
          p
        </span>
        <script type="math/tex">
//<![CDATA[
p
//]]>
        </script>
        -giác đều và 
        <span class="MathJax_Preview">
          q
        </span>
        <script type="math/tex">
//<![CDATA[
q
//]]>
        </script>
        -giác đều thì 
        <span class="MathJax_Preview">
          pq
        </span>
        <script type="math/tex">
//<![CDATA[
pq
//]]>
        </script>
        -giác đều cũng dựng được.
      </blockquote>
      <br/>
    </div>
  </div>
  <div>
    <div>
      
2. Vào trang 
      <a href="http://google.com/">
        google.com
      </a>
       để tìm kiếm các bài viết về cách dựng đa giác đều 17 cạnh của Gauss. (dùng từ khoá: Gauss, dựng hình, 17 cạnh,...)
      <br/>
      <br/>
      <br/>
    </div>
    <br/>
    <br/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','6','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-1919984327214076982">
  <div class="separator" style="clear: both; text-align: center;">
    <br class="Apple-interchange-newline"/>
    <img border="0" src="http://4.bp.blogspot.com/-LZJXdQv3O2w/VCS47-CxuUI/AAAAAAAADHM/bBBfH2pEu5Q/s1600/vuontoan_mathgarden_1L.png" height="290" width="400"/>
  </div>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay chúng ta sẽ xem xét một câu đố mẹo về đo lường. Câu đố này hỏi làm cách nào để có thể đong ra được 
  <b>
    1 lít
  </b>
   nước bằng cách dùng hai bình thể tích 
  <b>
    3 lít
  </b>
   và 
  <b>
    5 lít
  </b>
  .
  <br/>
  <br/>
  
Chúng ta sẽ phân tích để thấy rằng câu đố này thật ra liên quan đến việc giải phương trình nghiệm nguyên của số học.
  <br/>
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    S
  </span>
  au đây là một câu đố mẹo cho các em học sinh cấp 1.
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Câu đố về đo lường.
      </b>
       Dùng hai bình thể tích 3 lít và 5 lít, hãy tìm cách đong ra được 1 lít nước.
    </span>
  </blockquote>
  <br/>
  <br/>
  
Chúng ta hãy cùng tìm hiểu câu đố này.
  <br/>
  <br/>
  
Chúng ta sẽ phân tích xem sau mỗi lần đong qua đong lại thì lượng nước chứa trong hai bình thay đổi như thế nào.
  <br/>
  <br/>
  
Giả sử bình 
  <span class="MathJax_Preview">
    3
  </span>
  <script type="math/tex">
//<![CDATA[
3
//]]>
  </script>
   lít đang chứa 
  <span class="MathJax_Preview">
    a
  </span>
  <script type="math/tex">
//<![CDATA[
a
//]]>
  </script>
   lít nước, còn bình 
  <span class="MathJax_Preview">
    5
  </span>
  <script type="math/tex">
//<![CDATA[
5
//]]>
  </script>
   lít đang chứa 
  <span class="MathJax_Preview">
    b
  </span>
  <script type="math/tex">
//<![CDATA[
b
//]]>
  </script>
   lít nước, chúng ta có 8 trường hợp cho bước tiếp theo như sau:
  <br/>
  <br/>
  <ul>
    <li>
      <b>
        <span style="color: purple;">
          Trường hợp 1:
        </span>
      </b>
      <br/>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://3.bp.blogspot.com/-p4t7lmaEnuI/U0dRrCWE-PI/AAAAAAAACrs/shLnmKy--xo/s1600/vuontoan_mathgarden_1from5and3b1.png" height="117" width="200"/>
      </div>
      
đổ hết nước ở bình 
      <span class="MathJax_Preview">
        3
      </span>
      <script type="math/tex">
//<![CDATA[
3
//]]>
      </script>
       lít ra ngoài, khi đó lượng nước trong hai bình trở thành 
      <span class="MathJax_Preview">
        (a,b) \to (0,b)
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
(a,b) \to (0,b)
//]]>
      </script>
    </li>
  </ul>
  <ul>
    <li>
      <b>
        <span style="color: purple;">
          Trường hợp 2:
        </span>
      </b>
      <br/>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://3.bp.blogspot.com/-h18Mu-hMZxs/U0dSbimXLPI/AAAAAAAACr0/PYED4EnA4Zo/s1600/vuontoan_mathgarden_1from5and3b2b.png" height="117" width="200"/>
      </div>
      
đổ hết nước ở bình 
      <span class="MathJax_Preview">
        5
      </span>
      <script type="math/tex">
//<![CDATA[
5
//]]>
      </script>
       lít ra ngoài, khi đó lượng nước trong hai bình trở thành 
      <span class="MathJax_Preview">
        (a,b) \to (a,0)
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
(a,b) \to (a,0)
//]]>
      </script>
    </li>
  </ul>
  <ul>
    <li>
      <b>
        <span style="color: purple;">
          Trường hợp 3:
        </span>
      </b>
      <br/>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://1.bp.blogspot.com/-P6XJwu1XIhc/U0dSheRer6I/AAAAAAAACr8/F9LkuEKsIQA/s1600/vuontoan_mathgarden_1from5and3b3.png" height="117" width="200"/>
      </div>
      
đổ nước vào cho đầy bình 
      <span class="MathJax_Preview">
        3
      </span>
      <script type="math/tex">
//<![CDATA[
3
//]]>
      </script>
       lít, khi đó lượng nước trong hai bình trở thành 
      <span class="MathJax_Preview">
        (a,b) \to (3,b)
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
(a,b) \to (3,b)
//]]>
      </script>
    </li>
  </ul>
  <ul>
    <li>
      <b>
        <span style="color: purple;">
          Trường hợp 4:
        </span>
      </b>
      <br/>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://3.bp.blogspot.com/-wimWcKRd5kY/U0dSnQI1cGI/AAAAAAAACsE/QeByFzA1qcc/s1600/vuontoan_mathgarden_1from5and3b4.png" height="117" width="200"/>
      </div>
      
đổ nước vào cho đầy bình 
      <span class="MathJax_Preview">
        5
      </span>
      <script type="math/tex">
//<![CDATA[
5
//]]>
      </script>
       lít, khi đó lượng nước trong hai bình trở thành 
      <span class="MathJax_Preview">
        (a,b) \to (a,5)
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
(a,b) \to (a,5)
//]]>
      </script>
    </li>
  </ul>
  <ul>
    <li>
      <b>
        <span style="color: purple;">
          Trường hợp 5:
        </span>
      </b>
      <span class="MathJax_Preview">
        a+b \leq 5
      </span>
      <script type="math/tex">
//<![CDATA[
a+b \leq 5
//]]>
      </script>
      <br/>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://1.bp.blogspot.com/--yw7GN_Q2Zw/U0dSrrhUFWI/AAAAAAAACsM/FYpiyLLtOA0/s1600/vuontoan_mathgarden_1from5and3b5.png" height="117" width="200"/>
      </div>
      
đổ hết nước ở bình 
      <span class="MathJax_Preview">
        3
      </span>
      <script type="math/tex">
//<![CDATA[
3
//]]>
      </script>
       lít qua bình 
      <span class="MathJax_Preview">
        5
      </span>
      <script type="math/tex">
//<![CDATA[
5
//]]>
      </script>
       lít, khi đó lượng nước trong hai bình trở thành 
      <span class="MathJax_Preview">
        (a,b) \to (0,a+b)
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
(a,b) \to (0,a+b)
//]]>
      </script>
    </li>
  </ul>
  <ul>
    <li>
      <b>
        <span style="color: purple;">
          Trường hợp 6:
        </span>
      </b>
      <span class="MathJax_Preview">
        a+b \leq 3
      </span>
      <script type="math/tex">
//<![CDATA[
a+b \leq 3
//]]>
      </script>
      <br/>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://3.bp.blogspot.com/-_MGxLNJm5no/U0dS1IaP6dI/AAAAAAAACsU/t4oziR7IUnI/s1600/vuontoan_mathgarden_1from5and3b6.png" height="117" width="200"/>
      </div>
      
đổ hết nước ở bình 
      <span class="MathJax_Preview">
        5
      </span>
      <script type="math/tex">
//<![CDATA[
5
//]]>
      </script>
       lít qua bình 
      <span class="MathJax_Preview">
        3
      </span>
      <script type="math/tex">
//<![CDATA[
3
//]]>
      </script>
       lít, khi đó lượng nước trong hai bình trở thành 
      <span class="MathJax_Preview">
        (a,b) \to (a+b,0)
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
(a,b) \to (a+b,0)
//]]>
      </script>
    </li>
  </ul>
  <ul>
    <li>
      <b>
        <span style="color: purple;">
          Trường hợp 7:
        </span>
      </b>
      <span class="MathJax_Preview">
        a+b \geq 5
      </span>
      <script type="math/tex">
//<![CDATA[
a+b \geq 5
//]]>
      </script>
      <br/>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://4.bp.blogspot.com/-5pyfAMXQkVk/U0dS5hbV3eI/AAAAAAAACsc/ehNp3-jqrRI/s1600/vuontoan_mathgarden_1from5and3b7.png" height="117" width="200"/>
      </div>
      
đổ nước ở bình 
      <span class="MathJax_Preview">
        3
      </span>
      <script type="math/tex">
//<![CDATA[
3
//]]>
      </script>
       lít qua cho đầy bình 
      <span class="MathJax_Preview">
        5
      </span>
      <script type="math/tex">
//<![CDATA[
5
//]]>
      </script>
       lít, khi đó lượng nước trong hai bình trở thành 
      <span class="MathJax_Preview">
        (a,b) \to (a+b-5,5)
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
(a,b) \to (a+b-5,5)
//]]>
      </script>
    </li>
  </ul>
  <ul>
    <li>
      <b>
        <span style="color: purple;">
          Trường hợp 8:
        </span>
      </b>
      <span class="MathJax_Preview">
        a+b \geq 3
      </span>
      <script type="math/tex">
//<![CDATA[
a+b \geq 3
//]]>
      </script>
      <br/>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://4.bp.blogspot.com/-3-FdwdsCoZA/U0dS-DLH3vI/AAAAAAAACsk/NZ016IdPycY/s1600/vuontoan_mathgarden_1from5and3b8.png" height="117" width="200"/>
      </div>
      
đổ nước ở bình 
      <span class="MathJax_Preview">
        5
      </span>
      <script type="math/tex">
//<![CDATA[
5
//]]>
      </script>
       lít qua cho đầy bình 
      <span class="MathJax_Preview">
        3
      </span>
      <script type="math/tex">
//<![CDATA[
3
//]]>
      </script>
       lít, khi đó lượng nước trong hai bình trở thành 
      <span class="MathJax_Preview">
        (a,b) \to (3,a+b-3)
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
(a,b) \to (3,a+b-3)
//]]>
      </script>
    </li>
  </ul>
  <div>
    <br/>
  </div>
  
Tóm lại, hình vẽ sau đây miêu tả các trường hợp khi chúng ta dùng hai bình thể tích 3 lít và 5 lít đong qua đong lại
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-Clqgr6yNG0g/U0dWbsReGzI/AAAAAAAACtA/mb-kcgYuRFQ/s1600/vuontoan_mathgarden_1from5and3b.png" height="372" width="400"/>
  </div>
  <br/>
  
Như vậy lượng nước 
  <span class="MathJax_Preview">
    (a,b)
  </span>
  <script type="math/tex">
//<![CDATA[
(a,b)
//]]>
  </script>
   trong hai bình sẽ khởi đầu với giá trị 
  <span class="MathJax_Preview">
    (0,0)
  </span>
  <script type="math/tex">
//<![CDATA[
(0,0)
//]]>
  </script>
   và sau mỗi bước đong qua đong lại thì giá trị của 
  <span class="MathJax_Preview">
    (a,b)
  </span>
  <script type="math/tex">
//<![CDATA[
(a,b)
//]]>
  </script>
   sẽ thay đổi thành một trong 8 giá trị sau 
  <span class="MathJax_Preview">
    (0,b), ~~(a,0), ~~(3,b), ~~(a,5),
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
(0,b), ~~(a,0), ~~(3,b), ~~(a,5),
//]]>
  </script>
  <span class="MathJax_Preview">
    (0,a+b), ~~(a+b,0), ~~(a+b-5,5), ~~(3,a+b-3).
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
(0,a+b), ~~(a+b,0), ~~(a+b-5,5), ~~(3,a+b-3).
//]]>
  </script>
  <br/>
  <br/>
  
Vì lượng nước chỉ thay đổi theo phép cọng trừ liên quan đến hai số 3 và 5 nên chúng ta dễ dàng chứng minh được kết quả sau đây
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Lượng nước trong hai bình luôn luôn là một số có dạng 
        <span class="MathJax_Preview">
          3 x + 5 y
        </span>
        <script type="math/tex">
//<![CDATA[
3 x + 5 y
//]]>
        </script>
         trong đó 
        <span class="MathJax_Preview">
          x
        </span>
        <script type="math/tex">
//<![CDATA[
x
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          y
        </span>
        <script type="math/tex">
//<![CDATA[
y
//]]>
        </script>
         là hai số nguyên.
      </b>
    </span>
  </blockquote>
  <br/>
  
Như vậy, đây thật chất là một bài toán số học. Để giải bài toán này, chúng ta phải giải 
  <a href="http://vuontoanblog.blogspot.com/2012/11/Euclidean-algorithm1.html" target="_blank">
    phương trình nghiệm nguyên
  </a>
  <span class="MathJax_Preview">
    3x + 5y = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
3x + 5y = 1.
//]]>
  </script>
  <br/>
  <br/>
  
Phương trình này có vô số nghiệm, và như vậy câu đố trên sẽ có vô số các đáp án khác nhau.
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Đáp án 1:
    </span>
  </b>
   Chúng ta thấy chẳng hạn 
  <span class="MathJax_Preview">
    x=2
  </span>
  <script type="math/tex">
//<![CDATA[
x=2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    y=-1
  </span>
  <script type="math/tex">
//<![CDATA[
y=-1
//]]>
  </script>
   là một nghiệm của phương trình 
  <span class="MathJax_Preview">
    {\bf 3} \times 2 - {\bf 5} \times 1 = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
{\bf 3} \times 2 - {\bf 5} \times 1 = 1.
//]]>
  </script>
  <br/>
  <br/>
  
Vậy, để đong ra được 1 lít, chúng ta cần đong đầy bình 3 lít 
  <b>
    hai lần
  </b>
   và đổ qua làm đầy bình 5 lít 
  <b>
    một lần
  </b>
  .
  <br/>
  <br/>
  
Đáp án của câu đố là như sau
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://3.bp.blogspot.com/-6SRWdaPR7D0/U0eB0scO9NI/AAAAAAAACtk/UAH0hPGtdhM/s1600/vuontoan_mathgarden_1from5and3a.png" height="92" width="400"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span class="MathJax_Preview">
            {\bf 3} \times 2 - {\bf 5} \times 1=1
          </span>
          <script type="math/tex">
//<![CDATA[
{\bf 3} \times 2 - {\bf 5} \times 1=1
//]]>
          </script>
          : Đong đầy bình 3 lít 
          <b>
            hai lần
          </b>
           và đổ qua làm đầy bình 5 lít 
          <b>
            một lần
          </b>
          , ta được 1 lít.
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <br/>
  <b>
    <span style="color: purple;">
      Đáp án 2:
    </span>
  </b>
   Một nghiệm khác của phương trình là 
  <span class="MathJax_Preview">
    x = -3
  </span>
  <script type="math/tex">
//<![CDATA[
x = -3
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    y=2
  </span>
  <script type="math/tex">
//<![CDATA[
y=2
//]]>
  </script>
    
  <span class="MathJax_Preview">
    {\bf 5} \times 2 - {\bf 3} \times 3 = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
{\bf 5} \times 2 - {\bf 3} \times 3 = 1.
//]]>
  </script>
  <br/>
  <br/>
  
Vậy, cách thứ hai để đong ra được 1 lít là chúng ta sẽ đong đầy bình 5 lít 
  <b>
    hai lần
  </b>
   rồi đổ qua làm đầy bình 3 lít 
  <b>
    ba lần
  </b>
  .
  <br/>
  <br/>
  
Đáp án thứ hai của câu đố là như sau
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://1.bp.blogspot.com/-00b_oVM5qvc/U0du7E0rcJI/AAAAAAAACtU/ATQJtVMF64E/s1600/vuontoan_mathgarden_1from5and3c.png" height="180" width="400"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span class="MathJax_Preview">
            {\bf 5} \times 2 - {\bf 3} \times 3=1
          </span>
          <script type="math/tex">
//<![CDATA[
{\bf 5} \times 2 - {\bf 3} \times 3=1
//]]>
          </script>
          : Đong đầy bình 5 lít 
          <b>
            hai lần
          </b>
           và đổ qua làm đầy bình 3 lít 
          <b>
            ba lần
          </b>
          , ta được 1 lít.
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    N
  </span>
  hư vậy, chúng ta vừa thấy rằng câu đố về đo lường có liên quan mật thiết đến việc giải phương trình nghiệm nguyên 
  <span class="MathJax_Preview">
    3x+5y=1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
3x+5y=1.
//]]>
  </script>
   Chúng ta tạm dừng ở đây và trong kỳ tới chúng ta sẽ xem xét mối liên hệ giữa câu đố về đo lường với bài toán 
  <a href="http://vuontoanblog.blogspot.com/2014/03/regular-polygon-construction.html" target="_blank">
    dựng hình đa giác đều
  </a>
  . Hẹn gặp lại các bạn.
  <br/>
  <br/>
  <br/>
  <div>
    <br/>
  </div>
  <div>
    <div>
      <i>
        Bài tập về nhà.
      </i>
    </div>
    <div>
      <br/>
    </div>
    <div>
      
1. Dùng 
      <a href="http://vuontoanblog.blogspot.com/2012/09/induction1.html" target="_blank">
        quy nạp
      </a>
      , chứng minh rằng lượng nước trong hai bình luôn luôn là một số có dạng 
      <span class="MathJax_Preview">
        3 x + 5 y
      </span>
      <script type="math/tex">
//<![CDATA[
3 x + 5 y
//]]>
      </script>
      .
    </div>
    <div>
      <br/>
    </div>
    <div>
      
2. Dùng hai bình thể tích 5 lít và 7 lít, hãy tìm cách đong ra được 1 lít nước.
    </div>
    <div>
      <br/>
    </div>
    <div>
      
3. Dùng hai bình thể tích 5 lít và 7 lít, hãy tìm cách đong ra được 3 lít nước.
      <br/>
      <br/>
      
4. Dùng hai bình thể tích 6 lít và 8 lít, hãy tìm cách đong ra được 3 lít nước.
    </div>
    <div>
      <br/>
    </div>
    <div>
      
5. Vào trang 
      <a href="http://google.com/">
        google.com
      </a>
       để tìm hiểu thêm về phương trình nghiệm nguyên..
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','27','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-1401376737395742890">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-gYUyfR82GXo/UyjZybdB6fI/AAAAAAAACes/rbq9l14nEyE/s1600/franciscircle.png" height="232" width="320"/>
  </div>
  <div class="separator" style="clear: both; text-align: left;">
    <br/>
  </div>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  ó hai 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    bài toán dựng hình
  </a>
   rất nổi tiếng được biết đến từ thời xa xưa nhưng mãi đến thế kỷ 18-19 mới có thể giải quyết được. Đó là bài toán 
  <b>
    dựng hình đa giác đều
  </b>
   và bài toán 
  <b>
    chia ba một góc
  </b>
  . Mặc dù nghe có vẻ đơn giản vậy, nhưng để giải quyết được nó, các nhà toán học phải sử dụng những công cụ rất hiện đại của số học và đại số. Hôm nay chúng ta sẽ xem xét bài toán đầu tiên, đó là bài toán dựng hình đa giác đều.
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Bài toán dựng hình đa giác đều.
      </b>
       Bằng thước và compa, hãy dựng một đa giác đều có 
      <span class="MathJax_Preview">
        n
      </span>
      <script type="math/tex">
//<![CDATA[
n
//]]>
      </script>
       cạnh.
    </span>
    <br/>
    <div>
      <br/>
    </div>
  </blockquote>
  <a name="more">
  </a>
  <br/>
  <span style="color: purple; font-size: x-large;">
    Đ
  </span>
  ầu tiên, chúng ta thấy rằng tam giác đều và hình vuông là hai hình dễ dựng nhất. Chúng ta sẽ gọi một đa giác có 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
   cạnh là một 
  <b>
    <span class="MathJax_Preview">
      n
    </span>
    <script type="math/tex">
//<![CDATA[
n
//]]>
    </script>
    -giác
  </b>
   và có nhận xét sau đây
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Nhận xét:
      </b>
       Nếu bằng thước và compa chúng ta có thể dựng được một 
      <span class="MathJax_Preview">
        n
      </span>
      <script type="math/tex">
//<![CDATA[
n
//]]>
      </script>
      -giác đều thì chúng ta cũng có thể dựng được 
      <span class="MathJax_Preview">
        2n
      </span>
      <script type="math/tex">
//<![CDATA[
2n
//]]>
      </script>
      -giác đều.
    </span>
  </blockquote>
  <br/>
  
Vì sao vậy? Đó là vì nếu chúng ta dựng được 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
  -giác đều, thì bằng cách dựng đường tròn ngoại tiếp nó, rồi dựng 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    đường trung trực
  </a>
   của mỗi cạnh để 
  <i>
    chia đôi
  </i>
   mỗi cung tròn, chúng ta sẽ có được 
  <span class="MathJax_Preview">
    2n
  </span>
  <script type="math/tex">
//<![CDATA[
2n
//]]>
  </script>
  -giác đều!
  <br/>
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://3.bp.blogspot.com/-XDq9NQJGgJs/UkEsRb9lhgI/AAAAAAAABNA/vGU_Kz0MnS4/s1600/vuontoan-mathgarden-ruler-compas17.png" height="122" width="320"/>
    </div>
    <br/>
    
Bằng nhận xét đơn giản trên, từ hình 
    <span class="MathJax_Preview">
      3
    </span>
    <script type="math/tex">
//<![CDATA[
3
//]]>
    </script>
    -giác đều, chúng ta sẽ dựng được 
    <span class="MathJax_Preview">
      6
    </span>
    <script type="math/tex">
//<![CDATA[
6
//]]>
    </script>
    -giác đều, 
    <span class="MathJax_Preview">
      12
    </span>
    <script type="math/tex">
//<![CDATA[
12
//]]>
    </script>
    -giác đều, 
    <span class="MathJax_Preview">
      24
    </span>
    <script type="math/tex">
//<![CDATA[
24
//]]>
    </script>
    -giác đều, v.v...
    <br/>
    <div>
      <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
        <tbody>
          <tr>
            <td style="text-align: center;">
              <img border="0" src="http://2.bp.blogspot.com/-J-gl_emJhew/UyjkQTuLVQI/AAAAAAAACe8/6niQIkJZPVI/s1600/vuontoan-mathgarden-poly1b.png" height="125" width="400"/>
            </td>
          </tr>
          <tr>
            <td class="tr-caption" style="text-align: center;">
              tam giác 
              <span class="MathJax_Preview">
                \rightarrow
              </span>
              <script type="math/tex">
//<![CDATA[
\rightarrow
//]]>
              </script>
               lục giác 
              <span class="MathJax_Preview">
                \rightarrow
              </span>
              <script type="math/tex">
//<![CDATA[
\rightarrow
//]]>
              </script>
               12-giác
            </td>
          </tr>
        </tbody>
      </table>
      <br/>
      
Và từ "
      <i>
        nhị giác đều
      </i>
      ", chúng ta sẽ dựng được 
      <span class="MathJax_Preview">
        4
      </span>
      <script type="math/tex">
//<![CDATA[
4
//]]>
      </script>
      -giác đều, 
      <span class="MathJax_Preview">
        8
      </span>
      <script type="math/tex">
//<![CDATA[
8
//]]>
      </script>
      -giác đều, 
      <span class="MathJax_Preview">
        16
      </span>
      <script type="math/tex">
//<![CDATA[
16
//]]>
      </script>
      -giác đều, v.v...
    </div>
    <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
      <tbody>
        <tr>
          <td style="text-align: center;">
            <img border="0" src="http://3.bp.blogspot.com/--FdIQUstJnw/Uyjnyto_VVI/AAAAAAAACfI/RoXvr-7vXHU/s1600/vuontoan-mathgarden-poly2.png" height="127" width="400"/>
          </td>
        </tr>
        <tr>
          <td class="tr-caption" style="text-align: center;">
            nhị giác 
            <span class="MathJax_Preview">
              \rightarrow
            </span>
            <script type="math/tex">
//<![CDATA[
\rightarrow
//]]>
            </script>
             hình vuông 
            <span class="MathJax_Preview">
              \rightarrow
            </span>
            <script type="math/tex">
//<![CDATA[
\rightarrow
//]]>
            </script>
             bát giác
          </td>
        </tr>
      </tbody>
    </table>
    <br/>
    
Như vậy, bài toán đã được đơn giản hoá về trường hợp 
    <span class="MathJax_Preview">
      n
    </span>
    <script type="math/tex">
//<![CDATA[
n
//]]>
    </script>
     là 
    <b>
      số lẻ
    </b>
    . Chẳng hạn, muốn dựng đa giác đều 
    <span class="MathJax_Preview">
      68
    </span>
    <script type="math/tex">
//<![CDATA[
68
//]]>
    </script>
     cạnh, chúng ta chỉ cần tìm cách dựng đa giác đều 
    <span class="MathJax_Preview">
      17
    </span>
    <script type="math/tex">
//<![CDATA[
17
//]]>
    </script>
     cạnh. Bởi vì 
    <span class="MathJax_Preview">
      68 = 17 \times 2 \times 2
    </span>
    <script type="math/tex">
//<![CDATA[
68 = 17 \times 2 \times 2
//]]>
    </script>
    , nên từ 
    <span class="MathJax_Preview">
      17
    </span>
    <script type="math/tex">
//<![CDATA[
17
//]]>
    </script>
    -giác, chúng ta sẽ dựng được 
    <span class="MathJax_Preview">
      34
    </span>
    <script type="math/tex">
//<![CDATA[
34
//]]>
    </script>
    -giác, rồi từ 
    <span class="MathJax_Preview">
      34
    </span>
    <script type="math/tex">
//<![CDATA[
34
//]]>
    </script>
    -giác chúng ta dựng được 
    <span class="MathJax_Preview">
      68
    </span>
    <script type="math/tex">
//<![CDATA[
68
//]]>
    </script>
    -giác!
    <br/>
    <br/>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Bài toán.
        </b>
         Tìm điều kiện cần và đủ của 
        <i>
          <b>
            số lẻ
          </b>
        </i>
        <span class="MathJax_Preview">
          n
        </span>
        <script type="math/tex">
//<![CDATA[
n
//]]>
        </script>
         để đa giác đều 
        <span class="MathJax_Preview">
          n
        </span>
        <script type="math/tex">
//<![CDATA[
n
//]]>
        </script>
         cạnh có thể dựng được bằng thước và compa.
      </span>
    </blockquote>
    <br/>
    
Hoá ra đây là một bài toán cực kỳ khó!
    <br/>
    <br/>
    
Đã từ lâu, chúng ta biết được cách dựng 
    <i>
      <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
        ngũ giác đều
      </a>
    </i>
    . Chẳng hạn từ thời Hy Lạp cổ đại, trong bộ sách "
    <i>
      Cơ sở Toán học
    </i>
    " nổi tiếng, Euclid đã trình bày một cách dựng hình 
    <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
      ngũ giác đều
    </a>
     bằng thước và compa. Vậy nhưng qua gần hai ngàn năm, không ai tìm ra được cách dựng 
    <span class="MathJax_Preview">
      7
    </span>
    <script type="math/tex">
//<![CDATA[
7
//]]>
    </script>
    -giác đều, 
    <span class="MathJax_Preview">
      9
    </span>
    <script type="math/tex">
//<![CDATA[
9
//]]>
    </script>
    -giác đều, 
    <span class="MathJax_Preview">
      11
    </span>
    <script type="math/tex">
//<![CDATA[
11
//]]>
    </script>
    -giác đều, ..., mọi nỗ lực dường như rơi vào bế tắc.
    <br/>
    <br/>
    
Lý do chẳng phải chúng ta không tìm ra được cách dựng, mà là 
    <b>
      không tồn tại
    </b>
     cách dựng!
    <br/>
    <br/>
    
Người đầu tiên tìm được bước đột phá cho bài toán là nhà toán học Gauss. Gauss được mệnh danh là "
    <i>
      ông hoàng toán học
    </i>
    ". Quyển sách "
    <i>
      Nghiên cứu Số học
    </i>
    " (Disquisitiones Arithmeticae) mà ông xuất bản năm 24 tuổi hiện vẫn là sách gối đầu giường cho những người học toán.
    <br/>
    <br/>
    
Năm ông 19 tuổi, Gauss tìm ra cách dựng đa giác đều 17 cạnh. Người ta kể lại rằng chính phát minh này đã thúc đẩy Gauss say mê đi vào nghiệp làm toán thay vì đi học triết học. Ông thích thú với phát hiện này tới mức ông muốn sau này một đa giác đều 17 cạnh được khắc lên trên ngôi mộ của mình. Không hiểu vì lý do gì, trên mộ của Gauss không có hình đa giác 17 cạnh, nhưng dưới tượng đài của Gauss tại quê nhà Brunswick có một hình ngôi sao 17 cạnh!
    <br/>
    <br/>
    <div>
      
Gauss đã chứng minh được định lý tuyệt vời sau đây: 
    </div>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Định lý Gauss.
        </b>
         Nếu 
        <span class="MathJax_Preview">
          n = p_1 \dots p_t
        </span>
        <script type="math/tex">
//<![CDATA[
n = p_1 \dots p_t
//]]>
        </script>
         trong đó 
        <span class="MathJax_Preview">
          p_1
        </span>
        <script type="math/tex">
//<![CDATA[
p_1
//]]>
        </script>
        , ..., 
        <span class="MathJax_Preview">
          p_t
        </span>
        <script type="math/tex">
//<![CDATA[
p_t
//]]>
        </script>
         là các số nguyên tố Fermat phân biệt thì đa giác đều 
        <span class="MathJax_Preview">
          n
        </span>
        <script type="math/tex">
//<![CDATA[
n
//]]>
        </script>
         cạnh có thể dựng được bằng thước và compa.
      </span>
    </blockquote>
    <div>
      <br/>
    </div>
    <div>
      
Sau này vào năm 1837, nhà toán học người Pháp, Wantzel, chứng minh phần ngược lại, đó là, với một số lẻ 
      <span class="MathJax_Preview">
        n
      </span>
      <script type="math/tex">
//<![CDATA[
n
//]]>
      </script>
      , nếu đa giác đều 
      <span class="MathJax_Preview">
        n
      </span>
      <script type="math/tex">
//<![CDATA[
n
//]]>
      </script>
       cạnh có thể dựng được bằng thước và compa thì 
      <span class="MathJax_Preview">
        n
      </span>
      <script type="math/tex">
//<![CDATA[
n
//]]>
      </script>
       
      <b>
        bắt buộc
      </b>
       phải có dạng 
      <span class="MathJax_Preview">
        n = p_1 \dots p_t
      </span>
      <script type="math/tex">
//<![CDATA[
n = p_1 \dots p_t
//]]>
      </script>
       như trên.
    </div>
    <div>
      <br/>
    </div>
    
Vậy 
    <b>
      số nguyên tố Fermat
    </b>
     
    <span class="MathJax_Preview">
      p_1
    </span>
    <script type="math/tex">
//<![CDATA[
p_1
//]]>
    </script>
    , ..., 
    <span class="MathJax_Preview">
      p_t
    </span>
    <script type="math/tex">
//<![CDATA[
p_t
//]]>
    </script>
     mà Gauss nói đến là số nguyên tố gì?
    <br/>
    <br/>
    <br/>
    <span style="color: #0b5394; font-size: large;">
      Số nguyên tố Fermat
    </span>
    <br/>
    <br/>
    <span style="color: purple; font-size: x-large;">
      C
    </span>
    ó lẽ các bạn ai cũng đã từng nghe đến 
    <b>
      <a href="http://vuontoanblog.blogspot.com/2012/06/modulo4.html" target="_blank">
        Bài toán Fermat
      </a>
    </b>
     phải không?!
    <br/>
    <br/>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Bài toán Fermat.
        </b>
         Chứng minh rằng với mọi 
        <span class="MathJax_Preview">
          n \geq 3
        </span>
        <script type="math/tex">
//<![CDATA[
n \geq 3
//]]>
        </script>
        , phương trình sau không có nghiệm khác không 
        <span class="MathJax_Preview">
          x^n + y^n = z^n.
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
x^n + y^n = z^n.
//]]>
        </script>
      </span>
    </blockquote>
    <br/>
    <a href="http://vuontoanblog.blogspot.com/2012/06/modulo4.html" target="_blank">
      Bài toán Fermat
    </a>
     đã từng làm điên đầu những nhà toán học cỡ hàng đầu thế giới cho đến những em học sinh phổ thông. Có lẽ vì bài toán này phát biểu quá đơn giản và quá đẹp. Nhưng có lẽ lý do chính là vì nó liên quan đến một "
    <span style="color: purple;">
      <b>
        bí mật toán học
      </b>
    </span>
    ". Fermat viết bài toán này bên lề một cuốn sách số học rồi ông ghi chú rằng ông đã tìm ra được một 
    <i>
      lời giải tuyệt đẹp
    </i>
     nhưng lề sách "
    <i>
      không đủ chổ
    </i>
    " để ông viết ra! Và vì vậy ai cũng muốn làm người đầu tiên "bật mí" cái "bí mật toán học" này!
    <br/>
    <br/>
    
Năm 1994 thì nhà toán học người Anh, Andrew Wiles, đã giải quyết hoàn toàn được bài toán Fermat. Nhưng lời giải của Andrew Wiles phải dùng những công cụ hiện đại nhất của toán học. Vậy coi như cái bí mật của Fermat vẫn còn là bí mật!
    <br/>
    <br/>
    
Fermat thật ra không phải là nhà toán học chuyên nghiệp. Ông là một luật sư và có lẽ ông chỉ làm toán cho vui. Ông thường viết thư trao đổi với những nhà toán học khác về những vấn đề toán học. "Chín mươi chín phần trăm" những dự đoán của Fermat là đúng, nhưng có một trường hợp, Fermat đã sai! Đó là về số nguyên tố Fermat mà chúng ta sắp nói đến đây.
    <br/>
    <div>
      <br/>
      
Vì 
      <a href="http://vuontoanblog.blogspot.com/2012/08/prime-number.html" target="_blank">
        số nguyên tố
      </a>
       đóng vai trò như những viên gạch cơ bản dùng để xây dựng nên toàn bộ các số tự nhiên, nên các nhà toán học muốn tìm ra những công thức, định lý cho số nguyên tố. Fermat dự đoán rằng các số có dạng 
      <span class="MathJax_Preview">
        F_n = 2^{2^n}+1
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
F_n = 2^{2^n}+1
//]]>
      </script>
       là các số nguyên tố. Nếu đúng như vậy thì đây quả thật là một công thức rất đẹp cho số nguyên tố. Nhưng rất tiếc là Fermat đã nhầm.
      <br/>
      <br/>
      <ul>
        <li>
          <span class="MathJax_Preview">
            n=0
          </span>
          <script type="math/tex">
//<![CDATA[
n=0
//]]>
          </script>
          , 
          <span class="MathJax_Preview">
            F_0 = 2^{2^0}+1 = 2^1 + 1 = 3
          </span>
          <script type="math/tex">
//<![CDATA[
F_0 = 2^{2^0}+1 = 2^1 + 1 = 3
//]]>
          </script>
           là 
          <span style="color: purple;">
            số nguyên tố
          </span>
          ,
        </li>
        <li>
          <span class="MathJax_Preview">
            n=1
          </span>
          <script type="math/tex">
//<![CDATA[
n=1
//]]>
          </script>
          , 
          <span class="MathJax_Preview">
            F_1 = 2^{2^1}+1 = 2^2 + 1 = 5
          </span>
          <script type="math/tex">
//<![CDATA[
F_1 = 2^{2^1}+1 = 2^2 + 1 = 5
//]]>
          </script>
           là 
          <span style="color: purple;">
            số nguyên tố
          </span>
          ,
        </li>
        <li>
          <span class="MathJax_Preview">
            n=2
          </span>
          <script type="math/tex">
//<![CDATA[
n=2
//]]>
          </script>
          , 
          <span class="MathJax_Preview">
            F_2 = 2^{2^2}+1 = 2^4 + 1 = 17
          </span>
          <script type="math/tex">
//<![CDATA[
F_2 = 2^{2^2}+1 = 2^4 + 1 = 17
//]]>
          </script>
           là 
          <span style="color: purple;">
            số nguyên tố
          </span>
          ,
        </li>
        <li>
          <span class="MathJax_Preview">
            n=3
          </span>
          <script type="math/tex">
//<![CDATA[
n=3
//]]>
          </script>
          , 
          <span class="MathJax_Preview">
            F_3 = 2^{2^3}+1 = 2^8 + 1 = 257
          </span>
          <script type="math/tex">
//<![CDATA[
F_3 = 2^{2^3}+1 = 2^8 + 1 = 257
//]]>
          </script>
           là 
          <span style="color: purple;">
            số nguyên tố
          </span>
          ,
        </li>
        <li>
          <span class="MathJax_Preview">
            n=4
          </span>
          <script type="math/tex">
//<![CDATA[
n=4
//]]>
          </script>
          , 
          <span class="MathJax_Preview">
            F_4 = 2^{2^4}+1 = 2^{16} + 1 = 65537
          </span>
          <script type="math/tex">
//<![CDATA[
F_4 = 2^{2^4}+1 = 2^{16} + 1 = 65537
//]]>
          </script>
           là 
          <span style="color: purple;">
            số nguyên tố
          </span>
          ,
        </li>
        <li>
          <span class="MathJax_Preview">
            n=5
          </span>
          <script type="math/tex">
//<![CDATA[
n=5
//]]>
          </script>
          , 
          <span class="MathJax_Preview">
            F_5 = 2^{2^5}+1 = 2^{32} + 1 = 4294967297
          </span>
          <script type="math/tex">
//<![CDATA[
F_5 = 2^{2^5}+1 = 2^{32} + 1 = 4294967297
//]]>
          </script>
           là 
          <span style="color: #990000;">
            hợp số
          </span>
          !
        </li>
      </ul>
      <br/>
      <br/>
      
Nhà toán học Euler đã chỉ ra rằng 
      <span class="MathJax_Preview">
        F_5 = 2^{2^5}+1
      </span>
      <script type="math/tex">
//<![CDATA[
F_5 = 2^{2^5}+1
//]]>
      </script>
       là một hợp số 
      <span class="MathJax_Preview">
        F_5 = 2^{2^5}+1 = 641 \times 6700417.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
F_5 = 2^{2^5}+1 = 641 \times 6700417.
//]]>
      </script>
      <br/>
      <br/>
      
Chúng ta có định nghĩa sau đây.
      <br/>
      <blockquote class="tr_bq">
        <span style="color: purple;">
          <b>
            Số nguyên tố Fermat.
          </b>
           Một số nguyên tố được gọi là số nguyên tố Fermat nếu nó có dạng 
          <span class="MathJax_Preview">
            F_n = 2^{2^n}+1.
          </span>
          <script type="math/tex; mode=display">
//<![CDATA[
F_n = 2^{2^n}+1.
//]]>
          </script>
        </span>
      </blockquote>
      <br/>
      <br/>
      <span style="color: #0b5394; font-size: large;">
        Định lý Gauss-Wantzel
      </span>
      <br/>
      <br/>
      <span style="color: purple; font-size: x-large;">
        B
      </span>
      ây giờ quay trở lại với bài toán dựng hình đa giác đều. Câu trả lời cho bài toán là định lý sau đây
      <br/>
      <br/>
      <blockquote class="tr_bq">
        <span style="color: purple;">
          <b>
            Định lý Gauss-Wantzel.
          </b>
           Với một số lẻ 
          <span class="MathJax_Preview">
            n
          </span>
          <script type="math/tex">
//<![CDATA[
n
//]]>
          </script>
          , đa giác đều 
          <span class="MathJax_Preview">
            n
          </span>
          <script type="math/tex">
//<![CDATA[
n
//]]>
          </script>
           cạnh có thể dựng được bằng thước và compa 
          <b>
            khi và chỉ khi
          </b>
          <span class="MathJax_Preview">
            n = p_1 \dots p_t
          </span>
          <script type="math/tex">
//<![CDATA[
n = p_1 \dots p_t
//]]>
          </script>
           trong đó 
          <span class="MathJax_Preview">
            p_1
          </span>
          <script type="math/tex">
//<![CDATA[
p_1
//]]>
          </script>
          , ..., 
          <span class="MathJax_Preview">
            p_t
          </span>
          <script type="math/tex">
//<![CDATA[
p_t
//]]>
          </script>
           là các số nguyên tố Fermat 
          <b>
            phân biệt
          </b>
          .
        </span>
      </blockquote>
    </div>
    <div>
      <br/>
    </div>
    
Vì 
    <span class="MathJax_Preview">
      3
    </span>
    <script type="math/tex">
//<![CDATA[
3
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      5
    </span>
    <script type="math/tex">
//<![CDATA[
5
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      17
    </span>
    <script type="math/tex">
//<![CDATA[
17
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      257
    </span>
    <script type="math/tex">
//<![CDATA[
257
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      65537
    </span>
    <script type="math/tex">
//<![CDATA[
65537
//]]>
    </script>
     là các số nguyên tố Fermat, nên theo định lý trên thì các hình 
    <span class="MathJax_Preview">
      3
    </span>
    <script type="math/tex">
//<![CDATA[
3
//]]>
    </script>
    -giác đều, 
    <span class="MathJax_Preview">
      5
    </span>
    <script type="math/tex">
//<![CDATA[
5
//]]>
    </script>
    -giác đều, 
    <span class="MathJax_Preview">
      17
    </span>
    <script type="math/tex">
//<![CDATA[
17
//]]>
    </script>
    -giác đều, 
    <span class="MathJax_Preview">
      257
    </span>
    <script type="math/tex">
//<![CDATA[
257
//]]>
    </script>
    -giác đều, 
    <span class="MathJax_Preview">
      65537
    </span>
    <script type="math/tex">
//<![CDATA[
65537
//]]>
    </script>
    -giác đều là dựng được. Ngoài ra,

    <br/>
    <ul>
      <li>
        <span class="MathJax_Preview">
          3 \times 5 = 15
        </span>
        <script type="math/tex">
//<![CDATA[
3 \times 5 = 15
//]]>
        </script>
         nên 
        <span class="MathJax_Preview">
          15
        </span>
        <script type="math/tex">
//<![CDATA[
15
//]]>
        </script>
        -giác đều là dựng được
      </li>
      <li>
        <span class="MathJax_Preview">
          3 \times 17 = 51
        </span>
        <script type="math/tex">
//<![CDATA[
3 \times 17 = 51
//]]>
        </script>
         nên 
        <span class="MathJax_Preview">
          51
        </span>
        <script type="math/tex">
//<![CDATA[
51
//]]>
        </script>
        -giác đều là dựng được, v.v...
      </li>
    </ul>
    <br/>
    
Tuy nhiên,

    <br/>
    <ul>
      <li>
        <span class="MathJax_Preview">
          7
        </span>
        <script type="math/tex">
//<![CDATA[
7
//]]>
        </script>
        -giác đều không dựng được,
      </li>
      <li>
        <span class="MathJax_Preview">
          9 = 3 \times 3
        </span>
        <script type="math/tex">
//<![CDATA[
9 = 3 \times 3
//]]>
        </script>
         nên 
        <span class="MathJax_Preview">
          9
        </span>
        <script type="math/tex">
//<![CDATA[
9
//]]>
        </script>
        -giác đều không dựng được
      </li>
      <li>
        <span class="MathJax_Preview">
          11
        </span>
        <script type="math/tex">
//<![CDATA[
11
//]]>
        </script>
        -giác đều không dựng được,
      </li>
      <li>
        <span class="MathJax_Preview">
          13
        </span>
        <script type="math/tex">
//<![CDATA[
13
//]]>
        </script>
        -giác đều không dựng được, v.v...
      </li>
    </ul>
    <br/>
    <div>
      <span style="color: purple; font-size: x-large;">
        V
      </span>
      ới các đa giác dựng được thì chúng được dựng như thế nào. Chẳng hạn làm sao để dựng đa giác đều có 15 cạnh hay 17 cạnh? Với những đa giác đều không dựng được thì liệu có cách nào dựng được chúng một cách xấp xỉ với sai số nhỏ hay không?
      <br/>
      <br/>
      
Có rất nhiều câu hỏi thú vị cần được trả lời. Tuy nhiên chúng ta để dành lại cho những kỳ sau. Chúng ta tạm dừng ở đây. Hẹn gặp lại các bạn.
    </div>
    <div>
      <br/>
    </div>
    <br/>
  </div>
  <br/>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
Với các bài toán sau đây, một số đã có lời giải, một số vẫn chưa có lời giải. Nhưng chúng ta sẽ không tiết lộ ở đây, để khuyến khích cho các bạn giải toán!
  <br/>
  <br/>
  
1. Chứng minh rằng nếu 
  <span class="MathJax_Preview">
    2^a + 1
  </span>
  <script type="math/tex">
//<![CDATA[
2^a + 1
//]]>
  </script>
   là một số nguyên tố thì 
  <span class="MathJax_Preview">
    a=0
  </span>
  <script type="math/tex">
//<![CDATA[
a=0
//]]>
  </script>
   hoặc 
  <span class="MathJax_Preview">
    a=2^n
  </span>
  <script type="math/tex">
//<![CDATA[
a=2^n
//]]>
  </script>
  .
  <br/>
  <br/>
  
2. Chứng minh rằng có vô hạng các số nguyên tố có dạng 
  <span class="MathJax_Preview">
    2^a + 1
  </span>
  <script type="math/tex">
//<![CDATA[
2^a + 1
//]]>
  </script>
  .
  <br/>
  <br/>
  
3. Chứng minh rằng có vô hạng các số hợp số có dạng 
  <span class="MathJax_Preview">
    2^a + 1
  </span>
  <script type="math/tex">
//<![CDATA[
2^a + 1
//]]>
  </script>
  .
  <br/>
  <br/>
  
4. Chứng minh rằng với mọi 
  <span class="MathJax_Preview">
    n &gt; 1
  </span>
  <script type="math/tex">
//<![CDATA[
n > 1
//]]>
  </script>
  , số Fermat 
  <span class="MathJax_Preview">
    F_n = 2^{2^n}+1
  </span>
  <script type="math/tex">
//<![CDATA[
F_n = 2^{2^n}+1
//]]>
  </script>
   luôn có chữ số tận cùng là 7.
  <br/>
  <br/>
  
5. Chứng minh rằng có thể tìm được vô hạn các số 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
   để số Fermat 
  <span class="MathJax_Preview">
    F_n = 2^{2^n}+1
  </span>
  <script type="math/tex">
//<![CDATA[
F_n = 2^{2^n}+1
//]]>
  </script>
   là hợp số.
  <br/>
  <br/>
  
6. Với mọi 
  <span class="MathJax_Preview">
    n &gt; 1
  </span>
  <script type="math/tex">
//<![CDATA[
n > 1
//]]>
  </script>
  , số Fermat 
  <span class="MathJax_Preview">
    F_n = 2^{2^n}+1
  </span>
  <script type="math/tex">
//<![CDATA[
F_n = 2^{2^n}+1
//]]>
  </script>
   không thể biểu diễn dưới dạng tổng của hai số nguyên tố.
  <br/>
  <br/>
  
7. Tìm tất cả các bộ số 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    m
  </span>
  <script type="math/tex">
//<![CDATA[
m
//]]>
  </script>
   để 
  <span class="MathJax_Preview">
    F_n F_m
  </span>
  <script type="math/tex">
//<![CDATA[
F_n F_m
//]]>
  </script>
   là một số chính phương.
  <br/>
  <div>
    <br/>
    
8. Chứng minh rằng với mọi 
    <span class="MathJax_Preview">
      n
    </span>
    <script type="math/tex">
//<![CDATA[
n
//]]>
    </script>
    , số Fermat 
    <span class="MathJax_Preview">
      F_n = 2^{2^n}+1
    </span>
    <script type="math/tex">
//<![CDATA[
F_n = 2^{2^n}+1
//]]>
    </script>
     không phải là số lập phương.
    <br/>
    <br/>
    
9. Chứng minh rằng 
    <span class="MathJax_Preview">
      F_{2014} = 2^{2^{2014}}+1
    </span>
    <script type="math/tex">
//<![CDATA[
F_{2014} = 2^{2^{2014}}+1
//]]>
    </script>
     là một hợp số.
    <br/>
    <br/>
    
10. Vào trang 
    <a href="http://google.com/">
      google.com
    </a>
     để tìm kiếm các bài viết về cách dựng đa giác đều 17 cạnh của Gauss. (dùng từ khoá: 
    <span style="color: purple;">
      Gauss
    </span>
    , 
    <span style="color: purple;">
      dựng hình
    </span>
    , 
    <span style="color: purple;">
      17 cạnh
    </span>
    ,...)
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','57','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-4398019747917549910">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-26lREwo2nlo/UwLNe4mhmII/AAAAAAAACXA/QL6ohzRf91g/s1600/vuontoan-mathgarden-sin-cos.png" height="200" width="198"/>
  </div>
  <span style="color: purple; font-size: x-large;">
    K
  </span>
  ỳ trước chúng ta đã học về cách 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    dựng hình
  </a>
  <a href="http://vuontoanblog.blogspot.com/2014/02/pentagon-construction.html" target="_blank">
    ngũ giác đều
  </a>
   bằng thước và compa dựa vào công thức lượng giác 
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{5}} = \frac{1 + \sqrt{5}}{4}.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{\pi}{5}} = \frac{1 + \sqrt{5}}{4}.
//]]>
  </script>
  <br/>
  
Để tìm ra công thức của 
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{5}}
  </span>
  <script type="math/tex">
//<![CDATA[
\cos{\frac{\pi}{5}}
//]]>
  </script>
   như trên, chúng ta xuất phát từ đẳng thức 
  <span class="MathJax_Preview">
    \cos{\frac{2 \pi}{5}} = -\cos{\frac{3 \pi}{5}}
  </span>
  <script type="math/tex">
//<![CDATA[
\cos{\frac{2 \pi}{5}} = -\cos{\frac{3 \pi}{5}}
//]]>
  </script>
   rồi dùng công thức lượng giác cho góc gấp đôi và góc gấp ba: 
  <span class="MathJax_Preview">
    \cos{2 x} = 2 \cos^2{x} - 1,
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{2 x} = 2 \cos^2{x} - 1,
//]]>
  </script>
  <span class="MathJax_Preview">
    \cos{3 x} = 4 \cos^3{x} - 3 \cos{x}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{3 x} = 4 \cos^3{x} - 3 \cos{x}
//]]>
  </script>
   để tạo ra một phương trình bậc ba cho 
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{5}}
  </span>
  <script type="math/tex">
//<![CDATA[
\cos{\frac{\pi}{5}}
//]]>
  </script>
  .
  <br/>
  <br/>
  
Nhân tiện nói về công thức lượng giác, hôm nay chúng ta sẽ học một ứng dụng của 
  <a href="http://vuontoanblog.blogspot.com/2013/01/complex1.html" target="_blank">
    số phức
  </a>
   bằng cách dùng 
  <a href="http://vuontoanblog.blogspot.com/2013/01/complex2.html" target="_blank">
    công thức Moivre
  </a>
   của số phức để tìm ra công thức lượng giác cho góc bội: 
  <span style="color: purple;">
    <span class="MathJax_Preview">
      \sin{nx}
    </span>
    <script type="math/tex">
//<![CDATA[
\sin{nx}
//]]>
    </script>
  </span>
  , 
  <span style="color: purple;">
    <span class="MathJax_Preview">
      \cos{nx}
    </span>
    <script type="math/tex">
//<![CDATA[
\cos{nx}
//]]>
    </script>
  </span>
  , 
  <span style="color: purple;">
    <span class="MathJax_Preview">
      \tan{nx}
    </span>
    <script type="math/tex">
//<![CDATA[
\tan{nx}
//]]>
    </script>
  </span>
   và 
  <span style="color: purple;">
    <span class="MathJax_Preview">
      \cot{nx}
    </span>
    <script type="math/tex">
//<![CDATA[
\cot{nx}
//]]>
    </script>
  </span>
  .
  <br/>
  <br/>
  <br/>
  <a name="more">
  </a>
  <div>
    <br/>
    
Đầu tiên chúng ta sẽ ôn lại một chút về 
    <a href="http://vuontoanblog.blogspot.com/2013/01/complex1.html" target="_blank">
      số phức
    </a>
     và 
    <a href="http://vuontoanblog.blogspot.com/2013/01/complex2.html" target="_blank">
      công thức Moivre
    </a>
    .
  </div>
  <div>
    <br/>
    <br/>
    <br/>
    <span style="color: #0b5394; font-size: large;">
      Công thức Moivre về số phức
    </span>
    <br/>
    <br/>
    <span style="color: purple; font-size: x-large;">
      S
    </span>
    ố phức có dạng tổng quát là 
    <span class="MathJax_Preview">
      a+ib,
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
a+ib,
//]]>
    </script>
     ví dụ như 
    <span class="MathJax_Preview">
      3+2i, ~~ 5-3i, ~~ 2i+7, ~~ 8i, ~~ 4i-2, ~~ 5, ~~ i+1, \dots
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
3+2i, ~~ 5-3i, ~~ 2i+7, ~~ 8i, ~~ 4i-2, ~~ 5, ~~ i+1, \dots
//]]>
    </script>
     Số 
    <span class="MathJax_Preview">
      a
    </span>
    <script type="math/tex">
//<![CDATA[
a
//]]>
    </script>
     gọi là 
    <i>
      phần thực
    </i>
    , còn số 
    <span class="MathJax_Preview">
      ib
    </span>
    <script type="math/tex">
//<![CDATA[
ib
//]]>
    </script>
     gọi là 
    <i>
      phần ảo
    </i>
    .
    <br/>
    <br/>
    
Các phép tính cộng trừ nhân chia của số phức cũng giống như số thực, chỉ có điều bạn nên nhớ rằng 
    <span class="MathJax_Preview">
      i^2 = -1, ~~ i^3 = -i, ~~ i^4 = -i^2 = 1, ~~ i^5 = i, ~~i^6 = i^2 = -1, \dots
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
i^2 = -1, ~~ i^3 = -i, ~~ i^4 = -i^2 = 1, ~~ i^5 = i, ~~i^6 = i^2 = -1, \dots
//]]>
    </script>
    <br/>
    <ul>
      <li>
        <span style="color: purple;">
          <b>
            Phép cọng và trừ
          </b>
        </span>
         
        <span class="MathJax_Preview">
          (a + i b) + (c + i d) = (a+c) + i (b+d) ,
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
(a + i b) + (c + i d) = (a+c) + i (b+d) ,
//]]>
        </script>
        <span class="MathJax_Preview">
          (a + i b)- (c + i d) = (a-c) + i (b - d). 
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
(a + i b)- (c + i d) = (a-c) + i (b - d). 
//]]>
        </script>
      </li>
    </ul>
    <ul>
      <li>
        <span style="color: purple;">
          <b>
            Phép nhân
          </b>
        </span>
         
        <span class="MathJax_Preview">
          (a + i b)(c + i d) = ac + i ad + i bc + i^2 bd = (ac - bd) + i (bc + ad ) .
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
(a + i b)(c + i d) = ac + i ad + i bc + i^2 bd = (ac - bd) + i (bc + ad ) .
//]]>
        </script>
      </li>
    </ul>
    <ul>
      <li>
        <span style="color: purple;">
          <b>
            Phép chia
          </b>
        </span>
         sử dụng đẳng thức 
        <span class="MathJax_Preview">
          (a + i b)(a - ib ) = a^2 - i^2 b^2 = a^2 + b^2 .
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
(a + i b)(a - ib ) = a^2 - i^2 b^2 = a^2 + b^2 .
//]]>
        </script>
          
        <span class="MathJax_Preview">
          \frac{c + i d}{a + i b} = \frac{(c + i d)(a - ib)}{(a + ib)(a - ib)} = \frac{(ac + bd) + i(ad - bc)}{a^2 + b^2} = \frac{ac + bd}{a^2 + b^2} + i \frac{ad - bc}{a^2 + b^2}.
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
\frac{c + i d}{a + i b} = \frac{(c + i d)(a - ib)}{(a + ib)(a - ib)} = \frac{(ac + bd) + i(ad - bc)}{a^2 + b^2} = \frac{ac + bd}{a^2 + b^2} + i \frac{ad - bc}{a^2 + b^2}.
//]]>
        </script>
      </li>
    </ul>
    <ul>
      <li>
        <span style="color: purple;">
          <b>
            Số phức liên hợp
          </b>
        </span>
         
        <span class="MathJax_Preview">
          \overline{a + i b} = a - ib, ~~~~\overline{a- ib} = a + ib.
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
\overline{a + i b} = a - ib, ~~~~\overline{a- ib} = a + ib.
//]]>
        </script>
      </li>
    </ul>
    <ul>
      <li>
        <span style="color: purple;">
          <b>
            Trị tuyệt đối
          </b>
        </span>
         
        <span class="MathJax_Preview">
          |a + ib| = \sqrt{a^2 + b^2}.
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
|a + ib| = \sqrt{a^2 + b^2}.
//]]>
        </script>
      </li>
    </ul>
    <br/>
    
Có một tính chất rất quan trọng của 
    <a href="http://vuontoanblog.blogspot.com/2013/01/complex1.html" target="_blank">
      số phức
    </a>
    , đó là, mọi số phức 
    <span class="MathJax_Preview">
      z
    </span>
    <script type="math/tex">
//<![CDATA[
z
//]]>
    </script>
     đều có thể được viết về 
    <b>
      dạng lượng giác
    </b>
     như sau

    <span class="MathJax_Preview">
      z= |z|(\cos{\alpha} + i \sin{\alpha}).
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
z= |z|(\cos{\alpha} + i \sin{\alpha}).
//]]>
    </script>
    <br/>
    
Dạng lượng giác rất tiện lợi trong việc nhân và chia số phức, bởi vì

    <span class="MathJax_Preview">
      (\cos{\alpha_1} + i \sin{\alpha_1})(\cos{\alpha_2} + i \sin{\alpha_2})
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
(\cos{\alpha_1} + i \sin{\alpha_1})(\cos{\alpha_2} + i \sin{\alpha_2})
//]]>
    </script>
    <span class="MathJax_Preview">
       = (\cos{\alpha_1} \cos{\alpha_2} - \sin{\alpha_1} \sin{\alpha_2}) + i (\sin{\alpha_1} \cos{\alpha_2} + \cos{\alpha_1} \sin{\alpha_2})
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
 = (\cos{\alpha_1} \cos{\alpha_2} - \sin{\alpha_1} \sin{\alpha_2}) + i (\sin{\alpha_1} \cos{\alpha_2} + \cos{\alpha_1} \sin{\alpha_2})
//]]>
    </script>
    <span class="MathJax_Preview">
       = \cos{(\alpha_1 + \alpha_2)} + i \sin{(\alpha_1 + \alpha_2)}.
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
 = \cos{(\alpha_1 + \alpha_2)} + i \sin{(\alpha_1 + \alpha_2)}.
//]]>
    </script>
    <br/>
    
Như vậy, nếu chúng ta có hai số phức

    <span class="MathJax_Preview">
      z_1= |z_1|(\cos{\alpha_1} + i \sin{\alpha_1}),
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
z_1= |z_1|(\cos{\alpha_1} + i \sin{\alpha_1}),
//]]>
    </script>
    <span class="MathJax_Preview">
      z_2= |z_2|(\cos{\alpha_2} + i \sin{\alpha_2}),
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
z_2= |z_2|(\cos{\alpha_2} + i \sin{\alpha_2}),
//]]>
    </script>
    
thì tích và thương của chúng có công thức đơn giản sau đây

    <span class="MathJax_Preview">
      z_1 z_2 = |z_1| |z_2| (\cos{(\alpha_1 + \alpha_2)} + i \sin{(\alpha_1 + \alpha_2)}),
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
z_1 z_2 = |z_1| |z_2| (\cos{(\alpha_1 + \alpha_2)} + i \sin{(\alpha_1 + \alpha_2)}),
//]]>
    </script>
    <span class="MathJax_Preview">
      \frac{z_1}{z_2}= \frac{|z_1|}{|z_2|} (\cos{(\alpha_1 - \alpha_2)} + i \sin{(\alpha_1 - \alpha_2)}).
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\frac{z_1}{z_2}= \frac{|z_1|}{|z_2|} (\cos{(\alpha_1 - \alpha_2)} + i \sin{(\alpha_1 - \alpha_2)}).
//]]>
    </script>
    <br/>
    
Trong trường hợp đặc biệt 
    <span class="MathJax_Preview">
      \alpha_1 = \alpha_2
    </span>
    <script type="math/tex">
//<![CDATA[
\alpha_1 = \alpha_2
//]]>
    </script>
    , chúng ta có

    <span class="MathJax_Preview">
      z^2= |z|^2 (\cos{2 \alpha} + i \sin{2 \alpha}).
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
z^2= |z|^2 (\cos{2 \alpha} + i \sin{2 \alpha}).
//]]>
    </script>
    <br/>
    
Dĩ nhiên, nếu chúng ta áp dụng công thức nhân liên tiếp thì chúng ta sẽ có công thức lũy thừa

    <span class="MathJax_Preview">
      z^n= |z|^n (\cos{n \alpha} + i \sin{n \alpha}).
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
z^n= |z|^n (\cos{n \alpha} + i \sin{n \alpha}).
//]]>
    </script>
    <br/>
    
Trong trường hợp 
    <span class="MathJax_Preview">
      |z|=1
    </span>
    <script type="math/tex">
//<![CDATA[
|z|=1
//]]>
    </script>
     thì chúng ta có

    <br/>
    <br/>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Công thức Moivre:
        </b>
        <br/>
        <span class="MathJax_Preview">
          (\cos{\alpha} + i \sin{\alpha})^n = \cos{n \alpha} + i \sin{n \alpha}.
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
(\cos{\alpha} + i \sin{\alpha})^n = \cos{n \alpha} + i \sin{n \alpha}.
//]]>
        </script>
      </span>
    </blockquote>
    <br/>
    <br/>
    
Vậy chỉ cần dùng 
    <a href="http://vuontoanblog.blogspot.com/2012/09/binomial-identity.html" target="_blank">
      nhị thức Newton
    </a>
     để khai triễn công thức Moivre, chúng ta sẽ tìm được công thức lượng giác cho góc bội 
    <span class="MathJax_Preview">
      \cos{n \alpha}
    </span>
    <script type="math/tex">
//<![CDATA[
\cos{n \alpha}
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      \sin{n \alpha}
    </span>
    <script type="math/tex">
//<![CDATA[
\sin{n \alpha}
//]]>
    </script>
     !
    <br/>
    <br/>
    <span style="color: #0b5394; font-size: large;">
      <br/>
    </span>
    <span style="color: #0b5394; font-size: large;">
      <br/>
    </span>
    <span style="color: #0b5394; font-size: large;">
      <br/>
    </span>
    <span style="color: #0b5394; font-size: large;">
      Công thức lượng giác cho góc bội
    </span>
    <br/>
    <br/>
    <br/>
    <span style="color: purple;">
      <b>
        Công thức lượng giác cho góc gấp đôi
      </b>
    </span>
    <br/>
    <br/>
    
Sử dụng công thức Moivre cho 
    <span class="MathJax_Preview">
      n=2
    </span>
    <script type="math/tex">
//<![CDATA[
n=2
//]]>
    </script>
    , chúng ta có

    <span class="MathJax_Preview">
      \cos{2 x} + i \sin{2 x} = (\cos{x} + i \sin{x})^2
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\cos{2 x} + i \sin{2 x} = (\cos{x} + i \sin{x})^2
//]]>
    </script>
    <span class="MathJax_Preview">
      = \cos^2{x} + 2 \cos{x} (i \sin{x}) + (i \sin{x})^2
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
= \cos^2{x} + 2 \cos{x} (i \sin{x}) + (i \sin{x})^2
//]]>
    </script>
    <span class="MathJax_Preview">
      = \cos^2{x} -\sin^2{x} + i 2 \sin{x} \cos{x}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
= \cos^2{x} -\sin^2{x} + i 2 \sin{x} \cos{x}
//]]>
    </script>
    <br/>
    
Vậy chúng ta rút ra
    <br/>
    <br/>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        công thức 
        <span class="MathJax_Preview">
          \cos{2 x}
        </span>
        <script type="math/tex">
//<![CDATA[
\cos{2 x}
//]]>
        </script>
      </span>
      <br/>
      <span class="MathJax_Preview">
        \cos{2 x} = \cos^2{x} -\sin^2{x}
= \cos^2{x} - ( 1 - \cos^2{x}) = 2 \cos^2{x} - 1 
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
\cos{2 x} = \cos^2{x} -\sin^2{x}
= \cos^2{x} - ( 1 - \cos^2{x}) = 2 \cos^2{x} - 1 
//]]>
      </script>
       
    </blockquote>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        công thức 
        <span class="MathJax_Preview">
          \sin{2 x}
        </span>
        <script type="math/tex">
//<![CDATA[
\sin{2 x}
//]]>
        </script>
      </span>
      <span class="MathJax_Preview">
        \sin{2 x} = 2 \sin{x} \cos{x}
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
\sin{2 x} = 2 \sin{x} \cos{x}
//]]>
      </script>
    </blockquote>
  </div>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      công thức 
      <span class="MathJax_Preview">
        \tan{2 x}
      </span>
      <script type="math/tex">
//<![CDATA[
\tan{2 x}
//]]>
      </script>
    </span>
    <span class="MathJax_Preview">
      \tan{2x} = \frac{\sin{2x}}{\cos{2x}} = \frac{2 \sin{x} \cos{x}}{\cos^2{x} -\sin^2{x}} = \frac{2 \sin{x} \cos{x} / \cos^2{x}}{(\cos^2{x} -\sin^2{x}) / \cos^2{x}}= \frac{2 \tan{x}}{1 - \tan^2{x}}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\tan{2x} = \frac{\sin{2x}}{\cos{2x}} = \frac{2 \sin{x} \cos{x}}{\cos^2{x} -\sin^2{x}} = \frac{2 \sin{x} \cos{x} / \cos^2{x}}{(\cos^2{x} -\sin^2{x}) / \cos^2{x}}= \frac{2 \tan{x}}{1 - \tan^2{x}}
//]]>
    </script>
  </blockquote>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      công thức 
      <span class="MathJax_Preview">
        \cot{2 x}
      </span>
      <script type="math/tex">
//<![CDATA[
\cot{2 x}
//]]>
      </script>
    </span>
    <span class="MathJax_Preview">
      \cot{2x} = \frac{\cos{2x}}{\sin{2x}} = \frac{\cos^2{x} -\sin^2{x}}{2 \sin{x} \cos{x}} = \frac{(\cos^2{x} -\sin^2{x}) / \sin^2{x}}{2 \sin{x} \cos{x} / \sin^2{x}} = \frac{\cot^2{x} - 1}{2 \cot{x}}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\cot{2x} = \frac{\cos{2x}}{\sin{2x}} = \frac{\cos^2{x} -\sin^2{x}}{2 \sin{x} \cos{x}} = \frac{(\cos^2{x} -\sin^2{x}) / \sin^2{x}}{2 \sin{x} \cos{x} / \sin^2{x}} = \frac{\cot^2{x} - 1}{2 \cot{x}}
//]]>
    </script>
  </blockquote>
  <br/>
  <span style="color: purple;">
    <b>
      Công thức lượng giác cho góc gấp ba
    </b>
  </span>
  <br/>
  <br/>
  
Sử dụng công thức Moivre cho 
  <span class="MathJax_Preview">
    n=3
  </span>
  <script type="math/tex">
//<![CDATA[
n=3
//]]>
  </script>
  , chúng ta có

  <span class="MathJax_Preview">
    \cos{3 x} + i \sin{3 x} = (\cos{x} + i \sin{x})^3
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{3 x} + i \sin{3 x} = (\cos{x} + i \sin{x})^3
//]]>
  </script>
  <span class="MathJax_Preview">
    = \cos^3{x} + 3 \cos^2{x} (i \sin{x}) + 3 \cos{x} (i \sin{x})^2 + (i \sin{x})^3
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= \cos^3{x} + 3 \cos^2{x} (i \sin{x}) + 3 \cos{x} (i \sin{x})^2 + (i \sin{x})^3
//]]>
  </script>
  <span class="MathJax_Preview">
    = \cos^3{x} - 3 \cos{x} \sin^2{x} + i (3 \cos^2{x} \sin{x} - \sin^3{x})
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= \cos^3{x} - 3 \cos{x} \sin^2{x} + i (3 \cos^2{x} \sin{x} - \sin^3{x})
//]]>
  </script>
  <br/>
  
Vậy chúng ta rút ra

  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      công thức 
      <span class="MathJax_Preview">
        \cos{3 x}
      </span>
      <script type="math/tex">
//<![CDATA[
\cos{3 x}
//]]>
      </script>
    </span>
    <span class="MathJax_Preview">
      \cos{3 x} = \cos^3{x} - 3 \cos{x} \sin^2{x} =\cos^3{x} - 3 \cos{x} (1 - \cos^2{x}) =4 \cos^3{x} - 3 \cos{x}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\cos{3 x} = \cos^3{x} - 3 \cos{x} \sin^2{x} =\cos^3{x} - 3 \cos{x} (1 - \cos^2{x}) =4 \cos^3{x} - 3 \cos{x}
//]]>
    </script>
  </blockquote>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      công thức 
      <span class="MathJax_Preview">
        \sin{3 x}
      </span>
      <script type="math/tex">
//<![CDATA[
\sin{3 x}
//]]>
      </script>
    </span>
    <span class="MathJax_Preview">
      \sin{3 x} = 3 \cos^2{x} \sin{x} - \sin^3{x} =3 (1 - \sin^2{x}) \sin{x} - \sin^3{x} =3 \sin{x} - 4 \sin^3{x}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\sin{3 x} = 3 \cos^2{x} \sin{x} - \sin^3{x} =3 (1 - \sin^2{x}) \sin{x} - \sin^3{x} =3 \sin{x} - 4 \sin^3{x}
//]]>
    </script>
  </blockquote>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      công thức 
      <span class="MathJax_Preview">
        \tan{3 x}
      </span>
      <script type="math/tex">
//<![CDATA[
\tan{3 x}
//]]>
      </script>
    </span>
    <span class="MathJax_Preview">
      \tan{3 x} = \frac{\sin{3 x}}{\cos{3 x}} = \frac{3 \cos^2{x} \sin{x} - \sin^3{x}}{\cos^3{x} - 3 \cos{x} \sin^2{x}}= \frac{3 \tan{x} - \tan^3{x}}{1 - 3 \tan^2{x} }
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\tan{3 x} = \frac{\sin{3 x}}{\cos{3 x}} = \frac{3 \cos^2{x} \sin{x} - \sin^3{x}}{\cos^3{x} - 3 \cos{x} \sin^2{x}}= \frac{3 \tan{x} - \tan^3{x}}{1 - 3 \tan^2{x} }
//]]>
    </script>
  </blockquote>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      công thức 
      <span class="MathJax_Preview">
        \cot{3 x}
      </span>
      <script type="math/tex">
//<![CDATA[
\cot{3 x}
//]]>
      </script>
    </span>
    <span class="MathJax_Preview">
      \cot{3 x} = \frac{\cos{3 x}}{\sin{3 x}} = \frac{\cos^3{x} - 3 \cos{x} \sin^2{x}}{3 \cos^2{x} \sin{x} - \sin^3{x}}= \frac{\cot^3{x} - 3 \cot{x}}{3 \cot^2{x} - 1}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\cot{3 x} = \frac{\cos{3 x}}{\sin{3 x}} = \frac{\cos^3{x} - 3 \cos{x} \sin^2{x}}{3 \cos^2{x} \sin{x} - \sin^3{x}}= \frac{\cot^3{x} - 3 \cot{x}}{3 \cot^2{x} - 1}
//]]>
    </script>
  </blockquote>
  <div>
    <br/>
  </div>
  <span style="color: purple;">
    <b>
      <br/>
    </b>
  </span>
  <span style="color: purple;">
    <b>
      Công thức lượng giác cho góc gấp bốn
    </b>
  </span>
  <br/>
  <br/>
  
Sử dụng công thức Moivre cho 
  <span class="MathJax_Preview">
    n=4
  </span>
  <script type="math/tex">
//<![CDATA[
n=4
//]]>
  </script>
  , chúng ta có

  <span class="MathJax_Preview">
    \cos{4 x} + i \sin{4 x} = (\cos{x} + i \sin{x})^4
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{4 x} + i \sin{4 x} = (\cos{x} + i \sin{x})^4
//]]>
  </script>
  <span class="MathJax_Preview">
    = \cos^4{x} + 4 \cos^3{x} (i \sin{x}) + 6 \cos^2{x} (i \sin{x})^2 + 4 \cos{x} (i \sin{x})^3 + (i \sin{x})^4
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= \cos^4{x} + 4 \cos^3{x} (i \sin{x}) + 6 \cos^2{x} (i \sin{x})^2 + 4 \cos{x} (i \sin{x})^3 + (i \sin{x})^4
//]]>
  </script>
  <span class="MathJax_Preview">
    = \cos^4{x} - 6 \cos^2{x} \sin^2{x} + \sin^4{x} +
i (4 \cos^3{x} \sin{x} - 4 \cos{x} \sin^3{x})
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
= \cos^4{x} - 6 \cos^2{x} \sin^2{x} + \sin^4{x} +
i (4 \cos^3{x} \sin{x} - 4 \cos{x} \sin^3{x})
//]]>
  </script>
  

Vậy chúng ta rút ra
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      công thức 
      <span class="MathJax_Preview">
        \cos{4 x}
      </span>
      <script type="math/tex">
//<![CDATA[
\cos{4 x}
//]]>
      </script>
    </span>
    <span class="MathJax_Preview">
      \cos{4 x} = \cos^4{x} - 6 \cos^2{x} \sin^2{x} + \sin^4{x} = \cos^4{x} - 6 \cos^2{x} (1-\cos^2{x}) + (1- \cos^2{x})^2
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\cos{4 x} = \cos^4{x} - 6 \cos^2{x} \sin^2{x} + \sin^4{x} = \cos^4{x} - 6 \cos^2{x} (1-\cos^2{x}) + (1- \cos^2{x})^2
//]]>
    </script>
    <span class="MathJax_Preview">
      = 8 \cos^4{x} - 8 \cos^2{x} + 1
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
= 8 \cos^4{x} - 8 \cos^2{x} + 1
//]]>
    </script>
     
  </blockquote>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      công thức 
      <span class="MathJax_Preview">
        \sin{4 x}
      </span>
      <script type="math/tex">
//<![CDATA[
\sin{4 x}
//]]>
      </script>
    </span>
    <span class="MathJax_Preview">
      \sin{4 x} = 4 \cos^3{x} \sin{x} - 4 \cos{x} \sin^3{x} = 4 \cos{x} (1 - \sin^2{x}) \sin{x} - 4 \cos{x} \sin^3{x}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\sin{4 x} = 4 \cos^3{x} \sin{x} - 4 \cos{x} \sin^3{x} = 4 \cos{x} (1 - \sin^2{x}) \sin{x} - 4 \cos{x} \sin^3{x}
//]]>
    </script>
    <span class="MathJax_Preview">
      = 4 \cos{x} (\sin{x} - 2 \sin^3{x})
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
= 4 \cos{x} (\sin{x} - 2 \sin^3{x})
//]]>
    </script>
  </blockquote>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      công thức 
      <span class="MathJax_Preview">
        \tan{4 x}
      </span>
      <script type="math/tex">
//<![CDATA[
\tan{4 x}
//]]>
      </script>
    </span>
    <span class="MathJax_Preview">
      \tan{4x} = \frac{\sin{4 x}}{\cos{4 x}} = \frac{4 \cos^3{x} \sin{x} - 4 \cos{x} \sin^3{x}}{ \cos^4{x} - 6 \cos^2{x} \sin^2{x} + \sin^4{x}} = \frac{4 \tan{x} - 4 \tan^3{x}}{ 1 - 6  \tan^2{x} + \tan^4{x}}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\tan{4x} = \frac{\sin{4 x}}{\cos{4 x}} = \frac{4 \cos^3{x} \sin{x} - 4 \cos{x} \sin^3{x}}{ \cos^4{x} - 6 \cos^2{x} \sin^2{x} + \sin^4{x}} = \frac{4 \tan{x} - 4 \tan^3{x}}{ 1 - 6  \tan^2{x} + \tan^4{x}}
//]]>
    </script>
  </blockquote>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      công thức 
      <span class="MathJax_Preview">
        \cot{4 x}
      </span>
      <script type="math/tex">
//<![CDATA[
\cot{4 x}
//]]>
      </script>
    </span>
    <span class="MathJax_Preview">
      \cot{4 x} = \frac{\cos{4 x}}{\sin{4 x}} = \frac{\cos^4{x} - 6 \cos^2{x} \sin^2{x} + \sin^4{x}}{4 \cos^3{x} \sin{x} - 4 \cos{x} \sin^3{x}}= \frac{\cot^4{x} - 6 \cot^2{x} + 1}{4 \cot^3{x}  - 4 \cot{x}  }
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\cot{4 x} = \frac{\cos{4 x}}{\sin{4 x}} = \frac{\cos^4{x} - 6 \cos^2{x} \sin^2{x} + \sin^4{x}}{4 \cos^3{x} \sin{x} - 4 \cos{x} \sin^3{x}}= \frac{\cot^4{x} - 6 \cot^2{x} + 1}{4 \cot^3{x}  - 4 \cot{x}  }
//]]>
    </script>
  </blockquote>
  <div>
    <br/>
  </div>
  
Đến đây có lẽ các bạn đã hình dung ra cách tìm công thức lượng giác tổng quát cho góc bội rồi phải không?! Các bạn hãy làm tiếp cho các trường hợp 
  <span class="MathJax_Preview">
    n=5,6,7
  </span>
  <script type="math/tex">
//<![CDATA[
n=5,6,7
//]]>
  </script>
   nhé. Nhờ những công thức lượng giác góc bội này, các bạn có thể tìm ra được công thức cho 
  <span class="MathJax_Preview">
    \sin{\frac{\pi}{7}}
  </span>
  <script type="math/tex">
//<![CDATA[
\sin{\frac{\pi}{7}}
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{7}}
  </span>
  <script type="math/tex">
//<![CDATA[
\cos{\frac{\pi}{7}}
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    \sin{\frac{\pi}{9}}
  </span>
  <script type="math/tex">
//<![CDATA[
\sin{\frac{\pi}{9}}
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{9}}
  </span>
  <script type="math/tex">
//<![CDATA[
\cos{\frac{\pi}{9}}
//]]>
  </script>
  , v.v...
  <br/>
  <br/>
  
Kỳ sau chúng ta sẽ quay lại với toán dựng hình, hẹn gặp lại các bạn.
  <br/>
  <br/>
  <br/>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Tiếp tục tìm các công thức cho 
  <span class="MathJax_Preview">
    \sin{nx}
  </span>
  <script type="math/tex">
//<![CDATA[
\sin{nx}
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    \cos{nx}
  </span>
  <script type="math/tex">
//<![CDATA[
\cos{nx}
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    \tan{nx}
  </span>
  <script type="math/tex">
//<![CDATA[
\tan{nx}
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    \cot{nx}
  </span>
  <script type="math/tex">
//<![CDATA[
\cot{nx}
//]]>
  </script>
   khi 
  <span class="MathJax_Preview">
    n=5,6,7 \dots
  </span>
  <script type="math/tex">
//<![CDATA[
n=5,6,7 \dots
//]]>
  </script>
  .
  <br/>
  <br/>
  
2. Tìm công thức cho 
  <span class="MathJax_Preview">
    \sin{\frac{\pi}{7}}, \sin{\frac{2 \pi}{7}}, \sin{\frac{3 \pi}{7}}, \dots 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\sin{\frac{\pi}{7}}, \sin{\frac{2 \pi}{7}}, \sin{\frac{3 \pi}{7}}, \dots 
//]]>
  </script>
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{7}}, \cos{\frac{2 \pi}{7}}, \cos{\frac{3 \pi}{7}}, \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{\pi}{7}}, \cos{\frac{2 \pi}{7}}, \cos{\frac{3 \pi}{7}}, \dots
//]]>
  </script>
  <br/>
  <br/>
  
3. Tìm công thức cho 
  <span class="MathJax_Preview">
    \sin{\frac{\pi}{9}}, \sin{\frac{2 \pi}{9}}, \sin{\frac{3 \pi}{9}}, \dots 
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\sin{\frac{\pi}{9}}, \sin{\frac{2 \pi}{9}}, \sin{\frac{3 \pi}{9}}, \dots 
//]]>
  </script>
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{9}}, \cos{\frac{2 \pi}{9}}, \cos{\frac{3 \pi}{9}}, \dots
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{\pi}{9}}, \cos{\frac{2 \pi}{9}}, \cos{\frac{3 \pi}{9}}, \dots
//]]>
  </script>
  <br/>
  <div>
    <br/>
  </div>
  <div>
    
4. Vào trang Google 
    <a href="http://google.com/">
      http://google.com
    </a>
     để tìm kiếm, học hỏi thêm về 
    <a href="http://vuontoanblog.blogspot.com/2012/09/induction3.html" target="_blank">
      <span style="color: purple;">
        đa thức Chebyshev
      </span>
    </a>
     (tìm kiếm bằng từ khoá 
    <span style="color: purple;">
      Chebyshev polynomial
    </span>
    ), xem thử đa thức Chebyshev có liên quan gì đến công thức lượng giác cho góc bội.
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','75','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-2124575911591841012">
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://2.bp.blogspot.com/-Ag64bVJD8Ts/VCT-QJF30PI/AAAAAAAADJc/2zUE6meRHFg/s1600/vuontoan_mathgarden_pentagon_draw.png" height="320" width="312"/>
    </div>
    <br/>
  </div>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay chúng ta sẽ xem xét một cách 
  <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
    dựng hình
  </a>
   
  <i>
    ngũ giác đều
  </i>
   bằng thước và compa dựa vào công thức lượng giác sau đây 
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{5}} = \frac{1 + \sqrt{5}}{4}.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{\pi}{5}} = \frac{1 + \sqrt{5}}{4}.
//]]>
  </script>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <br/>
  <a name="more">
  </a>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta có thể dễ dàng dựng được hình 
  <i>
    tam giác đều
  </i>
  , 
  <i>
    hình vuông
  </i>
  , hình 
  <i>
    lục giác đều
  </i>
   (6 cạnh) và hình 
  <i>
    bát giác đều
  </i>
   (8 cạnh). Vậy hình 
  <i>
    ngũ giác đều
  </i>
   (5 cạnh), hình 
  <i>
    thất giác đều
  </i>
   (7 cạnh) và hình 
  <i>
    cửu giác đều
  </i>
   (9 cạnh) thì sao?
  <br/>
  <br/>
  
Hoá ra, dùng thước và compa, chúng ta có thể dựng được hình ngũ giác đều. Nhưng thất giác đều và cửu giác đều thì câu trả lời là không thể! Hôm nay chúng ta sẽ xem xét cách dựng ngũ giác đều, còn thất giác đều và cửu giác đều thì chúng ta để dành cho các kỳ sau.
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    B
  </span>
  ây giờ chúng ta hãy cùng phân tích. Ở hình vẽ sau đây, chúng ta thấy rằng nếu chúng ta dựng được điểm 
  <span class="MathJax_Preview">
    H
  </span>
  <script type="math/tex">
//<![CDATA[
H
//]]>
  </script>
  , thì từ điểm 
  <span class="MathJax_Preview">
    H
  </span>
  <script type="math/tex">
//<![CDATA[
H
//]]>
  </script>
  , chúng ta có thể dựng được đỉnh 
  <span class="MathJax_Preview">
    N_3
  </span>
  <script type="math/tex">
//<![CDATA[
N_3
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    N_4
  </span>
  <script type="math/tex">
//<![CDATA[
N_4
//]]>
  </script>
  , và từ đó chúng ta dễ dàng dựng được hình ngũ giác đều 
  <span class="MathJax_Preview">
    N_1 N_2 N_3 N_4 N_5
  </span>
  <script type="math/tex">
//<![CDATA[
N_1 N_2 N_3 N_4 N_5
//]]>
  </script>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-aYP58KyMz8Q/UvRPClgsMII/AAAAAAAACU8/ZZXyt-UJl7k/s1600/vuontoan-mathgarden-regular3b.png"/>
  </div>
  
Vì 
  <span class="MathJax_Preview">
    \angle N_3 O H = \frac{1}{2} \angle N_3 O N_4 = \frac{\pi}{5}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\angle N_3 O H = \frac{1}{2} \angle N_3 O N_4 = \frac{\pi}{5}
//]]>
  </script>
   nên 
  <span class="MathJax_Preview">
    OH = r \cos{\frac{\pi}{5}}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
OH = r \cos{\frac{\pi}{5}}
//]]>
  </script>
   trong đó 
  <span class="MathJax_Preview">
    r
  </span>
  <script type="math/tex">
//<![CDATA[
r
//]]>
  </script>
   là bán kính của đường tròn tâm 
  <span class="MathJax_Preview">
    O
  </span>
  <script type="math/tex">
//<![CDATA[
O
//]]>
  </script>
  .
  <br/>
  <br/>
  
Vậy để dựng điểm 
  <span class="MathJax_Preview">
    H
  </span>
  <script type="math/tex">
//<![CDATA[
H
//]]>
  </script>
  , chúng ta cần tính 
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{5}}
  </span>
  <script type="math/tex">
//<![CDATA[
\cos{\frac{\pi}{5}}
//]]>
  </script>
  .
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    Tính 
    <span class="MathJax_Preview">
      \cos{\frac{\pi}{5}}
    </span>
    <script type="math/tex">
//<![CDATA[
\cos{\frac{\pi}{5}}
//]]>
    </script>
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    G
  </span>
  óc 
  <span class="MathJax_Preview">
    \frac{\pi}{5}
  </span>
  <script type="math/tex">
//<![CDATA[
\frac{\pi}{5}
//]]>
  </script>
   có tính chất sau đây 
  <span class="MathJax_Preview">
    2 \frac{\pi}{5} + 3 \frac{\pi}{5} = \pi
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
2 \frac{\pi}{5} + 3 \frac{\pi}{5} = \pi
//]]>
  </script>
   cho nên, nếu chúng ta đặt 
  <span class="MathJax_Preview">
    x = \frac{\pi}{5}
  </span>
  <script type="math/tex">
//<![CDATA[
x = \frac{\pi}{5}
//]]>
  </script>
   thì 
  <span class="MathJax_Preview">
    2 x + 3 x =\pi
  </span>
  <script type="math/tex">
//<![CDATA[
2 x + 3 x =\pi
//]]>
  </script>
  , tức là 
  <span class="MathJax_Preview">
    2x
  </span>
  <script type="math/tex">
//<![CDATA[
2x
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    3x
  </span>
  <script type="math/tex">
//<![CDATA[
3x
//]]>
  </script>
   là hai góc bù nhau, và chúng ta suy ra 
  <span class="MathJax_Preview">
    \cos{2x} = - \cos{3x}.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{2x} = - \cos{3x}.
//]]>
  </script>
  <br/>
  <br/>
  
Áp dụng công thức lượng giác cho góc gấp đôi và góc gấp ba chúng ta có 
  <span class="MathJax_Preview">
    \cos{2 x} = 2 \cos^2{x} - 1,
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{2 x} = 2 \cos^2{x} - 1,
//]]>
  </script>
  <span class="MathJax_Preview">
    \cos{3 x} =  4 \cos^3{x} - 3 \cos{x},
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{3 x} =  4 \cos^3{x} - 3 \cos{x},
//]]>
  </script>
  <br/>
  <div>
    
Từ đây chúng ta lập được phương trình 
    <span class="MathJax_Preview">
      2 \cos^2{x} - 1=  -(4 \cos^3{x} - 3 \cos{x})
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
2 \cos^2{x} - 1=  -(4 \cos^3{x} - 3 \cos{x})
//]]>
    </script>
  </div>
  <div>
    <span class="MathJax_Preview">
      4 \cos^3{x} + 2 \cos^2{x} - 3 \cos{x} - 1=0
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
4 \cos^3{x} + 2 \cos^2{x} - 3 \cos{x} - 1=0
//]]>
    </script>
  </div>
  <div>
    <br/>
  </div>
  <div>
    
Đặt 
    <span class="MathJax_Preview">
      t = \cos{x}
    </span>
    <script type="math/tex">
//<![CDATA[
t = \cos{x}
//]]>
    </script>
    , chúng ta có phương trình bậc ba 
    <span class="MathJax_Preview">
      4 t^3 + 2 t^2 - 3 t - 1=0
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
4 t^3 + 2 t^2 - 3 t - 1=0
//]]>
    </script>
  </div>
  <div>
    <br/>
  </div>
  <div>
    
Chúng ta dễ dàng thấy được 
    <span class="MathJax_Preview">
      t=-1
    </span>
    <script type="math/tex">
//<![CDATA[
t=-1
//]]>
    </script>
     là một nghiệm của phương trình, nên chúng ta phân tích đa thức trên thành thừa số 
    <span class="MathJax_Preview">
      4 t^3 + 2 t^2 - 3 t - 1 = (t+1)(4t^2 - 2t-1)=0
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
4 t^3 + 2 t^2 - 3 t - 1 = (t+1)(4t^2 - 2t-1)=0
//]]>
    </script>
  </div>
  <div>
    
Giải phương trình bậc hai 
    <span class="MathJax_Preview">
      4t^2 - 2t-1=0
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
4t^2 - 2t-1=0
//]]>
    </script>
     chúng ta có hai nghiệm trái dấu 
    <span class="MathJax_Preview">
      t_{1,2} = \frac{1 \pm \sqrt{5}}{4}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
t_{1,2} = \frac{1 \pm \sqrt{5}}{4}
//]]>
    </script>
  </div>
  <div>
    
Vậy 
    <span class="MathJax_Preview">
      \cos{\frac{\pi}{5}}
    </span>
    <script type="math/tex">
//<![CDATA[
\cos{\frac{\pi}{5}}
//]]>
    </script>
     chính là nghiệm số dương, và chúng ta rút ra được công thức cần tìm 
    <span class="MathJax_Preview">
      \cos{\frac{\pi}{5}} = \frac{1 + \sqrt{5}}{4}.
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{\pi}{5}} = \frac{1 + \sqrt{5}}{4}.
//]]>
    </script>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
    <span style="color: #0b5394; font-size: large;">
      Sử dụng định lý Pitago
    </span>
    <br/>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://2.bp.blogspot.com/-aYP58KyMz8Q/UvRPClgsMII/AAAAAAAACU8/ZZXyt-UJl7k/s1600/vuontoan-mathgarden-regular3b.png"/>
    </div>
    
Trở lại với hình vẽ trên 
    <span class="MathJax_Preview">
      OH = r \cos{\frac{\pi}{5}} = \frac{(1 + \sqrt{5}) r}{4}
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
OH = r \cos{\frac{\pi}{5}} = \frac{(1 + \sqrt{5}) r}{4}
//]]>
    </script>
    <br/>
    
Để dựng được đoạn 
    <span class="MathJax_Preview">
      OH
    </span>
    <script type="math/tex">
//<![CDATA[
OH
//]]>
    </script>
     thì chúng ta cần dựng đoạn thẳng có độ dài 
    <span class="MathJax_Preview">
      (1 + \sqrt{5}) r
    </span>
    <script type="math/tex">
//<![CDATA[
(1 + \sqrt{5}) r
//]]>
    </script>
     rồi chia nó ra làm 4 phần bằng nhau.
    <br/>
    <br/>
    
Để dựng được đoạn thẳng có độ dài 
    <span class="MathJax_Preview">
      (1 + \sqrt{5}) r
    </span>
    <script type="math/tex">
//<![CDATA[
(1 + \sqrt{5}) r
//]]>
    </script>
     thì chúng ta cần dựng đoạn thẳng có độ dài 
    <span class="MathJax_Preview">
      \sqrt{5} r
    </span>
    <script type="math/tex">
//<![CDATA[
\sqrt{5} r
//]]>
    </script>
    .
    <br/>
    <br/>
    
Nói đến số 
    <span class="MathJax_Preview">
      \sqrt{5}
    </span>
    <script type="math/tex">
//<![CDATA[
\sqrt{5}
//]]>
    </script>
    , chúng ta sực nhớ ra 
    <a href="http://vuontoanblog.blogspot.com/2013/06/Garfield-Pythagorean-Theorem.html" target="_blank">
      định lý Pitago
    </a>
     vì 
    <span class="MathJax_Preview">
      5 = 1^2 + 2^2
    </span>
    <script type="math/tex">
//<![CDATA[
5 = 1^2 + 2^2
//]]>
    </script>
    .
    <br/>
    <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
      <tbody>
        <tr>
          <td>
            <img border="0" src="http://3.bp.blogspot.com/-vbNIzpyFYCc/UdO2r1-Sj4I/AAAAAAAAATo/3icOmTZKHtE/s242/py2.png"/>
          </td>
        </tr>
        <tr>
          <td class="tr-caption" style="font-size: 12.666666984558105px;">
            Định lý Pitago: 
            <span class="MathJax_Preview">
              c^2 = a^2 + b^2
            </span>
            <script type="math/tex">
//<![CDATA[
c^2 = a^2 + b^2
//]]>
            </script>
            .
          </td>
        </tr>
      </tbody>
    </table>
    
Định lý Pitago nói rằng trong một tam giác vuông thì bình phương cạnh huyền bằng tổng bình phương của hai cạnh góc vuông. Cho nên nếu chúng ta dựng một hình tam giác vuông có hai cạnh góc vuông là 
    <span class="MathJax_Preview">
      r
    </span>
    <script type="math/tex">
//<![CDATA[
r
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      2r
    </span>
    <script type="math/tex">
//<![CDATA[
2r
//]]>
    </script>
     thì cạnh huyền sẽ bằng 
    <span class="MathJax_Preview">
      \sqrt{5} r
    </span>
    <script type="math/tex">
//<![CDATA[
\sqrt{5} r
//]]>
    </script>
    <br/>
    <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
      <tbody>
        <tr>
          <td style="text-align: center;">
            <img border="0" src="http://2.bp.blogspot.com/-k8ZSnCd7cno/UvRbnllqAPI/AAAAAAAACVM/0CfsYNO3GeY/s1600/vuontoan-mathgarden-regular3c.png"/>
          </td>
        </tr>
        <tr>
          <td class="tr-caption" style="text-align: center;">
            <span style="font-size: small; text-align: start;">
               
              <span class="MathJax_Preview">
                (r)^2 + (2r)^2 = (\sqrt{5} r)^2
              </span>
              <script type="math/tex; mode=display">
//<![CDATA[
(r)^2 + (2r)^2 = (\sqrt{5} r)^2
//]]>
              </script>
            </span>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    Dựng 
  </span>
  <span style="color: #0b5394; font-size: large;">
    ngũ
  </span>
  <span style="color: #0b5394; font-size: large;">
     giác đều
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    T
  </span>
  ừ sự phân tích ở trên, chúng ta có cách dựng hình ngũ giác đều như sau:
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-_FVNcuOtzKg/UvRg6yyKK7I/AAAAAAAACVc/Nk9py9nG2nE/s1600/vuontoan-mathgarden-regular3d.png" height="238" width="320"/>
  </div>
  <ul>
    <li>
      Dựng trục tọa độ vuông góc 
      <span class="MathJax_Preview">
        xOx
      </span>
      <script type="math/tex">
//<![CDATA[
xOx
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        yOy
      </span>
      <script type="math/tex">
//<![CDATA[
yOy
//]]>
      </script>
      ; 
    </li>
    <li>
      Lấy 
      <span class="MathJax_Preview">
        O
      </span>
      <script type="math/tex">
//<![CDATA[
O
//]]>
      </script>
       làm tâm dựng đường tròn bất kỳ cắt 
      <span class="MathJax_Preview">
        Ox
      </span>
      <script type="math/tex">
//<![CDATA[
Ox
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        Ox
      </span>
      <script type="math/tex">
//<![CDATA[
Ox
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        Oy
      </span>
      <script type="math/tex">
//<![CDATA[
Oy
//]]>
      </script>
       lần lượt tại các điểm 
      <span class="MathJax_Preview">
        X
      </span>
      <script type="math/tex">
//<![CDATA[
X
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        N_1
      </span>
      <script type="math/tex">
//<![CDATA[
N_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        Y
      </span>
      <script type="math/tex">
//<![CDATA[
Y
//]]>
      </script>
      ;
    </li>
    <li>
      Dựng điểm 
      <span class="MathJax_Preview">
        A
      </span>
      <script type="math/tex">
//<![CDATA[
A
//]]>
      </script>
       trên tia 
      <span class="MathJax_Preview">
        Oy
      </span>
      <script type="math/tex">
//<![CDATA[
Oy
//]]>
      </script>
       sao cho 
      <span class="MathJax_Preview">
        YA=YO
      </span>
      <script type="math/tex">
//<![CDATA[
YA=YO
//]]>
      </script>
      ;
    </li>
    <li>
      Dựng điểm 
      <span class="MathJax_Preview">
        B
      </span>
      <script type="math/tex">
//<![CDATA[
B
//]]>
      </script>
       trên tia 
      <span class="MathJax_Preview">
        Ox
      </span>
      <script type="math/tex">
//<![CDATA[
Ox
//]]>
      </script>
       sao cho 
      <span class="MathJax_Preview">
        XB=XA
      </span>
      <script type="math/tex">
//<![CDATA[
XB=XA
//]]>
      </script>
      ; 
    </li>
    <li>
      Dựng trung điểm 
      <span class="MathJax_Preview">
        C
      </span>
      <script type="math/tex">
//<![CDATA[
C
//]]>
      </script>
       của 
      <span class="MathJax_Preview">
        OB
      </span>
      <script type="math/tex">
//<![CDATA[
OB
//]]>
      </script>
       và trung điểm 
      <span class="MathJax_Preview">
        H
      </span>
      <script type="math/tex">
//<![CDATA[
H
//]]>
      </script>
       của 
      <span class="MathJax_Preview">
        OC
      </span>
      <script type="math/tex">
//<![CDATA[
OC
//]]>
      </script>
      ;
    </li>
    <li>
      Dựng đường thẳng qua 
      <span class="MathJax_Preview">
        H
      </span>
      <script type="math/tex">
//<![CDATA[
H
//]]>
      </script>
       vuông góc với 
      <span class="MathJax_Preview">
        Ox
      </span>
      <script type="math/tex">
//<![CDATA[
Ox
//]]>
      </script>
       cắt đường tròn 
      <span class="MathJax_Preview">
        (O)
      </span>
      <script type="math/tex">
//<![CDATA[
(O)
//]]>
      </script>
       tại 
      <span class="MathJax_Preview">
        N_3
      </span>
      <script type="math/tex">
//<![CDATA[
N_3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        N_4
      </span>
      <script type="math/tex">
//<![CDATA[
N_4
//]]>
      </script>
      ;
    </li>
    <li>
      Lấy 
      <span class="MathJax_Preview">
        N_1
      </span>
      <script type="math/tex">
//<![CDATA[
N_1
//]]>
      </script>
       làm tâm dựng đường tròn bán kính bằng 
      <span class="MathJax_Preview">
        N_3N_4
      </span>
      <script type="math/tex">
//<![CDATA[
N_3N_4
//]]>
      </script>
       cắt đường tròn 
      <span class="MathJax_Preview">
        (O)
      </span>
      <script type="math/tex">
//<![CDATA[
(O)
//]]>
      </script>
       tại 
      <span class="MathJax_Preview">
        N_2
      </span>
      <script type="math/tex">
//<![CDATA[
N_2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        N_5
      </span>
      <script type="math/tex">
//<![CDATA[
N_5
//]]>
      </script>
      ;
    </li>
    <li>
      Vậy 
      <span class="MathJax_Preview">
        N_1N_2N_3N_4N_5
      </span>
      <script type="math/tex">
//<![CDATA[
N_1N_2N_3N_4N_5
//]]>
      </script>
       là một ngũ giác đều.
    </li>
  </ul>
  <div>
    
Nếu 
    <span class="MathJax_Preview">
      r
    </span>
    <script type="math/tex">
//<![CDATA[
r
//]]>
    </script>
     ký hiệu bán kính của đường tròn thì ở cách dựng trên chúng ta có 
    <span class="MathJax_Preview">
      OA = 2r, ~~XA = \sqrt{5}r, ~~XB = \sqrt{5} r, ~~OB=(1+\sqrt{5})r, ~~OH=(1+\sqrt{5})r/4
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
OA = 2r, ~~XA = \sqrt{5}r, ~~XB = \sqrt{5} r, ~~OB=(1+\sqrt{5})r, ~~OH=(1+\sqrt{5})r/4
//]]>
    </script>
  </div>
  <div>
    <br/>
  </div>
  <br/>
  <span style="color: purple; font-size: x-large;">
    N
  </span>
  hư vậy chúng ta đã trình bày xong cách dựng ngũ giác đều. Câu hỏi tổng quát được đặt ra là, với giá trị nào của 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
   thì bằng thước và compa chúng ta có thể dựng được một đa giác đều 
  <span class="MathJax_Preview">
    n
  </span>
  <script type="math/tex">
//<![CDATA[
n
//]]>
  </script>
   cạnh? Phát biểu có vẻ đơn giản vậy nhưng đây thực ra là một bài toán rất khó. Trãi qua hơn ngàn năm, người tìm được bước đột phá đầu tiên cho bài toán là nhà toán học Gauss. Chúng ta sẽ tiếp tục câu chuyện hấp dẫn này ở kỳ sau. Xin hẹn gặp lại các bạn.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','95','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-8569999065203291833">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-tgWhuWMH6Aw/VCS7I-xoiTI/AAAAAAAADHk/fM831YN3aRY/s1600/francis_sh.png" height="320" width="302"/>
  </div>
  <div class="separator" style="clear: both; text-align: left;">
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-rs9UiyKLiac/Uy-AUcJGMlI/AAAAAAAACmA/N5FJ_Szb7ME/s1600/vuontoan_mathgarden_ps.png" height="168" width="320"/>
  </div>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://4.bp.blogspot.com/-lYujfJ4SsYc/VHJnc6F_lXI/AAAAAAAADyQ/OrMGTBaxB1M/s1600/tonien_HappyNewYear_math_magazine_vn.png" height="274" width="640"/>
    </div>
    <br/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','88','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-3107656898522701110">
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay xin giới thiệu với các bạn một 
  <i>
    bài toán 
    <a href="http://vuontoanblog.blogspot.com/2013/10/basic-compass-straightedge-construction.html" target="_blank">
      dựng hình
    </a>
  </i>
   khá là thú vị như sau:
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Bài toán dựng hình.
      </b>
       Cho một hình tứ giác 
      <span class="MathJax_Preview">
        ABCD
      </span>
      <script type="math/tex">
//<![CDATA[
ABCD
//]]>
      </script>
       và bốn điểm 
      <span class="MathJax_Preview">
        M_1
      </span>
      <script type="math/tex">
//<![CDATA[
M_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        M_2
      </span>
      <script type="math/tex">
//<![CDATA[
M_2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        M_3
      </span>
      <script type="math/tex">
//<![CDATA[
M_3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        M_4
      </span>
      <script type="math/tex">
//<![CDATA[
M_4
//]]>
      </script>
       theo thứ tự này nằm trên cạnh 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
      . Bằng 
      <b>
        thước
      </b>
       và 
      <b>
        compa
      </b>
      , hãy chỉ ra cách xác định bốn điểm 
      <span class="MathJax_Preview">
        N_1
      </span>
      <script type="math/tex">
//<![CDATA[
N_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        N_2
      </span>
      <script type="math/tex">
//<![CDATA[
N_2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        N_3
      </span>
      <script type="math/tex">
//<![CDATA[
N_3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        N_4
      </span>
      <script type="math/tex">
//<![CDATA[
N_4
//]]>
      </script>
       nằm trên cạnh 
      <span class="MathJax_Preview">
        CD
      </span>
      <script type="math/tex">
//<![CDATA[
CD
//]]>
      </script>
       sao cho các đoạn thẳng 
      <span class="MathJax_Preview">
        M_1 N_1
      </span>
      <script type="math/tex">
//<![CDATA[
M_1 N_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        M_2 N_2
      </span>
      <script type="math/tex">
//<![CDATA[
M_2 N_2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        M_3 N_3
      </span>
      <script type="math/tex">
//<![CDATA[
M_3 N_3
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        M_4 N_4
      </span>
      <script type="math/tex">
//<![CDATA[
M_4 N_4
//]]>
      </script>
       chia hình tứ giác thành 5 hình tứ giác con có 
      <i>
        diện tích bằng nhau
      </i>
      .
    </span>
  </blockquote>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-okhOtYXPsFo/Ui7E6CO2lDI/AAAAAAAAA5w/gvdHXnC0X0k/s1600/quadarea1.png" height="226" width="320"/>
  </div>
  <br/>
  <a name="more">
  </a>
  <span style="color: purple; font-size: x-large;">
    T
  </span>
  rước khi đọc tiếp, xin mời các bạn thử bỏ ra một vài phút suy nghĩ xem chúng ta nên tiếp cận bài toán này như thế nào nhé.
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-91LPWF4IWQk/UjAFSCOOPnI/AAAAAAAAA6M/601gj1_azYg/s1600/quadarea3.png" height="89" width="640"/>
  </div>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    T
  </span>
  rong toán học, khi chúng ta cần giải một bài toán mà chúng ta chưa biết phải bắt đầu từ đâu thì việc tốt nhất là chúng ta 
  <a href="http://vuontoanblog.blogspot.com/2012/07/special-cases.html" target="_blank">
    xem xét một vài trường hợp đặc biệt
  </a>
  , hoặc chúng ta thử 
  <i>
    đơn giản hoá bài toán
  </i>
  . Đôi khi nhờ xem xét những bài toán đơn giản, chúng ta lại tìm ra được những kỹ thuật có thể dùng để giải quyết bài toán phức tạp ban đầu.
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div>
    <br/>
  </div>
  <div>
    <div>
      
Chúng ta thử đơn giản hoá bài toán này xem sao. Thay vì tìm cách chia hình tứ giác ra thành 
      <i>
        5 phần bằng nhau
      </i>
      , chúng ta thử xem có cách nào chia hình tứ giác ra thành 
      <i>
        2 phần bằng nhau
      </i>
       hay không. Chúng ta xem xét bài toán sau đây.
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <span style="color: #0b5394; font-size: large;">
      Bài toán chia đôi tứ giác
    </span>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Bài toán chia đôi tứ giác.
        </b>
         Cho một hình tứ giác 
        <span class="MathJax_Preview">
          ABCD
        </span>
        <script type="math/tex">
//<![CDATA[
ABCD
//]]>
        </script>
         và một điểm 
        <span class="MathJax_Preview">
          M
        </span>
        <script type="math/tex">
//<![CDATA[
M
//]]>
        </script>
         nằm trên cạnh 
        <span class="MathJax_Preview">
          AB
        </span>
        <script type="math/tex">
//<![CDATA[
AB
//]]>
        </script>
        . Bằng thước và compa, hãy chỉ ra cách xác định điểm 
        <span class="MathJax_Preview">
          N
        </span>
        <script type="math/tex">
//<![CDATA[
N
//]]>
        </script>
         trên cạnh 
        <span class="MathJax_Preview">
          CD
        </span>
        <script type="math/tex">
//<![CDATA[
CD
//]]>
        </script>
         sao cho đoạn thẳng 
        <span class="MathJax_Preview">
          M N
        </span>
        <script type="math/tex">
//<![CDATA[
M N
//]]>
        </script>
         chia hình tứ giác thành 2 hình tứ giác con có diện tích bằng nhau.
      </span>
    </blockquote>
  </div>
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://4.bp.blogspot.com/-onZfWlRKRoc/UjBjw1961GI/AAAAAAAAA64/ePDX5Dwj3Qg/s1600/quad2.png"/>
    </div>
    <br/>
  </div>
  
Ở bài toán này, chúng ta cần xác định điểm 
  <span class="MathJax_Preview">
    N
  </span>
  <script type="math/tex">
//<![CDATA[
N
//]]>
  </script>
   để cho hai hình tứ giác con 
  <span class="MathJax_Preview">
    AMND
  </span>
  <script type="math/tex">
//<![CDATA[
AMND
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    BMNC
  </span>
  <script type="math/tex">
//<![CDATA[
BMNC
//]]>
  </script>
   có diện tích bằng nhau 
  <span class="MathJax_Preview">
    s(AMND) = s(BMNC) .
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
s(AMND) = s(BMNC) .
//]]>
  </script>
   Hai hình tứ giác con này có một cạnh chung là 
  <span class="MathJax_Preview">
    MN
  </span>
  <script type="math/tex">
//<![CDATA[
MN
//]]>
  </script>
  , hai cạnh 
  <span class="MathJax_Preview">
    AM
  </span>
  <script type="math/tex">
//<![CDATA[
AM
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    BM
  </span>
  <script type="math/tex">
//<![CDATA[
BM
//]]>
  </script>
   nằm trên cùng một đường thẳng 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
  , còn hai cạnh 
  <span class="MathJax_Preview">
    DN
  </span>
  <script type="math/tex">
//<![CDATA[
DN
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    CN
  </span>
  <script type="math/tex">
//<![CDATA[
CN
//]]>
  </script>
   thì nằm trên cùng một đường thẳng 
  <span class="MathJax_Preview">
    CD
  </span>
  <script type="math/tex">
//<![CDATA[
CD
//]]>
  </script>
  . Nếu chúng ta biến hai hình 
  <i>
    tứ giác
  </i>
   con thành hai 
  <i>
    tam giác
  </i>
   thì có lẽ sẽ dễ dàng để so sánh hơn.
  <br/>
  <div>
    <br/>
  </div>
  <div>
    
Chúng ta sẽ làm như sau:
  </div>
  <div>
    <div style="text-align: justify;">
      <ul>
        <li>
          Từ 
          <span class="MathJax_Preview">
            A
          </span>
          <script type="math/tex">
//<![CDATA[
A
//]]>
          </script>
           kẻ một đường thẳng song song với 
          <span class="MathJax_Preview">
            MD
          </span>
          <script type="math/tex">
//<![CDATA[
MD
//]]>
          </script>
          , đường thẳng này cắt đường thẳng 
          <span class="MathJax_Preview">
            CD
          </span>
          <script type="math/tex">
//<![CDATA[
CD
//]]>
          </script>
           tại điểm 
          <span class="MathJax_Preview">
            P
          </span>
          <script type="math/tex">
//<![CDATA[
P
//]]>
          </script>
          .
        </li>
        <li>
          Từ 
          <span class="MathJax_Preview">
            B
          </span>
          <script type="math/tex">
//<![CDATA[
B
//]]>
          </script>
           kẻ một đường thẳng song song với 
          <span class="MathJax_Preview">
            MC
          </span>
          <script type="math/tex">
//<![CDATA[
MC
//]]>
          </script>
          , đường thẳng này cắt đường thẳng 
          <span class="MathJax_Preview">
            CD
          </span>
          <script type="math/tex">
//<![CDATA[
CD
//]]>
          </script>
           tại điểm 
          <span class="MathJax_Preview">
            Q
          </span>
          <script type="math/tex">
//<![CDATA[
Q
//]]>
          </script>
          .
        </li>
      </ul>
    </div>
    <div style="text-align: justify;">
      <div>
        <div class="separator" style="clear: both; text-align: center;">
          <img border="0" src="http://4.bp.blogspot.com/-JL3_DaSaHJ0/UjBlNsuYBhI/AAAAAAAAA7E/qoDjEAD8UkA/s1600/quad2b.png" height="203" width="400"/>
        </div>
        <br/>
        
Bởi vì 
        <span class="MathJax_Preview">
          AP
        </span>
        <script type="math/tex">
//<![CDATA[
AP
//]]>
        </script>
         song song với 
        <span class="MathJax_Preview">
          MD
        </span>
        <script type="math/tex">
//<![CDATA[
MD
//]]>
        </script>
        , chúng ta có 
        <span class="MathJax_Preview">
          s(AMD) = s(PMD)
        </span>
        <script type="math/tex">
//<![CDATA[
s(AMD) = s(PMD)
//]]>
        </script>
        , và vì vậy 
        <span class="MathJax_Preview">
          s(AMND) = s(MND) + s(AMD) = s(MND) + s(PMD) = s(MNP).
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
s(AMND) = s(MND) + s(AMD) = s(MND) + s(PMD) = s(MNP).
//]]>
        </script>
      </div>
      <div>
        <br/>
      </div>
      <div>
        
Tương tự, bởi vì 
        <span class="MathJax_Preview">
          BQ
        </span>
        <script type="math/tex">
//<![CDATA[
BQ
//]]>
        </script>
         song song với 
        <span class="MathJax_Preview">
          MC
        </span>
        <script type="math/tex">
//<![CDATA[
MC
//]]>
        </script>
        , chúng ta có 
        <span class="MathJax_Preview">
          s(BMC) = s(QMC)
        </span>
        <script type="math/tex">
//<![CDATA[
s(BMC) = s(QMC)
//]]>
        </script>
        , và vì vậy 
        <span class="MathJax_Preview">
          s(BMNC) =  s(MNC) + s(BMC) = s(MNC) + s(QMC) = s(MNQ).
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
s(BMNC) =  s(MNC) + s(BMC) = s(MNC) + s(QMC) = s(MNQ).
//]]>
        </script>
      </div>
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    
Vậy chúng ta đã biến đổi hai hình tứ giác con 
    <span class="MathJax_Preview">
      AMND
    </span>
    <script type="math/tex">
//<![CDATA[
AMND
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      BMNC
    </span>
    <script type="math/tex">
//<![CDATA[
BMNC
//]]>
    </script>
     thành hai tam giác có cùng diện tích 
    <span class="MathJax_Preview">
      MNP
    </span>
    <script type="math/tex">
//<![CDATA[
MNP
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      MNQ
    </span>
    <script type="math/tex">
//<![CDATA[
MNQ
//]]>
    </script>
    . Để hai hình tứ giác con 
    <span class="MathJax_Preview">
      AMND
    </span>
    <script type="math/tex">
//<![CDATA[
AMND
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      BMNC
    </span>
    <script type="math/tex">
//<![CDATA[
BMNC
//]]>
    </script>
     có diện tích bằng nhau thì 
    <span class="MathJax_Preview">
      s(MNP) = s(MNQ),
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
s(MNP) = s(MNQ),
//]]>
    </script>
     tức là 
    <span class="MathJax_Preview">
      N
    </span>
    <script type="math/tex">
//<![CDATA[
N
//]]>
    </script>
     phải là trung điểm của đoạn thẳng 
    <span class="MathJax_Preview">
      PQ
    </span>
    <script type="math/tex">
//<![CDATA[
PQ
//]]>
    </script>
    .
    <br/>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://4.bp.blogspot.com/-aKVr9dtVUn4/UjBncmyuJrI/AAAAAAAAA7Q/PhV2lqzHw-I/s1600/quad2c.png" height="203" width="400"/>
    </div>
    <br/>
    
Vậy chúng ta đã giải quyết được bài toán chia đôi tứ giác. Cách xác định điểm 
    <span class="MathJax_Preview">
      N
    </span>
    <script type="math/tex">
//<![CDATA[
N
//]]>
    </script>
     là như sau:
    <br/>
    <ul>
      <li>
        Qua 
        <span class="MathJax_Preview">
          A
        </span>
        <script type="math/tex">
//<![CDATA[
A
//]]>
        </script>
         kẻ đường thẳng song song với 
        <span class="MathJax_Preview">
          MD
        </span>
        <script type="math/tex">
//<![CDATA[
MD
//]]>
        </script>
         cắt đường thẳng 
        <span class="MathJax_Preview">
          CD
        </span>
        <script type="math/tex">
//<![CDATA[
CD
//]]>
        </script>
         tại điểm 
        <span class="MathJax_Preview">
          P
        </span>
        <script type="math/tex">
//<![CDATA[
P
//]]>
        </script>
        .
      </li>
      <li>
        Qua 
        <span class="MathJax_Preview">
          B
        </span>
        <script type="math/tex">
//<![CDATA[
B
//]]>
        </script>
         kẻ đường thẳng song song với 
        <span class="MathJax_Preview">
          MC
        </span>
        <script type="math/tex">
//<![CDATA[
MC
//]]>
        </script>
         cắt đường thẳng 
        <span class="MathJax_Preview">
          CD
        </span>
        <script type="math/tex">
//<![CDATA[
CD
//]]>
        </script>
         tại điểm 
        <span class="MathJax_Preview">
          Q
        </span>
        <script type="math/tex">
//<![CDATA[
Q
//]]>
        </script>
        .
      </li>
      <li>
        Điểm 
        <span class="MathJax_Preview">
          N
        </span>
        <script type="math/tex">
//<![CDATA[
N
//]]>
        </script>
         cần tìm chính là trung điểm của 
        <span class="MathJax_Preview">
          PQ
        </span>
        <script type="math/tex">
//<![CDATA[
PQ
//]]>
        </script>
        .
      </li>
    </ul>
  </div>
  <br/>
  
Giải quyết xong bài toán chia đôi tứ giác, chúng ta xem xét bài toán chia ba tứ giác.
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Bài toán chia ba tứ giác
  </span>
  <br/>
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Bài toán chia ba tứ giác.
      </b>
       Cho một hình tứ giác 
      <span class="MathJax_Preview">
        ABCD
      </span>
      <script type="math/tex">
//<![CDATA[
ABCD
//]]>
      </script>
       và hai điểm 
      <span class="MathJax_Preview">
        M_1
      </span>
      <script type="math/tex">
//<![CDATA[
M_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        M_2
      </span>
      <script type="math/tex">
//<![CDATA[
M_2
//]]>
      </script>
       nằm trên cạnh 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
      . Bằng thước và compa, hãy chỉ ra cách xác định hai điểm 
      <span class="MathJax_Preview">
        N_1
      </span>
      <script type="math/tex">
//<![CDATA[
N_1
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        N_2
      </span>
      <script type="math/tex">
//<![CDATA[
N_2
//]]>
      </script>
       trên cạnh 
      <span class="MathJax_Preview">
        CD
      </span>
      <script type="math/tex">
//<![CDATA[
CD
//]]>
      </script>
       sao cho các đoạn thẳng 
      <span class="MathJax_Preview">
        M_1 N_1
      </span>
      <script type="math/tex">
//<![CDATA[
M_1 N_1
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        M_2 N_2
      </span>
      <script type="math/tex">
//<![CDATA[
M_2 N_2
//]]>
      </script>
       chia hình tứ giác thành 3 hình tứ giác con có diện tích bằng nhau.
    </span>
  </blockquote>
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://2.bp.blogspot.com/-bDZt9xIn5d4/UjBrsM_CYmI/AAAAAAAAA7c/Alsa2NyydZk/s1600/quad3c.png"/>
    </div>
    <br/>
  </div>
  <div>
    <div>
      
Sau khi giải xong 
      <i>
        bài toán chia đôi tứ giác
      </i>
      , chúng ta thấy 
      <i>
        bài toán chia ba tứ giác
      </i>
       trở nên đơn giản. Chúng ta sử dụng kỹ thuật như trên để biến hình tứ giác con thành hình tam giác. Chúng ta làm như sau.
    </div>
  </div>
  <div>
    <div>
      <ul>
        <li>
          Qua 
          <span class="MathJax_Preview">
            A
          </span>
          <script type="math/tex">
//<![CDATA[
A
//]]>
          </script>
           kẻ đường thẳng song song với 
          <span class="MathJax_Preview">
            M_1 D
          </span>
          <script type="math/tex">
//<![CDATA[
M_1 D
//]]>
          </script>
           cắt đường thẳng 
          <span class="MathJax_Preview">
            CD
          </span>
          <script type="math/tex">
//<![CDATA[
CD
//]]>
          </script>
           tại điểm 
          <span class="MathJax_Preview">
            P
          </span>
          <script type="math/tex">
//<![CDATA[
P
//]]>
          </script>
          .
        </li>
        <li>
          Qua 
          <span class="MathJax_Preview">
            B
          </span>
          <script type="math/tex">
//<![CDATA[
B
//]]>
          </script>
           kẻ đường thẳng song song với 
          <span class="MathJax_Preview">
            M_1 C
          </span>
          <script type="math/tex">
//<![CDATA[
M_1 C
//]]>
          </script>
           cắt đường thẳng 
          <span class="MathJax_Preview">
            CD
          </span>
          <script type="math/tex">
//<![CDATA[
CD
//]]>
          </script>
           tại điểm 
          <span class="MathJax_Preview">
            Q
          </span>
          <script type="math/tex">
//<![CDATA[
Q
//]]>
          </script>
          .
        </li>
      </ul>
    </div>
  </div>
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://1.bp.blogspot.com/-Jt-ajWd3aW0/UjBr0sDPgTI/AAAAAAAAA7k/z528bR9LvHo/s1600/quad3a.png" height="203" width="400"/>
    </div>
    <br/>
    
Vậy 
    <span class="MathJax_Preview">
      s(A M_1 N_1 D) = s(M_1 N_1 P), ~~~s(B M_1 N_1 C) = s(M_1 N_1 Q).
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
s(A M_1 N_1 D) = s(M_1 N_1 P), ~~~s(B M_1 N_1 C) = s(M_1 N_1 Q).
//]]>
    </script>
     Chúng ta có 
    <span class="MathJax_Preview">
      s(M_1 N_1 P) = s(A M_1 N_1 D) = \frac{1}{2} s(B M_1 N_1 C) = \frac{1}{2} s(M_1 N_1 Q),
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
s(M_1 N_1 P) = s(A M_1 N_1 D) = \frac{1}{2} s(B M_1 N_1 C) = \frac{1}{2} s(M_1 N_1 Q),
//]]>
    </script>
     do đó 
    <span class="MathJax_Preview">
      N_1 P = \frac{1}{2} N_1 Q.
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
N_1 P = \frac{1}{2} N_1 Q.
//]]>
    </script>
    <br/>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://2.bp.blogspot.com/-vr4Pv-4sjVE/UjBs4PmZm7I/AAAAAAAAA7w/Quf9Igz2ppw/s1600/quad3b.png" height="203" width="400"/>
    </div>
    <br/>
  </div>
  <div>
    <div>
      
Vậy chúng ta xác định được điểm 
      <span class="MathJax_Preview">
        N_1
      </span>
      <script type="math/tex">
//<![CDATA[
N_1
//]]>
      </script>
      . Muốn xác định điểm 
      <span class="MathJax_Preview">
        N_1
      </span>
      <script type="math/tex">
//<![CDATA[
N_1
//]]>
      </script>
      , chúng ta chỉ cần chia đoạn thẳng 
      <span class="MathJax_Preview">
        PQ
      </span>
      <script type="math/tex">
//<![CDATA[
PQ
//]]>
      </script>
       ra làm ba phần bằng nhau.
    </div>
    <div>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://2.bp.blogspot.com/-FQ_TXfWrzHo/UjEAuWcJaXI/AAAAAAAAA8A/CqY7IB3rhsw/s1600/quad3bb.png" height="200" width="400"/>
      </div>
      <br/>
      
Có nhiều cách để chia ba đoạn thẳng, sau đây là một ví dụ:
      <br/>
      <ul>
        <li>
          Qua 
          <span class="MathJax_Preview">
            P
          </span>
          <script type="math/tex">
//<![CDATA[
P
//]]>
          </script>
           vẽ một đường thẳng bất kỳ rồi lần lượt lấy các điểm 
          <span class="MathJax_Preview">
            U
          </span>
          <script type="math/tex">
//<![CDATA[
U
//]]>
          </script>
          , 
          <span class="MathJax_Preview">
            V
          </span>
          <script type="math/tex">
//<![CDATA[
V
//]]>
          </script>
          , 
          <span class="MathJax_Preview">
            W
          </span>
          <script type="math/tex">
//<![CDATA[
W
//]]>
          </script>
           sao cho 
          <span class="MathJax_Preview">
            PU = UV = VW
          </span>
          <script type="math/tex">
//<![CDATA[
PU = UV = VW
//]]>
          </script>
          .
        </li>
        <li>
          Nối 
          <span class="MathJax_Preview">
            Q
          </span>
          <script type="math/tex">
//<![CDATA[
Q
//]]>
          </script>
           với 
          <span class="MathJax_Preview">
            W
          </span>
          <script type="math/tex">
//<![CDATA[
W
//]]>
          </script>
          .
        </li>
        <li>
          Qua 
          <span class="MathJax_Preview">
            U
          </span>
          <script type="math/tex">
//<![CDATA[
U
//]]>
          </script>
           vẽ đường thẳng song song với 
          <span class="MathJax_Preview">
            QW
          </span>
          <script type="math/tex">
//<![CDATA[
QW
//]]>
          </script>
           cắt đoạn 
          <span class="MathJax_Preview">
            PQ
          </span>
          <script type="math/tex">
//<![CDATA[
PQ
//]]>
          </script>
           tại 
          <span class="MathJax_Preview">
            N_1
          </span>
          <script type="math/tex">
//<![CDATA[
N_1
//]]>
          </script>
          .
        </li>
      </ul>
    </div>
    <div>
      
Một khi chúng ta xác định được điểm 
      <span class="MathJax_Preview">
        N_1
      </span>
      <script type="math/tex">
//<![CDATA[
N_1
//]]>
      </script>
       thì điểm 
      <span class="MathJax_Preview">
        N_2
      </span>
      <script type="math/tex">
//<![CDATA[
N_2
//]]>
      </script>
       cũng hoàn toàn được xác định. Bởi vì muốn tìm điểm 
      <span class="MathJax_Preview">
        N_2
      </span>
      <script type="math/tex">
//<![CDATA[
N_2
//]]>
      </script>
      , chúng ta chỉ cần giải bài toán chia đôi tứ giác 
      <span class="MathJax_Preview">
        M_1 B C N_1
      </span>
      <script type="math/tex">
//<![CDATA[
M_1 B C N_1
//]]>
      </script>
      !
    </div>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/--ToKs22ykvo/UjECIF_2GFI/AAAAAAAAA8M/j8rKTlBXYaE/s1600/quad3c2.png"/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    
Đến đây, có lẽ các bạn đã phát hiện ra cách giải bài toán tổng quát rồi phải không?! 
  </div>
  <div>
    <br/>
    <br/>
  </div>
  <div>
    <span style="color: #0b5394; font-size: large;">
      Bài toán tổng quát 
    </span>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Bài toán chia hình tứ giác tổng quát.
        </b>
         Cho một hình tứ giác 
        <span class="MathJax_Preview">
          ABCD
        </span>
        <script type="math/tex">
//<![CDATA[
ABCD
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          n
        </span>
        <script type="math/tex">
//<![CDATA[
n
//]]>
        </script>
         điểm 
        <span class="MathJax_Preview">
          M_1, \dots, M_n
        </span>
        <script type="math/tex">
//<![CDATA[
M_1, \dots, M_n
//]]>
        </script>
         theo thứ tự này nằm trên cạnh 
        <span class="MathJax_Preview">
          AB
        </span>
        <script type="math/tex">
//<![CDATA[
AB
//]]>
        </script>
        . Bằng thước và compa, hãy chỉ ra cách xác định 
        <span class="MathJax_Preview">
          n
        </span>
        <script type="math/tex">
//<![CDATA[
n
//]]>
        </script>
         điểm 
        <span class="MathJax_Preview">
          N_1, \dots, N_n
        </span>
        <script type="math/tex">
//<![CDATA[
N_1, \dots, N_n
//]]>
        </script>
         nằm trên cạnh 
        <span class="MathJax_Preview">
          CD
        </span>
        <script type="math/tex">
//<![CDATA[
CD
//]]>
        </script>
         sao cho các đoạn thẳng 
        <span class="MathJax_Preview">
          M_1 N_1, \dots, M_n N_n
        </span>
        <script type="math/tex">
//<![CDATA[
M_1 N_1, \dots, M_n N_n
//]]>
        </script>
         chia hình tứ giác thành 
        <span class="MathJax_Preview">
          n+1
        </span>
        <script type="math/tex">
//<![CDATA[
n+1
//]]>
        </script>
         hình tứ giác con có diện tích bằng nhau.
      </span>
    </blockquote>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://2.bp.blogspot.com/-BfcrmyF2pnw/UjEFV_f9M3I/AAAAAAAAA8Y/n5bWubRnNfI/s1600/quadn.png"/>
    </div>
    <br/>
  </div>
  <div>
    
Đầu tiên, chúng ta cần xác định điểm 
    <span class="MathJax_Preview">
      N_1
    </span>
    <script type="math/tex">
//<![CDATA[
N_1
//]]>
    </script>
     để 
    <span class="MathJax_Preview">
      s(A M_1 N_1 D) = \frac{1}{n} s(B M_1 N_1 C),
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
s(A M_1 N_1 D) = \frac{1}{n} s(B M_1 N_1 C),
//]]>
    </script>
     sau khi chúng ta có điểm 
    <span class="MathJax_Preview">
      N_1
    </span>
    <script type="math/tex">
//<![CDATA[
N_1
//]]>
    </script>
    , thì bài toán "chia hình tứ giác 
    <span class="MathJax_Preview">
      ABCD
    </span>
    <script type="math/tex">
//<![CDATA[
ABCD
//]]>
    </script>
     thành 
    <span class="MathJax_Preview">
      n+1
    </span>
    <script type="math/tex">
//<![CDATA[
n+1
//]]>
    </script>
     phần bằng nhau" trở thành bài toán "chia hình tứ giác 
    <span class="MathJax_Preview">
      M_1 BC N_1
    </span>
    <script type="math/tex">
//<![CDATA[
M_1 BC N_1
//]]>
    </script>
     thành 
    <span class="MathJax_Preview">
      n
    </span>
    <script type="math/tex">
//<![CDATA[
n
//]]>
    </script>
     phần bằng nhau"!
  </div>
  <div>
    <br/>
    <br/>
    <br/>
    <span style="color: purple; font-size: x-large;">
      C
    </span>
    húng ta tạm dừng ở đây. Hôm nay, chúng ta đã học về một bài toán dựng hình khá là thú vị. Chúng ta rút ra một kinh nghiệm rằng, muốn giải một bài toán phức tạp thì việc đầu tiên chúng ta có thể làm là 
    <i>
      đơn giản hoá bài toán
    </i>
    . Đôi khi giải quyết được các trường hợp đơn giản sẽ giúp chúng ta hiểu rõ hơn bài toán và gợi ý cho chúng ta cách giải quyết bài toán trong trường hợp tổng quát.
  </div>
  <div>
    <br/>
  </div>
  <div>
    <div>
      <br/>
    </div>
    <div>
      
Xin hẹn gặp lại các bạn ở kỳ sau.
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <i>
      Bài tập về nhà.
    </i>
  </div>
  <div>
    <div>
      <br/>
      
1. Cho một hình tứ giác 
      <span class="MathJax_Preview">
        ABCD
      </span>
      <script type="math/tex">
//<![CDATA[
ABCD
//]]>
      </script>
       và một điểm 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       nằm trên cạnh 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
      . Giả sử 
      <span class="MathJax_Preview">
        r
      </span>
      <script type="math/tex">
//<![CDATA[
r
//]]>
      </script>
       là một số hữu tỷ nằm trên đoạn 
      <span class="MathJax_Preview">
        (0,1)
      </span>
      <script type="math/tex">
//<![CDATA[
(0,1)
//]]>
      </script>
      . Bằng thước và compa, hãy chỉ ra cách xác định điểm 
      <span class="MathJax_Preview">
        N
      </span>
      <script type="math/tex">
//<![CDATA[
N
//]]>
      </script>
       trên cạnh 
      <span class="MathJax_Preview">
        CD
      </span>
      <script type="math/tex">
//<![CDATA[
CD
//]]>
      </script>
       sao cho 
      <span class="MathJax_Preview">
        s(AMND)= r ~s(ABCD).
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
s(AMND)= r ~s(ABCD).
//]]>
      </script>
    </div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://4.bp.blogspot.com/-onZfWlRKRoc/UjBjw1961GI/AAAAAAAAA64/ePDX5Dwj3Qg/s1600/quad2.png"/>
    </div>
    
Chứng minh rằng điểm 
    <span class="MathJax_Preview">
      N
    </span>
    <script type="math/tex">
//<![CDATA[
N
//]]>
    </script>
     tồn tại khi và chỉ khi 
    <span class="MathJax_Preview">
      s(AMD) \leq r ~s(ABCD) \leq s(AMCD).
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
s(AMD) \leq r ~s(ABCD) \leq s(AMCD).
//]]>
    </script>
    <br/>
    <br/>
    
2. Sử dụng bài toán 1 để giải 
    <i>
      bài toán chia hình tứ giác tổng quát
    </i>
     bằng cách quan sát 
    <span class="MathJax_Preview">
      s(A M_1 N_1 D) = \frac{1}{n+1} s(ABCD), ~~s(A M_2 N_2 D)= \frac{2}{n+1} s(ABCD), \dots
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
s(A M_1 N_1 D) = \frac{1}{n+1} s(ABCD), ~~s(A M_2 N_2 D)= \frac{2}{n+1} s(ABCD), \dots
//]]>
    </script>
    <br/>
    <div>
      <div>
        <div class="separator" style="clear: both; text-align: center;">
          <img border="0" src="http://2.bp.blogspot.com/-BfcrmyF2pnw/UjEFV_f9M3I/AAAAAAAAA8Y/n5bWubRnNfI/s1600/quadn.png"/>
        </div>
        <br/>
      </div>
      <div>
        
Tìm điều kiện cần và đủ để các điểm 
        <span class="MathJax_Preview">
          N_1, \dots, N_n
        </span>
        <script type="math/tex">
//<![CDATA[
N_1, \dots, N_n
//]]>
        </script>
         tồn tại.
      </div>
    </div>
  </div>
  <div class="separator" style="clear: both; text-align: justify;">
  </div>
  <div style="text-align: justify;">
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: justify;">
  </div>
  <div style="text-align: justify;">
    <br/>
  </div>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','71','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-130055754043655436">
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-02MXFsQSghI/VJdeEumB_EI/AAAAAAAAEg8/3nijeWABkrI/s1600/matthew5b.jpg" height="450" width="640"/>
  </div>
  <br/>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay chúng ta sẽ mở đầu một chuỗi bài về toán 
  <b>
    dựng hình
  </b>
  . Có những bài toán dựng hình trông đơn giản nhưng gần hai ngàn năm không ai giải được. Ví dụ như bài toán dựng 
  <b>
    đa giác đều
  </b>
   hay bài toán 
  <b>
    chia ba một góc
  </b>
  . Mãi đến thế kỷ 18-19 hai bài toán này mới được giải quyết hoàn toàn. Các nhà toán học phải sử dụng những công cụ rất hiện đại của đại số mới giải được nó.
  <br/>
  <br/>
  
Trong bài mở đầu này, chúng ta sẽ học về các bước 
  <i>
    dựng hình cơ bản
  </i>
   bằng thước và compa. Khi giải các bài toán dựng hình, chúng ta thừa nhận và dùng các bước dựng hình cơ bản này mà không cần phải giải thích cụ thể.
  <br/>
  <div>
    <br/>
  </div>
  <br/>
  <a name="more">
  </a>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Các phép dựng hình cơ bản
  </span>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Dựng đường trung trực của một đoạn thẳng
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://3.bp.blogspot.com/-meza1w207mQ/Uj-o_G6kB8I/AAAAAAAABJE/vw67OcSxePI/s1600/vuontoan-mathgarden-ruler-compas1.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://3.bp.blogspot.com/-meza1w207mQ/Uj-o_G6kB8I/AAAAAAAABJE/vw67OcSxePI/s1600/vuontoan-mathgarden-ruler-compas1.png" height="208" width="320"/>
    </a>
  </div>
  <br/>
  <blockquote class="tr_bq">
    
Cho trước đoạn thẳng 
    <span class="MathJax_Preview">
      AB
    </span>
    <script type="math/tex">
//<![CDATA[
AB
//]]>
    </script>
    . Để dựng 
    <b>
      đường trung trực
    </b>
     của 
    <span class="MathJax_Preview">
      AB
    </span>
    <script type="math/tex">
//<![CDATA[
AB
//]]>
    </script>
    , chúng ta làm như sau:
    <br/>
    <ul>
      <li>
        Lấy 
        <span class="MathJax_Preview">
          A
        </span>
        <script type="math/tex">
//<![CDATA[
A
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          B
        </span>
        <script type="math/tex">
//<![CDATA[
B
//]]>
        </script>
         làm tâm, dựng hai đường tròn 
        <i>
          có cùng bán kính
        </i>
         sao cho chúng cắt nhau tại hai điểm.
      </li>
    </ul>
    <ul>
      <li>
        Nối hai giao điểm của hai đường tròn này lại chúng ta sẽ có đường trung trực của 
        <span class="MathJax_Preview">
          AB
        </span>
        <script type="math/tex">
//<![CDATA[
AB
//]]>
        </script>
        .
      </li>
    </ul>
  </blockquote>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Dựng trung điểm của một đoạn thẳng
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://2.bp.blogspot.com/-FRrXPe69WOs/Uj-qkx4zM8I/AAAAAAAABJQ/FR8dp370Qr0/s1600/vuontoan-mathgarden-ruler-compas2.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://2.bp.blogspot.com/-FRrXPe69WOs/Uj-qkx4zM8I/AAAAAAAABJQ/FR8dp370Qr0/s1600/vuontoan-mathgarden-ruler-compas2.png" height="208" width="320"/>
    </a>
  </div>
  <br/>
  <blockquote class="tr_bq">
    
Cho trước đoạn thẳng 
    <span class="MathJax_Preview">
      AB
    </span>
    <script type="math/tex">
//<![CDATA[
AB
//]]>
    </script>
    . Để dựng 
    <b>
      trung điểm
    </b>
     của 
    <span class="MathJax_Preview">
      AB
    </span>
    <script type="math/tex">
//<![CDATA[
AB
//]]>
    </script>
    , chúng ta làm như sau:
    <br/>
    <ul>
      <li>
        Dựng đường trung trực của 
        <span class="MathJax_Preview">
          AB
        </span>
        <script type="math/tex">
//<![CDATA[
AB
//]]>
        </script>
        .
      </li>
    </ul>
    <ul>
      <li>
        Đường trung trực cắt 
        <span class="MathJax_Preview">
          AB
        </span>
        <script type="math/tex">
//<![CDATA[
AB
//]]>
        </script>
         tại điểm 
        <span class="MathJax_Preview">
          M
        </span>
        <script type="math/tex">
//<![CDATA[
M
//]]>
        </script>
         là trung điểm của 
        <span class="MathJax_Preview">
          AB
        </span>
        <script type="math/tex">
//<![CDATA[
AB
//]]>
        </script>
        .
      </li>
    </ul>
  </blockquote>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Qua một điểm, dựng đường thẳng vuông góc với một đường thẳng
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://3.bp.blogspot.com/-pFm5iKHQ0rM/Uj_FesaRugI/AAAAAAAABJs/94vCgGyViM8/s1600/vuontoan-mathgarden-ruler-compas3.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://3.bp.blogspot.com/-pFm5iKHQ0rM/Uj_FesaRugI/AAAAAAAABJs/94vCgGyViM8/s1600/vuontoan-mathgarden-ruler-compas3.png" height="246" width="320"/>
    </a>
  </div>
  <br/>
  <blockquote class="tr_bq">
    
Cho trước đường thẳng 
    <span class="MathJax_Preview">
      \ell
    </span>
    <script type="math/tex">
//<![CDATA[
\ell
//]]>
    </script>
     và một điểm 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
    . Để dựng đường thẳng 
    <b>
      đi qua
    </b>
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
    <b>
      vuông góc
    </b>
     với 
    <span class="MathJax_Preview">
      \ell
    </span>
    <script type="math/tex">
//<![CDATA[
\ell
//]]>
    </script>
    , chúng ta làm như sau:
    <br/>
    <ul>
      <li>
        Lấy 
        <span class="MathJax_Preview">
          A
        </span>
        <script type="math/tex">
//<![CDATA[
A
//]]>
        </script>
         làm tâm dựng một đường tròn sao cho đường tròn cắt đường thẳng 
        <span class="MathJax_Preview">
          \ell
        </span>
        <script type="math/tex">
//<![CDATA[
\ell
//]]>
        </script>
         tại hai điểm 
        <span class="MathJax_Preview">
          B
        </span>
        <script type="math/tex">
//<![CDATA[
B
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          C
        </span>
        <script type="math/tex">
//<![CDATA[
C
//]]>
        </script>
        .
      </li>
    </ul>
    <ul>
      <li>
        Dựng đường trung trực của 
        <span class="MathJax_Preview">
          BC
        </span>
        <script type="math/tex">
//<![CDATA[
BC
//]]>
        </script>
        , đây chính là đường thẳng đi qua 
        <span class="MathJax_Preview">
          A
        </span>
        <script type="math/tex">
//<![CDATA[
A
//]]>
        </script>
         vuông góc với 
        <span class="MathJax_Preview">
          \ell
        </span>
        <script type="math/tex">
//<![CDATA[
\ell
//]]>
        </script>
        .
      </li>
    </ul>
  </blockquote>
  <br/>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Qua một điểm, dựng đường thẳng song song với một đường thẳng
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://4.bp.blogspot.com/-P0dOsP1LoP0/Uj_J1zigfmI/AAAAAAAABJ4/Ep5dRVxUw0Y/s1600/vuontoan-mathgarden-ruler-compas4.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://4.bp.blogspot.com/-P0dOsP1LoP0/Uj_J1zigfmI/AAAAAAAABJ4/Ep5dRVxUw0Y/s1600/vuontoan-mathgarden-ruler-compas4.png" height="266" width="320"/>
    </a>
  </div>
  <br/>
  <blockquote class="tr_bq">
    
Cho trước đường thẳng 
    <span class="MathJax_Preview">
      \ell
    </span>
    <script type="math/tex">
//<![CDATA[
\ell
//]]>
    </script>
     và một điểm 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
    . Để dựng đường thẳng 
    <b>
      đi qua
    </b>
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
    <b>
      song song
    </b>
     với 
    <span class="MathJax_Preview">
      \ell
    </span>
    <script type="math/tex">
//<![CDATA[
\ell
//]]>
    </script>
    , chúng ta làm như sau:
    <br/>
    <ul>
      <li>
        Dựng đường thẳng 
        <span class="MathJax_Preview">
          t
        </span>
        <script type="math/tex">
//<![CDATA[
t
//]]>
        </script>
         đi qua 
        <span class="MathJax_Preview">
          A
        </span>
        <script type="math/tex">
//<![CDATA[
A
//]]>
        </script>
         vuông góc với 
        <span class="MathJax_Preview">
          \ell
        </span>
        <script type="math/tex">
//<![CDATA[
\ell
//]]>
        </script>
        .
      </li>
    </ul>
    <ul>
      <li>
        Dựng đường thẳng 
        <span class="MathJax_Preview">
          u
        </span>
        <script type="math/tex">
//<![CDATA[
u
//]]>
        </script>
         đi qua 
        <span class="MathJax_Preview">
          A
        </span>
        <script type="math/tex">
//<![CDATA[
A
//]]>
        </script>
         vuông góc với 
        <span class="MathJax_Preview">
          t
        </span>
        <script type="math/tex">
//<![CDATA[
t
//]]>
        </script>
        , đường thẳng 
        <span class="MathJax_Preview">
          u
        </span>
        <script type="math/tex">
//<![CDATA[
u
//]]>
        </script>
         chính là đường thẳng đi qua 
        <span class="MathJax_Preview">
          A
        </span>
        <script type="math/tex">
//<![CDATA[
A
//]]>
        </script>
         song song với 
        <span class="MathJax_Preview">
          \ell
        </span>
        <script type="math/tex">
//<![CDATA[
\ell
//]]>
        </script>
        .
      </li>
    </ul>
  </blockquote>
  <br/>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Dựng đường phân giác của một góc
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://2.bp.blogspot.com/-IGpDid4RZ_0/Uj_N1wTx_LI/AAAAAAAABKY/oW_HMXh-Ov8/s1600/vuontoan-mathgarden-ruler-compas5.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://2.bp.blogspot.com/-IGpDid4RZ_0/Uj_N1wTx_LI/AAAAAAAABKY/oW_HMXh-Ov8/s1600/vuontoan-mathgarden-ruler-compas5.png" height="182" width="320"/>
    </a>
  </div>
  <br/>
  <blockquote class="tr_bq">
    
Cho trước góc 
    <span class="MathJax_Preview">
      \angle xOy
    </span>
    <script type="math/tex">
//<![CDATA[
\angle xOy
//]]>
    </script>
    , để dựng 
    <b>
      đường phân giác
    </b>
     của góc này, chúng ta làm như sau:
    <br/>
    <ul>
      <li>
        Lấy 
        <span class="MathJax_Preview">
          O
        </span>
        <script type="math/tex">
//<![CDATA[
O
//]]>
        </script>
         làm tâm dựng một đường tròn cắt 
        <span class="MathJax_Preview">
          Ox
        </span>
        <script type="math/tex">
//<![CDATA[
Ox
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          Oy
        </span>
        <script type="math/tex">
//<![CDATA[
Oy
//]]>
        </script>
         tại 
        <span class="MathJax_Preview">
          A
        </span>
        <script type="math/tex">
//<![CDATA[
A
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          B
        </span>
        <script type="math/tex">
//<![CDATA[
B
//]]>
        </script>
        .
      </li>
    </ul>
    <ul>
      <li>
        Dựng đường trung trực của 
        <span class="MathJax_Preview">
          AB
        </span>
        <script type="math/tex">
//<![CDATA[
AB
//]]>
        </script>
        , đây chính là đường phân giác của góc 
        <span class="MathJax_Preview">
          \angle xOy
        </span>
        <script type="math/tex">
//<![CDATA[
\angle xOy
//]]>
        </script>
        .
      </li>
    </ul>
  </blockquote>
  <br/>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Dựng một góc bằng một góc cho trước
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://2.bp.blogspot.com/-Cx3keiDxOmU/Uj_aT92-3ZI/AAAAAAAABKs/jQtQnP9uc5w/s1600/vuontoan-mathgarden-ruler-compas6.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://2.bp.blogspot.com/-Cx3keiDxOmU/Uj_aT92-3ZI/AAAAAAAABKs/jQtQnP9uc5w/s1600/vuontoan-mathgarden-ruler-compas6.png" height="205" width="400"/>
    </a>
  </div>
  <br/>
  <blockquote class="tr_bq">
    
Cho trước góc 
    <span class="MathJax_Preview">
      \angle xOy
    </span>
    <script type="math/tex">
//<![CDATA[
\angle xOy
//]]>
    </script>
     và tia 
    <span class="MathJax_Preview">
      A \ell
    </span>
    <script type="math/tex">
//<![CDATA[
A \ell
//]]>
    </script>
    , để dựng đường thẳng qua 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
     hợp với 
    <span class="MathJax_Preview">
      A \ell
    </span>
    <script type="math/tex">
//<![CDATA[
A \ell
//]]>
    </script>
     một góc bằng góc 
    <span class="MathJax_Preview">
      \angle xOy
    </span>
    <script type="math/tex">
//<![CDATA[
\angle xOy
//]]>
    </script>
    , chúng ta làm như sau:
    <br/>
    <ul>
      <li>
        Lấy trên tia 
        <span class="MathJax_Preview">
          A \ell
        </span>
        <script type="math/tex">
//<![CDATA[
A \ell
//]]>
        </script>
         một điểm 
        <span class="MathJax_Preview">
          B
        </span>
        <script type="math/tex">
//<![CDATA[
B
//]]>
        </script>
        .
      </li>
    </ul>
    <ul>
      <li>
        Vẽ đường tròn tâm 
        <span class="MathJax_Preview">
          O
        </span>
        <script type="math/tex">
//<![CDATA[
O
//]]>
        </script>
         bán kính bằng 
        <span class="MathJax_Preview">
          AB
        </span>
        <script type="math/tex">
//<![CDATA[
AB
//]]>
        </script>
         cắt 
        <span class="MathJax_Preview">
          Ox
        </span>
        <script type="math/tex">
//<![CDATA[
Ox
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          Oy
        </span>
        <script type="math/tex">
//<![CDATA[
Oy
//]]>
        </script>
         tại 
        <span class="MathJax_Preview">
          D
        </span>
        <script type="math/tex">
//<![CDATA[
D
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          C
        </span>
        <script type="math/tex">
//<![CDATA[
C
//]]>
        </script>
        .
      </li>
    </ul>
    <ul>
      <li>
        Vẽ đường tròn tâm 
        <span class="MathJax_Preview">
          A
        </span>
        <script type="math/tex">
//<![CDATA[
A
//]]>
        </script>
         bán kính bằng 
        <span class="MathJax_Preview">
          AB
        </span>
        <script type="math/tex">
//<![CDATA[
AB
//]]>
        </script>
        , và đường tròn tâm 
        <span class="MathJax_Preview">
          B
        </span>
        <script type="math/tex">
//<![CDATA[
B
//]]>
        </script>
         bán kính bằng 
        <span class="MathJax_Preview">
          CD
        </span>
        <script type="math/tex">
//<![CDATA[
CD
//]]>
        </script>
        , hai đường tròn này cắt nhau tại 
        <span class="MathJax_Preview">
          E
        </span>
        <script type="math/tex">
//<![CDATA[
E
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          F
        </span>
        <script type="math/tex">
//<![CDATA[
F
//]]>
        </script>
        .
      </li>
    </ul>
    <ul>
      <li>
        Hai góc 
        <span class="MathJax_Preview">
          \angle EA \ell
        </span>
        <script type="math/tex">
//<![CDATA[
\angle EA \ell
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          \angle FA \ell
        </span>
        <script type="math/tex">
//<![CDATA[
\angle FA \ell
//]]>
        </script>
         chính là bằng 
        <span class="MathJax_Preview">
          \angle xOy
        </span>
        <script type="math/tex">
//<![CDATA[
\angle xOy
//]]>
        </script>
        .
      </li>
    </ul>
  </blockquote>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Dựng tiếp tuyến đến đường tròn
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://4.bp.blogspot.com/-i-a4nuOXNts/UkDKkbCvzpI/AAAAAAAABL8/jb7DQK1uOps/s1600/vuontoan-mathgarden-ruler-compas12.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://4.bp.blogspot.com/-i-a4nuOXNts/UkDKkbCvzpI/AAAAAAAABL8/jb7DQK1uOps/s1600/vuontoan-mathgarden-ruler-compas12.png" height="246" width="320"/>
    </a>
  </div>
  <br/>
  <blockquote class="tr_bq">
    
Cho trước một đường tròn tâm 
    <span class="MathJax_Preview">
      O
    </span>
    <script type="math/tex">
//<![CDATA[
O
//]]>
    </script>
     và một điểm 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
     nằm ở bên ngoài đường tròn, để dựng đường thẳng qua 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
    <b>
      tiếp tuyến
    </b>
     với đường tròn 
    <span class="MathJax_Preview">
      (O)
    </span>
    <script type="math/tex">
//<![CDATA[
(O)
//]]>
    </script>
    , chúng ta làm như sau:
    <br/>
    <ul>
      <li>
        Dựng trung điểm 
        <span class="MathJax_Preview">
          B
        </span>
        <script type="math/tex">
//<![CDATA[
B
//]]>
        </script>
         của 
        <span class="MathJax_Preview">
          OA
        </span>
        <script type="math/tex">
//<![CDATA[
OA
//]]>
        </script>
        .
      </li>
    </ul>
    <ul>
      <li>
        Lấy 
        <span class="MathJax_Preview">
          B
        </span>
        <script type="math/tex">
//<![CDATA[
B
//]]>
        </script>
         làm tâm vẽ đường tròn bán kính bằng 
        <span class="MathJax_Preview">
          AB
        </span>
        <script type="math/tex">
//<![CDATA[
AB
//]]>
        </script>
        , đường tròn này cắt đường tròn 
        <span class="MathJax_Preview">
          (O)
        </span>
        <script type="math/tex">
//<![CDATA[
(O)
//]]>
        </script>
         tại hai điểm 
        <span class="MathJax_Preview">
          C
        </span>
        <script type="math/tex">
//<![CDATA[
C
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          D
        </span>
        <script type="math/tex">
//<![CDATA[
D
//]]>
        </script>
        .
      </li>
    </ul>
    <ul>
      <li>
        Hai đường thẳng 
        <span class="MathJax_Preview">
          AC
        </span>
        <script type="math/tex">
//<![CDATA[
AC
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          AD
        </span>
        <script type="math/tex">
//<![CDATA[
AD
//]]>
        </script>
         chính là 
        <i>
          tiếp tuyến
        </i>
         của đường tròn 
        <span class="MathJax_Preview">
          (O)
        </span>
        <script type="math/tex">
//<![CDATA[
(O)
//]]>
        </script>
        .
      </li>
    </ul>
  </blockquote>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Một vài ví dụ dựng hình
  </span>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Ví dụ 1.
    </span>
  </b>
   Cho trước đoạn thẳng 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
  . Bằng thước và compa, chia đều đoạn thẳng này thành 
  <i>
    năm phần bằng nhau
  </i>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://4.bp.blogspot.com/-3Snnck4Mcm0/Uj_mBYnEzMI/AAAAAAAABLU/wcn-lMaJwwI/s1600/vuontoan-mathgarden-ruler-compas9.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://4.bp.blogspot.com/-3Snnck4Mcm0/Uj_mBYnEzMI/AAAAAAAABLU/wcn-lMaJwwI/s1600/vuontoan-mathgarden-ruler-compas9.png" height="36" width="320"/>
    </a>
  </div>
  <br/>
  <b>
    <span style="color: purple;">
      Cách dựng:
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://3.bp.blogspot.com/--bV_ICl_CcM/Uj_jGc_sbKI/AAAAAAAABK8/TTXcICfsyIw/s1600/vuontoan-mathgarden-ruler-compas7.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://3.bp.blogspot.com/--bV_ICl_CcM/Uj_jGc_sbKI/AAAAAAAABK8/TTXcICfsyIw/s1600/vuontoan-mathgarden-ruler-compas7.png" height="196" width="320"/>
    </a>
  </div>
  <ul>
    <li>
      Qua 
      <span class="MathJax_Preview">
        A
      </span>
      <script type="math/tex">
//<![CDATA[
A
//]]>
      </script>
       vẽ một tia bất kỳ và dùng compa dựng các điểm 
      <span class="MathJax_Preview">
        C_1
      </span>
      <script type="math/tex">
//<![CDATA[
C_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C_2
      </span>
      <script type="math/tex">
//<![CDATA[
C_2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C_3
      </span>
      <script type="math/tex">
//<![CDATA[
C_3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C_4
      </span>
      <script type="math/tex">
//<![CDATA[
C_4
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C_5
      </span>
      <script type="math/tex">
//<![CDATA[
C_5
//]]>
      </script>
       trên tia này thoã mãn 
      <span class="MathJax_Preview">
        AC_1 = C_1C_2=C_2C_3=C_3C_4=C_4C_5
      </span>
      <script type="math/tex">
//<![CDATA[
AC_1 = C_1C_2=C_2C_3=C_3C_4=C_4C_5
//]]>
      </script>
      .
    </li>
    <li>
      Nối 
      <span class="MathJax_Preview">
        BC_5
      </span>
      <script type="math/tex">
//<![CDATA[
BC_5
//]]>
      </script>
      .
    </li>
    <li>
      Dựng các đường thẳng lần lượt qua 
      <span class="MathJax_Preview">
        C_1
      </span>
      <script type="math/tex">
//<![CDATA[
C_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C_2
      </span>
      <script type="math/tex">
//<![CDATA[
C_2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C_3
      </span>
      <script type="math/tex">
//<![CDATA[
C_3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C_4
      </span>
      <script type="math/tex">
//<![CDATA[
C_4
//]]>
      </script>
       song song với 
      <span class="MathJax_Preview">
        BC_5
      </span>
      <script type="math/tex">
//<![CDATA[
BC_5
//]]>
      </script>
       và cắt 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
       tại các điểm 
      <span class="MathJax_Preview">
        D_1
      </span>
      <script type="math/tex">
//<![CDATA[
D_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        D_2
      </span>
      <script type="math/tex">
//<![CDATA[
D_2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        D_3
      </span>
      <script type="math/tex">
//<![CDATA[
D_3
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        D_4
      </span>
      <script type="math/tex">
//<![CDATA[
D_4
//]]>
      </script>
      .
    </li>
    <li>
      Chúng ta có 
      <span class="MathJax_Preview">
        AD_1 = D_1D_2=D_2D_3=D_3D_4=D_4B
      </span>
      <script type="math/tex">
//<![CDATA[
AD_1 = D_1D_2=D_2D_3=D_3D_4=D_4B
//]]>
      </script>
      .
    </li>
  </ul>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Ví dụ 2.
    </span>
  </b>
   Cho trước góc 
  <span class="MathJax_Preview">
    xOy
  </span>
  <script type="math/tex">
//<![CDATA[
xOy
//]]>
  </script>
   và một điểm 
  <span class="MathJax_Preview">
    M
  </span>
  <script type="math/tex">
//<![CDATA[
M
//]]>
  </script>
  . Bằng thước và compa, dựng điểm 
  <span class="MathJax_Preview">
    A
  </span>
  <script type="math/tex">
//<![CDATA[
A
//]]>
  </script>
   trên 
  <span class="MathJax_Preview">
    Ox
  </span>
  <script type="math/tex">
//<![CDATA[
Ox
//]]>
  </script>
   và điểm 
  <span class="MathJax_Preview">
    B
  </span>
  <script type="math/tex">
//<![CDATA[
B
//]]>
  </script>
   trên 
  <span class="MathJax_Preview">
    Oy
  </span>
  <script type="math/tex">
//<![CDATA[
Oy
//]]>
  </script>
   sao cho 
  <span class="MathJax_Preview">
    M
  </span>
  <script type="math/tex">
//<![CDATA[
M
//]]>
  </script>
   là 
  <b>
    trung điểm
  </b>
   của 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://4.bp.blogspot.com/-LmCtanr9XcE/UkDXugYOArI/AAAAAAAABMM/boWyzg7wQiY/s1600/vuontoan-mathgarden-ruler-compas14.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://4.bp.blogspot.com/-LmCtanr9XcE/UkDXugYOArI/AAAAAAAABMM/boWyzg7wQiY/s1600/vuontoan-mathgarden-ruler-compas14.png" height="165" width="200"/>
    </a>
  </div>
  <br/>
  <b>
    <span style="color: purple;">
      Cách dựng:
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://1.bp.blogspot.com/-CMp2ytlbhlE/UkDX14JJT7I/AAAAAAAABMU/O4i-z-TNdwM/s1600/vuontoan-mathgarden-ruler-compas13.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://1.bp.blogspot.com/-CMp2ytlbhlE/UkDX14JJT7I/AAAAAAAABMU/O4i-z-TNdwM/s1600/vuontoan-mathgarden-ruler-compas13.png" height="161" width="200"/>
    </a>
  </div>
  <br/>
  <br/>
  <ul>
    <li>
      Vẽ đường thẳng 
      <span class="MathJax_Preview">
        OM
      </span>
      <script type="math/tex">
//<![CDATA[
OM
//]]>
      </script>
       và dùng compa dựng điểm 
      <span class="MathJax_Preview">
        N
      </span>
      <script type="math/tex">
//<![CDATA[
N
//]]>
      </script>
       nằm trên đường thẳng này sao cho 
      <span class="MathJax_Preview">
        OM=MN
      </span>
      <script type="math/tex">
//<![CDATA[
OM=MN
//]]>
      </script>
      .
    </li>
    <li>
      Qua 
      <span class="MathJax_Preview">
        N
      </span>
      <script type="math/tex">
//<![CDATA[
N
//]]>
      </script>
       dựng đường thẳng song song với 
      <span class="MathJax_Preview">
        Oy
      </span>
      <script type="math/tex">
//<![CDATA[
Oy
//]]>
      </script>
       cắt 
      <span class="MathJax_Preview">
        Ox
      </span>
      <script type="math/tex">
//<![CDATA[
Ox
//]]>
      </script>
       tại điểm 
      <span class="MathJax_Preview">
        A
      </span>
      <script type="math/tex">
//<![CDATA[
A
//]]>
      </script>
      .
    </li>
    <li>
      Qua 
      <span class="MathJax_Preview">
        N
      </span>
      <script type="math/tex">
//<![CDATA[
N
//]]>
      </script>
       dựng đường thẳng song song với 
      <span class="MathJax_Preview">
        Ox
      </span>
      <script type="math/tex">
//<![CDATA[
Ox
//]]>
      </script>
       cắt 
      <span class="MathJax_Preview">
        Oy
      </span>
      <script type="math/tex">
//<![CDATA[
Oy
//]]>
      </script>
       tại điểm 
      <span class="MathJax_Preview">
        B
      </span>
      <script type="math/tex">
//<![CDATA[
B
//]]>
      </script>
      .
    </li>
    <li>
      Tứ giác 
      <span class="MathJax_Preview">
        OANB
      </span>
      <script type="math/tex">
//<![CDATA[
OANB
//]]>
      </script>
       là 
      <i>
        hình bình hành
      </i>
       nên trung điểm 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       của đường chéo 
      <span class="MathJax_Preview">
        ON
      </span>
      <script type="math/tex">
//<![CDATA[
ON
//]]>
      </script>
       cũng chính là trung điểm của đường chéo 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
      .
    </li>
  </ul>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Ví dụ 3.
    </span>
  </b>
   Cho trước tam giác 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
  . Bằng thước và compa, dựng một 
  <b>
    hình vuông
  </b>
  <span class="MathJax_Preview">
    PQRS
  </span>
  <script type="math/tex">
//<![CDATA[
PQRS
//]]>
  </script>
   sao cho đỉnh 
  <span class="MathJax_Preview">
    Q
  </span>
  <script type="math/tex">
//<![CDATA[
Q
//]]>
  </script>
   nằm trên cạnh 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
  , đỉnh 
  <span class="MathJax_Preview">
    R
  </span>
  <script type="math/tex">
//<![CDATA[
R
//]]>
  </script>
   nằm trên cạnh 
  <span class="MathJax_Preview">
    AC
  </span>
  <script type="math/tex">
//<![CDATA[
AC
//]]>
  </script>
  , và hai đỉnh 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    S
  </span>
  <script type="math/tex">
//<![CDATA[
S
//]]>
  </script>
   nằm trên cạnh 
  <span class="MathJax_Preview">
    BC
  </span>
  <script type="math/tex">
//<![CDATA[
BC
//]]>
  </script>
  .
  <br/>
  <div>
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://4.bp.blogspot.com/-5sCvk4R3I1c/Uj_onBeKggI/AAAAAAAABLg/jigkIkLQ7wA/s1600/vuontoan-mathgarden-ruler-compas10.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://4.bp.blogspot.com/-5sCvk4R3I1c/Uj_onBeKggI/AAAAAAAABLg/jigkIkLQ7wA/s1600/vuontoan-mathgarden-ruler-compas10.png" height="180" width="320"/>
    </a>
  </div>
  <br/>
  <b>
    <span style="color: purple;">
      Cách dựng:
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://2.bp.blogspot.com/-LJajO7PzxLM/Uj_qah3ZWBI/AAAAAAAABLs/QakGpd6CTVw/s1600/vuontoan-mathgarden-ruler-compas11.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://2.bp.blogspot.com/-LJajO7PzxLM/Uj_qah3ZWBI/AAAAAAAABLs/QakGpd6CTVw/s1600/vuontoan-mathgarden-ruler-compas11.png" height="178" width="320"/>
    </a>
  </div>
  <br/>
  <br/>
  <ul>
    <li>
      Lấy điểm 
      <span class="MathJax_Preview">
        U
      </span>
      <script type="math/tex">
//<![CDATA[
U
//]]>
      </script>
       trên cạnh 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
      .
    </li>
    <li>
      Vẽ đường vuông góc 
      <span class="MathJax_Preview">
        UV
      </span>
      <script type="math/tex">
//<![CDATA[
UV
//]]>
      </script>
       xuống 
      <span class="MathJax_Preview">
        BC
      </span>
      <script type="math/tex">
//<![CDATA[
BC
//]]>
      </script>
      .
    </li>
    <li>
      Dùng compa dựng điểm 
      <span class="MathJax_Preview">
        F
      </span>
      <script type="math/tex">
//<![CDATA[
F
//]]>
      </script>
       nằm trên tia 
      <span class="MathJax_Preview">
        VC
      </span>
      <script type="math/tex">
//<![CDATA[
VC
//]]>
      </script>
       sao cho 
      <span class="MathJax_Preview">
        VF=VU
      </span>
      <script type="math/tex">
//<![CDATA[
VF=VU
//]]>
      </script>
      .
    </li>
    <li>
      Dựng hình vuông 
      <span class="MathJax_Preview">
        UVFE
      </span>
      <script type="math/tex">
//<![CDATA[
UVFE
//]]>
      </script>
      .
    </li>
    <li>
      Đường thẳng 
      <span class="MathJax_Preview">
        BE
      </span>
      <script type="math/tex">
//<![CDATA[
BE
//]]>
      </script>
       cắt 
      <span class="MathJax_Preview">
        AC
      </span>
      <script type="math/tex">
//<![CDATA[
AC
//]]>
      </script>
       tại 
      <span class="MathJax_Preview">
        R
      </span>
      <script type="math/tex">
//<![CDATA[
R
//]]>
      </script>
      .
    </li>
    <li>
      Vẽ đường vuông góc 
      <span class="MathJax_Preview">
        RS
      </span>
      <script type="math/tex">
//<![CDATA[
RS
//]]>
      </script>
       xuống 
      <span class="MathJax_Preview">
        BC
      </span>
      <script type="math/tex">
//<![CDATA[
BC
//]]>
      </script>
      .
    </li>
    <li>
      Dùng compa dựng điểm 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       nằm trên tia 
      <span class="MathJax_Preview">
        SB
      </span>
      <script type="math/tex">
//<![CDATA[
SB
//]]>
      </script>
       sao cho 
      <span class="MathJax_Preview">
        SP=SR
      </span>
      <script type="math/tex">
//<![CDATA[
SP=SR
//]]>
      </script>
      .
    </li>
    <li>
      Dựng hình vuông 
      <span class="MathJax_Preview">
        PQRS
      </span>
      <script type="math/tex">
//<![CDATA[
PQRS
//]]>
      </script>
      .
    </li>
  </ul>
  <br/>
  <br/>
  <br/>
  
Chúng ta tạm dừng ở đây. Kỳ sau chúng ta tiếp tục học về dựng hình. Hẹn gặp lại các bạn.
  <br/>
  <br/>
  <br/>
  <br/>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Bằng 
  <b>
    thước và compa
  </b>
  , hãy chỉ ra cách dựng 
  <i>
    tam giác đều
  </i>
  , 
  <i>
    hình vuông
  </i>
  , hình 
  <i>
    lục giác đều
  </i>
   (6 cạnh) và hình 
  <i>
    bát giác đều
  </i>
   (8 cạnh).
  <br/>
  <br/>
  <br/>
  
2. Cho trước hai đường tròn, bằng 
  <b>
    thước và compa
  </b>
  , hãy chỉ ra cách dựng các đường 
  <b>
    tiếp tuyến chung
  </b>
   của hai đường tròn này.
  <br/>
  <br/>
  <br/>
  
3. Cho trước hai đoạn thẳng có độ dài là 
  <span class="MathJax_Preview">
    a
  </span>
  <script type="math/tex">
//<![CDATA[
a
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    b
  </span>
  <script type="math/tex">
//<![CDATA[
b
//]]>
  </script>
  , bằng 
  <b>
    thước và compa
  </b>
  , hãy chỉ ra cách dựng một đoạn thẳng có độ dài bằng 
  <span class="MathJax_Preview">
    \sqrt{ab}
  </span>
  <script type="math/tex">
//<![CDATA[
\sqrt{ab}
//]]>
  </script>
  .
  <br/>
  <br/>
  <br/>
  
4. Chứng minh rằng 
  <span class="MathJax_Preview">
    \cos{\frac{\pi}{5}} = \frac{1 + \sqrt{5}}{4}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\cos{\frac{\pi}{5}} = \frac{1 + \sqrt{5}}{4}
//]]>
  </script>
  <br/>
  
từ đó bằng 
  <b>
    thước và compa
  </b>
  , hãy chỉ ra cách dựng một 
  <b>
    ngũ giác đều
  </b>
  .
  <br/>
  <br/>
  <br/>
  
5. Cho một hình tứ giác 
  <span class="MathJax_Preview">
    ABCD
  </span>
  <script type="math/tex">
//<![CDATA[
ABCD
//]]>
  </script>
   và bốn điểm 
  <span class="MathJax_Preview">
    M_1
  </span>
  <script type="math/tex">
//<![CDATA[
M_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_2
  </span>
  <script type="math/tex">
//<![CDATA[
M_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_3
  </span>
  <script type="math/tex">
//<![CDATA[
M_3
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_4
  </span>
  <script type="math/tex">
//<![CDATA[
M_4
//]]>
  </script>
   theo thứ tự này nằm trên cạnh 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
  . Bằng 
  <b>
    thước và compa
  </b>
  , hãy chỉ ra cách xác định bốn điểm 
  <span class="MathJax_Preview">
    N_1
  </span>
  <script type="math/tex">
//<![CDATA[
N_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    N_2
  </span>
  <script type="math/tex">
//<![CDATA[
N_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    N_3
  </span>
  <script type="math/tex">
//<![CDATA[
N_3
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    N_4
  </span>
  <script type="math/tex">
//<![CDATA[
N_4
//]]>
  </script>
   nằm trên cạnh 
  <span class="MathJax_Preview">
    CD
  </span>
  <script type="math/tex">
//<![CDATA[
CD
//]]>
  </script>
   sao cho các đoạn thẳng 
  <span class="MathJax_Preview">
    M_1 N_1
  </span>
  <script type="math/tex">
//<![CDATA[
M_1 N_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_2 N_2
  </span>
  <script type="math/tex">
//<![CDATA[
M_2 N_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_3 N_3
  </span>
  <script type="math/tex">
//<![CDATA[
M_3 N_3
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    M_4 N_4
  </span>
  <script type="math/tex">
//<![CDATA[
M_4 N_4
//]]>
  </script>
   chia hình tứ giác thành 5 phần có 
  <b>
    diện tích bằng nhau
  </b>
  .
  <br/>
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://3.bp.blogspot.com/-okhOtYXPsFo/Ui7E6CO2lDI/AAAAAAAAA5w/gvdHXnC0X0k/s1600/quadarea1.png" height="226" width="320"/>
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
    
6. Cho trước hai điểm 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      B
    </span>
    <script type="math/tex">
//<![CDATA[
B
//]]>
    </script>
    , chỉ bằng compa (
    <b>
      không dùng thước
    </b>
    ), hãy chỉ ra cách dựng các điểm 
    <span class="MathJax_Preview">
      D_1
    </span>
    <script type="math/tex">
//<![CDATA[
D_1
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      D_2
    </span>
    <script type="math/tex">
//<![CDATA[
D_2
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      D_3
    </span>
    <script type="math/tex">
//<![CDATA[
D_3
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      D_4
    </span>
    <script type="math/tex">
//<![CDATA[
D_4
//]]>
    </script>
     trên đoạn thẳng 
    <span class="MathJax_Preview">
      AB
    </span>
    <script type="math/tex">
//<![CDATA[
AB
//]]>
    </script>
     để chúng chia đều đoạn thẳng này thành 
    <i>
      năm phần bằng nhau
    </i>
    .
  </div>
  <div>
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://4.bp.blogspot.com/-p2rDXDQaB9M/Uj_lBekQjpI/AAAAAAAABLI/f_vBdb-lG7o/s1600/vuontoan-mathgarden-ruler-compas8.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://4.bp.blogspot.com/-p2rDXDQaB9M/Uj_lBekQjpI/AAAAAAAABLI/f_vBdb-lG7o/s1600/vuontoan-mathgarden-ruler-compas8.png" height="38" width="320"/>
    </a>
  </div>
  <div>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-xRwjZ9yQeqk/UyjIe05IYwI/AAAAAAAACeY/T5m0EoQGzW8/s1600/francisbd.png" height="260" width="400"/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','62','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-6979248134957985553">
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  on trai tôi - James - muốn hỏi các bạn câu hỏi sau:
  <br/>
  <blockquote class="tr_bq">
    <span style="color: #0b5394; font-family: Georgia, Times New Roman, serif; font-size: large;">
      bạn có thể nhìn thấy bao nhiêu hình tam giác trong hình sau?
    </span>
  </blockquote>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-P6JyZP3slJA/UklM0RcTXmI/AAAAAAAABY0/exyU96hEZ48/s1600/vuontoan-mathgarden-james-question.png"/>
  </div>
  <div>
    <br/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','57','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-3600537317296324943">
  <span style="color: purple; font-size: x-large;">
    K
  </span>
  ỳ trước chúng ta đã trình bày 
  <a href="http://vuontoanblog.blogspot.com/2013/09/pascal-butterfly.html" target="_blank">
    một cách chứng minh đơn giản
  </a>
   cho 
  <b>
    <span style="color: purple;">
      bài toán con bướm
    </span>
  </b>
   dựa trên 
  <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum2.html" target="_blank">
    định lý lục giác Pascal
  </a>
  . Hôm nay chúng ta sẽ liệt kê một vài cách chứng minh khác dưới dạng bài tập để bạn đọc có thể rèn luyện kỹ năng giải toán.
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-3fx8c2KUmuQ/UifZFRQt1zI/AAAAAAAAA2U/XshV9i_iUow/s1600/bf1.png"/>
  </div>
  <div>
    <br/>
  </div>
  <a name="more">
  </a>
  <br/>
  
Trước hết, chúng ta phát biểu 
  <span style="color: purple;">
    bài toán con bướm
  </span>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Bài toán con bướm.
      </b>
       Giả sử 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       là trung điểm của dây cung 
      <span class="MathJax_Preview">
        XY
      </span>
      <script type="math/tex">
//<![CDATA[
XY
//]]>
      </script>
       trên đường tròn tâm 
      <span class="MathJax_Preview">
        O
      </span>
      <script type="math/tex">
//<![CDATA[
O
//]]>
      </script>
      . Qua 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       kẻ hai dây cung 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        CD
      </span>
      <script type="math/tex">
//<![CDATA[
CD
//]]>
      </script>
      . Gọi 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        Q
      </span>
      <script type="math/tex">
//<![CDATA[
Q
//]]>
      </script>
       lần lượt là giao điểm của đường thẳng 
      <span class="MathJax_Preview">
        XY
      </span>
      <script type="math/tex">
//<![CDATA[
XY
//]]>
      </script>
       với hai đường thẳng 
      <span class="MathJax_Preview">
        AD
      </span>
      <script type="math/tex">
//<![CDATA[
AD
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        BC
      </span>
      <script type="math/tex">
//<![CDATA[
BC
//]]>
      </script>
      . Chứng minh rằng 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       là trung điểm của 
      <span class="MathJax_Preview">
        PQ
      </span>
      <script type="math/tex">
//<![CDATA[
PQ
//]]>
      </script>
      .
    </span>
  </blockquote>
  <div>
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-3fx8c2KUmuQ/UifZFRQt1zI/AAAAAAAAA2U/XshV9i_iUow/s1600/bf1.png"/>
  </div>
  <div>
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    
Chúng ta thấy hình vẽ trên giống như hình một 
    <i>
      con bướm
    </i>
     với hai cánh giao nhau tại điểm 
    <span class="MathJax_Preview">
      M
    </span>
    <script type="math/tex">
//<![CDATA[
M
//]]>
    </script>
    . Đó là lý do tại sao bài toán này mang tên là bài toán con bướm.
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  
Bài toán con bướm có rất nhiều cách chứng minh. Các cách chứng minh sau đây lấy từ hai bài báo:
  <br/>
  <ul>
    <li>
      <b>
        Leon Bankoff
      </b>
      , 
      <i>
        The metamorphosis of the butterfly problem
      </i>
      , Mathematics Magazine, vol. 60, no. 4, Oct 1987, p. 195-210.
    </li>
  </ul>
  <ul>
    <li>
      <b>
        Greg Markowsky
      </b>
      , 
      <i>
        Pascals hexagon theorem implies the butterfly theorem
      </i>
      , Mathematics Magazine, vol. 84, no. 1, Feb 2011, p. 56-62.
    </li>
  </ul>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Bài toán 1.
    </span>
  </b>
   (Greg Markowsky, đăng trên 
  <i>
    Mathematics Magazine
  </i>
  , 2011)
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-VNIIQXGZPdI/UjJjuDrtntI/AAAAAAAAA9Y/lYHrkLpGqfg/s1600/vuontoan_mathgarden_butterfly1.png"/>
  </div>
  
Giả sử 
  <span class="MathJax_Preview">
    IJ
  </span>
  <script type="math/tex">
//<![CDATA[
IJ
//]]>
  </script>
   là một đường kính của đường tròn 
  <span class="MathJax_Preview">
    (O)
  </span>
  <script type="math/tex">
//<![CDATA[
(O)
//]]>
  </script>
  . 
  <span class="MathJax_Preview">
    M
  </span>
  <script type="math/tex">
//<![CDATA[
M
//]]>
  </script>
   là một điểm trên 
  <span class="MathJax_Preview">
    IJ
  </span>
  <script type="math/tex">
//<![CDATA[
IJ
//]]>
  </script>
  . Hai điểm 
  <span class="MathJax_Preview">
    U
  </span>
  <script type="math/tex">
//<![CDATA[
U
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    V
  </span>
  <script type="math/tex">
//<![CDATA[
V
//]]>
  </script>
   trên đường tròn gọi là 
  <b>
    hai điểm phản chiếu
  </b>
   qua 
  <span class="MathJax_Preview">
    M
  </span>
  <script type="math/tex">
//<![CDATA[
M
//]]>
  </script>
   nếu chúng ở về cùng một phía của 
  <span class="MathJax_Preview">
    IJ
  </span>
  <script type="math/tex">
//<![CDATA[
IJ
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    \angle IMU = \angle JMV
  </span>
  <script type="math/tex">
//<![CDATA[
\angle IMU = \angle JMV
//]]>
  </script>
  . Chứng minh bổ đề sau.
  <br/>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Bổ đề.
      </b>
       Nếu 
      <span class="MathJax_Preview">
        U
      </span>
      <script type="math/tex">
//<![CDATA[
U
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        V
      </span>
      <script type="math/tex">
//<![CDATA[
V
//]]>
      </script>
      <b>
        phản chiếu
      </b>
       qua 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        Z
      </span>
      <script type="math/tex">
//<![CDATA[
Z
//]]>
      </script>
       là giao điểm của 
      <span class="MathJax_Preview">
        IV
      </span>
      <script type="math/tex">
//<![CDATA[
IV
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        JU
      </span>
      <script type="math/tex">
//<![CDATA[
JU
//]]>
      </script>
       thì 
      <span class="MathJax_Preview">
        ZM
      </span>
      <script type="math/tex">
//<![CDATA[
ZM
//]]>
      </script>
       vuông góc với 
      <span class="MathJax_Preview">
        IJ
      </span>
      <script type="math/tex">
//<![CDATA[
IJ
//]]>
      </script>
      .
    </span>
     
  </blockquote>
  <blockquote class="tr_bq">
    
(
    <i>
      Gợi ý
    </i>
    . 
    <i>
      Giả sử đường thẳng 
      <span class="MathJax_Preview">
        UM
      </span>
      <script type="math/tex">
//<![CDATA[
UM
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        VM
      </span>
      <script type="math/tex">
//<![CDATA[
VM
//]]>
      </script>
       cắt đường tròn tại 
      <span class="MathJax_Preview">
        V
      </span>
      <script type="math/tex">
//<![CDATA[
V
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        U
      </span>
      <script type="math/tex">
//<![CDATA[
U
//]]>
      </script>
      . Giả sử 
      <span class="MathJax_Preview">
        IV
      </span>
      <script type="math/tex">
//<![CDATA[
IV
//]]>
      </script>
       cắt 
      <span class="MathJax_Preview">
        JU
      </span>
      <script type="math/tex">
//<![CDATA[
JU
//]]>
      </script>
       tại 
      <span class="MathJax_Preview">
        Z
      </span>
      <script type="math/tex">
//<![CDATA[
Z
//]]>
      </script>
      . Chứng minh 
      <span class="MathJax_Preview">
        U
      </span>
      <script type="math/tex">
//<![CDATA[
U
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        V
      </span>
      <script type="math/tex">
//<![CDATA[
V
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        Z
      </span>
      <script type="math/tex">
//<![CDATA[
Z
//]]>
      </script>
       đối xứng với 
      <span class="MathJax_Preview">
        U
      </span>
      <script type="math/tex">
//<![CDATA[
U
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        V
      </span>
      <script type="math/tex">
//<![CDATA[
V
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        Z
      </span>
      <script type="math/tex">
//<![CDATA[
Z
//]]>
      </script>
       qua 
      <span class="MathJax_Preview">
        IJ
      </span>
      <script type="math/tex">
//<![CDATA[
IJ
//]]>
      </script>
      . Dùng 
      <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum2.html" target="_blank">
        định lý lục giác Pascal
      </a>
       để chứng minh 
      <span class="MathJax_Preview">
        Z
      </span>
      <script type="math/tex">
//<![CDATA[
Z
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        Z
      </span>
      <script type="math/tex">
//<![CDATA[
Z
//]]>
      </script>
       thẳng hàng.
    </i>
    )
  </blockquote>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-z7VHNyRXubg/UjJjyd8YcYI/AAAAAAAAA9g/cVoUyHsMJnY/s1600/vuontoan_mathgarden_butterfly2.png" height="320" width="300"/>
  </div>
  
Vẽ đường kính 
  <span class="MathJax_Preview">
    IJ
  </span>
  <script type="math/tex">
//<![CDATA[
IJ
//]]>
  </script>
   đi qua 
  <span class="MathJax_Preview">
    M
  </span>
  <script type="math/tex">
//<![CDATA[
M
//]]>
  </script>
  . Gọi 
  <span class="MathJax_Preview">
    E
  </span>
  <script type="math/tex">
//<![CDATA[
E
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    F
  </span>
  <script type="math/tex">
//<![CDATA[
F
//]]>
  </script>
   là hai điểm đối xứng của 
  <span class="MathJax_Preview">
    A
  </span>
  <script type="math/tex">
//<![CDATA[
A
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    D
  </span>
  <script type="math/tex">
//<![CDATA[
D
//]]>
  </script>
   qua đường thẳng 
  <span class="MathJax_Preview">
    IJ
  </span>
  <script type="math/tex">
//<![CDATA[
IJ
//]]>
  </script>
  . Gọi 
  <span class="MathJax_Preview">
    K
  </span>
  <script type="math/tex">
//<![CDATA[
K
//]]>
  </script>
   là giao điểm của 
  <span class="MathJax_Preview">
    IF
  </span>
  <script type="math/tex">
//<![CDATA[
IF
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    JC
  </span>
  <script type="math/tex">
//<![CDATA[
JC
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    L
  </span>
  <script type="math/tex">
//<![CDATA[
L
//]]>
  </script>
   là giao điểm của 
  <span class="MathJax_Preview">
    IB
  </span>
  <script type="math/tex">
//<![CDATA[
IB
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    JE
  </span>
  <script type="math/tex">
//<![CDATA[
JE
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    Q
  </span>
  <script type="math/tex">
//<![CDATA[
Q
//]]>
  </script>
   là giao điểm của 
  <span class="MathJax_Preview">
    BC
  </span>
  <script type="math/tex">
//<![CDATA[
BC
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    EF
  </span>
  <script type="math/tex">
//<![CDATA[
EF
//]]>
  </script>
  .

  <br/>
  <ol>
    <li>
      Chứng minh rằng 
      <span class="MathJax_Preview">
        C
      </span>
      <script type="math/tex">
//<![CDATA[
C
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        F
      </span>
      <script type="math/tex">
//<![CDATA[
F
//]]>
      </script>
       
      <i>
        phản chiếu
      </i>
       qua 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
      ; 
      <span class="MathJax_Preview">
        B
      </span>
      <script type="math/tex">
//<![CDATA[
B
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        E
      </span>
      <script type="math/tex">
//<![CDATA[
E
//]]>
      </script>
       
      <i>
        phản chiếu
      </i>
       qua 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
      . 
    </li>
    <li>
      Dùng bổ đề trên để chứng minh rằng 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        K
      </span>
      <script type="math/tex">
//<![CDATA[
K
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        L
      </span>
      <script type="math/tex">
//<![CDATA[
L
//]]>
      </script>
       thẳng hàng và nằm trên đường thẳng 
      <span class="MathJax_Preview">
        XY
      </span>
      <script type="math/tex">
//<![CDATA[
XY
//]]>
      </script>
      . 
    </li>
    <li>
      Dùng 
      <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum2.html" target="_blank">
        định lý lục giác Pascal
      </a>
       để chứng minh rằng 
      <span class="MathJax_Preview">
        K
      </span>
      <script type="math/tex">
//<![CDATA[
K
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        L
      </span>
      <script type="math/tex">
//<![CDATA[
L
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        Q
      </span>
      <script type="math/tex">
//<![CDATA[
Q
//]]>
      </script>
       thẳng hàng và nằm trên đường thẳng 
      <span class="MathJax_Preview">
        XY
      </span>
      <script type="math/tex">
//<![CDATA[
XY
//]]>
      </script>
      .
    </li>
    <li>
      Chứng minh rằng 
      <span class="MathJax_Preview">
        Q = Q
      </span>
      <script type="math/tex">
//<![CDATA[
Q = Q
//]]>
      </script>
      , từ đó suy ra 
      <span class="MathJax_Preview">
        MP = MQ
      </span>
      <script type="math/tex">
//<![CDATA[
MP = MQ
//]]>
      </script>
      .
    </li>
  </ol>
  <b>
    <span style="color: purple;">
      <br/>
    </span>
  </b>
  <b>
    <span style="color: purple;">
      <br/>
    </span>
  </b>
  <b>
    <span style="color: purple;">
      Bài toán 2.
    </span>
  </b>
   (đăng trên 
  <i>
    School Science and Mathematics
  </i>
  , 1919)
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-UqMjtdu_1Hc/UjuTovj8ODI/AAAAAAAABII/OzEQZk0lIl4/s1600/vuontoan_mathgarden_butterfly3.png"/>
  </div>
  
Gọi 
  <span class="MathJax_Preview">
    N
  </span>
  <script type="math/tex">
//<![CDATA[
N
//]]>
  </script>
   là giao điểm của hai đường thẳng 
  <span class="MathJax_Preview">
    AD
  </span>
  <script type="math/tex">
//<![CDATA[
AD
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    BC
  </span>
  <script type="math/tex">
//<![CDATA[
BC
//]]>
  </script>
  .
  <br/>
  <br/>
  <ol>
    <li>
      Sử dụng 
      <a href="http://vuontoanblog.blogspot.com/2013/06/ceva-menelaus.html" target="_blank">
        định lý Menelaus
      </a>
       cho tam giác 
      <span class="MathJax_Preview">
        NPQ
      </span>
      <script type="math/tex">
//<![CDATA[
NPQ
//]]>
      </script>
       với các bộ điểm thẳng hàng 
      <span class="MathJax_Preview">
        \{C, M, D\}
      </span>
      <script type="math/tex">
//<![CDATA[
\{C, M, D\}
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        \{A, M, B\}
      </span>
      <script type="math/tex">
//<![CDATA[
\{A, M, B\}
//]]>
      </script>
      , và sử dụng 
      <a href="http://vuontoanblog.blogspot.com/2013/07/power-of-a-point.html" target="_blank">
        phương tích
      </a>
      , chứng minh rằng 
      <span class="MathJax_Preview">
        \frac{MQ^2}{MP^2} = \frac{QB \times QC}{PA \times PD}.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
\frac{MQ^2}{MP^2} = \frac{QB \times QC}{PA \times PD}.
//]]>
      </script>
    </li>
    <li>
      Sử dụng 
      <a href="http://vuontoanblog.blogspot.com/2013/07/power-of-a-point.html" target="_blank">
        phương tích
      </a>
      , chứng minh rằng 
      <span class="MathJax_Preview">
        \frac{MQ^2}{MP^2} = \frac{MY^2 - MQ^2}{MX^2 - MP^2},
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
\frac{MQ^2}{MP^2} = \frac{MY^2 - MQ^2}{MX^2 - MP^2},
//]]>
      </script>
       từ đó suy ra 
      <span class="MathJax_Preview">
        MP = MQ
      </span>
      <script type="math/tex">
//<![CDATA[
MP = MQ
//]]>
      </script>
      .
    </li>
  </ol>
  <br/>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Bài toán 3.
    </span>
  </b>
   (Richard Taylor, đăng trên 
  <i>
    The Gentlemans Diary
  </i>
  , 1815)
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-jo7r_T5JikQ/Ujug5OoO2GI/AAAAAAAABIY/bw7sKe9VgYc/s1600/vuontoan_mathgarden_butterfly4.png"/>
  </div>
  
Vẽ đường tròn ngoại tiếp tam giác 
  <span class="MathJax_Preview">
    APM
  </span>
  <script type="math/tex">
//<![CDATA[
APM
//]]>
  </script>
   cắt đường tròn 
  <span class="MathJax_Preview">
    (O)
  </span>
  <script type="math/tex">
//<![CDATA[
(O)
//]]>
  </script>
   tại 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
  . Đường thẳng 
  <span class="MathJax_Preview">
    TP
  </span>
  <script type="math/tex">
//<![CDATA[
TP
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    TM
  </span>
  <script type="math/tex">
//<![CDATA[
TM
//]]>
  </script>
   cắt đường tròn 
  <span class="MathJax_Preview">
    (O)
  </span>
  <script type="math/tex">
//<![CDATA[
(O)
//]]>
  </script>
   lần lượt tại 
  <span class="MathJax_Preview">
    E
  </span>
  <script type="math/tex">
//<![CDATA[
E
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    F
  </span>
  <script type="math/tex">
//<![CDATA[
F
//]]>
  </script>
  .
  <br/>
  <ol>
    <li>
      Chứng minh rằng ba đường thẳng 
      <span class="MathJax_Preview">
        EB
      </span>
      <script type="math/tex">
//<![CDATA[
EB
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        XY
      </span>
      <script type="math/tex">
//<![CDATA[
XY
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        DF
      </span>
      <script type="math/tex">
//<![CDATA[
DF
//]]>
      </script>
       song song.
    </li>
    <li>
      Chứng minh rằng hai tam giác 
      <span class="MathJax_Preview">
        MTD
      </span>
      <script type="math/tex">
//<![CDATA[
MTD
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        MCF
      </span>
      <script type="math/tex">
//<![CDATA[
MCF
//]]>
      </script>
       bằng nhau.
    </li>
    <li>
      Chứng minh rằng hai tam giác 
      <span class="MathJax_Preview">
        MTP
      </span>
      <script type="math/tex">
//<![CDATA[
MTP
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        MCQ
      </span>
      <script type="math/tex">
//<![CDATA[
MCQ
//]]>
      </script>
       bằng nhau, từ đó suy ra 
      <span class="MathJax_Preview">
        MP = MQ
      </span>
      <script type="math/tex">
//<![CDATA[
MP = MQ
//]]>
      </script>
      .
    </li>
  </ol>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Bài toán 4.
    </span>
  </b>
   (W.G. Horner, đăng trên 
  <i>
    The Gentlemans Diary
  </i>
  , 1815)
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-XNFLk3J-Jig/UjusBukpt8I/AAAAAAAABIo/K3RyPiBN6zM/s1600/vuontoan_mathgarden_butterfly5.png"/>
  </div>
  
Gọi 
  <span class="MathJax_Preview">
    I
  </span>
  <script type="math/tex">
//<![CDATA[
I
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    J
  </span>
  <script type="math/tex">
//<![CDATA[
J
//]]>
  </script>
   lần lượt là trung điểm của 
  <span class="MathJax_Preview">
    AD
  </span>
  <script type="math/tex">
//<![CDATA[
AD
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    BC
  </span>
  <script type="math/tex">
//<![CDATA[
BC
//]]>
  </script>
  .
  <br/>
  <ol>
    <li>
      Chứng minh rằng hai tam giác 
      <span class="MathJax_Preview">
        MBC
      </span>
      <script type="math/tex">
//<![CDATA[
MBC
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        MDA
      </span>
      <script type="math/tex">
//<![CDATA[
MDA
//]]>
      </script>
      <a href="http://vuontoanblog.blogspot.com/2012/05/similar-triangles.html" target="_blank">
        đồng dạng
      </a>
      .
    </li>
    <li>
      Chứng minh rằng 
      <span class="MathJax_Preview">
        \angle MJQ = \angle MIP
      </span>
      <script type="math/tex">
//<![CDATA[
\angle MJQ = \angle MIP
//]]>
      </script>
      .
    </li>
    <li>
      Chứng minh rằng hai tam giác 
      <span class="MathJax_Preview">
        MOP
      </span>
      <script type="math/tex">
//<![CDATA[
MOP
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        MOQ
      </span>
      <script type="math/tex">
//<![CDATA[
MOQ
//]]>
      </script>
       bằng nhau, từ đó suy ra 
      <span class="MathJax_Preview">
        MP = MQ
      </span>
      <script type="math/tex">
//<![CDATA[
MP = MQ
//]]>
      </script>
      .
    </li>
  </ol>
  <br/>
  <br/>
  <br/>
  <br/>
  <b>
    <span style="color: purple;">
      Bài toán 5.
    </span>
  </b>
   (Leon Bankoff, đăng trên 
  <i>
    School Science and Mathematics
  </i>
  , 1955)
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-g36IcW06ANQ/Ujuwj0DLY9I/AAAAAAAABI0/W_xSTEu4uiQ/s1600/vuontoan_mathgarden_butterfly6.png"/>
  </div>
  
Qua 
  <span class="MathJax_Preview">
    A
  </span>
  <script type="math/tex">
//<![CDATA[
A
//]]>
  </script>
   vẽ đường thẳng song song với 
  <span class="MathJax_Preview">
    XY
  </span>
  <script type="math/tex">
//<![CDATA[
XY
//]]>
  </script>
   cắt đường tròn tại 
  <span class="MathJax_Preview">
    L
  </span>
  <script type="math/tex">
//<![CDATA[
L
//]]>
  </script>
  .
  <br/>
  <ol>
    <li>
      Chứng minh rằng tam giác 
      <span class="MathJax_Preview">
        AML
      </span>
      <script type="math/tex">
//<![CDATA[
AML
//]]>
      </script>
       là tam giác cân.
    </li>
    <li>
      Chứng minh rằng tứ giác 
      <span class="MathJax_Preview">
        MLCQ
      </span>
      <script type="math/tex">
//<![CDATA[
MLCQ
//]]>
      </script>
       là tứ giác nội tiếp đường tròn.
    </li>
    <li>
      Chứng minh rằng hai tam giác 
      <span class="MathJax_Preview">
        MAP
      </span>
      <script type="math/tex">
//<![CDATA[
MAP
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        MLQ
      </span>
      <script type="math/tex">
//<![CDATA[
MLQ
//]]>
      </script>
       bằng nhau, từ đó suy ra 
      <span class="MathJax_Preview">
        MP = MQ
      </span>
      <script type="math/tex">
//<![CDATA[
MP = MQ
//]]>
      </script>
      .
    </li>
  </ol>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta tạm dừng ở đây. Bạn đọc nào tò mò muốn biết thêm các cách chứng minh khác xin tìm đọc bài báo của 
  <b>
    Leon Bankoff
  </b>
   mà chúng ta đã trích dẫn ở trên. Hẹn gặp lại các bạn ở kỳ sau.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','67','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-7858726343507921779">
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay xin giới thiệu với các bạn một sự kết hợp tuyệt vời giữa hai kết quả hay trong hình học: 
  <span style="color: purple;">
    <b>
      định lý lục giác Pascal
    </b>
  </span>
   và 
  <span style="color: purple;">
    <b>
      định lý con bướm
    </b>
  </span>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-ilQvtw1BlBk/Uhb8pmjZfEI/AAAAAAAAArg/tmQTBktfLgY/s1600/pascal3.jpg" height="400" width="310"/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
  </div>
  <a name="more">
  </a>
  <br/>
  <br/>
  <div class="separator" style="clear: both;">
    
Trước hết xin nói đến 
    <i>
      <span style="color: purple;">
        định lý con bướm
      </span>
    </i>
    . Định lý con bướm phát biểu như sau:
  </div>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Định lý con bướm.
      </b>
       Giả sử 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       là trung điểm của dây cung 
      <span class="MathJax_Preview">
        XY
      </span>
      <script type="math/tex">
//<![CDATA[
XY
//]]>
      </script>
       trên đường tròn tâm 
      <span class="MathJax_Preview">
        O
      </span>
      <script type="math/tex">
//<![CDATA[
O
//]]>
      </script>
      . Qua 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       kẻ hai dây cung 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        CD
      </span>
      <script type="math/tex">
//<![CDATA[
CD
//]]>
      </script>
      . Gọi 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        Q
      </span>
      <script type="math/tex">
//<![CDATA[
Q
//]]>
      </script>
       lần lượt là giao điểm của đường thẳng 
      <span class="MathJax_Preview">
        XY
      </span>
      <script type="math/tex">
//<![CDATA[
XY
//]]>
      </script>
       với hai đường thẳng 
      <span class="MathJax_Preview">
        AD
      </span>
      <script type="math/tex">
//<![CDATA[
AD
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        BC
      </span>
      <script type="math/tex">
//<![CDATA[
BC
//]]>
      </script>
      . Vậy thì
    </span>
    <span style="color: purple;">
       
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       là trung điểm của 
      <span class="MathJax_Preview">
        PQ
      </span>
      <script type="math/tex">
//<![CDATA[
PQ
//]]>
      </script>
      .
    </span>
  </blockquote>
  <div>
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-3fx8c2KUmuQ/UifZFRQt1zI/AAAAAAAAA2U/XshV9i_iUow/s1600/bf1.png"/>
  </div>
  <div>
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    
Chúng ta thấy hình vẽ của định lý nhìn giống như hình một 
    <i>
      con bướm
    </i>
     với hai cánh giao nhau tại điểm 
    <span class="MathJax_Preview">
      M
    </span>
    <script type="math/tex">
//<![CDATA[
M
//]]>
    </script>
    . Đó là lý do tại sao định lý này mang tên là định lý con bướm.
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    
Định lý con bướm có nhiều cách chứng minh. Công cụ sử dụng trong các cách chứng minh này khá là đa dạng. Ví dụ, có cách chứng minh sử dụng 
    <a href="http://vuontoanblog.blogspot.com/2013/06/ceva-menelaus.html" target="_blank">
      định lý Menelaus
    </a>
    , có cách chứng minh sử dụng 
    <a href="http://vuontoanblog.blogspot.com/2013/07/power-of-a-point.html" target="_blank">
      phương tích
    </a>
    , 
    <a href="http://vuontoanblog.blogspot.com/2013/07/radical-axis.html" target="_blank">
      trục đẳng phương
    </a>
    , cách chứng minh khác lại dùng lượng giác, hay hình học tọa độ, v.v... 
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    
Hôm nay chúng ta sẽ trình bày một cách chứng minh đơn giản cho định lý con bướm bằng cách sử dụng 
    <b>
      định lý lục giác Pascal
    </b>
    . 
    <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum2.html" target="_blank">
      Định lý Pascal
    </a>
     phát biểu như sau.
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Định lý Pascal.
      </b>
       Cho hình lục giác 
      <span class="MathJax_Preview">
        123456
      </span>
      <script type="math/tex">
//<![CDATA[
123456
//]]>
      </script>
       nội tiếp một đường tròn. Vậy thì ba giao điểm của ba cặp cạnh đối diện 
      <span class="MathJax_Preview">
        \{12, 45\}, ~\{23, 56\}, ~\{34, 61\}
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
\{12, 45\}, ~\{23, 56\}, ~\{34, 61\}
//]]>
      </script>
       của hình lục giác luôn luôn thẳng hàng.
    </span>
  </blockquote>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-k1LgtxX_QJg/UifgSsvfsRI/AAAAAAAAA2g/Mc2GnXHDhYI/s1600/pascalcombine2.png" height="175" width="400"/>
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    
Nhà toán học Pascal khám phá ra định lý lục giác này khi ông chỉ mới 16 tuổi. Điểm thú vị của định lý ở chỗ là nó rất đa dạng. Sáu đỉnh của hình lục giác không nhất thiết phải nằm cùng một thứ tự nhất định trên đường tròn mà có thể nằm theo thứ tự tùy ý. Cho nên với mỗi thứ tự sắp xếp của các đỉnh, chúng ta lại có một dạng cấu hình khác nhau cho định lý Pascal. 
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    
Định lý Pascal còn được gọi là 
    <i>
      <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
        định lý lục giác kỳ diệu
      </a>
    </i>
    . Nếu các bạn thay đường tròn bởi đường elíp, đường parabol, hay đường hypebol, và vẽ một hình lục giác nội tiếp các đường cônic này thì định lý vẫn đúng. Các bạn có thấy định lý này kỳ diệu không?!
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <span style="color: #0b5394; font-size: large;">
      Chứng minh định lý con bướm
    </span>
  </div>
  <div>
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    
Bây giờ chúng ta sẽ chứng minh định lý con bướm bằng cách sử dụng định lý lục giác Pascal.
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-fL4yTpwf8CQ/Uifl-UO27AI/AAAAAAAAA2w/N-Op7KXT2QM/s1600/bfproof.jpg" height="308" width="320"/>
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    
Vẽ các đường kính 
    <span class="MathJax_Preview">
      AU
    </span>
    <script type="math/tex">
//<![CDATA[
AU
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      CV
    </span>
    <script type="math/tex">
//<![CDATA[
CV
//]]>
    </script>
    . Gọi 
    <span class="MathJax_Preview">
      N
    </span>
    <script type="math/tex">
//<![CDATA[
N
//]]>
    </script>
     là giao điểm của 
    <span class="MathJax_Preview">
      DU
    </span>
    <script type="math/tex">
//<![CDATA[
DU
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      BV
    </span>
    <script type="math/tex">
//<![CDATA[
BV
//]]>
    </script>
    . Theo định lý Pascal cho hình lục giác 
    <span class="MathJax_Preview">
      ABVCDU
    </span>
    <script type="math/tex">
//<![CDATA[
ABVCDU
//]]>
    </script>
    , chúng ta có ba giao điểm 
    <span class="MathJax_Preview">
      M
    </span>
    <script type="math/tex">
//<![CDATA[
M
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      O
    </span>
    <script type="math/tex">
//<![CDATA[
O
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      N
    </span>
    <script type="math/tex">
//<![CDATA[
N
//]]>
    </script>
     thẳng hàng.
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    
Vì 
    <span class="MathJax_Preview">
      M
    </span>
    <script type="math/tex">
//<![CDATA[
M
//]]>
    </script>
     là trung điểm của dây cung 
    <span class="MathJax_Preview">
      XY
    </span>
    <script type="math/tex">
//<![CDATA[
XY
//]]>
    </script>
     nên 
    <span class="MathJax_Preview">
      NOM
    </span>
    <script type="math/tex">
//<![CDATA[
NOM
//]]>
    </script>
     vuông góc với 
    <span class="MathJax_Preview">
      XY
    </span>
    <script type="math/tex">
//<![CDATA[
XY
//]]>
    </script>
    . Vì 
    <span class="MathJax_Preview">
      AU
    </span>
    <script type="math/tex">
//<![CDATA[
AU
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      CV
    </span>
    <script type="math/tex">
//<![CDATA[
CV
//]]>
    </script>
     là hai đường kính nên 
    <span class="MathJax_Preview">
      \angle ADU = \angle CBV = 90^{o}.
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\angle ADU = \angle CBV = 90^{o}.
//]]>
    </script>
     Từ đó suy ra 
    <span class="MathJax_Preview">
      MNDP
    </span>
    <script type="math/tex">
//<![CDATA[
MNDP
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      MNBQ
    </span>
    <script type="math/tex">
//<![CDATA[
MNBQ
//]]>
    </script>
     là hai tứ giác nội tiếp đường tròn. Do đó 
    <span class="MathJax_Preview">
      \angle MNP = \angle MDP = \angle MBQ = \angle MNQ .
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\angle MNP = \angle MDP = \angle MBQ = \angle MNQ .
//]]>
    </script>
     Vậy hai tam giác vuông 
    <span class="MathJax_Preview">
      MNP
    </span>
    <script type="math/tex">
//<![CDATA[
MNP
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      MNQ
    </span>
    <script type="math/tex">
//<![CDATA[
MNQ
//]]>
    </script>
     bằng nhau, và chúng ta suy ra điều cần chứng minh 
    <span class="MathJax_Preview">
      MP=MQ
    </span>
    <script type="math/tex">
//<![CDATA[
MP=MQ
//]]>
    </script>
    .
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    <br/>
  </div>
  <div class="separator" style="clear: both;">
    <span style="color: purple; font-size: x-large;">
      N
    </span>
    hư vậy, hôm nay chúng ta đã học thêm một ứng dụng của định lý lục giác Pascal. Hình vẽ dùng để chứng minh định lý con bướm kết hợp được vẽ đẹp của cả hai định lý, do đó tôi đặt tên cho hình vẽ này là 
    <b>
      <span style="color: purple;">
        cánh bướm Pascal
      </span>
    </b>
    . Hy vọng nó sẽ đem đến cho các bạn một sự thích thú.
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://facebook.com/vuontoanblog" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://3.bp.blogspot.com/-ilQvtw1BlBk/Uhb8pmjZfEI/AAAAAAAAArg/tmQTBktfLgY/s1600/pascal3.jpg" height="400" width="310"/>
    </a>
  </div>
  <div>
    
Hẹn gặp lại các bạn ở kỳ sau.
  </div>
  <div>
    <br/>
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','66','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-8735653789980837620">
  <span style="color: purple;">
    <span style="font-size: x-large;">
      H
    </span>
  </span>
  ôm nay chúng ta sẽ học về 
  <b>
    định lý Pappus
  </b>
  . Định lý này nói rằng nếu chúng ta chọn ba điểm 
  <span class="MathJax_Preview">
    1
  </span>
  <script type="math/tex">
//<![CDATA[
1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    3
  </span>
  <script type="math/tex">
//<![CDATA[
3
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    5
  </span>
  <script type="math/tex">
//<![CDATA[
5
//]]>
  </script>
   trên một đường thẳng, và ba điểm 
  <span class="MathJax_Preview">
    2
  </span>
  <script type="math/tex">
//<![CDATA[
2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    4
  </span>
  <script type="math/tex">
//<![CDATA[
4
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    6
  </span>
  <script type="math/tex">
//<![CDATA[
6
//]]>
  </script>
   trên một đường thẳng khác, thì 
  <b>
    ba giao điểm
  </b>
   của các cặp đường thẳng 
  <span class="MathJax_Preview">
    \{12, 45\}, ~\{23, 56\}, ~\{34, 61\}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\{12, 45\}, ~\{23, 56\}, ~\{34, 61\}
//]]>
  </script>
   sẽ 
  <b>
    thẳng hàng
  </b>
  .
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-wyf_ESxej70/UgmzBrpis-I/AAAAAAAAAik/m_H9K9yu1Jo/s1600/pp2.png"/>
  </div>
  <br/>
  <a name="more">
  </a>
  <span style="color: purple; font-size: x-large;">
    Đ
  </span>
  ịnh lý Pappus nhìn rất giống 
  <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum2.html" target="_blank">
    định lý lục giác Pascal
  </a>
  . Thực vậy, định lý Pascal nói rằng nếu chúng ta vẽ một hình lục giác 
  <span class="MathJax_Preview">
    123456
  </span>
  <script type="math/tex">
//<![CDATA[
123456
//]]>
  </script>
   nội tiếp một hình tròn thì ba giao điểm của ba cặp cạnh đối diện 
  <span class="MathJax_Preview">
    \{12, 45\}, ~\{23, 56\}, ~\{34, 61\}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\{12, 45\}, ~\{23, 56\}, ~\{34, 61\}
//]]>
  </script>
   của hình lục giác thẳng hàng.
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-_tE4XVVxrrU/UhVfizTVuHI/AAAAAAAAAqE/YeN-bIPQyXs/s1600/pascalcombine.png" height="175" width="400"/>
  </div>
  <div style="text-align: justify;">
    <br/>
  </div>
  <div style="text-align: justify;">
    <div style="text-align: start;">
      
Như vậy, thay vì 
      <i>
        nội tiếp đường tròn
      </i>
       như ở định lý Pascal, thì ở định lý Pappus, chúng ta có thể xem như hình lục giác 
      <span class="MathJax_Preview">
        123456
      </span>
      <script type="math/tex">
//<![CDATA[
123456
//]]>
      </script>
      <i>
        "nội tiếp" hai đường thẳng
      </i>
       và b
      <span style="text-align: start;">
        a giao điểm của ba cặp cạnh đối diện 
        <span class="MathJax_Preview">
          \{12, 45\}, ~\{23, 56\}, ~\{34, 61\}
        </span>
        <script type="math/tex; mode=display">
//<![CDATA[
\{12, 45\}, ~\{23, 56\}, ~\{34, 61\}
//]]>
        </script>
         của 
        <i>
          hình lục giác
        </i>
         
      </span>
      này
      <span style="text-align: start;">
         thẳng hàng.
      </span>
    </div>
  </div>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-wyf_ESxej70/UgmzBrpis-I/AAAAAAAAAik/m_H9K9yu1Jo/s1600/pp2.png"/>
  </div>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Sự đa dạng của định lý Pappus
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    G
  </span>
  iống như 
  <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
    định lý Pascal
  </a>
  , định lý Pappus có rất nhiều dạng cấu hình. Sáu đỉnh của hình lục giác có thể nằm theo thứ tự tùy ý trên hai đường thẳng. Với mỗi thứ tự sắp xếp của các đỉnh, chúng ta lại có một dạng cấu hình khác nhau cho định lý Pappus. Dưới đây là một ví dụ.
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-pc1yslBYhSM/Ugm2360tg8I/AAAAAAAAAi0/BW1DEVjgrio/s1600/pp3.png"/>
  </div>
  <br/>
  
Bây giờ, xin mời các bạn vẽ thật nhiều hình vẽ khác nhau cho định lý Pappus.
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ình vẽ sau đây mô tả một điểm thú vị khác của định lý Pappus, đó là sự 
  <i>
    hoán chuyển vai trò
  </i>
   của các giao điểm và các đỉnh. Hình ở giữa có sự hoán chuyển vai trò của các giao điểm với các đỉnh 
  <span class="MathJax_Preview">
    1
  </span>
  <script type="math/tex">
//<![CDATA[
1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    3
  </span>
  <script type="math/tex">
//<![CDATA[
3
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    5
  </span>
  <script type="math/tex">
//<![CDATA[
5
//]]>
  </script>
  ; còn ở hình phía bên phải, các giao điểm hoán chuyển với các đỉnh 
  <span class="MathJax_Preview">
    2
  </span>
  <script type="math/tex">
//<![CDATA[
2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    4
  </span>
  <script type="math/tex">
//<![CDATA[
4
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    6
  </span>
  <script type="math/tex">
//<![CDATA[
6
//]]>
  </script>
  .
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-NZRwhoD0ltY/UhMHc6xKT2I/AAAAAAAAAoA/EECn6V0gl14/s1600/pp4.png" height="160" width="640"/>
  </div>
  <div>
    <br/>
  </div>
  
Để ý rằng ở cả ba hình vẽ trên thì 
  <span class="MathJax_Preview">
    u
  </span>
  <script type="math/tex">
//<![CDATA[
u
//]]>
  </script>
   bao giờ cũng là giao điểm của 
  <span class="MathJax_Preview">
    \{12, 45\}
  </span>
  <script type="math/tex">
//<![CDATA[
\{12, 45\}
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    v
  </span>
  <script type="math/tex">
//<![CDATA[
v
//]]>
  </script>
   bao giờ cũng là giao điểm của 
  <span class="MathJax_Preview">
    \{34, 61\}
  </span>
  <script type="math/tex">
//<![CDATA[
\{34, 61\}
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    w
  </span>
  <script type="math/tex">
//<![CDATA[
w
//]]>
  </script>
   bao giờ cũng là giao điểm của 
  <span class="MathJax_Preview">
    \{23, 56\}
  </span>
  <script type="math/tex">
//<![CDATA[
\{23, 56\}
//]]>
  </script>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Chứng minh Định lý Pappus
  </span>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  
Chúng ta sẽ dùng 
  <a href="http://vuontoanblog.blogspot.com/2013/06/ceva-menelaus.html" target="_blank">
    định lý Menelaus
  </a>
   để chứng minh định lý Pappus. Định lý Menelaus là một công cụ rất hiệu quả thường dùng để chứng minh các điểm thẳng hàng. Định lý Menelaus phát biểu như sau:
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-2QNfHdiC8f0/UdDWRTO9ebI/AAAAAAAAAPw/dkzpnFxMdHY/s301/Menelaus2.png" height="236" width="400"/>
  </div>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Định lý Menelaus:
      </b>
       Cho tam giác 
      <span class="MathJax_Preview">
        ABC
      </span>
      <script type="math/tex">
//<![CDATA[
ABC
//]]>
      </script>
       và ba điểm 
      <span class="MathJax_Preview">
        A
      </span>
      <script type="math/tex">
//<![CDATA[
A
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        B
      </span>
      <script type="math/tex">
//<![CDATA[
B
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C
      </span>
      <script type="math/tex">
//<![CDATA[
C
//]]>
      </script>
       lần lượt nằm trên ba đường thẳng 
      <span class="MathJax_Preview">
        BC
      </span>
      <script type="math/tex">
//<![CDATA[
BC
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        CA
      </span>
      <script type="math/tex">
//<![CDATA[
CA
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
      . Vậy thì ba điểm 
      <span class="MathJax_Preview">
        A
      </span>
      <script type="math/tex">
//<![CDATA[
A
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        B
      </span>
      <script type="math/tex">
//<![CDATA[
B
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C
      </span>
      <script type="math/tex">
//<![CDATA[
C
//]]>
      </script>
       thẳng hàng khi và chỉ khi 
      <span class="MathJax_Preview">
        \frac{\vec{AB}}{\vec{AC}} \times \frac{\vec{BC}}{\vec{BA}} \times \frac{\vec{CA}}{\vec{CB}} = 1.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
\frac{\vec{AB}}{\vec{AC}} \times \frac{\vec{BC}}{\vec{BA}} \times \frac{\vec{CA}}{\vec{CB}} = 1.
//]]>
      </script>
    </span>
  </blockquote>
  <br/>
  
Cách chứng minh định lý Pappus mà chúng ta sắp trình bày rất giống cách chứng minh định lý Pascal mà chúng ta đã học ở 
  <a href="http://vuontoanblog.blogspot.com/2013/08/hexagrammum-mysticum2.html" target="_blank">
    bài trước
  </a>
  . Trước khi trình bày chi tiết, chúng ta cùng ôn lại cách chứng minh định lý Pascal. Chúng ta nhìn hình vẽ sau đây.
  <br/>
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://3.bp.blogspot.com/-f8fdC9crcdk/UduycrjHz2I/AAAAAAAAAVU/P1be1lM7riE/s1600/pas3b.png" height="304" width="320"/>
    </div>
    <br/>
    
Ở hình vẽ trên, chúng ta thấy hình 
    <i>
      lục giác Pascal
    </i>
     
    <span class="MathJax_Preview">
      P_1 P_2 P_3 P_4 P_5 P_6
    </span>
    <script type="math/tex">
//<![CDATA[
P_1 P_2 P_3 P_4 P_5 P_6
//]]>
    </script>
     và ba giao điểm 
    <span class="MathJax_Preview">
      M_1
    </span>
    <script type="math/tex">
//<![CDATA[
M_1
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      M_2
    </span>
    <script type="math/tex">
//<![CDATA[
M_2
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      M_3
    </span>
    <script type="math/tex">
//<![CDATA[
M_3
//]]>
    </script>
    . Để chứng minh ba giao điểm 
    <span class="MathJax_Preview">
      M_1
    </span>
    <script type="math/tex">
//<![CDATA[
M_1
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      M_2
    </span>
    <script type="math/tex">
//<![CDATA[
M_2
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      M_3
    </span>
    <script type="math/tex">
//<![CDATA[
M_3
//]]>
    </script>
     thẳng hàng, chúng ta chọn tam giác 
    <span class="MathJax_Preview">
      ABC
    </span>
    <script type="math/tex">
//<![CDATA[
ABC
//]]>
    </script>
     rồi sử dụng định lý Menelaus. Bởi vì điểm 
    <span class="MathJax_Preview">
      M_1
    </span>
    <script type="math/tex">
//<![CDATA[
M_1
//]]>
    </script>
     nằm trên đường thẳng 
    <span class="MathJax_Preview">
      BC
    </span>
    <script type="math/tex">
//<![CDATA[
BC
//]]>
    </script>
    , điểm 
    <span class="MathJax_Preview">
      M_2
    </span>
    <script type="math/tex">
//<![CDATA[
M_2
//]]>
    </script>
     nằm trên đường thẳng 
    <span class="MathJax_Preview">
      CA
    </span>
    <script type="math/tex">
//<![CDATA[
CA
//]]>
    </script>
     và điểm 
    <span class="MathJax_Preview">
      M_3
    </span>
    <script type="math/tex">
//<![CDATA[
M_3
//]]>
    </script>
     nằm trên đường thẳng 
    <span class="MathJax_Preview">
      AB
    </span>
    <script type="math/tex">
//<![CDATA[
AB
//]]>
    </script>
    , để chứng minh chúng thẳng hàng chúng ta đã chứng minh rằng 
    <span class="MathJax_Preview">
      \frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{M_3 A}}{\vec{M_3 B}} = 1.
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
\frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{M_3 A}}{\vec{M_3 B}} = 1.
//]]>
    </script>
    <br/>
    <br/>
    <br/>
    <span style="color: purple; font-size: x-large;">
      B
    </span>
    ây giờ tương tự như vậy, để chứng minh định lý Pappus, chúng ta cũng sử dụng định lý Menelaus cho tam giác 
    <span class="MathJax_Preview">
      ABC
    </span>
    <script type="math/tex">
//<![CDATA[
ABC
//]]>
    </script>
    . Cách xác định tam giác 
    <span class="MathJax_Preview">
      ABC
    </span>
    <script type="math/tex">
//<![CDATA[
ABC
//]]>
    </script>
     tương tự như trong định lý Pascal: 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
     chính là giao điểm của 
    <span class="MathJax_Preview">
      P_4 P_5
    </span>
    <script type="math/tex">
//<![CDATA[
P_4 P_5
//]]>
    </script>
     với 
    <span class="MathJax_Preview">
      P_6 P_1
    </span>
    <script type="math/tex">
//<![CDATA[
P_6 P_1
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      B
    </span>
    <script type="math/tex">
//<![CDATA[
B
//]]>
    </script>
     là giao điểm của 
    <span class="MathJax_Preview">
      P_2 P_3
    </span>
    <script type="math/tex">
//<![CDATA[
P_2 P_3
//]]>
    </script>
     với 
    <span class="MathJax_Preview">
      P_4 P_5
    </span>
    <script type="math/tex">
//<![CDATA[
P_4 P_5
//]]>
    </script>
    , còn 
    <span class="MathJax_Preview">
      C
    </span>
    <script type="math/tex">
//<![CDATA[
C
//]]>
    </script>
     là giao điểm của 
    <span class="MathJax_Preview">
      P_2 P_3
    </span>
    <script type="math/tex">
//<![CDATA[
P_2 P_3
//]]>
    </script>
     với 
    <span class="MathJax_Preview">
      P_6 P_1
    </span>
    <script type="math/tex">
//<![CDATA[
P_6 P_1
//]]>
    </script>
    .
  </div>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-SZVf90p1Ixw/UhP3K0yM8TI/AAAAAAAAAoQ/hZORfUbq6Bo/s1600/pp5.png" height="212" width="400"/>
  </div>
  <br/>
  <span style="color: purple; font-size: x-large;">
    C
  </span>
  húng ta viết cụ thể cách chứng minh.
  <br/>
  <br/>
  
Sử dụng định lý Menelaus cho tam giác 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
   với các bộ ba điểm thẳng hàng 
  <span class="MathJax_Preview">
    \{M_1, P_6, P_5\}, ~~\{M_2, P_4, P_3\}, ~~\{M_3, P_2, P_1\}, ~~\{P_1, P_3, P_5\}, ~~\{P_2, P_4, P_6\},
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\{M_1, P_6, P_5\}, ~~\{M_2, P_4, P_3\}, ~~\{M_3, P_2, P_1\}, ~~\{P_1, P_3, P_5\}, ~~\{P_2, P_4, P_6\},
//]]>
  </script>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-IblQfUjm3iY/Uhasjq9L-FI/AAAAAAAAAq4/XQ27Ug6wCU4/s1600/pp8.png" height="198" width="200"/>
  </div>
  
chúng ta có 
  <span class="MathJax_Preview">
    \frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{P_6 C}}{\vec{P_6 A}} \times \frac{\vec{P_5 A}}{\vec{P_5 B}} = \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{P_4 A}}{\vec{P_4 B}} \times \frac{\vec{P_3 B}}{\vec{P_3 C}} = \frac{\vec{M_3 A}}{\vec{M_3 B}} \times \frac{\vec{P_2 B}}{\vec{P_2 C}} \times \frac{\vec{P_1 C}}{\vec{P_1 A}}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{P_6 C}}{\vec{P_6 A}} \times \frac{\vec{P_5 A}}{\vec{P_5 B}} = \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{P_4 A}}{\vec{P_4 B}} \times \frac{\vec{P_3 B}}{\vec{P_3 C}} = \frac{\vec{M_3 A}}{\vec{M_3 B}} \times \frac{\vec{P_2 B}}{\vec{P_2 C}} \times \frac{\vec{P_1 C}}{\vec{P_1 A}}
//]]>
  </script>
  <span class="MathJax_Preview">
    =\frac{\vec{P_1 A}}{\vec{P_1 C}} \times \frac{\vec{P_3 C}}{\vec{P_3 B}} \times \frac{\vec{P_5 B}}{\vec{P_5 A}} = \frac{\vec{P_2 C}}{\vec{P_2 B}} \times \frac{\vec{P_4 B}}{\vec{P_4 A}} \times \frac{\vec{P_6 A}}{\vec{P_6 C}} = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
=\frac{\vec{P_1 A}}{\vec{P_1 C}} \times \frac{\vec{P_3 C}}{\vec{P_3 B}} \times \frac{\vec{P_5 B}}{\vec{P_5 A}} = \frac{\vec{P_2 C}}{\vec{P_2 B}} \times \frac{\vec{P_4 B}}{\vec{P_4 A}} \times \frac{\vec{P_6 A}}{\vec{P_6 C}} = 1.
//]]>
  </script>
  
Nhân tất cả các đẳng thức này lại, chúng ta rút ra được 
  <span class="MathJax_Preview">
    \frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{M_3 A}}{\vec{M_3 B}} = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{M_3 A}}{\vec{M_3 B}} = 1.
//]]>
  </script>
   Từ đó suy ra 
  <span class="MathJax_Preview">
    M_1
  </span>
  <script type="math/tex">
//<![CDATA[
M_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_2
  </span>
  <script type="math/tex">
//<![CDATA[
M_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_3
  </span>
  <script type="math/tex">
//<![CDATA[
M_3
//]]>
  </script>
   thẳng hàng, và định lý được chứng minh.
  <br/>
  <div>
  </div>
  <br/>
  <br/>
  <br/>
  <div>
    <br/>
  </div>
  <span style="color: purple; font-size: x-large;">
    N
  </span>
  hư vậy, hôm nay một lần nữa, nhờ sử dụng một cách linh hoạt định lý Menelaus chúng ta đã chứng minh xong định lý Pappus. Định lý Pappus nhìn đơn giản nhưng rất đẹp, vì vậy nên blog Vườn Toán đã chọn định lý Pappus để làm hình ảnh biểu tượng của mình.
  <br/>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://www.facebook.com/vuontoanblog" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://3.bp.blogspot.com/-M3rCoFBJINI/UMp83KpnUhI/AAAAAAAADfc/xpBWZ7Al_hk/s1600/mghh3.png"/>
    </a>
  </div>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <a href="http://www.facebook.com/vuontoanblog" imageanchor="1" style="margin-left: 1em; margin-right: 1em;">
      <img border="0" src="http://4.bp.blogspot.com/-FW9BegYpO_s/Uh6eB99GL5I/AAAAAAAAAzA/kiiWEcSvIvg/s1600/star.png" height="209" width="320"/>
    </a>
  </div>
  <br/>
  
Xin hẹn gặp lại các bạn ở kỳ sau.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Chúng ta gọi các giao điểm màu tím là các giao điểm Pappus, còn đường thẳng màu tím nối ba giao điểm gọi là đường thẳng Pappus.
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td>
          <img border="0" src="http://3.bp.blogspot.com/-TqBIKf5Rgt4/UdtiEd7u_CI/AAAAAAAAAUk/nOnc1Ffe8eA/s1600/pascalline.png"/>
        </td>
      </tr>
    </tbody>
  </table>
  
Bây giờ nếu chúng ta 
  <b>
    giữ cố định sáu điểm
  </b>
   trên hai đường thẳng, nhưng bằng cách 
  <b>
    đặt tên
  </b>
  <span class="MathJax_Preview">
    1,2,3,4,5,6
  </span>
  <script type="math/tex">
//<![CDATA[
1,2,3,4,5,6
//]]>
  </script>
   cho sáu điểm này 
  <b>
    một cách khác nhau
  </b>
  , thì
  <br/>
  <br/>
  <ul>
    <li>
      có tất cả bao nhiêu đường thẳng Pappus?
    </li>
    <li>
      có tất cả bao nhiêu giao điểm Pappus?
    </li>
    <li>
      mỗi giao điểm Pappus nằm trên bao nhiêu đường thẳng Pappus?
    </li>
    <li>
      mỗi đường thẳng Pappus chứa bao nhiêu giao điểm Pappus?
    </li>
  </ul>
  <br/>
  
2. Thay vì sử dụng định lý Menelaus cho tam giác 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
   như trên, gọi 
  <span class="MathJax_Preview">
    X
  </span>
  <script type="math/tex">
//<![CDATA[
X
//]]>
  </script>
   là giao điểm của 
  <span class="MathJax_Preview">
    P_1P_2
  </span>
  <script type="math/tex">
//<![CDATA[
P_1P_2
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    P_3P_4
  </span>
  <script type="math/tex">
//<![CDATA[
P_3P_4
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    Y
  </span>
  <script type="math/tex">
//<![CDATA[
Y
//]]>
  </script>
   là giao điểm của 
  <span class="MathJax_Preview">
    P_1P_2
  </span>
  <script type="math/tex">
//<![CDATA[
P_1P_2
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    P_5P_6
  </span>
  <script type="math/tex">
//<![CDATA[
P_5P_6
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    Z
  </span>
  <script type="math/tex">
//<![CDATA[
Z
//]]>
  </script>
   là giao điểm của 
  <span class="MathJax_Preview">
    P_3P_4
  </span>
  <script type="math/tex">
//<![CDATA[
P_3P_4
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    P_5P_6
  </span>
  <script type="math/tex">
//<![CDATA[
P_5P_6
//]]>
  </script>
  . Chứng minh định lý Pappus bằng cách sử dụng định lý Menelaus cho tam giác 
  <span class="MathJax_Preview">
    XYZ
  </span>
  <script type="math/tex">
//<![CDATA[
XYZ
//]]>
  </script>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-r8xkesgeC-Y/UhP-o31oWgI/AAAAAAAAAog/VgqGxS4dWFk/s1600/pp7.png" height="155" width="400"/>
  </div>
  <div>
    <br/>
  </div>
  <br/>
  <br/>
  
3. Chứng minh rằng nếu 
  <span class="MathJax_Preview">
    P_2P_3
  </span>
  <script type="math/tex">
//<![CDATA[
P_2P_3
//]]>
  </script>
   song song với 
  <span class="MathJax_Preview">
    P_5P_6
  </span>
  <script type="math/tex">
//<![CDATA[
P_5P_6
//]]>
  </script>
  , và 
  <span class="MathJax_Preview">
    P_3P_4
  </span>
  <script type="math/tex">
//<![CDATA[
P_3P_4
//]]>
  </script>
   song song với 
  <span class="MathJax_Preview">
    P_1P_6
  </span>
  <script type="math/tex">
//<![CDATA[
P_1P_6
//]]>
  </script>
  , thì 
  <span class="MathJax_Preview">
    P_1P_2
  </span>
  <script type="math/tex">
//<![CDATA[
P_1P_2
//]]>
  </script>
   sẽ song song với 
  <span class="MathJax_Preview">
    P_4P_5
  </span>
  <script type="math/tex">
//<![CDATA[
P_4P_5
//]]>
  </script>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-6SFweowAN-U/UhP-yLIvfxI/AAAAAAAAAoo/4WmaYTpjFh0/s1600/pp6.png" height="250" width="320"/>
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','67','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-8613108205558151067">
  <span style="color: purple;">
    <span style="font-size: x-large;">
      K
    </span>
  </span>
  ỳ trước chúng ta đã học về 
  <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
    định lý lục giác Pascal
  </a>
  . 
  <b>
    Định lý Pascal
  </b>
   nói rằng nếu trên 
  <i>
    đường cônic
  </i>
   chúng ta vẽ một hình 
  <i>
    lục giác
  </i>
   nội tiếp thì ba cặp cạnh đối diện của hình lục giác sẽ cắt nhau tại 
  <i>
    ba điểm thẳng hàng
  </i>
  .
  <br/>
  <br/>
  
Ví dụ như ở hình dưới đây, chúng ta có một hình lục giác nội tiếp một 
  <i>
    đường tròn
  </i>
  , chúng ta thấy rằng ba giao điểm của ba cặp cạnh đối diện 
  <span class="MathJax_Preview">
    \{12, 45\}
  </span>
  <script type="math/tex">
//<![CDATA[
\{12, 45\}
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    \{23, 56\}
  </span>
  <script type="math/tex">
//<![CDATA[
\{23, 56\}
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    \{34, 61\}
  </span>
  <script type="math/tex">
//<![CDATA[
\{34, 61\}
//]]>
  </script>
   của hình lục giác thẳng hàng.
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-TCuXYCnKo8Q/UdDUvxIwvLI/AAAAAAAAAPg/eGNOn0jmw_s/s400/pascalt2.PNG" height="302" width="400"/>
  </div>
  <br/>
  
Có một công cụ rất hiệu quả thường dùng để chứng minh các điểm thẳng hàng, đó là 
  <a href="http://vuontoanblog.blogspot.com/2013/06/ceva-menelaus.html" target="_blank">
    định lý Menelaus
  </a>
  . Định lý Menelaus phát biểu như sau:
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-2QNfHdiC8f0/UdDWRTO9ebI/AAAAAAAAAPw/dkzpnFxMdHY/s301/Menelaus2.png" height="236" width="400"/>
  </div>
  <blockquote class="tr_bq">
    <span style="color: purple;">
      <b>
        Định lý Menelaus:
      </b>
       Cho tam giác 
      <span class="MathJax_Preview">
        ABC
      </span>
      <script type="math/tex">
//<![CDATA[
ABC
//]]>
      </script>
       và ba điểm 
      <span class="MathJax_Preview">
        A
      </span>
      <script type="math/tex">
//<![CDATA[
A
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        B
      </span>
      <script type="math/tex">
//<![CDATA[
B
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C
      </span>
      <script type="math/tex">
//<![CDATA[
C
//]]>
      </script>
       lần lượt nằm trên ba đường thẳng 
      <span class="MathJax_Preview">
        BC
      </span>
      <script type="math/tex">
//<![CDATA[
BC
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        CA
      </span>
      <script type="math/tex">
//<![CDATA[
CA
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
      . Vậy thì ba điểm 
      <span class="MathJax_Preview">
        A
      </span>
      <script type="math/tex">
//<![CDATA[
A
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        B
      </span>
      <script type="math/tex">
//<![CDATA[
B
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C
      </span>
      <script type="math/tex">
//<![CDATA[
C
//]]>
      </script>
       thẳng hàng khi và chỉ khi 
      <span class="MathJax_Preview">
        \frac{\vec{AB}}{\vec{AC}} \times \frac{\vec{BC}}{\vec{BA}} \times \frac{\vec{CA}}{\vec{CB}} = 1.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
\frac{\vec{AB}}{\vec{AC}} \times \frac{\vec{BC}}{\vec{BA}} \times \frac{\vec{CA}}{\vec{CB}} = 1.
//]]>
      </script>
    </span>
  </blockquote>
  <br/>
  <br/>
  
Hôm nay chúng ta sẽ dùng 
  <i>
    định lý Menelaus
  </i>
   để chứng minh 
  <i>
    định lý Pascal
  </i>
   cho trường hợp đường tròn.
  <br/>
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    K
  </span>
  hi chúng ta muốn dùng định lý Menelaus để chứng minh ba điểm nào đó thẳng hàng, chúng ta cần tìm một hình tam giác sao cho ba điểm cần chứng minh nằm trên ba cạnh của tam giác này.
  <br/>
  <br/>
  
Nhìn hình vẽ dưới đây, với 
  <i>
    lục giác Pascal
  </i>
   
  <span class="MathJax_Preview">
    P_1 P_2 P_3 P_4 P_5 P_6
  </span>
  <script type="math/tex">
//<![CDATA[
P_1 P_2 P_3 P_4 P_5 P_6
//]]>
  </script>
  , để chứng minh ba giao điểm 
  <span class="MathJax_Preview">
    M_1
  </span>
  <script type="math/tex">
//<![CDATA[
M_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_2
  </span>
  <script type="math/tex">
//<![CDATA[
M_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_3
  </span>
  <script type="math/tex">
//<![CDATA[
M_3
//]]>
  </script>
   thẳng hàng, chúng ta cần tìm một tam giác mà ba giao điểm 
  <span class="MathJax_Preview">
    M_1
  </span>
  <script type="math/tex">
//<![CDATA[
M_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_2
  </span>
  <script type="math/tex">
//<![CDATA[
M_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_3
  </span>
  <script type="math/tex">
//<![CDATA[
M_3
//]]>
  </script>
   nằm trên ba cạnh của tam giác đó. Vì các giao điểm 
  <span class="MathJax_Preview">
    M_1
  </span>
  <script type="math/tex">
//<![CDATA[
M_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_2
  </span>
  <script type="math/tex">
//<![CDATA[
M_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_3
  </span>
  <script type="math/tex">
//<![CDATA[
M_3
//]]>
  </script>
   nằm trên các cạnh của lục giác nên chúng ta thấy có hai cách chọn khá là tự nhiên. Đó là tam giác 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
  , hoặc là tam giác 
  <span class="MathJax_Preview">
    XYZ
  </span>
  <script type="math/tex">
//<![CDATA[
XYZ
//]]>
  </script>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-YOmZWS9lifo/UduxF-apD_I/AAAAAAAAAVE/7S0QOBk6glc/s1600/pas2b.png" height="380" width="400"/>
  </div>
  <br/>
  
Chẳng hạn, nếu chúng chọn tam giác 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
   thì điểm 
  <span class="MathJax_Preview">
    M_1
  </span>
  <script type="math/tex">
//<![CDATA[
M_1
//]]>
  </script>
   nằm trên đường thẳng 
  <span class="MathJax_Preview">
    BC
  </span>
  <script type="math/tex">
//<![CDATA[
BC
//]]>
  </script>
  , điểm 
  <span class="MathJax_Preview">
    M_2
  </span>
  <script type="math/tex">
//<![CDATA[
M_2
//]]>
  </script>
   nằm trên đường thẳng 
  <span class="MathJax_Preview">
    CA
  </span>
  <script type="math/tex">
//<![CDATA[
CA
//]]>
  </script>
   và điểm 
  <span class="MathJax_Preview">
    M_3
  </span>
  <script type="math/tex">
//<![CDATA[
M_3
//]]>
  </script>
   nằm trên đường thẳng 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
  . Bây giờ chúng ta cần chứng minh tỷ lệ 
  <span class="MathJax_Preview">
    \frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{M_3 A}}{\vec{M_3 B}} = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{M_3 A}}{\vec{M_3 B}} = 1.
//]]>
  </script>
   Để tính được các tỷ lệ này, chúng ta sẽ sử dụng định lý Menelaus cho các bộ điểm thẳng hàng sau: 
  <span class="MathJax_Preview">
    \{M_1, P_5, P_6\}, ~~\{M_2, P_3, P_4\}, ~~\{M_3, P_1, P_2\}.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\{M_1, P_5, P_6\}, ~~\{M_2, P_3, P_4\}, ~~\{M_3, P_1, P_2\}.
//]]>
  </script>
  <br/>
  
Bây giờ chúng ta sẽ viết cụ thể cách chứng minh.
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394;">
    <span style="font-size: large;">
      Chứng minh Định lý Pascal
    </span>
  </span>
  <br/>
  <br/>
  
Chúng ta sẽ sử dụng định lý Menelaus cho tam giác 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
  .
  <br/>
  <br/>
  
Vì ba 
điểm 
  <span class="MathJax_Preview">
    M_1
  </span>
  <script type="math/tex">
//<![CDATA[
M_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_2
  </span>
  <script type="math/tex">
//<![CDATA[
M_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    M_3
  </span>
  <script type="math/tex">
//<![CDATA[
M_3
//]]>
  </script>
   nằm trên ba cạnh của tam giác 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
   nên để 
chứng minh chúng thẳng hàng chúng ta cần chứng minh 
  <span class="MathJax_Preview">
    \frac{\vec{M_1 
B}}{\vec{M_1 C}} \times \frac{\vec{M_2 C}}{\vec{M_2 A}} \times 
\frac{\vec{M_3 A}}{\vec{M_3 B}} = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{\vec{M_1 
B}}{\vec{M_1 C}} \times \frac{\vec{M_2 C}}{\vec{M_2 A}} \times 
\frac{\vec{M_3 A}}{\vec{M_3 B}} = 1.
//]]>
  </script>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-f8fdC9crcdk/UduycrjHz2I/AAAAAAAAAVU/P1be1lM7riE/s1600/pas3b.png" height="380" width="400"/>
  </div>
  
Thật vậy, sử dụng định lý Menelaus cho tam giác 
  <span class="MathJax_Preview">
    ABC
  </span>
  <script type="math/tex">
//<![CDATA[
ABC
//]]>
  </script>
   với các bộ ba điểm thẳng hàng 
  <span class="MathJax_Preview">
    \{M_1, P_6, P_5\}, ~~\{M_2, P_4, P_3\}, ~~\{M_3, P_2, P_1\},
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\{M_1, P_6, P_5\}, ~~\{M_2, P_4, P_3\}, ~~\{M_3, P_2, P_1\},
//]]>
  </script>
   chúng ta có 
  <span class="MathJax_Preview">
    \frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{P_6 C}}{\vec{P_6 A}} \times \frac{\vec{P_5 A}}{\vec{P_5 B}} = \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{P_4 A}}{\vec{P_4 B}}
 \times \frac{\vec{P_3 B}}{\vec{P_3 C}} = \frac{\vec{M_3 A}}{\vec{M_3 B}} \times \frac{\vec{P_2 B}}{\vec{P_2 C}} \times \frac{\vec{P_1 C}}{\vec{P_1 A}} = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{P_6 C}}{\vec{P_6 A}} \times \frac{\vec{P_5 A}}{\vec{P_5 B}} = \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{P_4 A}}{\vec{P_4 B}}
 \times \frac{\vec{P_3 B}}{\vec{P_3 C}} = \frac{\vec{M_3 A}}{\vec{M_3 B}} \times \frac{\vec{P_2 B}}{\vec{P_2 C}} \times \frac{\vec{P_1 C}}{\vec{P_1 A}} = 1.
//]]>
  </script>
   

Do đó 
  <span class="MathJax_Preview">
    \frac{\vec{M_1 B}}{\vec{M_1 C}} = \frac{\vec{P_6 A}}{\vec{P_6 C}} \times \frac{\vec{P_5 B}}{\vec{P_5 A}}, ~~~\frac{\vec{M_2 C}}{\vec{M_2 A}} = \frac{\vec{P_4 B}}{\vec{P_4 A}} \times \frac{\vec{P_3 C}}{\vec{P_3 B}}, ~~~\frac{\vec{M_3 A}}{\vec{M_3 B}} = \frac{\vec{P_2 C}}{\vec{P_2 B}} \times \frac{\vec{P_1 A}}{\vec{P_1 C}}.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{\vec{M_1 B}}{\vec{M_1 C}} = \frac{\vec{P_6 A}}{\vec{P_6 C}} \times \frac{\vec{P_5 B}}{\vec{P_5 A}}, ~~~\frac{\vec{M_2 C}}{\vec{M_2 A}} = \frac{\vec{P_4 B}}{\vec{P_4 A}} \times \frac{\vec{P_3 C}}{\vec{P_3 B}}, ~~~\frac{\vec{M_3 A}}{\vec{M_3 B}} = \frac{\vec{P_2 C}}{\vec{P_2 B}} \times \frac{\vec{P_1 A}}{\vec{P_1 C}}.
//]]>
  </script>
  

Từ đó, chúng ta có 
  <span class="MathJax_Preview">
    \frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{M_3 A}}{\vec{M_3 B}} = \frac{\vec{P_6 A}}{\vec{P_6 C}} \times \frac{\vec{P_5 B}}{\vec{P_5 A}} \times \frac{\vec{P_4 B}}{\vec{P_4 A}} \times \frac{\vec{P_3 C}}{\vec{P_3 B}} \times \frac{\vec{P_2 C}}{\vec{P_2 B}} \times \frac{\vec{P_1 A}}{\vec{P_1 C}}
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{\vec{M_1 B}}{\vec{M_1 C}} \times \frac{\vec{M_2 C}}{\vec{M_2 A}} \times \frac{\vec{M_3 A}}{\vec{M_3 B}} = \frac{\vec{P_6 A}}{\vec{P_6 C}} \times \frac{\vec{P_5 B}}{\vec{P_5 A}} \times \frac{\vec{P_4 B}}{\vec{P_4 A}} \times \frac{\vec{P_3 C}}{\vec{P_3 B}} \times \frac{\vec{P_2 C}}{\vec{P_2 B}} \times \frac{\vec{P_1 A}}{\vec{P_1 C}}
//]]>
  </script>
  <span class="MathJax_Preview">
     = \frac{\vec{A P_1} ~\vec{A P_6}}{\vec{A P_4} ~\vec{A P_5}} \times \frac{\vec{B P_4} ~\vec{B P_5}}{\vec{B P_2} ~\vec{B P_3}} \times \frac{\vec{C P_2} ~\vec{C P_3}}{\vec{C P_1} ~\vec{C P_6}} = 1.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
 = \frac{\vec{A P_1} ~\vec{A P_6}}{\vec{A P_4} ~\vec{A P_5}} \times \frac{\vec{B P_4} ~\vec{B P_5}}{\vec{B P_2} ~\vec{B P_3}} \times \frac{\vec{C P_2} ~\vec{C P_3}}{\vec{C P_1} ~\vec{C P_6}} = 1.
//]]>
  </script>
  <br/>
  <div>
    <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
      <tbody>
        <tr>
          <td style="text-align: center;">
            <img border="0" src="http://2.bp.blogspot.com/-8GQhWj0yaVw/UduzVNItJoI/AAAAAAAAAVg/SIsod3qfxbc/s1600/pascalpop.png"/>
          </td>
        </tr>
        <tr>
          <td class="tr-caption" style="text-align: center;">
            <span style="font-size: small;">
              Phương tích: 
              <span class="MathJax_Preview">
                \vec{A P_1} ~\vec{A P_6} = \vec{A P_4} ~\vec{A P_5}
              </span>
              <script type="math/tex">
//<![CDATA[
\vec{A P_1} ~\vec{A P_6} = \vec{A P_4} ~\vec{A P_5}
//]]>
              </script>
              ; 
              <span class="MathJax_Preview">
                \vec{B P_4} ~\vec{B P_5} = \vec{B P_2} ~\vec{B P_3}
              </span>
              <script type="math/tex">
//<![CDATA[
\vec{B P_4} ~\vec{B P_5} = \vec{B P_2} ~\vec{B P_3}
//]]>
              </script>
              ; 
              <span class="MathJax_Preview">
                \vec{C P_2} ~\vec{C P_3} = \vec{C P_1} ~\vec{C P_6}
              </span>
              <script type="math/tex">
//<![CDATA[
\vec{C P_2} ~\vec{C P_3} = \vec{C P_1} ~\vec{C P_6}
//]]>
              </script>
              .
            </span>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  <br/>
  
Đẳng thức cuối cùng ở trên là nhờ sử dụng 
  <a href="http://vuontoanblog.blogspot.com/2013/07/power-of-a-point.html" target="_blank">
    <b>
      phương tích
    </b>
  </a>
   của các điểm 
  <span class="MathJax_Preview">
    A
  </span>
  <script type="math/tex">
//<![CDATA[
A
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    B
  </span>
  <script type="math/tex">
//<![CDATA[
B
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    C
  </span>
  <script type="math/tex">
//<![CDATA[
C
//]]>
  </script>
   đối với đường tròn ngoại tiếp hình lục giác. Và như vậy chúng ta chứng minh xong định lý Pascal.
  <br/>
  <br/>
  <br/>
  <div>
    <br/>
  </div>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay nhờ sử dụng một cách linh hoạt định lý Menelaus chúng ta đã chứng minh xong định lý Pascal. Định lý Menelaus là một trong những công cụ rất hiệu quả dùng để chứng minh các điểm thẳng hàng. Các bạn hãy dùng định lý Menelaus để chứng minh định lý Pappus xem thử có được không nhé!
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://3.bp.blogspot.com/-TqBIKf5Rgt4/UdtiEd7u_CI/AAAAAAAAAUk/nOnc1Ffe8eA/s1600/pascalline.png"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          <span style="font-size: xx-small; text-align: start;">
            định lý Pappus
          </span>
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  
Xin hẹn gặp lại các bạn ở kỳ sau.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Chứng minh định lý Pascal bằng cách áp dụng định lý Menelaus cho tam giác 
  <span class="MathJax_Preview">
    XYZ
  </span>
  <script type="math/tex">
//<![CDATA[
XYZ
//]]>
  </script>
  .
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-YOmZWS9lifo/UduxF-apD_I/AAAAAAAAAVE/7S0QOBk6glc/s1600/pas2b.png" height="380" width="400"/>
  </div>
  <br/>
  <br/>
  
2. Chứng minh định lý Pappus.
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','68','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-5763476400264816008">
  <span style="font-size: x-large;">
    <span style="color: purple;">
      K
    </span>
  </span>
  ỳ trước chúng ta đã học về khái niệm 
  <a href="http://vuontoanblog.blogspot.com/2013/07/power-of-a-point.html" target="_blank">
    phương tích
  </a>
  . Phương tích của một điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   đến một đường tròn tâm 
  <span class="MathJax_Preview">
    O
  </span>
  <script type="math/tex">
//<![CDATA[
O
//]]>
  </script>
   bán kính 
  <span class="MathJax_Preview">
    r
  </span>
  <script type="math/tex">
//<![CDATA[
r
//]]>
  </script>
   được xác định bởi công thức sau 
  <span class="MathJax_Preview">
    {\cal P}(P, (O)) = \vec{PU} \times \vec{PV} = PO^2 - r^2 = (P_x - O_x)^2 + (P_y - O_y)^2 - r^2,
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
{\cal P}(P, (O)) = \vec{PU} \times \vec{PV} = PO^2 - r^2 = (P_x - O_x)^2 + (P_y - O_y)^2 - r^2,
//]]>
  </script>
   ở đây, 
  <span class="MathJax_Preview">
    U
  </span>
  <script type="math/tex">
//<![CDATA[
U
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    V
  </span>
  <script type="math/tex">
//<![CDATA[
V
//]]>
  </script>
   là hai giao điểm của đường tròn 
  <span class="MathJax_Preview">
    (O)
  </span>
  <script type="math/tex">
//<![CDATA[
(O)
//]]>
  </script>
   với một 
  <i>
    đường thẳng bất kỳ
  </i>
   đi qua 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
  .
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td>
          <img border="0" src="http://3.bp.blogspot.com/-ZzjKvds_kWQ/UdONSl6sDUI/AAAAAAAAASg/H2t_E_vLkWE/s652/pop9.png" height="228" width="640"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="font-size: 13px;">
          Phương tích: 
          <span class="MathJax_Preview">
            {\cal P}(P, (O)) = \vec{PU} \times \vec{PV} = PO^2 - r^2 = (P_x - O_x)^2 + (P_y - O_y)^2 - r^2
          </span>
          <script type="math/tex">
//<![CDATA[
{\cal P}(P, (O)) = \vec{PU} \times \vec{PV} = PO^2 - r^2 = (P_x - O_x)^2 + (P_y - O_y)^2 - r^2
//]]>
          </script>
          .
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  
Phương tích cho chúng ta biết được vị trí tương đối của điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   đối với đường tròn. Nếu phương tích là 
  <i>
    số dương
  </i>
   thì 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm 
  <i>
    bên ngoài
  </i>
   đường tròn, nếu phương tích là 
  <i>
    số âm
  </i>
   thì 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm 
  <i>
    bên trong
  </i>
   đường tròn, còn nếu phương tích 
  <i>
    bằng 
    <span class="MathJax_Preview">
      0
    </span>
    <script type="math/tex">
//<![CDATA[
0
//]]>
    </script>
  </i>
   thì điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
  <i>
    nằm trên đường tròn
  </i>
  .
  <br/>
  <div>
    <br/>
  </div>
  <div>
    <div>
      
Hôm nay chúng ta sẽ xem xét ứng dụng của phương tích với hai công cụ chính, đó là 
      <b>
        trục đẳng phương
      </b>
       và 
      <b>
        tâm đẳng phương
      </b>
      . 
      <i>
        Trục đẳng phương
      </i>
       thường được dùng để chứng minh các 
      <i>
        điểm thẳng hàng
      </i>
      , còn 
      <i>
        tâm đẳng phương
      </i>
       thường dùng để chứng minh các 
      <i>
        đường thẳng đồng quy
      </i>
      .
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <a name="more">
    </a>
    <br/>
  </div>
  <span style="color: purple; font-size: x-large;">
    G
  </span>
  iả sử chúng ta có hai đường tròn 
  <span class="MathJax_Preview">
    (O_1, r_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1, r_1)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_2, r_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2, r_2)
//]]>
  </script>
   cắt nhau tại hai điểm 
  <span class="MathJax_Preview">
    I
  </span>
  <script type="math/tex">
//<![CDATA[
I
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    J
  </span>
  <script type="math/tex">
//<![CDATA[
J
//]]>
  </script>
   như hình vẽ sau đây. Nếu 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   là một điểm nằm trên đường thẳng 
  <span class="MathJax_Preview">
    IJ
  </span>
  <script type="math/tex">
//<![CDATA[
IJ
//]]>
  </script>
   thì rõ ràng 
  <i>
    phương tích
  </i>
   của 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   đến hai đường tròn này là 
  <i>
    bằng nhau
  </i>
  <span class="MathJax_Preview">
    {\cal P}(P, (O_1)) = \vec{PI} \times \vec{PJ} = {\cal P}(P, (O_2)).
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
{\cal P}(P, (O_1)) = \vec{PI} \times \vec{PJ} = {\cal P}(P, (O_2)).
//]]>
  </script>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-8Cebb7UgJmw/UdOoHP7ItdI/AAAAAAAAATY/4W_VeJtjO9Q/s273/pop13.png"/>
  </div>
  <br/>
  
Nếu chúng ta quan sát kỹ một chút sẽ thấy rằng khi điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   
  <i>
    không nằm trên đường thẳng
  </i>
   
  <span class="MathJax_Preview">
    IJ
  </span>
  <script type="math/tex">
//<![CDATA[
IJ
//]]>
  </script>
   thì 
  <i>
    phương tích của
  </i>
   
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   
  <i>
    đến hai đường tròn sẽ không bằng nhau
  </i>
  . Chẳng hạn như ở hình vẽ sau, chúng ta có 
  <span class="MathJax_Preview">
    {\cal P}(P, (O_1)) = \vec{PI} \times \vec{PA} \neq \vec{PI} \times \vec{PB} = {\cal P}(P, (O_2)).
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
{\cal P}(P, (O_1)) = \vec{PI} \times \vec{PA} \neq \vec{PI} \times \vec{PB} = {\cal P}(P, (O_2)).
//]]>
  </script>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-1iwqhmaQ_tw/UeXQdzJrWjI/AAAAAAAAAZs/k_YZJl0V8sc/s1600/pop13b.png"/>
  </div>
  <br/>
  <div>
    
Như vậy trong trường hợp này chúng ta thấy rằng phương tích của điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     đến hai đường tròn là bằng nhau 
    <i>
      khi và chỉ khi
    </i>
     điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     nằm trên đường thẳng 
    <span class="MathJax_Preview">
      IJ
    </span>
    <script type="math/tex">
//<![CDATA[
IJ
//]]>
    </script>
    . 
  </div>
  <div>
    <br/>
  </div>
  <div>
    <div>
      <br/>
    </div>
    <div>
      <span style="color: purple; font-size: x-large;">
        B
      </span>
      ây giờ chúng ta xem xét một trường hợp khác. Giả sử hai đường tròn 
      <span class="MathJax_Preview">
        (O_1, r_1)
      </span>
      <script type="math/tex">
//<![CDATA[
(O_1, r_1)
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        (O_2, r_2)
      </span>
      <script type="math/tex">
//<![CDATA[
(O_2, r_2)
//]]>
      </script>
      <i>
        không cắt nhau
      </i>
      . Làm thế nào để chúng ta tìm được điểm 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       có cùng phương tích đến hai đường tròn này?
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    
Có một cách khá là đơn giản như sau. Mời các bạn lấy thước và compa vẽ cùng tôi nhé. Các bạn hãy vẽ một đường tròn 
    <span class="MathJax_Preview">
      (O)
    </span>
    <script type="math/tex">
//<![CDATA[
(O)
//]]>
    </script>
     sao cho đường tròn này cắt đường tròn 
    <span class="MathJax_Preview">
      (O_1)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
    </script>
     tại hai điểm 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      B
    </span>
    <script type="math/tex">
//<![CDATA[
B
//]]>
    </script>
    , và cắt đường tròn 
    <span class="MathJax_Preview">
      (O_2)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
    </script>
     tại hai điểm 
    <span class="MathJax_Preview">
      C
    </span>
    <script type="math/tex">
//<![CDATA[
C
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      D
    </span>
    <script type="math/tex">
//<![CDATA[
D
//]]>
    </script>
    . Các bạn lấy giao điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     của hai đường thẳng 
    <span class="MathJax_Preview">
      AB
    </span>
    <script type="math/tex">
//<![CDATA[
AB
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      CD
    </span>
    <script type="math/tex">
//<![CDATA[
CD
//]]>
    </script>
    .
    <br/>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://3.bp.blogspot.com/--ppSwN6Rofo/UeXcHvU3zrI/AAAAAAAAAZ8/z9RArzFYMTM/s1600/temp1.png"/>
    </div>
    <br/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <div>
    <br/>
  </div>
  
Như đã nói ở trên, vì 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm trên đường thẳng 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
   nên 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   có phương tích đến 
  <span class="MathJax_Preview">
    (O)
  </span>
  <script type="math/tex">
//<![CDATA[
(O)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
  </script>
   bằng nhau. Vì 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm trên đường thẳng 
  <span class="MathJax_Preview">
    CD
  </span>
  <script type="math/tex">
//<![CDATA[
CD
//]]>
  </script>
   nên 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   có phương tích đến 
  <span class="MathJax_Preview">
    (O)
  </span>
  <script type="math/tex">
//<![CDATA[
(O)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
  </script>
   bằng nhau. Từ đó suy ra phương tích của 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   đến hai đường tròn 
  <span class="MathJax_Preview">
    (O_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
  </script>
   là bằng nhau!
  <br/>
  <div>
    <br/>
  </div>
  <div>
    
Các bạn hãy vẽ thật nhiều đường tròn 
    <span class="MathJax_Preview">
      (O)
    </span>
    <script type="math/tex">
//<![CDATA[
(O)
//]]>
    </script>
     ở những vị trí khác nhau, rồi quan sát xem vị trí của giao điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     thay đổi như thế nào. Các bạn đã nhận ra quy luật gì chưa? Đó là các giao điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     dao động trên một đường thẳng!
  </div>
  <div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://4.bp.blogspot.com/-nSIwd4tHyeM/UeXcR5A9jSI/AAAAAAAAAaE/6nao5Tati_U/s1600/temp2.png"/>
    </div>
    <br/>
  </div>
  
Vậy quỹ tích tất cả các điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   sao cho phương tích của 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   đến hai đường tròn 
  <span class="MathJax_Preview">
    (O_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
  </script>
   bằng nhau là một 
  <i>
    đường thẳng
  </i>
  . Đường thẳng này chúng ta gọi là 
  <b>
    trục đẳng phương
  </b>
   của hai đường tròn 
  <span class="MathJax_Preview">
    (O_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
  </script>
  .
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Trục đẳng phương
  </span>
  <br/>
  <br/>
  
Bây giờ chúng ta sẽ phát biểu 
  <b>
    định lý về trục đẳng phương
  </b>
  . Có nhiều cách để chứng minh định lý này. Chúng ta sẽ trình bày hai cách chứng minh. Cách chứng minh thứ nhất sử dụng vectơ, còn cách chứng minh thứ hai sử dụng hệ trục toạ độ.
  <br/>
  <div>
    <br/>
  </div>
  <div>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Định lý về trục đẳng phương.
        </b>
         Cho hai đường tròn 
        <span class="MathJax_Preview">
          (O_1, r_1)
        </span>
        <script type="math/tex">
//<![CDATA[
(O_1, r_1)
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          (O_2, r_2)
        </span>
        <script type="math/tex">
//<![CDATA[
(O_2, r_2)
//]]>
        </script>
         có tâm là hai điểm khác nhau (
        <span class="MathJax_Preview">
          O_1 \neq O_2
        </span>
        <script type="math/tex">
//<![CDATA[
O_1 \neq O_2
//]]>
        </script>
        ). Vậy thì quỹ tích tất cả các điểm 
        <span class="MathJax_Preview">
          P
        </span>
        <script type="math/tex">
//<![CDATA[
P
//]]>
        </script>
         sao cho phương tích của 
        <span class="MathJax_Preview">
          P
        </span>
        <script type="math/tex">
//<![CDATA[
P
//]]>
        </script>
         đến hai đường tròn 
        <span class="MathJax_Preview">
          (O_1)
        </span>
        <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          (O_2)
        </span>
        <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
        </script>
         bằng nhau là một 
        <i>
          đường thẳng
        </i>
        . Đường thẳng này gọi là trục đẳng phương của hai đường tròn 
        <span class="MathJax_Preview">
          (O_1)
        </span>
        <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          (O_2)
        </span>
        <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
        </script>
        . Trục đẳng phương 
        <i>
          vuông góc
        </i>
         với đường thẳng 
        <span class="MathJax_Preview">
          O_1 O_2
        </span>
        <script type="math/tex">
//<![CDATA[
O_1 O_2
//]]>
        </script>
         nối hai tâm của đường tròn.
      </span>
    </blockquote>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <div>
      
Sử dụng công thức phương tích 
      <span class="MathJax_Preview">
        {\cal P}(P, (O_1)) = PO_1^2 - r_1^2,
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
{\cal P}(P, (O_1)) = PO_1^2 - r_1^2,
//]]>
      </script>
      <span class="MathJax_Preview">
        {\cal P}(P, (O_2)) = PO_2^2 - r_2^2,
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
{\cal P}(P, (O_2)) = PO_2^2 - r_2^2,
//]]>
      </script>
       chúng ta thấy rằng việc tìm quỹ tích điểm 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       để 
      <span class="MathJax_Preview">
        {\cal P}(P, (O_1)) = {\cal P}(P, (O_2))
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
{\cal P}(P, (O_1)) = {\cal P}(P, (O_2))
//]]>
      </script>
       chính là bài toán tìm quỹ tích điểm 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       để hiệu của bình phương khoảng cách từ 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       đến hai tâm 
      <span class="MathJax_Preview">
        O_1
      </span>
      <script type="math/tex">
//<![CDATA[
O_1
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        O_2
      </span>
      <script type="math/tex">
//<![CDATA[
O_2
//]]>
      </script>
       là một hằng số 
      <span class="MathJax_Preview">
        PO_2^2 - PO_1^2 = r_2^2 - r_1^2 = c.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
PO_2^2 - PO_1^2 = r_2^2 - r_1^2 = c.
//]]>
      </script>
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <div>
      <b>
        <span style="color: purple;">
          Cách chứng minh sử dụng vectơ.
        </span>
      </b>
      <span class="MathJax_Preview">
        c = PO_2^2 - PO_1^2 = (\vec{PO_2} + \vec{PO_1})(\vec{PO_2} - \vec{PO_1}) = 2 \vec{PM} ~\vec{O_1 O_2},
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
c = PO_2^2 - PO_1^2 = (\vec{PO_2} + \vec{PO_1})(\vec{PO_2} - \vec{PO_1}) = 2 \vec{PM} ~\vec{O_1 O_2},
//]]>
      </script>
       ở đây 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       là trung điểm của 
      <span class="MathJax_Preview">
        O_1 O_2
      </span>
      <script type="math/tex">
//<![CDATA[
O_1 O_2
//]]>
      </script>
      . 
    </div>
    <div class="separator" style="clear: both; text-align: center;">
    </div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://3.bp.blogspot.com/-qjURw-2kdss/UeXuhDjsxUI/AAAAAAAAAac/OR4GNSDollg/s1600/plocus.png"/>
    </div>
    <div>
      <br/>
    </div>
    <div>
      
Hạ đường vuông góc 
      <span class="MathJax_Preview">
        PH
      </span>
      <script type="math/tex">
//<![CDATA[
PH
//]]>
      </script>
       xuống đường thẳng 
      <span class="MathJax_Preview">
        O_1 O_2
      </span>
      <script type="math/tex">
//<![CDATA[
O_1 O_2
//]]>
      </script>
      , chúng ta có 
      <span class="MathJax_Preview">
        c = PO_2^2 - PO_1^2 = 2 \vec{PM} ~\vec{O_1 O_2} = 2 (\vec{PH} + \vec{HM}) \vec{O_1 O_2} = 2 \vec{HM} ~\vec{O_1 O_2}.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
c = PO_2^2 - PO_1^2 = 2 \vec{PM} ~\vec{O_1 O_2} = 2 (\vec{PH} + \vec{HM}) \vec{O_1 O_2} = 2 \vec{HM} ~\vec{O_1 O_2}.
//]]>
      </script>
    </div>
    <div>
      
Suy ra điểm 
      <span class="MathJax_Preview">
        H
      </span>
      <script type="math/tex">
//<![CDATA[
H
//]]>
      </script>
       là một điểm cố định trên đường thẳng 
      <span class="MathJax_Preview">
        O_1 O_2
      </span>
      <script type="math/tex">
//<![CDATA[
O_1 O_2
//]]>
      </script>
       xác định bởi công thức 
      <span class="MathJax_Preview">
        \overline{HM} = \frac{c}{2 \overline{O_1 O_2}}.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
\overline{HM} = \frac{c}{2 \overline{O_1 O_2}}.
//]]>
      </script>
    </div>
  </div>
  <div>
    
Vậy quỹ tích của 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     là đường thẳng đi qua điểm 
    <span class="MathJax_Preview">
      H
    </span>
    <script type="math/tex">
//<![CDATA[
H
//]]>
    </script>
     vuông góc với 
    <span class="MathJax_Preview">
      O_1 O_2
    </span>
    <script type="math/tex">
//<![CDATA[
O_1 O_2
//]]>
    </script>
    , và định lý đã được chứng minh.
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <div>
      <b>
        <span style="color: purple;">
          Cách chứng minh sử dụng toạ độ.
        </span>
      </b>
      <span class="MathJax_Preview">
        c = PO_2^2 - PO_1^2 = [(P_x - O_{2x})^2 + (P_y - O_{2y})^2] - [(P_x - O_{1x})^2 + (P_y - O_{1y})^2]
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
c = PO_2^2 - PO_1^2 = [(P_x - O_{2x})^2 + (P_y - O_{2y})^2] - [(P_x - O_{1x})^2 + (P_y - O_{1y})^2]
//]]>
      </script>
      <span class="MathJax_Preview">
        = 2(O_{1x} - O_{2x}) P_x + 2(O_{1y} - O_{2y}) P_y + (O_{2x}^2 + O_{2y}^2 - O_{1x}^2 - O_{1y}^2)
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
= 2(O_{1x} - O_{2x}) P_x + 2(O_{1y} - O_{2y}) P_y + (O_{2x}^2 + O_{2y}^2 - O_{1x}^2 - O_{1y}^2)
//]]>
      </script>
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    
Vậy quỹ tích của 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     là 
    <b>
      đường thẳng
    </b>
     có phương trình 
    <span class="MathJax_Preview">
      (O_{1x} - O_{2x}) x + (O_{1y} - O_{2y}) y + \frac{1}{2}(O_{2x}^2 + O_{2y}^2 - O_{1x}^2 - O_{1y}^2 - c) = 0.
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
(O_{1x} - O_{2x}) x + (O_{1y} - O_{2y}) y + \frac{1}{2}(O_{2x}^2 + O_{2y}^2 - O_{1x}^2 - O_{1y}^2 - c) = 0.
//]]>
    </script>
  </div>
  <div>
    
So sánh hệ số góc, chúng ta thấy đường thẳng này 
    <i>
      vuông góc
    </i>
     với đường thẳng 
    <span class="MathJax_Preview">
      O_1 O_2
    </span>
    <script type="math/tex">
//<![CDATA[
O_1 O_2
//]]>
    </script>
    . Vậy định lý đã được chứng minh.
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <div>
      <span style="color: purple; font-size: x-large;">
        N
      </span>
      hư vậy chúng ta đã trình bày xong hai cách chứng minh định lý về trục đẳng phương. Trục đẳng phương của hai đường tròn 
      <span class="MathJax_Preview">
        (O_1)
      </span>
      <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        (O_2)
      </span>
      <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
      </script>
       là một 
      <i>
        đường thẳng vuông góc
      </i>
       với đường nối hai tâm 
      <span class="MathJax_Preview">
        O_1 O_2
      </span>
      <script type="math/tex">
//<![CDATA[
O_1 O_2
//]]>
      </script>
      . Nếu hai đường tròn 
      <span class="MathJax_Preview">
        (O_1)
      </span>
      <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        (O_2)
      </span>
      <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
      </script>
       cắt nhau thì trục đẳng phương chính là đường thẳng nối hai giao điểm.
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <div>
      
Sử dụng công cụ trục đẳng phương chúng ta có thể chứng minh về 
      <i>
        các điểm thẳng hàng
      </i>
      . Ví dụ, để chứng minh một vài điểm nào đó thẳng hàng, chúng ta sẽ chứng minh rằng các điểm này có cùng phương tích đến hai đường tròn nào đó, từ đó suy ra các điểm này nằm trên trục đẳng phương của hai đường tròn và vì vậy chúng thẳng hàng.
    </div>
    <div>
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <span style="color: #0b5394; font-size: large;">
      Tâm đẳng phương
    </span>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <span style="color: purple; font-size: x-large;">
    Ở
  </span>
   trên, chúng ta đã học về trục đẳng phương của hai đường tròn. Một điểm nằm trên trục đẳng phương sẽ có phương tích đến hai đường tròn bằng nhau. Bây giờ, tương tự như vậy, nếu chúng ta có 
  <i>
    ba đường tròn
  </i>
  <span class="MathJax_Preview">
    (O_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    (O_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_3)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_3)
//]]>
  </script>
  , thì 
  <b>
    tâm đẳng phương
  </b>
   của ba đường tròn này là một điểm có phương tích đến ba đường tròn bằng nhau.
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-neq5MphmJ_4/UeX6_DYUXHI/AAAAAAAAAas/dpL0BMVjpfI/s1600/popc.png" height="244" width="400"/>
  </div>
  <br/>
  
Chúng ta hãy cùng phân tích. Giả sử điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   có phương tích bằng nhau đến ba đường tròn 
  <span class="MathJax_Preview">
    (O_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    (O_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_3)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_3)
//]]>
  </script>
  <span class="MathJax_Preview">
    {\cal P}(P, (O_1)) = {\cal P}(P, (O_2)) = {\cal P}(P, (O_3)).
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
{\cal P}(P, (O_1)) = {\cal P}(P, (O_2)) = {\cal P}(P, (O_3)).
//]]>
  </script>
  <br/>
  <br/>
  
Rõ ràng, vì 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   có cùng phương tích đến 
  <span class="MathJax_Preview">
    (O_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
  </script>
   cho nên 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   phải nằm trên trục đẳng phương của hai đường tròn 
  <span class="MathJax_Preview">
    (O_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
  </script>
  . Lý luận tương tự, 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   phải nằm trên trục đẳng phương của hai đường tròn 
  <span class="MathJax_Preview">
    (O_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_3)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_3)
//]]>
  </script>
  , và 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   phải nằm trên trục đẳng phương của hai đường tròn 
  <span class="MathJax_Preview">
    (O_3)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_3)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
  </script>
  . Chứng tỏ ba trục đẳng phương này đồng quy ở điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
  .
  <br/>
  <div>
    <br/>
  </div>
  <div>
    <div>
      
Từ định lý về trục đẳng phương, chúng ta biết rằng trục đẳng phương 
      <i>
        vuông góc
      </i>
       với đường thẳng nối hai tâm. Vậy nếu các tâm đường tròn 
      <span class="MathJax_Preview">
        O_1
      </span>
      <script type="math/tex">
//<![CDATA[
O_1
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        O_2
      </span>
      <script type="math/tex">
//<![CDATA[
O_2
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        O_3
      </span>
      <script type="math/tex">
//<![CDATA[
O_3
//]]>
      </script>
       thẳng hàng thì ba trục đẳng phương đều vuông góc với đường thẳng 
      <span class="MathJax_Preview">
        O_1 O_2 O_3
      </span>
      <script type="math/tex">
//<![CDATA[
O_1 O_2 O_3
//]]>
      </script>
      . Ở trường hợp này ba trục đẳng phương sẽ song song với nhau.
    </div>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://2.bp.blogspot.com/-UDvKg0GMByA/UeYA1MQqZAI/AAAAAAAAAa8/yYvI9NMrSVU/s1600/popp.png" height="217" width="400"/>
    </div>
    <div>
      <br/>
    </div>
    <div>
      
Chúng ta phát biểu định lý về tâm đẳng phương.
    </div>
  </div>
  <div>
    <blockquote class="tr_bq">
      <span style="color: purple;">
        <b>
          Định lý về tâm đẳng phương.
        </b>
         Cho ba đường tròn 
        <span class="MathJax_Preview">
          (O_1)
        </span>
        <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
        </script>
        , 
        <span class="MathJax_Preview">
          (O_2)
        </span>
        <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
        </script>
         và 
        <span class="MathJax_Preview">
          (O_3)
        </span>
        <script type="math/tex">
//<![CDATA[
(O_3)
//]]>
        </script>
         có tâm là ba điểm khác nhau. 
      </span>
      <br/>
      <ul>
        <li>
          <span style="color: purple;">
            Nếu ba điểm 
            <span class="MathJax_Preview">
              O_1
            </span>
            <script type="math/tex">
//<![CDATA[
O_1
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              O_2
            </span>
            <script type="math/tex">
//<![CDATA[
O_2
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              O_3
            </span>
            <script type="math/tex">
//<![CDATA[
O_3
//]]>
            </script>
             thẳng hàng thì ba trục đẳng phương của các cặp đường tròn 
            <span class="MathJax_Preview">
              \{(O_1), (O_2)\}
            </span>
            <script type="math/tex">
//<![CDATA[
\{(O_1), (O_2)\}
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              \{(O_2), (O_3)\}
            </span>
            <script type="math/tex">
//<![CDATA[
\{(O_2), (O_3)\}
//]]>
            </script>
             và 
            <span class="MathJax_Preview">
              \{(O_3), (O_1)\}
            </span>
            <script type="math/tex">
//<![CDATA[
\{(O_3), (O_1)\}
//]]>
            </script>
             song song với nhau;
          </span>
        </li>
      </ul>
      <ul>
        <li>
          <span style="color: purple;">
            Nếu ba điểm 
            <span class="MathJax_Preview">
              O_1
            </span>
            <script type="math/tex">
//<![CDATA[
O_1
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              O_2
            </span>
            <script type="math/tex">
//<![CDATA[
O_2
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              O_3
            </span>
            <script type="math/tex">
//<![CDATA[
O_3
//]]>
            </script>
             không thẳng hàng thì ba trục đẳng phương của các cặp đường tròn 
            <span class="MathJax_Preview">
              \{(O_1), (O_2)\}
            </span>
            <script type="math/tex">
//<![CDATA[
\{(O_1), (O_2)\}
//]]>
            </script>
            , 
            <span class="MathJax_Preview">
              \{(O_2), (O_3)\}
            </span>
            <script type="math/tex">
//<![CDATA[
\{(O_2), (O_3)\}
//]]>
            </script>
             và 
            <span class="MathJax_Preview">
              \{(O_3), (O_1)\}
            </span>
            <script type="math/tex">
//<![CDATA[
\{(O_3), (O_1)\}
//]]>
            </script>
             đồng quy tại một điểm gọi là 
            <b>
              tâm đẳng phương
            </b>
             của ba đường tròn. Tâm đẳng phương có phương tích đến ba đường tròn bằng nhau.
          </span>
        </li>
      </ul>
    </blockquote>
  </div>
  <div>
    <br/>
  </div>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Ứng dụng
  </span>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    S
  </span>
  ử dụng công cụ 
  <i>
    trục đẳng phương
  </i>
   chúng ta có thể chứng minh về 
  <i>
    các điểm thẳng hàng
  </i>
  . Để chứng minh một vài điểm nào đó thẳng hàng, chúng ta sẽ chứng minh rằng các điểm này có cùng phương tích đến hai đường tròn nào đó, từ đó suy ra các điểm này nằm trên trục đẳng phương của hai đường tròn.
  <br/>
  <br/>
  
Tương tự, để chứng minh các 
  <i>
    đường thẳng đồng quy
  </i>
  , chúng ta chứng minh các đường thẳng này là các trục đẳng phương của một số cặp đường tròn rồi từ đó suy ra chúng đồng quy tại 
  <i>
    tâm đẳng phương
  </i>
  .
  <br/>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    
Chúng ta xem xét một vài bài toán.
  </div>
  <div>
    <br/>
  </div>
  <div>
    <div>
      <b>
        <span style="color: purple;">
          Bài toán 1.
        </span>
      </b>
       Cho tam giác 
      <span class="MathJax_Preview">
        ABC
      </span>
      <script type="math/tex">
//<![CDATA[
ABC
//]]>
      </script>
      . Dựng ra bên ngoài tam giác 
      <span class="MathJax_Preview">
        ABC
      </span>
      <script type="math/tex">
//<![CDATA[
ABC
//]]>
      </script>
       ba tam giác cân 
      <span class="MathJax_Preview">
        BAC
      </span>
      <script type="math/tex">
//<![CDATA[
BAC
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        CBA
      </span>
      <script type="math/tex">
//<![CDATA[
CBA
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        ACB
      </span>
      <script type="math/tex">
//<![CDATA[
ACB
//]]>
      </script>
       mà cạnh đáy lần lượt là 
      <span class="MathJax_Preview">
        BC
      </span>
      <script type="math/tex">
//<![CDATA[
BC
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        CA
      </span>
      <script type="math/tex">
//<![CDATA[
CA
//]]>
      </script>
       và 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
      . Chứng minh rằng đường thẳng qua 
      <span class="MathJax_Preview">
        A
      </span>
      <script type="math/tex">
//<![CDATA[
A
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        B
      </span>
      <script type="math/tex">
//<![CDATA[
B
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        C
      </span>
      <script type="math/tex">
//<![CDATA[
C
//]]>
      </script>
       lần lượt vuông góc với 
      <span class="MathJax_Preview">
        BC
      </span>
      <script type="math/tex">
//<![CDATA[
BC
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        CA
      </span>
      <script type="math/tex">
//<![CDATA[
CA
//]]>
      </script>
      , 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
       đồng quy.
    </div>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <b>
      <span style="color: purple;">
        Lời giải.
      </span>
    </b>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-u3gVtYMTfeo/UeYkSwUUkQI/AAAAAAAAAbc/j2Tu4NnEWbs/s1600/tem5.png"/>
  </div>
  <div>
    <b>
      <span style="color: purple;">
        <br/>
      </span>
    </b>
  </div>
  <div>
    
Qua tâm 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
     vẽ đường tròn đi qua hai điểm 
    <span class="MathJax_Preview">
      B
    </span>
    <script type="math/tex">
//<![CDATA[
B
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      C
    </span>
    <script type="math/tex">
//<![CDATA[
C
//]]>
    </script>
    . Qua tâm 
    <span class="MathJax_Preview">
      B
    </span>
    <script type="math/tex">
//<![CDATA[
B
//]]>
    </script>
     vẽ đường tròn đi qua hai điểm 
    <span class="MathJax_Preview">
      C
    </span>
    <script type="math/tex">
//<![CDATA[
C
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
    . Qua tâm 
    <span class="MathJax_Preview">
      C
    </span>
    <script type="math/tex">
//<![CDATA[
C
//]]>
    </script>
     vẽ đường tròn đi qua hai điểm 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      B
    </span>
    <script type="math/tex">
//<![CDATA[
B
//]]>
    </script>
    .
  </div>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-my8z6NCbMn4/UeYliOUH23I/AAAAAAAAAbs/T3XIrRc4OLs/s1600/tem4.png"/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    
Vậy thì đường thẳng qua 
    <span class="MathJax_Preview">
      A
    </span>
    <script type="math/tex">
//<![CDATA[
A
//]]>
    </script>
     vuông góc với 
    <span class="MathJax_Preview">
      BC
    </span>
    <script type="math/tex">
//<![CDATA[
BC
//]]>
    </script>
     chính là trục đẳng phương của hai đường tròn 
    <span class="MathJax_Preview">
      (B)
    </span>
    <script type="math/tex">
//<![CDATA[
(B)
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      (C)
    </span>
    <script type="math/tex">
//<![CDATA[
(C)
//]]>
    </script>
    . Tương tự thì đường thẳng qua 
    <span class="MathJax_Preview">
      B
    </span>
    <script type="math/tex">
//<![CDATA[
B
//]]>
    </script>
     vuông góc với 
    <span class="MathJax_Preview">
      CA
    </span>
    <script type="math/tex">
//<![CDATA[
CA
//]]>
    </script>
     là trục đẳng phương của hai đường tròn 
    <span class="MathJax_Preview">
      (C)
    </span>
    <script type="math/tex">
//<![CDATA[
(C)
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      (A)
    </span>
    <script type="math/tex">
//<![CDATA[
(A)
//]]>
    </script>
    , và đường thẳng qua 
    <span class="MathJax_Preview">
      C
    </span>
    <script type="math/tex">
//<![CDATA[
C
//]]>
    </script>
     vuông góc với 
    <span class="MathJax_Preview">
      AB
    </span>
    <script type="math/tex">
//<![CDATA[
AB
//]]>
    </script>
     là trục đẳng phương của hai đường tròn 
    <span class="MathJax_Preview">
      (A)
    </span>
    <script type="math/tex">
//<![CDATA[
(A)
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      (B)
    </span>
    <script type="math/tex">
//<![CDATA[
(B)
//]]>
    </script>
    . Từ đó suy ra ba đường thẳng này đồng quy tại tâm đẳng phương của ba đường tròn 
    <span class="MathJax_Preview">
      (A)
    </span>
    <script type="math/tex">
//<![CDATA[
(A)
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      (B)
    </span>
    <script type="math/tex">
//<![CDATA[
(B)
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      (C)
    </span>
    <script type="math/tex">
//<![CDATA[
(C)
//]]>
    </script>
    , và bài toán đã được chứng minh.
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <b>
    <span style="color: purple;">
      Bài toán 2
    </span>
  </b>
   (
  <a href="http://www.imo-official.org/" target="_blank">
    Đề thi Toán Quốc tế 1995
  </a>
  ). Cho bốn điểm khác nhau 
  <span class="MathJax_Preview">
    A
  </span>
  <script type="math/tex">
//<![CDATA[
A
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    B
  </span>
  <script type="math/tex">
//<![CDATA[
B
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    C
  </span>
  <script type="math/tex">
//<![CDATA[
C
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    D
  </span>
  <script type="math/tex">
//<![CDATA[
D
//]]>
  </script>
   nằm trên một đường thẳng theo thứ tự này. Hai đường tròn có đường kính là 
  <span class="MathJax_Preview">
    AC
  </span>
  <script type="math/tex">
//<![CDATA[
AC
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    BD
  </span>
  <script type="math/tex">
//<![CDATA[
BD
//]]>
  </script>
   cắt nhau tại hai điểm 
  <span class="MathJax_Preview">
    X
  </span>
  <script type="math/tex">
//<![CDATA[
X
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    Y
  </span>
  <script type="math/tex">
//<![CDATA[
Y
//]]>
  </script>
  . Đường thẳng 
  <span class="MathJax_Preview">
    XY
  </span>
  <script type="math/tex">
//<![CDATA[
XY
//]]>
  </script>
   cắt 
  <span class="MathJax_Preview">
    BC
  </span>
  <script type="math/tex">
//<![CDATA[
BC
//]]>
  </script>
   tại điểm 
  <span class="MathJax_Preview">
    Z
  </span>
  <script type="math/tex">
//<![CDATA[
Z
//]]>
  </script>
  . Giả sử 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   là một điểm khác 
  <span class="MathJax_Preview">
    Z
  </span>
  <script type="math/tex">
//<![CDATA[
Z
//]]>
  </script>
   nằm trên đường thẳng 
  <span class="MathJax_Preview">
    XY
  </span>
  <script type="math/tex">
//<![CDATA[
XY
//]]>
  </script>
  . Đường thẳng 
  <span class="MathJax_Preview">
    CP
  </span>
  <script type="math/tex">
//<![CDATA[
CP
//]]>
  </script>
   cắt đường tròn đường kính 
  <span class="MathJax_Preview">
    AC
  </span>
  <script type="math/tex">
//<![CDATA[
AC
//]]>
  </script>
   tại hai điểm là 
  <span class="MathJax_Preview">
    C
  </span>
  <script type="math/tex">
//<![CDATA[
C
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    M
  </span>
  <script type="math/tex">
//<![CDATA[
M
//]]>
  </script>
  . Đường thẳng 
  <span class="MathJax_Preview">
    BP
  </span>
  <script type="math/tex">
//<![CDATA[
BP
//]]>
  </script>
   cắt đường tròn đường kính 
  <span class="MathJax_Preview">
    BD
  </span>
  <script type="math/tex">
//<![CDATA[
BD
//]]>
  </script>
   tại hai điểm là 
  <span class="MathJax_Preview">
    B
  </span>
  <script type="math/tex">
//<![CDATA[
B
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    N
  </span>
  <script type="math/tex">
//<![CDATA[
N
//]]>
  </script>
  . Chứng minh rằng ba đường thẳng 
  <span class="MathJax_Preview">
    AM
  </span>
  <script type="math/tex">
//<![CDATA[
AM
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    DN
  </span>
  <script type="math/tex">
//<![CDATA[
DN
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    XY
  </span>
  <script type="math/tex">
//<![CDATA[
XY
//]]>
  </script>
   đồng quy.
  <br/>
  <div>
    <br/>
  </div>
  <b>
    <span style="color: purple;">
      Lời giải.
    </span>
  </b>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-jjPOc_HGLaI/UeYOtGKYJ8I/AAAAAAAAAbM/UAqvJr7ltlI/s1600/p1.png" height="264" width="320"/>
  </div>
  <br/>
  
Để chứng minh ba đường thẳng 
  <span class="MathJax_Preview">
    AM
  </span>
  <script type="math/tex">
//<![CDATA[
AM
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    DN
  </span>
  <script type="math/tex">
//<![CDATA[
DN
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    XY
  </span>
  <script type="math/tex">
//<![CDATA[
XY
//]]>
  </script>
   đồng quy, chúng ta gọi 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
   là giao điểm của 
  <span class="MathJax_Preview">
    AM
  </span>
  <script type="math/tex">
//<![CDATA[
AM
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    XY
  </span>
  <script type="math/tex">
//<![CDATA[
XY
//]]>
  </script>
   rồi chứng minh điểm 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
   nằm trên đường thẳng 
  <span class="MathJax_Preview">
    DN
  </span>
  <script type="math/tex">
//<![CDATA[
DN
//]]>
  </script>
  .
  <br/>
  <br/>
  
Vì 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
   nằm trên 
  <span class="MathJax_Preview">
    XY
  </span>
  <script type="math/tex">
//<![CDATA[
XY
//]]>
  </script>
   nên 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
   có cùng phương tích đến hai đường tròn đường kính 
  <span class="MathJax_Preview">
    BD
  </span>
  <script type="math/tex">
//<![CDATA[
BD
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    AC
  </span>
  <script type="math/tex">
//<![CDATA[
AC
//]]>
  </script>
  .
  <br/>
  
Vì 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
   nằm trên 
  <span class="MathJax_Preview">
    AM
  </span>
  <script type="math/tex">
//<![CDATA[
AM
//]]>
  </script>
   nên 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
   có cùng phương tích đến hai đường tròn đường kính 
  <span class="MathJax_Preview">
    AC
  </span>
  <script type="math/tex">
//<![CDATA[
AC
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    AP
  </span>
  <script type="math/tex">
//<![CDATA[
AP
//]]>
  </script>
  .
  <br/>
  
Vì 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
   nằm trên 
  <span class="MathJax_Preview">
    PZ
  </span>
  <script type="math/tex">
//<![CDATA[
PZ
//]]>
  </script>
   nên 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
   có cùng phương tích đến hai đường tròn đường kính 
  <span class="MathJax_Preview">
    AP
  </span>
  <script type="math/tex">
//<![CDATA[
AP
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    DP
  </span>
  <script type="math/tex">
//<![CDATA[
DP
//]]>
  </script>
  .
  <br/>
  <br/>
  
Suy ra 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
   có cùng phương tích đến hai đường tròn đường kính 
  <span class="MathJax_Preview">
    BD
  </span>
  <script type="math/tex">
//<![CDATA[
BD
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    DP
  </span>
  <script type="math/tex">
//<![CDATA[
DP
//]]>
  </script>
  . Đường thẳng 
  <span class="MathJax_Preview">
    DN
  </span>
  <script type="math/tex">
//<![CDATA[
DN
//]]>
  </script>
   là trục đẳng phương của hai đường tròn này vì vậy 
  <span class="MathJax_Preview">
    T
  </span>
  <script type="math/tex">
//<![CDATA[
T
//]]>
  </script>
   nằm trên đường thẳng 
  <span class="MathJax_Preview">
    DN
  </span>
  <script type="math/tex">
//<![CDATA[
DN
//]]>
  </script>
  . Vậy bài toán đã được chứng minh.
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay chúng ta đã học thêm về phương tích, về trục đẳng phương của hai đường tròn và tâm đẳng phương của ba đường tròn. Chúng ta tạm dừng ở đây, hẹn gặp lại các bạn ở kỳ sau, chúng ta sẽ dùng phương tích để chứng minh 
  <a href="http://vuontoanblog.blogspot.com/2013/06/hexagrammum-mysticum1.html" target="_blank">
    định lý Pascal
  </a>
   cho trường hợp đường tròn.
  <br/>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <i>
    Bài tập về nhà.
  </i>
  <br/>
  <br/>
  
1. Sử dụng 
  <a href="http://vuontoanblog.blogspot.com/2013/06/Garfield-Pythagorean-Theorem.html" target="_blank">
    định lý Pitago
  </a>
   để tìm quỹ tích các điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   thoã mãn  
  <span class="MathJax_Preview">
    PO_2^2 - PO_1^2 = c.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
PO_2^2 - PO_1^2 = c.
//]]>
  </script>
   (
  <i>
    Gợi ý:
  </i>
   Hạ đường vuông góc 
  <span class="MathJax_Preview">
    PH
  </span>
  <script type="math/tex">
//<![CDATA[
PH
//]]>
  </script>
   xuống đường thẳng 
  <span class="MathJax_Preview">
    O_1 O_2
  </span>
  <script type="math/tex">
//<![CDATA[
O_1 O_2
//]]>
  </script>
   rồi sử dụng định lý Pitago.)
  <br/>
  <br/>
  <br/>
  
2. Giả sử 
  <span class="MathJax_Preview">
    A_1 A_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_1 A_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    B_1 B_2
  </span>
  <script type="math/tex">
//<![CDATA[
B_1 B_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    C_1 C_2
  </span>
  <script type="math/tex">
//<![CDATA[
C_1 C_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    D_1 D_2
  </span>
  <script type="math/tex">
//<![CDATA[
D_1 D_2
//]]>
  </script>
   là các tiếp tuyến chung của hai đường tròn 
  <span class="MathJax_Preview">
    (O_1)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    (O_2)
  </span>
  <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
  </script>
   như hình vẽ sau. Chứng minh rằng các trung điểm 
  <span class="MathJax_Preview">
    A
  </span>
  <script type="math/tex">
//<![CDATA[
A
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    B
  </span>
  <script type="math/tex">
//<![CDATA[
B
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    C
  </span>
  <script type="math/tex">
//<![CDATA[
C
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    D
  </span>
  <script type="math/tex">
//<![CDATA[
D
//]]>
  </script>
   của 
  <span class="MathJax_Preview">
    A_1 A_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_1 A_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    B_1 B_2
  </span>
  <script type="math/tex">
//<![CDATA[
B_1 B_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    C_1 C_2
  </span>
  <script type="math/tex">
//<![CDATA[
C_1 C_2
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    D_1 D_2
  </span>
  <script type="math/tex">
//<![CDATA[
D_1 D_2
//]]>
  </script>
   thẳng hàng.
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-HkvHQK4cb9s/UeY05h4AhXI/AAAAAAAAAb8/x67hRP8g4-I/s1600/bt2.png"/>
  </div>
  <br/>
  
3. Cho hình vuông 
  <span class="MathJax_Preview">
    ABCD
  </span>
  <script type="math/tex">
//<![CDATA[
ABCD
//]]>
  </script>
  , lấy bốn đỉnh của hình vuông làm tâm vẽ bốn đường tròn cùng bán kính như hình vẽ sau. Lấy một điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm bên ngoài bốn đường tròn này rồi vẽ hai đường thẳng qua 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
  . Đường thẳng thứ nhất cắt đường tròn 
  <span class="MathJax_Preview">
    (A)
  </span>
  <script type="math/tex">
//<![CDATA[
(A)
//]]>
  </script>
   tại hai điểm 
  <span class="MathJax_Preview">
    A_1
  </span>
  <script type="math/tex">
//<![CDATA[
A_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    A_2
  </span>
  <script type="math/tex">
//<![CDATA[
A_2
//]]>
  </script>
  , và cắt đường tròn 
  <span class="MathJax_Preview">
    (C)
  </span>
  <script type="math/tex">
//<![CDATA[
(C)
//]]>
  </script>
   tại hai điểm 
  <span class="MathJax_Preview">
    C_1
  </span>
  <script type="math/tex">
//<![CDATA[
C_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    C_2
  </span>
  <script type="math/tex">
//<![CDATA[
C_2
//]]>
  </script>
  . Đường thẳng thứ nhì cắt đường tròn 
  <span class="MathJax_Preview">
    (B)
  </span>
  <script type="math/tex">
//<![CDATA[
(B)
//]]>
  </script>
   tại hai điểm 
  <span class="MathJax_Preview">
    B_1
  </span>
  <script type="math/tex">
//<![CDATA[
B_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    B_2
  </span>
  <script type="math/tex">
//<![CDATA[
B_2
//]]>
  </script>
  , và cắt đường tròn 
  <span class="MathJax_Preview">
    (D)
  </span>
  <script type="math/tex">
//<![CDATA[
(D)
//]]>
  </script>
   tại hai điểm 
  <span class="MathJax_Preview">
    D_1
  </span>
  <script type="math/tex">
//<![CDATA[
D_1
//]]>
  </script>
  , 
  <span class="MathJax_Preview">
    D_2
  </span>
  <script type="math/tex">
//<![CDATA[
D_2
//]]>
  </script>
  . Chứng minh rằng 
  <span class="MathJax_Preview">
    PA_1 \times PA_2 + PC_1 \times PC_2 = PB_1 \times PB_2 + PD_1 \times PD_2.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
PA_1 \times PA_2 + PC_1 \times PC_2 = PB_1 \times PB_2 + PD_1 \times PD_2.
//]]>
  </script>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/-Bny4VhN74aM/UeY4zqjpK0I/AAAAAAAAAcM/AvQTDyyL_tc/s1600/bt3.png" height="310" width="320"/>
  </div>
  <br/>
  
4. (
  <a href="http://www.imo-official.org/" target="_blank">
    Đề thi Toán Quốc tế 2000
  </a>
  ). Giả sử 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
   là tiếp tuyến chung của hai đường tròn ngoại tiếp tứ giác 
  <span class="MathJax_Preview">
    CAMN
  </span>
  <script type="math/tex">
//<![CDATA[
CAMN
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    NMBD
  </span>
  <script type="math/tex">
//<![CDATA[
NMBD
//]]>
  </script>
  , điểm 
  <span class="MathJax_Preview">
    M
  </span>
  <script type="math/tex">
//<![CDATA[
M
//]]>
  </script>
   nằm trên đoạn thẳng 
  <span class="MathJax_Preview">
    CD
  </span>
  <script type="math/tex">
//<![CDATA[
CD
//]]>
  </script>
  , và 
  <span class="MathJax_Preview">
    CD
  </span>
  <script type="math/tex">
//<![CDATA[
CD
//]]>
  </script>
   song song với 
  <span class="MathJax_Preview">
    AB
  </span>
  <script type="math/tex">
//<![CDATA[
AB
//]]>
  </script>
  . Hai đoạn thẳng 
  <span class="MathJax_Preview">
    NA
  </span>
  <script type="math/tex">
//<![CDATA[
NA
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    CM
  </span>
  <script type="math/tex">
//<![CDATA[
CM
//]]>
  </script>
   cắt nhau tại điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   và hai đoạn thẳng 
  <span class="MathJax_Preview">
    NB
  </span>
  <script type="math/tex">
//<![CDATA[
NB
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    MD
  </span>
  <script type="math/tex">
//<![CDATA[
MD
//]]>
  </script>
   cắt nhau tại điểm 
  <span class="MathJax_Preview">
    Q
  </span>
  <script type="math/tex">
//<![CDATA[
Q
//]]>
  </script>
  . Hai tia 
  <span class="MathJax_Preview">
    CA
  </span>
  <script type="math/tex">
//<![CDATA[
CA
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    DB
  </span>
  <script type="math/tex">
//<![CDATA[
DB
//]]>
  </script>
   cắt nhau tại điểm 
  <span class="MathJax_Preview">
    E
  </span>
  <script type="math/tex">
//<![CDATA[
E
//]]>
  </script>
  . Chứng minh rằng 
  <span class="MathJax_Preview">
    PE = QE
  </span>
  <script type="math/tex">
//<![CDATA[
PE = QE
//]]>
  </script>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-sWkCZcdDHn0/UecojRIfeBI/AAAAAAAAAcc/d2IndF0za8Y/s1600/popimo2000.png"/>
  </div>
  <br/>
  <i>
    Gợi ý:
  </i>
  <br/>
  <ul>
    <li>
      Chứng minh 
      <span class="MathJax_Preview">
        NM
      </span>
      <script type="math/tex">
//<![CDATA[
NM
//]]>
      </script>
       cắt 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
       tại trung điểm của 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
    </li>
    <li>
      Chứng minh 
      <span class="MathJax_Preview">
        M
      </span>
      <script type="math/tex">
//<![CDATA[
M
//]]>
      </script>
       là trung điểm của 
      <span class="MathJax_Preview">
        PQ
      </span>
      <script type="math/tex">
//<![CDATA[
PQ
//]]>
      </script>
    </li>
    <li>
      Chứng minh 
      <span class="MathJax_Preview">
        AB
      </span>
      <script type="math/tex">
//<![CDATA[
AB
//]]>
      </script>
       là đường trung bình của tam giác 
      <span class="MathJax_Preview">
        ECD
      </span>
      <script type="math/tex">
//<![CDATA[
ECD
//]]>
      </script>
    </li>
    <li>
      Chứng minh 
      <span class="MathJax_Preview">
        EM
      </span>
      <script type="math/tex">
//<![CDATA[
EM
//]]>
      </script>
       vuông góc với 
      <span class="MathJax_Preview">
        CD
      </span>
      <script type="math/tex">
//<![CDATA[
CD
//]]>
      </script>
    </li>
    <li>
      Chứng minh 
      <span class="MathJax_Preview">
        EPQ
      </span>
      <script type="math/tex">
//<![CDATA[
EPQ
//]]>
      </script>
       là tam giác cân
    </li>
  </ul>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div>
    <br/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','23','0','0')
INSERT INTO Posts([Content],[CreatedDate],[LastEditedDate],[UserId],[VoteUp],[VoteDown]) VALUES (N'<div class="post-body entry-content" id="post-body-893237290474697575">
  <span style="font-size: x-large;">
    <span style="color: purple;">
      H
    </span>
  </span>
  ôm nay chúng ta sẽ học về khái niệm 
  <b>
    phương tích
  </b>
   của một 
  <i>
    điểm
  </i>
   đối với 
  <i>
    đường tròn
  </i>
  .
  <br/>
  <br/>
  
Giả sử trên mặt phẳng chúng ta có một điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   và một đường tròn 
  <span class="MathJax_Preview">
    (O)
  </span>
  <script type="math/tex">
//<![CDATA[
(O)
//]]>
  </script>
  . Kẻ một đường thẳng qua điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   cắt đường tròn tại hai điểm 
  <span class="MathJax_Preview">
    U
  </span>
  <script type="math/tex">
//<![CDATA[
U
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    V
  </span>
  <script type="math/tex">
//<![CDATA[
V
//]]>
  </script>
  . Vậy thì giá trị của 
  <span class="MathJax_Preview">
    PU \times PV
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
PU \times PV
//]]>
  </script>
   sẽ 
  <i>
    không phụ thuộc vào vị trí của đường thẳng
  </i>
  . 
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://2.bp.blogspot.com/--P-KAX0VZ7U/UdJlwnc94xI/AAAAAAAAARA/CtMSWZHP2uw/s371/pop2.png" height="203" width="320"/>
  </div>
  <div class="separator" style="clear: both; text-align: center;">
  </div>
  <br/>
  
Điều này có nghĩa là nếu chúng ta vẽ một đường thẳng khác qua 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   và cắt đường tròn tại hai điểm 
  <span class="MathJax_Preview">
    A
  </span>
  <script type="math/tex">
//<![CDATA[
A
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    B
  </span>
  <script type="math/tex">
//<![CDATA[
B
//]]>
  </script>
   thì 
  <span class="MathJax_Preview">
    PA \times PB = PU \times PV.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
PA \times PB = PU \times PV.
//]]>
  </script>
  <br/>
  
Giá trị không đổi này được gọi là 
  <b>
    phương tích
  </b>
   của điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   đối với đường tròn 
  <span class="MathJax_Preview">
    (O)
  </span>
  <script type="math/tex">
//<![CDATA[
(O)
//]]>
  </script>
  .
  <br/>
  <br/>
  <br/>
  <a name="more">
  </a>
  <br/>
  <span style="color: purple; font-size: x-large;">
    Đ
  </span>
  ể chứng minh 
  <span class="MathJax_Preview">
    PU \times PV
  </span>
  <script type="math/tex">
//<![CDATA[
PU \times PV
//]]>
  </script>
  <i>
    không phụ thuộc
  </i>
   vào vị trí của đường thẳng, chúng ta sẽ sử dụng 
  <a href="http://vuontoanblog.blogspot.com/2012/05/similar-triangles.html" target="_blank">
    tam giác đồng dạng
  </a>
  . Chúng ta chia ra hai trường hợp: trường hợp điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm 
  <i>
    bên ngoài đường tròn
  </i>
   và trường hợp điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm 
  <i>
    bên trong đường tròn
  </i>
  .
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Trường hợp điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     nằm bên ngoài đường tròn 
    <span class="MathJax_Preview">
      (O)
    </span>
    <script type="math/tex">
//<![CDATA[
(O)
//]]>
    </script>
  </span>
  <br/>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://4.bp.blogspot.com/-ak3d6fEeHHk/UdNveAGn8EI/AAAAAAAAARQ/IKeNE47trLg/s371/pop4.png"/>
  </div>
  <br/>
  
Chúng ta xem xét hai tam giác 
  <span class="MathJax_Preview">
    PUB
  </span>
  <script type="math/tex">
//<![CDATA[
PUB
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    PAV
  </span>
  <script type="math/tex">
//<![CDATA[
PAV
//]]>
  </script>
  . Hai tam giác này đồng dạng vì có hai cặp góc bằng nhau. Cho nên 
  <span class="MathJax_Preview">
    \frac{PU}{PA} = \frac{PB}{PV}.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{PU}{PA} = \frac{PB}{PV}.
//]]>
  </script>
  <br/>
  <br/>
  
Từ đó chúng ta rút ra được điều cần chứng minh là 
  <span class="MathJax_Preview">
    PA \times PB = PU \times PV.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
PA \times PB = PU \times PV.
//]]>
  </script>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <span style="color: #0b5394; font-size: large;">
    Trường hợp điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     nằm bên trong đường tròn 
    <span class="MathJax_Preview">
      (O)
    </span>
    <script type="math/tex">
//<![CDATA[
(O)
//]]>
    </script>
  </span>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    <br/>
  </span>
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://1.bp.blogspot.com/-87lVoe4iNLo/UdNyiW5E1sI/AAAAAAAAARg/hsoSkUQMl3o/s239/pop5.png"/>
  </div>
  <br/>
  
Trường hợp điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm bên trong đường tròn cũng vậy. Chúng ta xem xét hai tam giác 
  <span class="MathJax_Preview">
    PUB
  </span>
  <script type="math/tex">
//<![CDATA[
PUB
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    PAV
  </span>
  <script type="math/tex">
//<![CDATA[
PAV
//]]>
  </script>
  . Hai tam giác này đồng dạng vì có các cặp góc bằng nhau. Suy ra 
  <span class="MathJax_Preview">
    \frac{PU}{PA} = \frac{PB}{PV}.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\frac{PU}{PA} = \frac{PB}{PV}.
//]]>
  </script>
  <br/>
  
Từ đó chúng ta có giá trị của phương tích là không thay đổi 
  <span class="MathJax_Preview">
    PA \times PB = PU \times PV.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
PA \times PB = PU \times PV.
//]]>
  </script>
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Tính công thức phương tích theo khoảng cách 
    <span class="MathJax_Preview">
      PO
    </span>
    <script type="math/tex">
//<![CDATA[
PO
//]]>
    </script>
     và bán kính 
    <span class="MathJax_Preview">
      r
    </span>
    <script type="math/tex">
//<![CDATA[
r
//]]>
    </script>
  </span>
  <br/>
  <br/>
  
Bây giờ chúng ta sẽ tính công thức phương tích theo 
  <b>
    khoảng cách
  </b>
  <span class="MathJax_Preview">
    PO
  </span>
  <script type="math/tex">
//<![CDATA[
PO
//]]>
  </script>
   và 
  <b>
    bán kính
  </b>
  <span class="MathJax_Preview">
    r
  </span>
  <script type="math/tex">
//<![CDATA[
r
//]]>
  </script>
   của đường tròn 
  <span class="MathJax_Preview">
    (O)
  </span>
  <script type="math/tex">
//<![CDATA[
(O)
//]]>
  </script>
  . Chúng ta cũng chia ra hai trường hợp như trên: trường hợp điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm bên ngoài đường tròn và trường hợp điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm bên trong đường tròn.
  <br/>
  <br/>
  
Chúng ta sẽ chứng minh rằng:

  <br/>
  <ul>
    <li>
      Nếu 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       nằm 
      <i>
        bên ngoài
      </i>
       đường tròn thì 
      <span class="MathJax_Preview">
        PU \times PV = PO^2 - r^2.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
PU \times PV = PO^2 - r^2.
//]]>
      </script>
    </li>
    <li>
      Nếu 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       nằm 
      <i>
        bên trong
      </i>
       đường tròn thì 
      <span class="MathJax_Preview">
        PU \times PV = r^2 - PO^2.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
PU \times PV = r^2 - PO^2.
//]]>
      </script>
    </li>
  </ul>
  <br/>
  
Thật vậy, nếu chúng ta lấy 
  <span class="MathJax_Preview">
    U
  </span>
  <script type="math/tex">
//<![CDATA[
U
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    V
  </span>
  <script type="math/tex">
//<![CDATA[
V
//]]>
  </script>
   là hai giao điểm của đường thẳng 
  <span class="MathJax_Preview">
    PO
  </span>
  <script type="math/tex">
//<![CDATA[
PO
//]]>
  </script>
   với đường tròn 
  <span class="MathJax_Preview">
    (O)
  </span>
  <script type="math/tex">
//<![CDATA[
(O)
//]]>
  </script>
   thì phương tích của 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   sẽ được tính như sau:
  <br/>
  <ul>
    <li>
      Trường hợp 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       nằm 
      <i>
        bên ngoài
      </i>
       đường tròn 
      <span class="MathJax_Preview">
        PU \times PV = (PO - r)(PO + r) = PO^2 - r^2.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
PU \times PV = (PO - r)(PO + r) = PO^2 - r^2.
//]]>
      </script>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://1.bp.blogspot.com/-Qmny840m0Q8/UdOinA9k4wI/AAAAAAAAATA/tE5w4Fj2tTg/s323/pop11.png"/>
      </div>
    </li>
    <li>
      Trường hợp 
      <span class="MathJax_Preview">
        P
      </span>
      <script type="math/tex">
//<![CDATA[
P
//]]>
      </script>
       nằm 
      <i>
        bên trong
      </i>
       đường tròn 
      <span class="MathJax_Preview">
        PU \times PV = (r - PO)(r + PO) = r^2 - PO^2.
      </span>
      <script type="math/tex; mode=display">
//<![CDATA[
PU \times PV = (r - PO)(r + PO) = r^2 - PO^2.
//]]>
      </script>
      <div class="separator" style="clear: both; text-align: center;">
        <img border="0" src="http://1.bp.blogspot.com/-WRDRrGB_rhU/UdOisd6PdNI/AAAAAAAAATI/DoUxLbazhN0/s248/pop12.png"/>
      </div>
    </li>
  </ul>
  <br/>
  
Tóm lại công thức phương tích của 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   có thể biểu diễn theo 
  <i>
    khoảng cách
  </i>
  <span class="MathJax_Preview">
    PO
  </span>
  <script type="math/tex">
//<![CDATA[
PO
//]]>
  </script>
   và 
  <i>
    bán kính
  </i>
  <span class="MathJax_Preview">
    r
  </span>
  <script type="math/tex">
//<![CDATA[
r
//]]>
  </script>
   như sau 
  <span class="MathJax_Preview">
    PU \times PV = \pm (PO^2 - r^2).
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
PU \times PV = \pm (PO^2 - r^2).
//]]>
  </script>
  <br/>
  
Dấu 
  <i>
    cọng
  </i>
   hay 
  <i>
    trừ
  </i>
   trong công thức trên phụ thuộc vào vị trí của 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm 
  <i>
    bên ngoài
  </i>
   hay 
  <i>
    bên trong
  </i>
   đường tròn. (
  <i>
    Trường hợp đặc biệt
  </i>
   khi điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
  <i>
    nằm trên đường tròn
  </i>
   thì phương tích hiển nhiên là bằng 
  <span class="MathJax_Preview">
    0
  </span>
  <script type="math/tex">
//<![CDATA[
0
//]]>
  </script>
  .)
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Định nghĩa "chính xác" của phương tích
  </span>
  <br/>
  <br/>
  
Thật ra những gì chúng ta đã nói ở trên về phương tích là chưa hoàn toàn chính xác. Định nghĩa ở trên là dành cho các bạn học cấp 2 chưa học về khoảng cách có dấu, cho nên phương tích 
  <span class="MathJax_Preview">
    PU \times PV
  </span>
  <script type="math/tex">
//<![CDATA[
PU \times PV
//]]>
  </script>
   bao giờ cũng là số dương.
  <br/>
  <br/>
  
Còn định nghĩa "chính xác" của phương tích là như sau 
  <span class="MathJax_Preview">
    \vec{PU} \times \vec{PV} = PO^2 - r^2.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\vec{PU} \times \vec{PV} = PO^2 - r^2.
//]]>
  </script>
  <br/>
  <br/>
  
Phương tích "có dấu" có thể là số dương mà cũng có thể là số âm, nó phụ thuộc vào 
  <span class="MathJax_Preview">
    \vec{PU}
  </span>
  <script type="math/tex">
//<![CDATA[
\vec{PU}
//]]>
  </script>
   và 
  <span class="MathJax_Preview">
    \vec{PV}
  </span>
  <script type="math/tex">
//<![CDATA[
\vec{PV}
//]]>
  </script>
   có 
  <i>
    cùng chiều
  </i>
   hay 
  <i>
    ngược chiều
  </i>
   nhau.
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://3.bp.blogspot.com/-ZzjKvds_kWQ/UdONSl6sDUI/AAAAAAAAASk/Eij1QblZLMk/s652/pop9.png" height="228" width="640"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          Khi 
          <span class="MathJax_Preview">
            P
          </span>
          <script type="math/tex">
//<![CDATA[
P
//]]>
          </script>
           ở bên ngoài đường tròn thì phương tích là số dương vì 
          <span class="MathJax_Preview">
            \vec{PU}
          </span>
          <script type="math/tex">
//<![CDATA[
\vec{PU}
//]]>
          </script>
           và 
          <span class="MathJax_Preview">
            \vec{PV}
          </span>
          <script type="math/tex">
//<![CDATA[
\vec{PV}
//]]>
          </script>
           cùng chiều.
          <br/>
          
Còn khi 
          <span class="MathJax_Preview">
            P
          </span>
          <script type="math/tex">
//<![CDATA[
P
//]]>
          </script>
           ở bên trong đường tròn thì phương tích là số âm vì 
          <span class="MathJax_Preview">
            \vec{PU}
          </span>
          <script type="math/tex">
//<![CDATA[
\vec{PU}
//]]>
          </script>
           và 
          <span class="MathJax_Preview">
            \vec{PV}
          </span>
          <script type="math/tex">
//<![CDATA[
\vec{PV}
//]]>
          </script>
           ngược chiều.
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  <br/>
  
Định nghĩa này của phương tích rất tiện lợi vì nhờ vào giá trị của phương tích mà chúng ta biết được vị trí tương đối của điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   đối với đường tròn. Nếu phương tích là 
  <i>
    số dương
  </i>
  , chúng ta biết rằng 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
  <i>
    nằm ngoài
  </i>
   đường tròn. Nếu phương tích bằng 
  <span class="MathJax_Preview">
    0
  </span>
  <script type="math/tex">
//<![CDATA[
0
//]]>
  </script>
  , chúng ta biết rằng 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
  <i>
    nằm trên
  </i>
   đường tròn. Còn nếu phương tích là 
  <i>
    số âm
  </i>
  , chúng ta biết rằng 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
  <i>
    nằm trong
  </i>
   đường tròn.
  <br/>
  <br/>
  <br/>
  <span style="color: #0b5394; font-size: large;">
    Công thức hình học tọa độ của phương tích
  </span>
  <br/>
  <br/>
  
Nếu chúng ta vẽ một hệ trục tọa độ 
  <span class="MathJax_Preview">
    0xy
  </span>
  <script type="math/tex">
//<![CDATA[
0xy
//]]>
  </script>
   thì mọi điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   trong mặt phẳng sẽ có một tọa độ 
  <span class="MathJax_Preview">
    (P_x, P_y)
  </span>
  <script type="math/tex">
//<![CDATA[
(P_x, P_y)
//]]>
  </script>
  .
  <br/>
  <div class="separator" style="clear: both; text-align: center;">
    <img border="0" src="http://3.bp.blogspot.com/-jwV6tVbiWA8/UdTgaeu8bPI/AAAAAAAAAUI/k6gIFpSVG24/s477/pop10.png" height="240" width="400"/>
  </div>
  <br/>
  
Chúng ta biết rằng công thức của đường tròn tâm 
  <span class="MathJax_Preview">
    O
  </span>
  <script type="math/tex">
//<![CDATA[
O
//]]>
  </script>
   bán kính 
  <span class="MathJax_Preview">
    r
  </span>
  <script type="math/tex">
//<![CDATA[
r
//]]>
  </script>
   là 
  <span class="MathJax_Preview">
    (x - O_x)^2 + (y - O_y)^2 - r^2 = 0.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
(x - O_x)^2 + (y - O_y)^2 - r^2 = 0.
//]]>
  </script>
  <br/>
  <br/>
  
Công thức phương tích chính là 
  <span class="MathJax_Preview">
    \vec{PU} \times \vec{PV} = PO^2 - r^2 = (P_x - O_x)^2 + (P_y - O_y)^2 - r^2.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\vec{PU} \times \vec{PV} = PO^2 - r^2 = (P_x - O_x)^2 + (P_y - O_y)^2 - r^2.
//]]>
  </script>
  <br/>
  <br/>
  
Nhờ công thức phương tích 
  <span class="MathJax_Preview">
    (P_x - O_x)^2 + (P_y - O_y)^2 - r^2
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
(P_x - O_x)^2 + (P_y - O_y)^2 - r^2
//]]>
  </script>
   chúng ta càng thấy rõ hơn vì sao giá trị của phương tích là 
  <i>
    số dương
  </i>
  , là 
  <i>
    bằng 0
  </i>
  , là 
  <i>
    số âm
  </i>
  , phụ thuộc vào vị trí của điểm 
  <span class="MathJax_Preview">
    P
  </span>
  <script type="math/tex">
//<![CDATA[
P
//]]>
  </script>
   nằm 
  <i>
    bên ngoài
  </i>
  , 
  <i>
    bên trên
  </i>
  , và 
  <i>
    bên trong
  </i>
   đường tròn.
  <br/>
  <br/>
  <br/>
  <br/>
  <span style="color: purple; font-size: x-large;">
    H
  </span>
  ôm nay, chúng ta đã học sơ qua về khái niệm phương tích. Kỳ sau, chúng ta sẽ học tiếp về một vài tính chất của phương tích.
  <br/>
  <table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;">
    <tbody>
      <tr>
        <td style="text-align: center;">
          <img border="0" src="http://3.bp.blogspot.com/-ZzjKvds_kWQ/UdONSl6sDUI/AAAAAAAAASg/H2t_E_vLkWE/s652/pop9.png" height="228" width="640"/>
        </td>
      </tr>
      <tr>
        <td class="tr-caption" style="text-align: center;">
          Phương tích: 
          <span class="MathJax_Preview">
            \vec{PU} \times \vec{PV} = PO^2 - r^2 = (P_x - O_x)^2 + (P_y - O_y)^2 - r^2
          </span>
          <script type="math/tex">
//<![CDATA[
\vec{PU} \times \vec{PV} = PO^2 - r^2 = (P_x - O_x)^2 + (P_y - O_y)^2 - r^2
//]]>
          </script>
          .
        </td>
      </tr>
    </tbody>
  </table>
  <br/>
  
Trước khi kết thúc, chúng ta ôn lại ba công thức cơ bản của phương tích 
  <span class="MathJax_Preview">
    \vec{PU} \times \vec{PV} = PO^2 - r^2 = (P_x - O_x)^2 + (P_y - O_y)^2 - r^2.
  </span>
  <script type="math/tex; mode=display">
//<![CDATA[
\vec{PU} \times \vec{PV} = PO^2 - r^2 = (P_x - O_x)^2 + (P_y - O_y)^2 - r^2.
//]]>
  </script>
  <br/>
  <br/>
  
Hẹn gặp lại các bạn ở kỳ sau.
  <br/>
  <br/>
  <div>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <i>
      Bài tập về nhà.
    </i>
    <br/>
    <br/>
    
1. Giả sử điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     nằm ở phía 
    <i>
      bên ngoài
    </i>
     của đường tròn 
    <span class="MathJax_Preview">
      (O)
    </span>
    <script type="math/tex">
//<![CDATA[
(O)
//]]>
    </script>
    . Vẽ đường tiếp tuyến 
    <span class="MathJax_Preview">
      PT
    </span>
    <script type="math/tex">
//<![CDATA[
PT
//]]>
    </script>
     đến đường tròn. Sử dụng 
    <a href="http://vuontoanblog.blogspot.com/2013/06/Garfield-Pythagorean-Theorem.html" target="_blank">
      định lý Pitago
    </a>
     để tính 
    <span class="MathJax_Preview">
      PU \times PV = PT^2 = PO^2 - r^2.
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
PU \times PV = PT^2 = PO^2 - r^2.
//]]>
    </script>
    <br/>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://1.bp.blogspot.com/-3Wi2iqsOSN4/UdN4Eq-TvXI/AAAAAAAAARw/HlZCQR83mZg/s358/pop6.png"/>
    </div>
    <br/>
    <br/>
    
2. Giả sử điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     nằm ở phía 
    <i>
      bên trong
    </i>
     của đường tròn 
    <span class="MathJax_Preview">
      (O)
    </span>
    <script type="math/tex">
//<![CDATA[
(O)
//]]>
    </script>
    . Vẽ đường thẳng 
    <span class="MathJax_Preview">
      UV
    </span>
    <script type="math/tex">
//<![CDATA[
UV
//]]>
    </script>
     vuông góc với 
    <span class="MathJax_Preview">
      PO
    </span>
    <script type="math/tex">
//<![CDATA[
PO
//]]>
    </script>
    . Sử dụng 
    <a href="http://vuontoanblog.blogspot.com/2013/06/Garfield-Pythagorean-Theorem.html" target="_blank">
      định lý Pitago
    </a>
     để tính 
    <span class="MathJax_Preview">
      PU \times PV = PU^2 = r^2 - PO^2.
    </span>
    <script type="math/tex; mode=display">
//<![CDATA[
PU \times PV = PU^2 = r^2 - PO^2.
//]]>
    </script>
    <br/>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://3.bp.blogspot.com/-jY4MCWy8Iy8/UdN639AhFWI/AAAAAAAAASA/0hNK5SZKJhk/s232/pop7.png"/>
    </div>
    <div>
      <br/>
    </div>
    <br/>
    
3. Cho hai đường tròn 
    <span class="MathJax_Preview">
      (O_1)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      (O_2)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
    </script>
     cắt nhau tại hai điểm 
    <span class="MathJax_Preview">
      I
    </span>
    <script type="math/tex">
//<![CDATA[
I
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      J
    </span>
    <script type="math/tex">
//<![CDATA[
J
//]]>
    </script>
    . Chứng minh rằng mọi điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     nằm trên đường thẳng 
    <span class="MathJax_Preview">
      IJ
    </span>
    <script type="math/tex">
//<![CDATA[
IJ
//]]>
    </script>
     có phương tích đến hai đường tròn 
    <span class="MathJax_Preview">
      (O_1)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      (O_2)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
    </script>
     là bằng nhau.
    <br/>
    <div class="separator" style="clear: both; text-align: center;">
      <img border="0" src="http://3.bp.blogspot.com/-8Cebb7UgJmw/UdOoHP7ItdI/AAAAAAAAATY/4W_VeJtjO9Q/s273/pop13.png"/>
    </div>
    <br/>
    
4. Cho hai đường tròn 
    <span class="MathJax_Preview">
      (O_1)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      (O_2)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
    </script>
    . Tìm quỹ tích tất cả các điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     sao cho phương tích của 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     đến hai đường tròn 
    <span class="MathJax_Preview">
      (O_1)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      (O_2)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
    </script>
     là bằng nhau.
    <br/>
    <br/>
    
5. Cho ba đường tròn 
    <span class="MathJax_Preview">
      (O_1)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_1)
//]]>
    </script>
    , 
    <span class="MathJax_Preview">
      (O_2)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_2)
//]]>
    </script>
     và 
    <span class="MathJax_Preview">
      (O_3)
    </span>
    <script type="math/tex">
//<![CDATA[
(O_3)
//]]>
    </script>
    . Xác định điểm 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     sao cho phương tích của 
    <span class="MathJax_Preview">
      P
    </span>
    <script type="math/tex">
//<![CDATA[
P
//]]>
    </script>
     đến ba đường tròn là bằng nhau.
  </div>
  <div>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
  </div>
  <div style="clear: both;">
  </div>
</div>
','07/20/2015 19:27:54','07/20/2015 19:27:54','89','0','0')
