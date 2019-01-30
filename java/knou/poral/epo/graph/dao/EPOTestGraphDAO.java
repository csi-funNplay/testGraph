package knou.portal.epo.graph.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import knou.core.dao.KnouBaseDAO;
import knou.portal.epo.graph.vo.EPOTestGraphVO;

@Repository("ePOTestGraphDAO")
public class EPOTestGraphDAO extends KnouBaseDAO{
	
	public List<EPOTestGraphVO> selectPiChartList(EPOTestGraphVO vo) throws Exception{
		return list("EPOTestGraphDAO.selectPiChartList", vo);
	}

}
