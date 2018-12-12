package com.xingtu.strategy.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingtu.strategy.dao.StrategyDao;

@Service
@Transactional(readOnly=false)
public class StrategyService {
	@Resource
	private StrategyDao sd;
}
