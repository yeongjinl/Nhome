package egovframework.gcall.dto;

public class PaginationDTO {

      //페이지당 게시글 수
      private int pageSize;

      //현재 페이지
      private int curPage;


      //총 게시글 수
      private int totalCount;

      //총 페이지 수
      private int totalPage;

      //총 블럭 수
      private int totalRange;


      //블럭당 페이지 수
      private int rangeSize;

      //현재 블럭
      private int curRange;


      //시작 인덱스
      private int startIndex;


      //시작 페이지
      private int startPage;

      //끝 페이지
      private int endPage;


      //이전 페이지
      private int prevPage;

      //다음 페이지
      private int nextPage;

      //conf id
      private String confId;
      private String selSearch;
      private String searchWord;
      private String boardNum;
      private int startInd2;


      public int getStartInd2() {
         return startIndex+10;
      }

      public String getBoardNum() {
         return boardNum;
      }

      public void setBoardNum(String boardNum) {
         this.boardNum = boardNum;
      }

      public String getSearchWord() {
         return searchWord;
      }

      public void setSearchWord(String searchWord) {
         this.searchWord = searchWord;
      }

      public String getSelSearch() {
         return selSearch;
      }

      public void setSelSearch(String selSearch) {
         this.selSearch = selSearch;
      }

      public String getConfId() {
         return confId;
      }

      public void setConfId(String confId) {
         this.confId = confId;
      }

      public int getPageSize() {
         return pageSize;
      }

      public void setPageSize(int pageSize) {
         this.pageSize = pageSize;
      }

      public int getCurPage() {
         return curPage;
      }

      public void setCurPage(int curPage) {
         this.curPage = curPage;
      }

      public int getTotalCount() {
         return totalCount;
      }

      public void setTotalCount(int totalCount) {
         this.totalCount = totalCount;
      }

      public int getTotalPage() {
         return totalPage;
      }

      public void setTotalPage(int totalPage) {
         this.totalPage = totalPage;
      }

      public int getTotalRange() {
         return totalRange;
      }

      public void setTotalRange(int totalRange) {
         this.totalRange = totalRange;
      }

      public int getRangeSize() {
         return rangeSize;
      }

      public void setRangeSize(int rangeSize) {
         this.rangeSize = rangeSize;
      }

      public int getCurRange() {
         return curRange;
      }

      public void setCurRange(int curRange) {
         this.curRange = curRange;
      }

      public int getStartIndex() {
         int std = startIndex;
         if(startIndex>10) {
            std=std+1;
         }else if(startIndex<=10) {

         }
         return std;
      }

      public void setStartIndex(int startIndex) {
         this.startIndex = startIndex;
      }

      public int getStartPage() {
         return startPage;
      }

      public void setStartPage(int startPage) {
         this.startPage = startPage;
      }

      public int getEndPage() {
         return endPage;
      }

      public void setEndPage(int endPage) {
         this.endPage = endPage;
      }

      public int getPrevPage() {
         return prevPage;
      }

      public void setPrevPage(int prevPage) {
         this.prevPage = prevPage;
      }

      public int getNextPage() {
         return nextPage;
      }

      public void setNextPage(int nextPage) {
         this.nextPage = nextPage;
      }

      public void doPagination() {
          setPageTotalNum();

          setRangeTotalNum();

          rangeSetting();

          setStartIndexNum();
       }


       public void setPageTotalNum() {
           this.totalPage = (int) Math.ceil(this.totalCount * 1.0 / this.pageSize);
       }

       public void setRangeTotalNum() {
           this.totalRange = (int) Math.ceil(this.totalPage * 1.0 / this.rangeSize);
       }

       public void rangeSetting(){

          setCurRangeNum();
           this.startPage = (this.curRange - 1) * this.rangeSize + 1;
           this.endPage = this.startPage + this.rangeSize - 1;

           if(this.endPage > this.totalPage){
               this.endPage = this.totalPage;
           }

           this.prevPage = this.curPage - 5;
           this.nextPage = this.curPage + 5;
       }

       public void setCurRangeNum() {
         this.curRange = (int)((curPage - 1) / rangeSize) + 1;
      }

      public void setStartIndexNum() {
         this.startIndex = (this.curPage - 1) * this.pageSize;
      }
}