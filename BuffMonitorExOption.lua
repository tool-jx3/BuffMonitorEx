BuffMonitorEx = BuffMonitorEx or {}

BuffMonitorEx.tBuffData = {
	["TargetBuff"] = {
		["萬花"] = {
			[1] = {szName = "毫針", bOn = true},		--外功防禦等級提高<BUFF atPhysicsShieldBase>點，被攻擊則去掉一層並恢復1000點氣血值
			[2] = {szName = "春泥護花", bOn = true},	--受到的傷害降低50%
			[3] = {szName = "星樓月影", bOn = true},	--不受招式控制
			[4] = {szName = "青荷", bOn = true},		--混元內功基礎攻擊力提高40%
			[5] = {szName = "碧水滔天", bOn = true},	--每秒恢復內力最大值的6%
			[6] = {szName = "水月無間", bOn = true},	--下一個傷害或療傷運功招式無需運功
			[7] = {szName = "輕棄", bOn = true},		--施展「蘭摧玉折」無需運功
			[8] = {szName = "流離", bOn = true},		--施展「陽明指」無需運功
		},
		["七秀"] = {
			[1] = {szName = "天地低昂", bOn = true},	--化解受到的傷害40%
			[2] = {szName = "鵲踏枝", bOn = true},		--閃避等級提高<BUFF atDodge>點
			[3] = {szName = "素衿", bOn = true},		--不受招式控制
			[4] = {szName = "繁音急節", bOn = true},	--陰性內功基礎攻擊力提高30%
			[5] = {szName = "迅影", bOn = true},		--移動速度提高55%
		},
		["五毒"] = {
			[1] = {szName = "風蜈獻祭", bOn = true},	--不受控制招式影響
			[2] = {szName = "蠱蟲狂暴", bOn = true},	--不受控制招式影響，氣血最大值提高50%，內功、外功防禦等級提高100%，傷害提高50%，移動速度提高50%
			[3] = {szName = "聖手織天", bOn = true},	--受到的傷害降低40%
			[4] = {szName = "碧蝶獻祭", bOn = true},
			[5] = {szName = "玉蟾獻祭", bOn = true},	--受到傷害降低40%
			[6] = {szName = "女媧補天", bOn = true},	--療傷成效提高50%，造成的威脅降低30%，免疫鎖足、減速效果，移動速度降低50%，運功不會被傷害打斷
			[7] = {szName = "蝶戲水", bOn = true},		--受到的傷害減少25%
			[8] = {szName = "靈蛇獻祭", bOn = true},	--毒性內功基礎攻擊力提高50%，基礎療傷成效提高50%
		},
		["純陽"] = {
			[1] = {szName = "轉乾坤", bOn = true},		--不受招式控制
			[2] = {szName = "鎮山河", bOn = true},		--免疫任何傷害
			[3] = {szName = "生太極", bOn = true},		--不受控制招式影響
			[4] = {szName = "雨集", bOn = true},		--每層可使下一個四象輪迴無需運功
			[5] = {szName = "紫氣東來", bOn = true},	--混元內功基礎攻擊力提高25%，會心幾率提高25%，會心效果提高25%，但所有招式內力消耗提高20%
			[6] = {szName = "韜光養晦", bOn = true},	--每1.5秒聚氣一格
			[7] = {szName = "坐忘無我", bOn = true},		--受到的傷害降低40%
		},
		["少林"] = {
			[1] = {szName = "捕風式", bOn = true},		--使捉影式不需要運功
			[2] = {szName = "羅漢金身", bOn = true},	--反彈自身受到傷害的50%
			[3] = {szName = "無相訣", bOn = true},		--使自身減少受到傷害50%，並降低自身移動速度50%
			[4] = {szName = "折骨", bOn = true},		--不受控制及沉默招式影響
			[5] = {szName = "健骨", bOn = true},		--免疫一切內功傷害
			[6] = {szName = "金剛訣", bOn = true},		--不受減速效果影響，每1.5秒獲得1點禪那，傷害產生的威脅值降低50%
			[7] = {szName = "西宗", bOn = true},		--受到的傷害降低40%
			[8] = {szName = "捨身", bOn = true},		--承擔100%傷害
		},
		["藏劍"] = {
			[1] = {szName = "玉泉魚躍", bOn = true},	--不受控制
			[2] = {szName = "嘯日", bOn = true},		--不受招式控制
			[3] = {szName = "御天", bOn = true},		--受到的傷害降低99%
			[4] = {szName = "不工", bOn = true},		--不受控制招式影響
			[5] = {szName = "雲棲松", bOn = true},		--閃躲等級提高<BUFF atDodge>點
			[6] = {szName = "聲趣", bOn = true},		--使下一個「夕照雷鋒」瞬發
			[7] = {szName = "夜雨", bOn = true},		--使下一個「雲飛玉皇」瞬發
			[8] = {szName = "月凝", bOn = true},		--化解受到的傷害<BUFF atGlobalDamageAbsorb>點
		},
		["天策"] = {
			[1] = {szName = "力拔", bOn = true},		--不受控制招式影響
			[2] = {szName = "縱輕騎", bOn = true},		--不受招式控制影響
			[3] = {szName = "嘯如虎", bOn = true},		--外功攻擊提高<BUFF atPhysicsAttackPowerBase>點，外功會心等級提高<BUFF atPhysicsCriticalStrike>點，不會重傷
			[4] = {szName = "守如山", bOn = true},		--受到的傷害降低80%
			[5] = {szName = "御", bOn = true},			--每層化解一次傷害
			[6] = {szName = "疾如風", bOn = true},		--使自身招式傷害提高<BUFF atSkillPhysicsDamage>點，外功會心幾率提高20%
		},
		["唐門"] = {
			[1] = {szName = "驚鴻游龍", bOn = true},	--躲閃幾率提高45%，受到內功傷害降低45%
			[2] = {szName = "絕倫逸群", bOn = true},	--免疫移動限制，移動速度提高50%
			[3] = {szName = "生死之交", bOn = true},	--不受招式控制
			[4] = {szName = "護體", bOn = true},		--受到的傷害降低<BUFF_EX 1024 atGlobalResistPercent>%
			[5] = {szName = "煙消雲散", bOn = true},	--受到的傷害降低<BUFF_EX 1024 atGlobalResistPercent>%
			[6] = {szName = "追命無聲", bOn = true},	--使下一個「追命箭」無需運功
			[7] = {szName = "揚威", bOn = true},		--內功基礎攻擊力提高<BUFF_EX 1024 atPoisonAttackPowerPercent>%
			[8] = {szName = "鬼斧神工", bOn = true},	--免疫任何傷害
		},
		["明教"] = {
			[1] = {szName = "貪魔體", bOn = true},
			[2] = {szName = "靈輝", bOn = true},
			[3] = {szName = "聖月佑", bOn = true},
			[4] = {szName = "超然", bOn = true},
			[5] = {szName = "暗塵瀰散", bOn = true},
		},
		["丐幫"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["蒼雲"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["長歌"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["霸刀"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["其他"] = {
			[1] = {szName = "風府", bOn = true},		--不受移動限制
			[2] = {szName = "百會", bOn = true},		--每秒恢復的氣血值最大值5%
			[3] = {szName = "彈跳", bOn = true},		--跳得更高
		},
	},
	["TargetDebuff"] = {
		["萬花"] = {
			[1] = {szName = "商陽指", bOn = true},		--每3秒受到<BUFF atCallNeutralDamage>點混元性內功傷害
			[2] = {szName = "蘭摧玉折", bOn = true},	--每3秒受到<BUFF atCallNeutralDamage>點混元性內功傷害
			[3] = {szName = "鍾林毓秀", bOn = true},	--每3秒受到<BUFF atCallNeutralDamage>點混元性內功傷害
			[4] = {szName = "芙蓉並蒂", bOn = true},	--定身
			[5] = {szName = "傍花隨柳", bOn = true},	--定身
			[6] = {szName = "厥陰指", bOn = true},		--無法施放內功招式
			[7] = {szName = "浮花", bOn = true},		--施展招式的內力消耗提高20%
			[8] = {szName = "少陽指", bOn = true},		--移動速度降低50%
			[9] = {szName = "同歸", bOn = true},		--定身
		},
		["七秀"] = {
			[1] = {szName = "步遲", bOn = true},		--移動速度降低50%
			[2] = {szName = "急曲", bOn = true},		--每3秒受到<BUFF atCallLunarDamage>點陰性內功傷害
			[3] = {szName = "劍破虛空", bOn = true},	--無法施展內功招式，無法施展輕功招式
			[4] = {szName = "玳弦", bOn = true},		--無法施展輕功
			[5] = {szName = "劍心通明", bOn = true},	--不能施展內功招式
			[6] = {szName = "袖手", bOn = true},		--鎖足
			[7] = {szName = "帝驂龍翔", bOn = true},	--定身
			[8] = {szName = "絳唇珠袖", bOn = true},	--定身
			[9] = {szName = "雷霆震怒", bOn = true},	--眩暈，不能被傷害和療傷
		},
		["五毒"] = {
			[1] = {szName = "蛇影", bOn = true},		--每2秒受到<BUFF atCallPoisonDamage>點毒性傷害
			[2] = {szName = "蟾嘯", bOn = true},		--每2秒受到<BUFF atCallPoisonDamage>點毒性傷害
			[3] = {szName = "千絲", bOn = true},		--移動速度降低50%
			[4] = {szName = "百足", bOn = true},		--每3秒受到<BUFF atCallPoisonDamage>點毒性傷害
			[5] = {szName = "迷幻", bOn = true},		--不能施展輕功，受到的傷害提高20%
			[6] = {szName = "蠍蟄", bOn = true},		--受到的療傷成效降低50%
			[7] = {szName = "千絲迷心", bOn = true},	--不能施展輕功
			[8] = {szName = "蟾嘯迷心", bOn = true},	--無法施展內功招式
			[9] = {szName = "百足迷心", bOn = true},	--鎖足
			[10] = {szName = "百足枯殘", bOn = true},	--受到療傷成效降低50%
			[11] = {szName = "蟾嘯奪命", bOn = true},	--效果結束後受到<BUFF atCallPoisonDamage>點毒性傷害
			[12] = {szName = "蛇影奪命", bOn = true},	--效果結束後受到<BUFF atCallPoisonDamage>點毒性傷害
			[13] = {szName = "影滯", bOn = true},		--鎖足
			[14] = {szName = "天蛛獻祭", bOn = true},	--鎖足
			[15] = {szName = "幻蠱", bOn = true},		--定身，若被卸除則無法使用輕功，且受到的毒性傷害提高20%
			[16] = {szName = "奪命蠱", bOn = true},
			[17] = {szName = "迷心蠱", bOn = true},
			[18] = {szName = "枯殘蠱", bOn = true},
			[19] = {szName = "淒切", bOn = true},
			[20] = {szName = "絲牽", bOn = true},
			[21] = {szName = "眠蠱", bOn = true},
			[22] = {szName = "蠍心迷心", bOn = true},
		},
		["純陽"] = {
			[1] = {szName = "疊刃", bOn = true},		--每層每3秒造成外功傷害<BUFF atCallPhysicsDamage>點
			[2] = {szName = "萬劍歸宗", bOn = true},	--外功防禦等級降低5%，近身前置條件
			[3] = {szName = "三才化生", bOn = true},	--鎖足
			[4] = {szName = "生太極", bOn = true},		--移動速度降低40%
			[5] = {szName = "吞日月", bOn = true},		--不能施展輕功
			[6] = {szName = "化三清", bOn = true},		--施展招式的內力消耗提高20%，近身前置條件
			[7] = {szName = "繞足", bOn = true},		--鎖足
			[8] = {szName = "大道無術", bOn = true},	--定身
			[9] = {szName = "破勢", bOn = true},		--破勢
			[10] = {szName = "劍沖陰陽", bOn = true},	--眩暈
			[11] = {szName = "北斗", bOn = true},		--眩暈
			[12] = {szName = "劍飛驚天", bOn = true},	--不能運功
			[13] = {szName = "八卦洞玄", bOn = true},	--無法使用任何招式
			[14] = {szName = "七星拱瑞", bOn = true},	--定身
			[15] = {szName = "五方行盡", bOn = true},	--鎖足
		},
		["少林"] = {
			[1] = {szName = "眩暈", bOn = true},		--眩暈
			[2] = {szName = "抱殘式", bOn = true},		--移動速度降低50%
			[3] = {szName = "五蘊皆空", bOn = true},	--眩暈
			[4] = {szName = "恆河劫沙", bOn = true},	--受到的療傷成效降低50%
			[5] = {szName = "倒地", bOn = true},		--倒在地上
			[6] = {szName = "搶珠式", bOn = true},		--不能施展內功招式
			[7] = {szName = "橫掃六合", bOn = true},	--每2秒受到陽性內功傷害<BUFF atCallSolarDamage>點
		},
		["藏劍"] = {
			[1] = {szName = "醉月", bOn = true},		--眩暈
			[2] = {szName = "松濤", bOn = true},		--定身
			[3] = {szName = "鶴歸孤山", bOn = true},	--眩暈
			[4] = {szName = "碧王", bOn = true},		--施展「風吳來山」附帶眩暈效果
			[5] = {szName = "危樓", bOn = true},		--眩暈
			[6] = {szName = "峰插雲景", bOn = true},	--暈眩
			[7] = {szName = "驚濤", bOn = true},		--移動速度降低50%
		},
		["天策"] = {
			[1] = {szName = "突", bOn = true},			--眩暈
			[2] = {szName = "崩", bOn = true},			--眩暈
			[3] = {szName = "斷魂刺", bOn = true},		--眩暈
			[4] = {szName = "日影", bOn = true},		--眩暈
			[5] = {szName = "破堅陣", bOn = true},		--眩暈
			[6] = {szName = "穿", bOn = true},			--移動速度降低65%
			[7] = {szName = "霹靂", bOn = true},		--受到的療傷成效降低50%
		},
		["唐門"] = {
			[1] = {szName = "化血鏢", bOn = true},		--每3秒受到<BUFF atCallPoisonDamage>點毒性內功傷害
			[2] = {szName = "梅花針", bOn = true},		--無法施展內功招式
			[3] = {szName = "雷震子", bOn = true},		--眩暈
			[4] = {szName = "迷神釘", bOn = true},		--眩暈
			[5] = {szName = "穿心弩", bOn = true},		--每3秒受到<BUFF atCallPhysicsDamage>點外功傷害
			[6] = {szName = "毒蒺藜", bOn = true},		--移動速度降低50%
			[7] = {szName = "身乏", bOn = true},		--不能施展輕功
			[8] = {szName = "鐵爪", bOn = true},		--鎖足
			[9] = {szName = "鑽心刺骨", bOn = true},	--移動速度降低65%
		},
		["明教"] = {
			[1] = {szName = "業海罪縛", bOn = true},
			[2] = {szName = "怖畏暗刑", bOn = true},
			[3] = {szName = "幻相", bOn = true},
			[4] = {szName = "日劫", bOn = true},
			[5] = {szName = "月劫", bOn = true},
		},
		["丐幫"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["蒼雲"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["長歌"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["霸刀"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["其他"] = {
			[1] = {szName = "中注", bOn = true},		--眩暈
			[2] = {szName = "完骨", bOn = true},		--定身
			[3] = {szName = "懸鍾", bOn = true},		--不能運功
			[4] = {szName = "沉默", bOn = true},		--不能運功
			[5] = {szName = "倒地", bOn = true},		--倒在地上
		},
	},
	["PlayerBuff"] = {
		["萬花"] = {
			[1] = {szName = "毫針", bOn = true},
			[2] = {szName = "春泥護花", bOn = true},
			[3] = {szName = "星樓月影", bOn = true},
			[4] = {szName = "青荷", bOn = true},
			[5] = {szName = "碧水滔天", bOn = true},
			[6] = {szName = "水月無間", bOn = true},
			[7] = {szName = "行氣血", bOn = true},		--施展招式無需運功
			[8] = {szName = "輕棄", bOn = true},
			[9] = {szName = "流離", bOn = true},
		},
		["七秀"] = {
			[1] = {szName = "天地低昂", bOn = true},
			[2] = {szName = "鵲踏枝", bOn = true},
			[3] = {szName = "素衿", bOn = true},
			[4] = {szName = "繁音急節", bOn = true},
			[5] = {szName = "迅影", bOn = true},
			[6] = {szName = "龍池樂", bOn = true},		--招式的威脅值降低60%
			[7] = {szName = "翔舞", bOn = true},		--每3秒恢復氣血值<BUFF atCallTherapy>點
			[8] = {szName = "上元點鬟", bOn = true},	--每3秒恢復氣血值238點，並在效果完結時額外恢復640點氣血值
		},
		["五毒"] = {
			[1] = {szName = "風蜈獻祭", bOn = true},
			[2] = {szName = "蠱蟲狂暴", bOn = true},
			[3] = {szName = "冰蠶訣", bOn = true},		--每層使下一個「冰蠶牽絲」瞬發
			[4] = {szName = "聖手織天", bOn = true},
			[5] = {szName = "碧蝶獻祭", bOn = true},
			[6] = {szName = "玉蟾獻祭", bOn = true},
			[7] = {szName = "女媧補天", bOn = true},
			[8] = {szName = "蝶戲水", bOn = true},
		},
		["純陽"] = {
			[1] = {szName = "轉乾坤", bOn = true},
			[2] = {szName = "鎮山河", bOn = true},
			[3] = {szName = "生太極", bOn = true},
			[4] = {szName = "雨集", bOn = true},
			[5] = {szName = "紫氣東來", bOn = true},
			[6] = {szName = "吞日月", bOn = true},
			[7] = {szName = "韜光養晦", bOn = true},
			[8] = {szName = "坐忘無我", bOn = true},
		},
		["少林"] = {
			[1] = {szName = "捕風式", bOn = true},
			[2] = {szName = "羅漢金身", bOn = true},
			[3] = {szName = "無相訣", bOn = true},
			[4] = {szName = "折骨", bOn = true},
			[5] = {szName = "健骨", bOn = true},
			[6] = {szName = "金剛訣", bOn = true},
			[7] = {szName = "西宗", bOn = true},
			[8] = {szName = "金剛怒目", bOn = true},	--內功基礎攻擊力提高15%
			[9] = {szName = "捨身", bOn = true},
		},
		["藏劍"] = {
			[1] = {szName = "玉泉魚躍", bOn = true},
			[2] = {szName = "嘯日", bOn = true},
			[3] = {szName = "御天", bOn = true},
			[4] = {szName = "不工", bOn = true},
			[5] = {szName = "雲棲松", bOn = true},
			[6] = {szName = "聲趣", bOn = true},
			[7] = {szName = "夜雨", bOn = true},
			[8] = {szName = "月凝", bOn = true},
		},
		["天策"] = {
			[1] = {szName = "力拔", bOn = true},
			[2] = {szName = "縱輕騎", bOn = true},
			[3] = {szName = "嘯如虎", bOn = true},
			[4] = {szName = "守如山", bOn = true},
			[5] = {szName = "御", bOn = true},
			[6] = {szName = "疾如風", bOn = true},
		},
		["唐門"] = {
			[1] = {szName = "驚鴻游龍", bOn = true},
			[2] = {szName = "絕倫逸群", bOn = true},
			[3] = {szName = "生死之交", bOn = true},
			[4] = {szName = "護體", bOn = true},
			[5] = {szName = "煙消雲散", bOn = true},
			[6] = {szName = "追命無聲", bOn = true},
			[7] = {szName = "揚威", bOn = true},
			[8] = {szName = "鬼斧神工", bOn = true},
		},
		["明教"] = {
			[1] = {szName = "貪魔體", bOn = true},
			[2] = {szName = "靈輝", bOn = true},
			[3] = {szName = "聖月佑", bOn = true},
			[4] = {szName = "超然", bOn = true},
			[5] = {szName = "暗塵瀰散", bOn = true},
		},
		["丐幫"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["蒼雲"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["長歌"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["霸刀"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["其他"] = {
			[1] = {szName = "風府", bOn = true},
			[2] = {szName = "百會", bOn = true},
			[3] = {szName = "彈跳", bOn = true},
		},
	},
	["PlayerDebuff"] ={
		["萬花"] = {
			[1] = {szName = "商陽指", bOn = true},
			[2] = {szName = "蘭摧玉折", bOn = true},
			[3] = {szName = "鍾林毓秀", bOn = true},
			[4] = {szName = "芙蓉並蒂", bOn = true},
			[5] = {szName = "傍花隨柳", bOn = true},
			[6] = {szName = "厥陰指", bOn = true},
			[7] = {szName = "浮花", bOn = true},
			[8] = {szName = "少陽指", bOn = true},
			[9] = {szName = "同歸", bOn = true},
		},
		["七秀"] = {
			[1] = {szName = "步遲", bOn = true},
			[2] = {szName = "急曲", bOn = true},
			[3] = {szName = "劍破虛空", bOn = true},
			[4] = {szName = "玳弦", bOn = true},
			[5] = {szName = "劍心通明", bOn = true},
			[6] = {szName = "袖手", bOn = true},
			[7] = {szName = "帝驂龍翔", bOn = true},
			[8] = {szName = "絳唇珠袖", bOn = true},
			[9] = {szName = "雷霆震怒", bOn = true},
		},
		["五毒"] = {
			[1] = {szName = "蛇影", bOn = true},
			[2] = {szName = "蟾嘯", bOn = true},
			[3] = {szName = "千絲", bOn = true},
			[4] = {szName = "百足", bOn = true},
			[5] = {szName = "迷幻", bOn = true},
			[6] = {szName = "蠍蟄", bOn = true},
			[7] = {szName = "千絲迷心", bOn = true},
			[8] = {szName = "蟾嘯迷心", bOn = true},
			[9] = {szName = "百足迷心", bOn = true},
			[10] = {szName = "百足枯殘", bOn = true},
			[11] = {szName = "蟾嘯奪命", bOn = true},
			[12] = {szName = "蛇影奪命", bOn = true},
			[13] = {szName = "影滯", bOn = true},
			[14] = {szName = "天蛛獻祭", bOn = true},
			[15] = {szName = "幻蠱", bOn = true},
		},
		["純陽"] = {
			[1] = {szName = "疊刃", bOn = true},
			[2] = {szName = "萬劍歸宗", bOn = true},
			[3] = {szName = "三才化生", bOn = true},
			[4] = {szName = "生太極", bOn = true},
			[5] = {szName = "吞日月", bOn = true},
			[6] = {szName = "化三清", bOn = true},
			[7] = {szName = "繞足", bOn = true},
			[8] = {szName = "大道無術", bOn = true},
			[9] = {szName = "破勢", bOn = true},
			[10] = {szName = "劍沖陰陽", bOn = true},
			[11] = {szName = "北斗", bOn = true},
			[12] = {szName = "劍飛驚天", bOn = true},
			[13] = {szName = "八卦洞玄", bOn = true},
			[14] = {szName = "七星拱瑞", bOn = true},
			[15] = {szName = "五方行盡", bOn = true},
			[16] = {szName = "無相", bOn = true},		--被療傷成效降低50%，並受到「天地無極」更高的傷害
			[17] = {szName = "玄一", bOn = true},		--移動速度降低60%，並受到「天地無極」更高的傷害
		},
		["少林"] = {
			[1] = {szName = "眩暈", bOn = true},
			[2] = {szName = "抱殘式", bOn = true},
			[3] = {szName = "五蘊皆空", bOn = true},
			[4] = {szName = "恆河劫沙", bOn = true},
			[5] = {szName = "倒地", bOn = true},
			[6] = {szName = "搶珠式", bOn = true},
			[7] = {szName = "橫掃六合", bOn = true},
		},
		["藏劍"] = {
			[1] = {szName = "醉月", bOn = true},
			[2] = {szName = "松濤", bOn = true},
			[3] = {szName = "鶴歸孤山", bOn = true},
			[4] = {szName = "碧王", bOn = true},
			[5] = {szName = "危樓", bOn = true},
			[6] = {szName = "峰插雲景", bOn = true},
			[7] = {szName = "驚濤", bOn = true},
		},
		["天策"] = {
			[1] = {szName = "突", bOn = true},
			[2] = {szName = "崩", bOn = true},
			[3] = {szName = "斷魂刺", bOn = true},
			[4] = {szName = "日影", bOn = true},
			[5] = {szName = "破堅陣", bOn = true},
			[6] = {szName = "穿", bOn = true},
			[7] = {szName = "霹靂", bOn = true},
		},
		["唐門"] = {
			[1] = {szName = "化血鏢", bOn = true},
			[2] = {szName = "梅花針", bOn = true},
			[3] = {szName = "雷震子", bOn = true},
			[4] = {szName = "迷神釘", bOn = true},
			[5] = {szName = "穿心弩", bOn = true},
			[6] = {szName = "毒蒺藜", bOn = true},
			[7] = {szName = "身乏", bOn = true},
			[8] = {szName = "鐵爪", bOn = true},
			[9] = {szName = "鑽心刺骨", bOn = true},
		},
		["明教"] = {
			[1] = {szName = "業海罪縛", bOn = true},
			[2] = {szName = "怖畏暗刑", bOn = true},
			[3] = {szName = "幻相", bOn = true},
			[4] = {szName = "日劫", bOn = true},
			[5] = {szName = "月劫", bOn = true},
		},
		["丐幫"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["蒼雲"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["長歌"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["霸刀"] = {
			[1] = {szName = "太虛", bOn = false},
		},
		["其他"] = {
			[1] = {szName = "中注", bOn = true},
			[2] = {szName = "完骨", bOn = true},
			[3] = {szName = "懸鍾", bOn = true},
			[4] = {szName = "沉默", bOn = true},
			[5] = {szName = "倒地", bOn = true},
		}
	}
}

RegisterCustomData("BuffMonitorEx.tBuffData")

BuffMonitorEx.bEnabled = true

BuffMonitorEx.bTarget = true				RegisterCustomData("BuffMonitorEx.bTarget")
BuffMonitorEx.bPlayer = true				RegisterCustomData("BuffMonitorEx.bPlayer")
BuffMonitorEx.bTargetBuff = true			RegisterCustomData("BuffMonitorEx.bTargetBuff")
BuffMonitorEx.bPlayerBuff = true			RegisterCustomData("BuffMonitorEx.bPlayerBuff")
BuffMonitorEx.bTargetDebuff = true			RegisterCustomData("BuffMonitorEx.bTargetDebuff")
BuffMonitorEx.bPlayerDebuff = true			RegisterCustomData("BuffMonitorEx.bPlayerDebuff")
BuffMonitorEx.nDistance = 10				RegisterCustomData("BuffMonitorEx.nDistance")
BuffMonitorEx.nScale = 0.9					RegisterCustomData("BuffMonitorEx.nScale")
BuffMonitorEx.bSelfDebuff = false			RegisterCustomData("BuffMonitorEx.bSelfDebuff")
BuffMonitorEx.bAutoSwitch = true			RegisterCustomData("BuffMonitorEx.bAutoSwitch")
BuffMonitorEx.nAlpha = 250					RegisterCustomData("BuffMonitorEx.nAlpha")
BuffMonitorEx.bAnimate = true				RegisterCustomData("BuffMonitorEx.bAnimate")

function BuffMonitorEx.GetMenu()
	local menu = {szOption = "自身/目標BUFF監控"}

	local menu_target = {
		szOption = "<目標BUFF>監控",
		bCheck = true,
		bChecked = BuffMonitorEx.bTarget,
		fnAction = function()
			BuffMonitorEx.bTarget = not BuffMonitorEx.bTarget
		end,
	}
	local menu_target_buff = {
		szOption = "BUFF列表",
		bCheck = true,
		bChecked = BuffMonitorEx.bTargetBuff,
		fnAction = function()
			BuffMonitorEx.bTargetBuff = not BuffMonitorEx.bTargetBuff
		end,
		{
			szOption = "添加",
			fnAction = function()
				GetUserInput("門派|BUFF名",  function(szText)  BuffMonitorEx.AddBuffToList("TargetBuff", szText) end, nil, nil, nil, nil, nil)
			end,
		}
	}
	table.insert(menu_target_buff, {bDevide = true})
	for k, v in pairs(BuffMonitorEx.tBuffData["TargetBuff"]) do
		local m_force = {szOption = k}
		for i = 1, #BuffMonitorEx.tBuffData["TargetBuff"][k], 1 do
			local m_buff = {
				szOption = BuffMonitorEx.tBuffData["TargetBuff"][k][i].szName,
				bCheck = true,
				bChecked = BuffMonitorEx.tBuffData["TargetBuff"][k][i].bOn,
				fnAction = function()
					BuffMonitorEx.tBuffData["TargetBuff"][k][i].bOn = not BuffMonitorEx.tBuffData["TargetBuff"][k][i].bOn
					--Output(BuffMonitorEx.tBuffData["TargetBuff"][k][i].bOn)
				end,
				{
					szOption = "刪除",
					fnAction = function()
						OutputMessage("MSG_SYS", " ["..BuffMonitorEx.tBuffData["TargetBuff"][k][i].szName.."] 已從列表刪除！\n")
						table.remove(BuffMonitorEx.tBuffData["TargetBuff"][k], i)
					end,
				}
			}
			table.insert(m_force, m_buff)
		end
		table.insert(menu_target_buff, m_force)
	end
	table.insert(menu_target, menu_target_buff)

	local menu_target_debuff = {
		szOption = "DEBUFF列表",
		bCheck = true,
		bChecked = BuffMonitorEx.bTargetDebuff,
		fnAction = function()
			BuffMonitorEx.bTargetDebuff = not BuffMonitorEx.bTargetDebuff
		end,
		{
			szOption = "添加",
			fnAction = function()
				GetUserInput("門派|DEBUFF名",  function(szText)  BuffMonitorEx.AddBuffToList("TargetDebuff", szText) end, nil, nil, nil, nil, nil)
			end,
		}
	}
	table.insert(menu_target_debuff, {bDevide = true})
	for k, v in pairs(BuffMonitorEx.tBuffData["TargetDebuff"]) do
		local m_force = {szOption = k}
		for i = 1, #BuffMonitorEx.tBuffData["TargetDebuff"][k], 1 do
			local m_debuff = {
				szOption = BuffMonitorEx.tBuffData["TargetDebuff"][k][i].szName,
				bCheck = true,
				bChecked = BuffMonitorEx.tBuffData["TargetDebuff"][k][i].bOn,
				fnAction = function()
					BuffMonitorEx.tBuffData["TargetDebuff"][k][i].bOn = not BuffMonitorEx.tBuffData["TargetDebuff"][k][i].bOn
				end,
				{
					szOption = "刪除",
					fnAction = function()
						OutputMessage("MSG_SYS", " ["..BuffMonitorEx.tBuffData["TargetDebuff"][k][i].szName.."] 已從列表刪除！\n")
						table.remove(BuffMonitorEx.tBuffData["TargetDebuff"][k], i)
					end,
				}
			}
			table.insert(m_force, m_debuff)
		end
		table.insert(menu_target_debuff, m_force)
	end
	table.insert(menu_target, menu_target_debuff)

	local menu_target_direction = {
		szOption = "排列方向",
		{
			szOption = "從左往右",
			bMCheck = true,
			bChecked = BuffMonitorExTarget.nDirection == 1,
			fnAction = function()
				BuffMonitorExTarget.nDirection = 1
			end,
		},
		{
			szOption = "從右往左",
			bMCheck = true,
			bChecked = BuffMonitorExTarget.nDirection == 2,
			fnAction = function()
				BuffMonitorExTarget.nDirection = 2
			end,
		},
		{
			szOption = "從上往下",
			bMCheck = true,
			bChecked = BuffMonitorExTarget.nDirection == 3,
			fnAction = function()
				BuffMonitorExTarget.nDirection = 3
			end,
		},
		{
			szOption = "從下往上",
			bMCheck = true,
			bChecked = BuffMonitorExTarget.nDirection == 4,
			fnAction = function()
				BuffMonitorExTarget.nDirection = 4
			end,
		},
	}
	table.insert(menu_target, menu_target_direction)
	table.insert(menu, menu_target)

	local menu_player = {
		szOption = "<自身BUFF>監控",
		bCheck = true,
		bChecked = BuffMonitorEx.bPlayer,
		fnAction = function()
			BuffMonitorEx.bPlayer = not BuffMonitorEx.bPlayer
		end,
	}
	local menu_player_buff = {
		szOption = "BUFF列表",
		bCheck = true,
		bChecked = BuffMonitorEx.bPlayerBuff,
		fnAction = function()
			BuffMonitorEx.bPlayerBuff = not BuffMonitorEx.bPlayerBuff
		end,
		{
			szOption = "添加",
			fnAction = function()
				GetUserInput("門派|BUFF名",  function(szText)  BuffMonitorEx.AddBuffToList("PlayerBuff", szText) end, nil, nil, nil, nil, nil)
			end,
		}
	}
	table.insert(menu_player_buff, {bDevide = true})
	for k, v in pairs(BuffMonitorEx.tBuffData["PlayerBuff"]) do
		local m_force = {szOption = k}
		for i = 1, #BuffMonitorEx.tBuffData["PlayerBuff"][k], 1 do
			local m_buff = {
				szOption = BuffMonitorEx.tBuffData["PlayerBuff"][k][i].szName,
				bCheck = true,
				bChecked = BuffMonitorEx.tBuffData["PlayerBuff"][k][i].bOn,
				fnAction = function()
					BuffMonitorEx.tBuffData["PlayerBuff"][k][i].bOn = not BuffMonitorEx.tBuffData["PlayerBuff"][k][i].bOn
					--Output(i)
				end,
				{
					szOption = "刪除",
					fnAction = function()
						--Output(i)
						OutputMessage("MSG_SYS", " ["..BuffMonitorEx.tBuffData["PlayerBuff"][k][i].szName.."] 已從列表刪除！\n")
						table.remove(BuffMonitorEx.tBuffData["PlayerBuff"][k], i)
					end,
				}
			}
			table.insert(m_force, m_buff)
		end
		table.insert(menu_player_buff, m_force)
	end
	table.insert(menu_player, menu_player_buff)

	local menu_player_debuff = {
		szOption = "DEBUFF列表",
		bCheck = true,
		bChecked = BuffMonitorEx.bPlayerDebuff,
		fnAction = function()
			BuffMonitorEx.bPlayerDebuff = not BuffMonitorEx.bPlayerDebuff
		end,
		{
			szOption = "添加",
			fnAction = function()
				GetUserInput("門派|DEBUFF名",  function(szText)  BuffMonitorEx.AddBuffToList("PlayerDebuff", szText) end, nil, nil, nil, nil, nil)
			end,
		}
	}
	table.insert(menu_player_debuff, {bDevide = true})
	for k, v in pairs(BuffMonitorEx.tBuffData["PlayerDebuff"]) do
		local m_force = {szOption = k}
		for i = 1, #BuffMonitorEx.tBuffData["PlayerDebuff"][k], 1 do
			local m_debuff = {
				szOption = BuffMonitorEx.tBuffData["PlayerDebuff"][k][i].szName,
				bCheck = true,
				bChecked = BuffMonitorEx.tBuffData["PlayerDebuff"][k][i].bOn,
				fnAction = function()
					BuffMonitorEx.tBuffData["PlayerDebuff"][k][i].bOn = not BuffMonitorEx.tBuffData["PlayerDebuff"][k][i].bOn
				end,
				{
					szOption = "刪除",
					fnAction = function()
						OutputMessage("MSG_SYS", " ["..BuffMonitorEx.tBuffData["PlayerDebuff"][k][i].szName.."] 已從列表刪除！\n")
						table.remove(BuffMonitorEx.tBuffData["PlayerDebuff"][k], i)
					end,
				}
			}
			table.insert(m_force, m_debuff)
		end
		table.insert(menu_player_debuff, m_force)
	end
	table.insert(menu_player, menu_player_debuff)

	local menu_player_direction = {
		szOption = "排列方向",
		{
			szOption = "從左往右",
			bMCheck = true,
			bChecked = BuffMonitorExPlayer.nDirection == 1,
			fnAction = function()
				BuffMonitorExPlayer.nDirection = 1
			end,
		},
		{
			szOption = "從右往左",
			bMCheck = true,
			bChecked = BuffMonitorExPlayer.nDirection == 2,
			fnAction = function()
				BuffMonitorExPlayer.nDirection = 2
			end,
		},
		{
			szOption = "從上往下",
			bMCheck = true,
			bChecked = BuffMonitorExPlayer.nDirection == 3,
			fnAction = function()
				BuffMonitorExPlayer.nDirection = 3
			end,
		},
		{
			szOption = "從下往上",
			bMCheck = true,
			bChecked = BuffMonitorExPlayer.nDirection == 4,
			fnAction = function()
				BuffMonitorExPlayer.nDirection = 4
			end,
		},
	}
	table.insert(menu_player, menu_player_direction)
	table.insert(menu, menu_player)


	local menu_self = {
		szOption = "<屏蔽BUFF>設置",
		{
			szOption = "目標是NPC時自動屏蔽他人DEBUFF",
			bCheck = true,
			bChecked = BuffMonitorEx.bAutoSwitch,
			fnAction = function()
			BuffMonitorEx.bAutoSwitch = not BuffMonitorEx.bAutoSwitch
			end,
		},
	}
	table.insert(menu, menu_self)

	table.insert(menu, {bDevide = true})
	local menu_layout = {szOption = "佈局設置"}
	local menu_size = {
		szOption = "圖標大小",
		{
			szOption = "Lv 1",
			bMCheck = true,
			bChecked = BuffMonitorEx.nScale == 0.9,
			fnAction = function()
				BuffMonitorEx.nScale = 0.9
			end,
		},
		{
			szOption = "Lv 2",
			bMCheck = true,
			bChecked = BuffMonitorEx.nScale == 1.0,
			fnAction = function()
				BuffMonitorEx.nScale = 1.0
			end,
		},
		{
			szOption = "Lv 3",
			bMCheck = true,
			bChecked = BuffMonitorEx.nScale == 1.1,
			fnAction = function()
				BuffMonitorEx.nScale = 1.1
			end,
		},
		{
			szOption = "Lv 4",
			bMCheck = true,
			bChecked = BuffMonitorEx.nScale == 1.2,
			fnAction = function()
				BuffMonitorEx.nScale = 1.2
			end,
		},
		{
			szOption = "Lv 5",
			bMCheck = true,
			bChecked = BuffMonitorEx.nScale == 1.3,
			fnAction = function()
				BuffMonitorEx.nScale = 1.3
			end,
		},
	}
	table.insert(menu_layout, menu_size)

	local menu_distance = {
		szOption = "圖標間距",
		{
			szOption = "Lv 1",
			bMCheck = true,
			bChecked = BuffMonitorEx.nDistance == 10,
			fnAction = function()
				BuffMonitorEx.nDistance = 10
			end,
		},
		{
			szOption = "Lv 2",
			bMCheck = true,
			bChecked = BuffMonitorEx.nDistance == 15,
			fnAction = function()
				BuffMonitorEx.nDistance = 15
			end,
		},
		{
			szOption = "Lv 3",
			bMCheck = true,
			bChecked = BuffMonitorEx.nDistance == 20,
			fnAction = function()
				BuffMonitorEx.nDistance = 20
			end,
		},
		{
			szOption = "Lv 4",
			bMCheck = true,
			bChecked = BuffMonitorEx.nDistance == 25,
			fnAction = function()
				BuffMonitorEx.nDistance = 25
			end,
		},
		{
			szOption = "Lv 5",
			bMCheck = true,
			bChecked = BuffMonitorEx.nDistance == 30,
			fnAction = function()
				BuffMonitorEx.nDistance = 30
			end,
		},
	}
	table.insert(menu_layout, menu_distance)

	local menu_alpha = {
		szOption = "圖標透明度",
		{
			szOption = BuffMonitorEx.nAlpha,
			fnAction = function()
				local x, y = this:GetAbsPos()
				local w, h = this:GetSize()
				GetUserInputNumber(BuffMonitorEx.nAlpha, 255, {x, y, x + w, y + h}, function(nNum) BuffMonitorEx.nAlpha = nNum end, nil, nil)
			end,
		},
	}
	table.insert(menu_layout, menu_alpha)

	local menu_animate = {
		szOption = "倒計時特效",
		bCheck = true,
		bChecked = BuffMonitorEx.bAnimate,
		fnAction = function()
			BuffMonitorEx.bAnimate = not BuffMonitorEx.bAnimate
		end,
	}
	table.insert(menu_layout, menu_animate)
	table.insert(menu, menu_layout)

	local menu_reset = {
		szOption = "重置數據",
		fnAction = function()
		BuffMonitorEx.tBuffData = {
			["TargetBuff"] = {
				["萬花"] = {
					[1] = {szName = "毫針", bOn = true},		--外功防禦等級提高<BUFF atPhysicsShieldBase>點，被攻擊則去掉一層並恢復1000點氣血值
					[2] = {szName = "春泥護花", bOn = true},	--受到的傷害降低50%
					[3] = {szName = "星樓月影", bOn = true},	--不受招式控制
					[4] = {szName = "青荷", bOn = true},		--混元內功基礎攻擊力提高40%
					[5] = {szName = "碧水滔天", bOn = true},	--每秒恢復內力最大值的6%
					[6] = {szName = "水月無間", bOn = true},	--下一個傷害或療傷運功招式無需運功
					[7] = {szName = "輕棄", bOn = true},		--施展「蘭摧玉折」無需運功
					[8] = {szName = "流離", bOn = true},		--施展「陽明指」無需運功
				},
				["七秀"] = {
					[1] = {szName = "天地低昂", bOn = true},	--化解受到的傷害40%
					[2] = {szName = "鵲踏枝", bOn = true},		--閃避等級提高<BUFF atDodge>點
					[3] = {szName = "素衿", bOn = true},		--不受招式控制
					[4] = {szName = "繁音急節", bOn = true},	--陰性內功基礎攻擊力提高30%
					[5] = {szName = "迅影", bOn = true},		--移動速度提高55%
				},
				["五毒"] = {
					[1] = {szName = "風蜈獻祭", bOn = true},	--不受控制招式影響
					[2] = {szName = "蠱蟲狂暴", bOn = true},	--不受控制招式影響，氣血最大值提高50%，內功、外功防禦等級提高100%，傷害提高50%，移動速度提高50%
					[3] = {szName = "聖手織天", bOn = true},	--受到的傷害降低40%
					[4] = {szName = "碧蝶獻祭", bOn = true},
					[5] = {szName = "玉蟾獻祭", bOn = true},	--受到傷害降低40%
					[6] = {szName = "女媧補天", bOn = true},	--療傷成效提高50%，造成的威脅降低30%，免疫鎖足、減速效果，移動速度降低50%，運功不會被傷害打斷
					[7] = {szName = "蝶戲水", bOn = true},		--受到的傷害減少25%
					[8] = {szName = "靈蛇獻祭", bOn = true},	--毒性內功基礎攻擊力提高50%，基礎療傷成效提高50%
				},
				["純陽"] = {
					[1] = {szName = "轉乾坤", bOn = true},		--不受招式控制
					[2] = {szName = "鎮山河", bOn = true},		--免疫任何傷害
					[3] = {szName = "生太極", bOn = true},		--不受控制招式影響
					[4] = {szName = "雨集", bOn = true},		--每層可使下一個四象輪迴無需運功
					[5] = {szName = "紫氣東來", bOn = true},	--混元內功基礎攻擊力提高25%，會心幾率提高25%，會心效果提高25%，但所有招式內力消耗提高20%
					[6] = {szName = "韜光養晦", bOn = true},	--每1.5秒聚氣一格
					[7] = {szName = "坐忘無我", bOn = true},		--受到的傷害降低40%
				},
				["少林"] = {
					[1] = {szName = "捕風式", bOn = true},		--使捉影式不需要運功
					[2] = {szName = "羅漢金身", bOn = true},	--反彈自身受到傷害的50%
					[3] = {szName = "無相訣", bOn = true},		--使自身減少受到傷害50%，並降低自身移動速度50%
					[4] = {szName = "折骨", bOn = true},		--不受控制及沉默招式影響
					[5] = {szName = "健骨", bOn = true},		--免疫一切內功傷害
					[6] = {szName = "金剛訣", bOn = true},		--不受減速效果影響，每1.5秒獲得1點禪那，傷害產生的威脅值降低50%
					[7] = {szName = "西宗", bOn = true},		--受到的傷害降低40%
					[8] = {szName = "捨身", bOn = true},		--承擔100%傷害
				},
				["藏劍"] = {
					[1] = {szName = "玉泉魚躍", bOn = true},	--不受控制
					[2] = {szName = "嘯日", bOn = true},		--不受招式控制
					[3] = {szName = "御天", bOn = true},		--受到的傷害降低99%
					[4] = {szName = "不工", bOn = true},		--不受控制招式影響
					[5] = {szName = "雲棲松", bOn = true},		--閃躲等級提高<BUFF atDodge>點
					[6] = {szName = "聲趣", bOn = true},		--使下一個「夕照雷鋒」瞬發
					[7] = {szName = "夜雨", bOn = true},		--使下一個「雲飛玉皇」瞬發
					[8] = {szName = "月凝", bOn = true},		--化解受到的傷害<BUFF atGlobalDamageAbsorb>點
				},
				["天策"] = {
					[1] = {szName = "力拔", bOn = true},		--不受控制招式影響
					[2] = {szName = "縱輕騎", bOn = true},		--不受招式控制影響
					[3] = {szName = "嘯如虎", bOn = true},		--外功攻擊提高<BUFF atPhysicsAttackPowerBase>點，外功會心等級提高<BUFF atPhysicsCriticalStrike>點，不會重傷
					[4] = {szName = "守如山", bOn = true},		--受到的傷害降低80%
					[5] = {szName = "御", bOn = true},			--每層化解一次傷害
					[6] = {szName = "疾如風", bOn = true},		--使自身招式傷害提高<BUFF atSkillPhysicsDamage>點，外功會心幾率提高20%
				},
				["唐門"] = {
					[1] = {szName = "驚鴻游龍", bOn = true},	--躲閃幾率提高45%，受到內功傷害降低45%
					[2] = {szName = "絕倫逸群", bOn = true},	--免疫移動限制，移動速度提高50%
					[3] = {szName = "生死之交", bOn = true},	--不受招式控制
					[4] = {szName = "護體", bOn = true},		--受到的傷害降低<BUFF_EX 1024 atGlobalResistPercent>%
					[5] = {szName = "煙消雲散", bOn = true},	--受到的傷害降低<BUFF_EX 1024 atGlobalResistPercent>%
					[6] = {szName = "追命無聲", bOn = true},	--使下一個「追命箭」無需運功
					[7] = {szName = "揚威", bOn = true},		--內功基礎攻擊力提高<BUFF_EX 1024 atPoisonAttackPowerPercent>%
					[8] = {szName = "鬼斧神工", bOn = true},	--免疫任何傷害
				},
				["明教"] = {
					[1] = {szName = "貪魔體", bOn = true},
					[2] = {szName = "靈輝", bOn = true},
					[3] = {szName = "聖月佑", bOn = true},
					[4] = {szName = "超然", bOn = true},
					[5] = {szName = "暗塵瀰散", bOn = true},
				},
				["丐幫"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["蒼雲"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["長歌"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["霸刀"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["其他"] = {
					[1] = {szName = "風府", bOn = true},		--不受移動限制
					[2] = {szName = "百會", bOn = true},		--每秒恢復的氣血值最大值5%
					[3] = {szName = "彈跳", bOn = true},		--跳得更高
				},
			},
			["TargetDebuff"] = {
				["萬花"] = {
					[1] = {szName = "商陽指", bOn = true},		--每3秒受到<BUFF atCallNeutralDamage>點混元性內功傷害
					[2] = {szName = "蘭摧玉折", bOn = true},	--每3秒受到<BUFF atCallNeutralDamage>點混元性內功傷害
					[3] = {szName = "鍾林毓秀", bOn = true},	--每3秒受到<BUFF atCallNeutralDamage>點混元性內功傷害
					[4] = {szName = "芙蓉並蒂", bOn = true},	--定身
					[5] = {szName = "傍花隨柳", bOn = true},	--定身
					[6] = {szName = "厥陰指", bOn = true},		--無法施放內功招式
					[7] = {szName = "浮花", bOn = true},		--施展招式的內力消耗提高20%
					[8] = {szName = "少陽指", bOn = true},		--移動速度降低50%
					[9] = {szName = "同歸", bOn = true},		--定身
				},
				["七秀"] = {
					[1] = {szName = "步遲", bOn = true},		--移動速度降低50%
					[2] = {szName = "急曲", bOn = true},		--每3秒受到<BUFF atCallLunarDamage>點陰性內功傷害
					[3] = {szName = "劍破虛空", bOn = true},	--無法施展內功招式，無法施展輕功招式
					[4] = {szName = "玳弦", bOn = true},		--無法施展輕功
					[5] = {szName = "劍心通明", bOn = true},	--不能施展內功招式
					[6] = {szName = "袖手", bOn = true},		--鎖足
					[7] = {szName = "帝驂龍翔", bOn = true},	--定身
					[8] = {szName = "絳唇珠袖", bOn = true},	--定身
					[9] = {szName = "雷霆震怒", bOn = true},	--眩暈，不能被傷害和療傷
				},
				["五毒"] = {
					[1] = {szName = "蛇影", bOn = true},		--每2秒受到<BUFF atCallPoisonDamage>點毒性傷害
					[2] = {szName = "蟾嘯", bOn = true},		--每2秒受到<BUFF atCallPoisonDamage>點毒性傷害
					[3] = {szName = "千絲", bOn = true},		--移動速度降低50%
					[4] = {szName = "百足", bOn = true},		--每3秒受到<BUFF atCallPoisonDamage>點毒性傷害
					[5] = {szName = "迷幻", bOn = true},		--不能施展輕功，受到的傷害提高20%
					[6] = {szName = "蠍蟄", bOn = true},		--受到的療傷成效降低50%
					[7] = {szName = "千絲迷心", bOn = true},	--不能施展輕功
					[8] = {szName = "蟾嘯迷心", bOn = true},	--無法施展內功招式
					[9] = {szName = "百足迷心", bOn = true},	--鎖足
					[10] = {szName = "百足枯殘", bOn = true},	--受到療傷成效降低50%
					[11] = {szName = "蟾嘯奪命", bOn = true},	--效果結束後受到<BUFF atCallPoisonDamage>點毒性傷害
					[12] = {szName = "蛇影奪命", bOn = true},	--效果結束後受到<BUFF atCallPoisonDamage>點毒性傷害
					[13] = {szName = "影滯", bOn = true},		--鎖足
					[14] = {szName = "天蛛獻祭", bOn = true},	--鎖足
					[15] = {szName = "幻蠱", bOn = true},		--定身，若被卸除則無法使用輕功，且受到的毒性傷害提高20%
					[16] = {szName = "奪命蠱", bOn = true},
					[17] = {szName = "迷心蠱", bOn = true},
					[18] = {szName = "枯殘蠱", bOn = true},
					[19] = {szName = "淒切", bOn = true},
					[20] = {szName = "絲牽", bOn = true},
					[21] = {szName = "眠蠱", bOn = true},
					[22] = {szName = "蠍心迷心", bOn = true},
				},
				["純陽"] = {
					[1] = {szName = "疊刃", bOn = true},		--每層每3秒造成外功傷害<BUFF atCallPhysicsDamage>點
					[2] = {szName = "萬劍歸宗", bOn = true},	--外功防禦等級降低5%，近身前置條件
					[3] = {szName = "三才化生", bOn = true},	--鎖足
					[4] = {szName = "生太極", bOn = true},		--移動速度降低40%
					[5] = {szName = "吞日月", bOn = true},		--不能施展輕功
					[6] = {szName = "化三清", bOn = true},		--施展招式的內力消耗提高20%，近身前置條件
					[7] = {szName = "繞足", bOn = true},		--鎖足
					[8] = {szName = "大道無術", bOn = true},	--定身
					[9] = {szName = "破勢", bOn = true},		--破勢
					[10] = {szName = "劍沖陰陽", bOn = true},	--眩暈
					[11] = {szName = "北斗", bOn = true},		--眩暈
					[12] = {szName = "劍飛驚天", bOn = true},	--不能運功
					[13] = {szName = "八卦洞玄", bOn = true},	--無法使用任何招式
					[14] = {szName = "七星拱瑞", bOn = true},	--定身
					[15] = {szName = "五方行盡", bOn = true},	--鎖足
				},
				["少林"] = {
					[1] = {szName = "眩暈", bOn = true},		--眩暈
					[2] = {szName = "抱殘式", bOn = true},		--移動速度降低50%
					[3] = {szName = "五蘊皆空", bOn = true},	--眩暈
					[4] = {szName = "恆河劫沙", bOn = true},	--受到的療傷成效降低50%
					[5] = {szName = "倒地", bOn = true},		--倒在地上
					[6] = {szName = "搶珠式", bOn = true},		--不能施展內功招式
					[7] = {szName = "橫掃六合", bOn = true},	--每2秒受到陽性內功傷害<BUFF atCallSolarDamage>點
				},
				["藏劍"] = {
					[1] = {szName = "醉月", bOn = true},		--眩暈
					[2] = {szName = "松濤", bOn = true},		--定身
					[3] = {szName = "鶴歸孤山", bOn = true},	--眩暈
					[4] = {szName = "碧王", bOn = true},		--施展「風吳來山」附帶眩暈效果
					[5] = {szName = "危樓", bOn = true},		--眩暈
					[6] = {szName = "峰插雲景", bOn = true},	--暈眩
					[7] = {szName = "驚濤", bOn = true},		--移動速度降低50%
				},
				["天策"] = {
					[1] = {szName = "突", bOn = true},			--眩暈
					[2] = {szName = "崩", bOn = true},			--眩暈
					[3] = {szName = "斷魂刺", bOn = true},		--眩暈
					[4] = {szName = "日影", bOn = true},		--眩暈
					[5] = {szName = "破堅陣", bOn = true},		--眩暈
					[6] = {szName = "穿", bOn = true},			--移動速度降低65%
					[7] = {szName = "霹靂", bOn = true},		--受到的療傷成效降低50%
				},
				["唐門"] = {
					[1] = {szName = "化血鏢", bOn = true},		--每3秒受到<BUFF atCallPoisonDamage>點毒性內功傷害
					[2] = {szName = "梅花針", bOn = true},		--無法施展內功招式
					[3] = {szName = "雷震子", bOn = true},		--眩暈
					[4] = {szName = "迷神釘", bOn = true},		--眩暈
					[5] = {szName = "穿心弩", bOn = true},		--每3秒受到<BUFF atCallPhysicsDamage>點外功傷害
					[6] = {szName = "毒蒺藜", bOn = true},		--移動速度降低50%
					[7] = {szName = "身乏", bOn = true},		--不能施展輕功
					[8] = {szName = "鐵爪", bOn = true},		--鎖足
					[9] = {szName = "鑽心刺骨", bOn = true},	--移動速度降低65%
				},
				["明教"] = {
					[1] = {szName = "業海罪縛", bOn = true},
					[2] = {szName = "怖畏暗刑", bOn = true},
					[3] = {szName = "幻相", bOn = true},
					[4] = {szName = "日劫", bOn = true},
					[5] = {szName = "月劫", bOn = true},
				},
				["丐幫"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["蒼雲"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["長歌"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["霸刀"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["其他"] = {
					[1] = {szName = "中注", bOn = true},		--眩暈
					[2] = {szName = "完骨", bOn = true},		--定身
					[3] = {szName = "懸鍾", bOn = true},		--不能運功
					[4] = {szName = "沉默", bOn = true},		--不能運功
					[5] = {szName = "倒地", bOn = true},		--倒在地上
				},
			},
			["PlayerBuff"] = {
				["萬花"] = {
					[1] = {szName = "毫針", bOn = true},
					[2] = {szName = "春泥護花", bOn = true},
					[3] = {szName = "星樓月影", bOn = true},
					[4] = {szName = "青荷", bOn = true},
					[5] = {szName = "碧水滔天", bOn = true},
					[6] = {szName = "水月無間", bOn = true},
					[7] = {szName = "行氣血", bOn = true},		--施展招式無需運功
					[8] = {szName = "輕棄", bOn = true},
					[9] = {szName = "流離", bOn = true},
				},
				["七秀"] = {
					[1] = {szName = "天地低昂", bOn = true},
					[2] = {szName = "鵲踏枝", bOn = true},
					[3] = {szName = "素衿", bOn = true},
					[4] = {szName = "繁音急節", bOn = true},
					[5] = {szName = "迅影", bOn = true},
					[6] = {szName = "龍池樂", bOn = true},		--招式的威脅值降低60%
					[7] = {szName = "翔舞", bOn = true},		--每3秒恢復氣血值<BUFF atCallTherapy>點
					[8] = {szName = "上元點鬟", bOn = true},	--每3秒恢復氣血值238點，並在效果完結時額外恢復640點氣血值
				},
				["五毒"] = {
					[1] = {szName = "風蜈獻祭", bOn = true},
					[2] = {szName = "蠱蟲狂暴", bOn = true},
					[3] = {szName = "冰蠶訣", bOn = true},		--每層使下一個「冰蠶牽絲」瞬發
					[4] = {szName = "聖手織天", bOn = true},
					[5] = {szName = "碧蝶獻祭", bOn = true},
					[6] = {szName = "玉蟾獻祭", bOn = true},
					[7] = {szName = "女媧補天", bOn = true},
					[8] = {szName = "蝶戲水", bOn = true},
				},
				["純陽"] = {
					[1] = {szName = "轉乾坤", bOn = true},
					[2] = {szName = "鎮山河", bOn = true},
					[3] = {szName = "生太極", bOn = true},
					[4] = {szName = "雨集", bOn = true},
					[5] = {szName = "紫氣東來", bOn = true},
					[6] = {szName = "吞日月", bOn = true},
					[7] = {szName = "韜光養晦", bOn = true},
					[8] = {szName = "坐忘無我", bOn = true},
				},
				["少林"] = {
					[1] = {szName = "捕風式", bOn = true},
					[2] = {szName = "羅漢金身", bOn = true},
					[3] = {szName = "無相訣", bOn = true},
					[4] = {szName = "折骨", bOn = true},
					[5] = {szName = "健骨", bOn = true},
					[6] = {szName = "金剛訣", bOn = true},
					[7] = {szName = "西宗", bOn = true},
					[8] = {szName = "金剛怒目", bOn = true},	--內功基礎攻擊力提高15%
					[9] = {szName = "捨身", bOn = true},
				},
				["藏劍"] = {
					[1] = {szName = "玉泉魚躍", bOn = true},
					[2] = {szName = "嘯日", bOn = true},
					[3] = {szName = "御天", bOn = true},
					[4] = {szName = "不工", bOn = true},
					[5] = {szName = "雲棲松", bOn = true},
					[6] = {szName = "聲趣", bOn = true},
					[7] = {szName = "夜雨", bOn = true},
					[8] = {szName = "月凝", bOn = true},
				},
				["天策"] = {
					[1] = {szName = "力拔", bOn = true},
					[2] = {szName = "縱輕騎", bOn = true},
					[3] = {szName = "嘯如虎", bOn = true},
					[4] = {szName = "守如山", bOn = true},
					[5] = {szName = "御", bOn = true},
					[6] = {szName = "疾如風", bOn = true},
				},
				["唐門"] = {
					[1] = {szName = "驚鴻游龍", bOn = true},
					[2] = {szName = "絕倫逸群", bOn = true},
					[3] = {szName = "生死之交", bOn = true},
					[4] = {szName = "護體", bOn = true},
					[5] = {szName = "煙消雲散", bOn = true},
					[6] = {szName = "追命無聲", bOn = true},
					[7] = {szName = "揚威", bOn = true},
					[8] = {szName = "鬼斧神工", bOn = true},
				},
				["明教"] = {
					[1] = {szName = "貪魔體", bOn = true},
					[2] = {szName = "靈輝", bOn = true},
					[3] = {szName = "聖月佑", bOn = true},
					[4] = {szName = "超然", bOn = true},
					[5] = {szName = "暗塵瀰散", bOn = true},
				},
				["丐幫"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["蒼雲"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["長歌"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["霸刀"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["其他"] = {
					[1] = {szName = "風府", bOn = true},
					[2] = {szName = "百會", bOn = true},
					[3] = {szName = "彈跳", bOn = true},
				},
			},
			["PlayerDebuff"] ={
				["萬花"] = {
					[1] = {szName = "商陽指", bOn = true},
					[2] = {szName = "蘭摧玉折", bOn = true},
					[3] = {szName = "鍾林毓秀", bOn = true},
					[4] = {szName = "芙蓉並蒂", bOn = true},
					[5] = {szName = "傍花隨柳", bOn = true},
					[6] = {szName = "厥陰指", bOn = true},
					[7] = {szName = "浮花", bOn = true},
					[8] = {szName = "少陽指", bOn = true},
					[9] = {szName = "同歸", bOn = true},
				},
				["七秀"] = {
					[1] = {szName = "步遲", bOn = true},
					[2] = {szName = "急曲", bOn = true},
					[3] = {szName = "劍破虛空", bOn = true},
					[4] = {szName = "玳弦", bOn = true},
					[5] = {szName = "劍心通明", bOn = true},
					[6] = {szName = "袖手", bOn = true},
					[7] = {szName = "帝驂龍翔", bOn = true},
					[8] = {szName = "絳唇珠袖", bOn = true},
					[9] = {szName = "雷霆震怒", bOn = true},
				},
				["五毒"] = {
					[1] = {szName = "蛇影", bOn = true},
					[2] = {szName = "蟾嘯", bOn = true},
					[3] = {szName = "千絲", bOn = true},
					[4] = {szName = "百足", bOn = true},
					[5] = {szName = "迷幻", bOn = true},
					[6] = {szName = "蠍蟄", bOn = true},
					[7] = {szName = "千絲迷心", bOn = true},
					[8] = {szName = "蟾嘯迷心", bOn = true},
					[9] = {szName = "百足迷心", bOn = true},
					[10] = {szName = "百足枯殘", bOn = true},
					[11] = {szName = "蟾嘯奪命", bOn = true},
					[12] = {szName = "蛇影奪命", bOn = true},
					[13] = {szName = "影滯", bOn = true},
					[14] = {szName = "天蛛獻祭", bOn = true},
					[15] = {szName = "幻蠱", bOn = true},
				},
				["純陽"] = {
					[1] = {szName = "疊刃", bOn = true},
					[2] = {szName = "萬劍歸宗", bOn = true},
					[3] = {szName = "三才化生", bOn = true},
					[4] = {szName = "生太極", bOn = true},
					[5] = {szName = "吞日月", bOn = true},
					[6] = {szName = "化三清", bOn = true},
					[7] = {szName = "繞足", bOn = true},
					[8] = {szName = "大道無術", bOn = true},
					[9] = {szName = "破勢", bOn = true},
					[10] = {szName = "劍沖陰陽", bOn = true},
					[11] = {szName = "北斗", bOn = true},
					[12] = {szName = "劍飛驚天", bOn = true},
					[13] = {szName = "八卦洞玄", bOn = true},
					[14] = {szName = "七星拱瑞", bOn = true},
					[15] = {szName = "五方行盡", bOn = true},
					[16] = {szName = "無相", bOn = true},		--被療傷成效降低50%，並受到「天地無極」更高的傷害
					[17] = {szName = "玄一", bOn = true},		--移動速度降低60%，並受到「天地無極」更高的傷害
				},
				["少林"] = {
					[1] = {szName = "眩暈", bOn = true},
					[2] = {szName = "抱殘式", bOn = true},
					[3] = {szName = "五蘊皆空", bOn = true},
					[4] = {szName = "恆河劫沙", bOn = true},
					[5] = {szName = "倒地", bOn = true},
					[6] = {szName = "搶珠式", bOn = true},
					[7] = {szName = "橫掃六合", bOn = true},
				},
				["藏劍"] = {
					[1] = {szName = "醉月", bOn = true},
					[2] = {szName = "松濤", bOn = true},
					[3] = {szName = "鶴歸孤山", bOn = true},
					[4] = {szName = "碧王", bOn = true},
					[5] = {szName = "危樓", bOn = true},
					[6] = {szName = "峰插雲景", bOn = true},
					[7] = {szName = "驚濤", bOn = true},
				},
				["天策"] = {
					[1] = {szName = "突", bOn = true},
					[2] = {szName = "崩", bOn = true},
					[3] = {szName = "斷魂刺", bOn = true},
					[4] = {szName = "日影", bOn = true},
					[5] = {szName = "破堅陣", bOn = true},
					[6] = {szName = "穿", bOn = true},
					[7] = {szName = "霹靂", bOn = true},
				},
				["唐門"] = {
					[1] = {szName = "化血鏢", bOn = true},
					[2] = {szName = "梅花針", bOn = true},
					[3] = {szName = "雷震子", bOn = true},
					[4] = {szName = "迷神釘", bOn = true},
					[5] = {szName = "穿心弩", bOn = true},
					[6] = {szName = "毒蒺藜", bOn = true},
					[7] = {szName = "身乏", bOn = true},
					[8] = {szName = "鐵爪", bOn = true},
					[9] = {szName = "鑽心刺骨", bOn = true},
				},
				["明教"] = {
					[1] = {szName = "業海罪縛", bOn = true},
					[2] = {szName = "怖畏暗刑", bOn = true},
					[3] = {szName = "幻相", bOn = true},
					[4] = {szName = "日劫", bOn = true},
					[5] = {szName = "月劫", bOn = true},
				},
				["丐幫"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["蒼雲"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["長歌"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["霸刀"] = {
					[1] = {szName = "太虛", bOn = false},
				},
				["其他"] = {
					[1] = {szName = "中注", bOn = true},
					[2] = {szName = "完骨", bOn = true},
					[3] = {szName = "懸鍾", bOn = true},
					[4] = {szName = "沉默", bOn = true},
					[5] = {szName = "倒地", bOn = true},
				}
			}
		}
			OutputMessage("MSG_SYS", "數據重置成功\n")
		end,
	}
	table.insert(menu, menu_reset)

	return menu
end

local function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
			break
		end
		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
		nFindStartIndex = nFindLastIndex + 1
		nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end

function BuffMonitorEx.AddBuffToList(szType, szText)
	local t = split(szText, "|")
	local szForce = t[1]
	local tBuffList = split(string.match(t[2],"[^(].*[^)]"), ",")

	table.delete = function(t, v)
		for i = 1, #t do
			if t[i] == v then
				table.remove(t, i)
				i = i - 1
			end
		end
		return v
	end

	--刪除已有重複的項
	for k, v in pairs(tBuffList) do
		for i = 1, #BuffMonitorEx.tBuffData[szType][szForce], 1 do
			if v == BuffMonitorEx.tBuffData[szType][szForce][i].szName then
				table.delete(tBuffList, v)
			end
		end
	end

	for k, v in pairs(tBuffList) do
		table.insert(BuffMonitorEx.tBuffData[szType][szForce], {szName = v, bOn = true})
		OutputMessage("MSG_SYS", " ["..v.."] 已添加到列表中！\n")
	end
end

local tMenu = {
	function()
		return {BuffMonitorEx.GetMenu()}
	end,
}
Player_AppendAddonMenu(tMenu)
