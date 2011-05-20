(function($){

        var history;

        function getHistory() {
                var tmp = $.cookie("history");
                if (tmp===undefined || tmp===null) tmp = "";
                if ($.trim(tmp)=="") tmp = [];
                else tmp = tmp.split("||");
                history = [];
                $.each(tmp, function(){
                        var split = this.split("|");
                        history.push({
                                title: split[0],
                                url: split[1]
                        });
                });
        }

        function saveHistory() {
                var tmp = [];
                $.each(history, function(){
                        tmp.push(this.title+"|"+this.url);
                });
                $.cookie("history",tmp.join("||"),{ expires: 60, path: "/" });
        }

        function addToHistory(title,url) {
                var newHistory = []
                $.each(history, function(){
                        if (this.url!=url) newHistory.push(this);
                });
                history = newHistory;
                if (history.length>=10) {
                        history.shift();
                }
                history.push({
                        title: title,
                        url: url
                });
                saveHistory();
                writeHistory();
        }

        function writeHistory() {
                var list = $("<ul />");
                $.each(history, function() {
                        var element = $("<li />");
                        var link = $("<a />");
                        link.attr("href",this.url);
                        link.text(this.title);
                        element.append(link);
                        list.append(element);
                });
                $("#history").empty().append(list);
        }

        $(document).ready(function(){
                getHistory();
                var url = document.location.href;
                var split = url.split("#");
                var title;
                if (split.length > 1) {
                        title = $("#"+split[1]).text();
                } else {
                        title = document.title;
                }
                if (title===undefined || title===null || $.trim(title)=="") title = url;
                addToHistory(title,url);
                url = split[0];
                $("a[href^='#']").click(function(){
                        var link = $(this);
                        var href = link.attr("href");
                        var linkUrl = url+href;
                        var title = $(href).text();
                        if (title===undefined || title===null || $.trim(title)==="") title = linkUrl;
                        addToHistory(title,linkUrl);
                });
        });

})(jQuery);