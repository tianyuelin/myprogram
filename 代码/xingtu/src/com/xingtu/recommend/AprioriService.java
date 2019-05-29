package com.xingtu.recommend;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional(readOnly=false)
public class AprioriService {
	@Resource
	private ReadData rd;
	public List<List<String>> find(){
		return rd.findadd();
	}

}
