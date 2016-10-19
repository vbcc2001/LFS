package com.lfs.ms.android.object;
public class Page {
        private int pageCount ;
        private int currentPage ;
        private int allPage ;
        private int allCount;
        public Page(int allCount,int pageCount){
                this.currentPage = 1;
                this.pageCount =pageCount;
                this.allCount = allCount;
                this.allPage = (this.allCount+this.pageCount-1)/this.pageCount;
        }
        public Page(){
                this(0,20);
        }
        public int getPageCount() {
                return pageCount;
        }
        public void setPageCount(int pageCount) {
                if(pageCount>=1){ this.pageCount = pageCount; }
                this.allPage = (this.allCount+this.pageCount-1)/this.pageCount;
        }
        public int getCurrentPage() {
                return currentPage;
        }
        public void setCurrentPage(int currentPage) {
                if(currentPage >= 1 && currentPage<=this.allPage){
                        this.currentPage = currentPage;
                }
        }
        public int getAllPage() {
                return allPage;
        }
        public void setAllPage(int allPage) {
            this.allPage = allPage;
        }
        public int getAllCount() {
                return allCount;
        }
        public void setAllCount(int allCount) {
                if(allCount>=0){
                        this.allCount = allCount;
                        this.allPage = (this.allCount+this.pageCount-1)/this.pageCount;
                }               
        }
}