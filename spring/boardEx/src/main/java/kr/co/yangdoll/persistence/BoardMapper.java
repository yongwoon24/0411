package kr.co.yangdoll.persistence;

import java.util.List;

import kr.co.yangdoll.domain.BoardVO;
import kr.co.yangdoll.util.PageInfoVO;

public interface BoardMapper {
	int insertBoard(BoardVO vo);
	
	int insertBoardGetBno(BoardVO vo);
	
//	@Delete("delete from boards where bno = #{bno}")
	int deleteBoard(Integer bno);
	
	int updateBoard(BoardVO vo);
	
	int getCount();
	BoardVO getBoard(Integer bno);
//	@Select(value = "select * from boards where bno > 0 order by bno desc" )
	List<BoardVO> getBoardList(PageInfoVO pageInfo);
}
