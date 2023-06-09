package com.example.NoteBook.common;

public final class Url {
    public static final String TILES_ROOT = "/tiles/view";
    public static final String TILES_AJAX = "/tiles/ajax";

    public static final class AUTH {
        public static final String HOME             = "/home";
        public static final String MAIN_JSP         = TILES_ROOT+"/home";
        public static final String LOGIN_JSP        = TILES_ROOT+"/auth/login";
        public static final String JOIN_JSP         = TILES_ROOT+"/auth/join";
        public static final String JOIN             = "/auth/join";
        public static final String INSERT_USER      = "/auth/insertUser";
        public static final String LOGIN            = "/auth/login";
        public static final String LOGIN_PROC       = "/auth/login-proc";
        public static final String LOGOUT_PROC      = "/auth/logout-proc";
        public static final String USER_UNIV        = "/univ/userUniv";
        public static final String USER_EMAIL       = "/univ/userEmail";
        public static final String USER_EMAIL_CODE  = "/univ/userEmailCode";
        public static final String USER_NICK        = "/univ/userNick";
    }

    public static final class LIST {
        public static final String MYPAGE           = "/myPageView";
        public static final String USERINFO_JSP     = TILES_ROOT+"/myPage/myPage";
        public static final String BOOKPAGE         = "/bookPage";
    }

    public static final class BOOK {
        public static final String ADDBOOK_JSP      = TILES_ROOT+"/myPage/addBook";
        public static final String GETBOOK_JSP      = TILES_ROOT+"/myPage/getBook";
        public static final String ADDBOOK          = "/book/addBook";
        public static final String GETBOOK          = "/book/getBook";
        public static final String ISBNBOOK         = "/searchBook";
        public static final String INSERTBBOK       = "/insertBook";
        public static final String UPDATEPRICE      = "/updateBookPrice";
        public static final String UPDATECONTENT    = "/updateBookContent";
        public static final String BOOKCHAT         = "/insertBookChat";
        public static final String TESTCHAT         = "/testInsertChat";
        public static final String DELCHAT          = "/deleteBookChat";
        public static final String DELBOOK          = "/deleteBook";
        public static final String INSERTBASKET     = "/insertBasket";
        public static final String SEARCHBOOKLIST   = "/searchBookList";
        public static final String IMGUPLOAD        = "/imgUpload";
    }

    public static final class COMMUNITY {
        public static final String COMMUNITY        = "/community";
        public static final String COMMUNITY_JSP    = TILES_ROOT+"/community/community";

        public static final String GETCOMMUNITY     = "/getCommunity";
        public static final String GETCOMMUNITY_JSP = TILES_ROOT+"/community/getCommunity";

        public static final String ADDCOMMUNITY     = "/addCommunity";
        public static final String ADDCOMMUNITY_JSP = TILES_ROOT+"/community/addCommunity";
        public static final String UPDATECOMMUNITYVIEW         = "/updateCommunity";
        public static final String UPDATECOMMUNITY_JSP     = TILES_ROOT+"/community/updateCommunity";

        public static final String INSERTCOMMUNITY         = "/insertCommunity";
        public static final String INSERTCOMMUNITYCHAT     = "/insertCommunityChat";
        public static final String DELETECOMMUNITYCHAT     = "/deleteCommunityChat";
        public static final String UPDATECOMMUNITY         = "/updateCommunity";
        public static final String DELETECOMMUNITY         = "/deleteCommunity";
        public static final String TAGCOMMUNITY            = "/tagCommunity";
        public static final String PAGECOMMUNITY           = "/pageCommunity";
    }

    public static final class MAP {
        public static final String MAPVIEW          = "/mapView";
        public static final String MAP_JSP          = TILES_ROOT+"/map/map";
    }
}
