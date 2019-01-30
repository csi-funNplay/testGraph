package knou.portal.epo.graph.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import knou.portal.epo.graph.service.EPOTestGraphService;
import knou.portal.epo.graph.vo.EPOTestGraphVO;

@Controller
@SessionAttributes("ePOTestGraphVO")
public class EPOTestGraphController {
	
	@Resource(name="ePOTestGraphService")
	private EPOTestGraphService ePOTestGraphService;
	
	@RequestMapping(value = "/portal/epo/graph/initEPOTestGraph.do")
	public String initEPOTestGraph(HttpServletRequest req, Model model) throws Exception {
		return "/portal/epo/graph/testGraph";
	}
	
	@RequestMapping(value = "/portal/epo/graph/retrievePiChartList.data")
	public String retrievePiChartList(HttpServletRequest request, EPOTestGraphVO vo, Model model) throws Exception {		
		List<EPOTestGraphVO> list = (List<EPOTestGraphVO>)ePOTestGraphService.retrievePiChartList(vo);
		model.addAttribute("rows", list);
		return "jsonView";		
	}
	
}
