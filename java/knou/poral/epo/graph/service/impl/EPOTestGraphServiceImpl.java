package knou.portal.epo.graph.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import knou.core.service.impl.KnouBaseServiceImpl;
import knou.portal.epo.graph.service.EPOTestGraphService;
import knou.portal.epo.graph.vo.EPOTestGraphVO;
import knou.portal.epo.graph.dao.EPOTestGraphDAO;

@Service("ePOTestGraphService")
public class EPOTestGraphServiceImpl extends KnouBaseServiceImpl implements EPOTestGraphService{

	@Resource(name="ePOTestGraphDAO")
	private EPOTestGraphDAO ePOTestGraphDAO;

	@Override
	public List<EPOTestGraphVO> retrievePiChartList(EPOTestGraphVO vo) throws Exception {
		// TODO Auto-generated method stub
		return ePOTestGraphDAO.selectPiChartList(vo);
	}
	
	
}
