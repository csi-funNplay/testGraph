package knou.portal.epo.graph.service;

import java.util.List;

import knou.core.service.KnouBaseService;
import knou.portal.epo.graph.vo.EPOTestGraphVO;

public interface EPOTestGraphService extends KnouBaseService{
	
	public abstract List<EPOTestGraphVO> retrievePiChartList(EPOTestGraphVO vo) throws Exception;
	
}
