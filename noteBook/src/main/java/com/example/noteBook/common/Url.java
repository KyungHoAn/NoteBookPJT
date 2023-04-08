package com.example.NoteBook.common;

public final class Url {
    public static final String TILES_ROOT = "/tiles/view";
    public static final String TILES_AJAX = "/tiles/ajax";

    public static final class AUTH {
        public static final String MAIN_JSP         = TILES_ROOT+"/index";

        public static final String LOGIN_JSP        = TILES_ROOT+"/auth/login";

        public static final String JOIN_JSP         = TILES_ROOT+"/auth/join";

        public static final String JOIN             = "/auth/join";

        public static final String AUTH_JOIN        = "/auth/userJoin";
    }

    public static final class LIST {
        public static final String USERINFO_JSP     = TILES_ROOT+"/myPage/myPage";
    }

    public static final class BOOK {
        public static final String ADDBOOK_JSP      = TILES_ROOT+"/myPage/addBook";

        public static final String GETBOOK_JSP      = TILES_ROOT+"/myPage/getBook";


    }

    public static final class BLOG {
        public static final String COMMUNITY_JSP    = TILES_ROOT+"/community/community";

        public static final String GETCOMMUNITY_JSP = TILES_ROOT+"/community/getCommunity";

        public static final String ADDCOMMUNITY_JSP = TILES_ROOT+"/community/addCommunity";
    }

    public static final class MAP {
        public static final String MAP_JSP          = TILES_ROOT+"/map/map";
    }
}
