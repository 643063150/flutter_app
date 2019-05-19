class NewslistbenEntity {
	String msg;
	int code;
	NewslistbenData data;

	NewslistbenEntity({this.msg, this.code, this.data});

	NewslistbenEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		code = json['code'];
		data = json['data'] != null ? new NewslistbenData.fromJson(json['data']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		return data;
	}
}

class NewslistbenData {
	List<NewslistbenDataTech> tech;
	List<NewslistbenDataAuto> auto;
	List<NewslistbenDataMoney> money;
	List<NewslistbenDataSport> sports;
	List<NewslistbenDataDy> dy;
	List<NewslistbenDataWar> war;
	List<NewslistbenDataEnt> ent;
	List<NewslistbenDataToutiao> toutiao;

	NewslistbenData({this.tech, this.auto, this.money, this.sports, this.dy, this.war, this.ent, this.toutiao});

	NewslistbenData.fromJson(Map<String, dynamic> json) {
		if (json['tech'] != null) {
			tech = new List<NewslistbenDataTech>();(json['tech'] as List).forEach((v) { tech.add(new NewslistbenDataTech.fromJson(v)); });
		}
		if (json['auto'] != null) {
			auto = new List<NewslistbenDataAuto>();(json['auto'] as List).forEach((v) { auto.add(new NewslistbenDataAuto.fromJson(v)); });
		}
		if (json['money'] != null) {
			money = new List<NewslistbenDataMoney>();(json['money'] as List).forEach((v) { money.add(new NewslistbenDataMoney.fromJson(v)); });
		}
		if (json['sports'] != null) {
			sports = new List<NewslistbenDataSport>();(json['sports'] as List).forEach((v) { sports.add(new NewslistbenDataSport.fromJson(v)); });
		}
		if (json['dy'] != null) {
			dy = new List<NewslistbenDataDy>();(json['dy'] as List).forEach((v) { dy.add(new NewslistbenDataDy.fromJson(v)); });
		}
		if (json['war'] != null) {
			war = new List<NewslistbenDataWar>();(json['war'] as List).forEach((v) { war.add(new NewslistbenDataWar.fromJson(v)); });
		}
		if (json['ent'] != null) {
			ent = new List<NewslistbenDataEnt>();(json['ent'] as List).forEach((v) { ent.add(new NewslistbenDataEnt.fromJson(v)); });
		}
		if (json['toutiao'] != null) {
			toutiao = new List<NewslistbenDataToutiao>();(json['toutiao'] as List).forEach((v) { toutiao.add(new NewslistbenDataToutiao.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.tech != null) {
      data['tech'] =  this.tech.map((v) => v.toJson()).toList();
    }
		if (this.auto != null) {
      data['auto'] =  this.auto.map((v) => v.toJson()).toList();
    }
		if (this.money != null) {
      data['money'] =  this.money.map((v) => v.toJson()).toList();
    }
		if (this.sports != null) {
      data['sports'] =  this.sports.map((v) => v.toJson()).toList();
    }
		if (this.dy != null) {
      data['dy'] =  this.dy.map((v) => v.toJson()).toList();
    }
		if (this.war != null) {
      data['war'] =  this.war.map((v) => v.toJson()).toList();
    }
		if (this.ent != null) {
      data['ent'] =  this.ent.map((v) => v.toJson()).toList();
    }
		if (this.toutiao != null) {
      data['toutiao'] =  this.toutiao.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class NewslistbenDataTech {
	dynamic liveInfo;
	int tcount;
	List<NewslistbenDataTechPicinfo> picInfo;
	String docid;
	dynamic videoInfo;
	String channel;
	String link;
	String source;
	String title;
	String type;
	dynamic imgsrcFrom;
	int imgsrc3gtype;
	String unlikeReason;
	dynamic isTop;
	String digest;
	String typeid;
	dynamic addata;
	String tag;
	String category;
	String ptime;

	NewslistbenDataTech({this.liveInfo, this.tcount, this.picInfo, this.docid, this.videoInfo, this.channel, this.link, this.source, this.title, this.type, this.imgsrcFrom, this.imgsrc3gtype, this.unlikeReason, this.isTop, this.digest, this.typeid, this.addata, this.tag, this.category, this.ptime});

	NewslistbenDataTech.fromJson(Map<String, dynamic> json) {
		liveInfo = json['liveInfo'];
		tcount = json['tcount'];
		if (json['picInfo'] != null) {
			picInfo = new List<NewslistbenDataTechPicinfo>();(json['picInfo'] as List).forEach((v) { picInfo.add(new NewslistbenDataTechPicinfo.fromJson(v)); });
		}
		docid = json['docid'];
		videoInfo = json['videoInfo'];
		channel = json['channel'];
		link = json['link'];
		source = json['source'];
		title = json['title'];
		type = json['type'];
		imgsrcFrom = json['imgsrcFrom'];
		imgsrc3gtype = json['imgsrc3gtype'];
		unlikeReason = json['unlikeReason'];
		isTop = json['isTop'];
		digest = json['digest'];
		typeid = json['typeid'];
		addata = json['addata'];
		tag = json['tag'];
		category = json['category'];
		ptime = json['ptime'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['liveInfo'] = this.liveInfo;
		data['tcount'] = this.tcount;
		if (this.picInfo != null) {
      data['picInfo'] =  this.picInfo.map((v) => v.toJson()).toList();
    }
		data['docid'] = this.docid;
		data['videoInfo'] = this.videoInfo;
		data['channel'] = this.channel;
		data['link'] = this.link;
		data['source'] = this.source;
		data['title'] = this.title;
		data['type'] = this.type;
		data['imgsrcFrom'] = this.imgsrcFrom;
		data['imgsrc3gtype'] = this.imgsrc3gtype;
		data['unlikeReason'] = this.unlikeReason;
		data['isTop'] = this.isTop;
		data['digest'] = this.digest;
		data['typeid'] = this.typeid;
		data['addata'] = this.addata;
		data['tag'] = this.tag;
		data['category'] = this.category;
		data['ptime'] = this.ptime;
		return data;
	}
}

class NewslistbenDataTechPicinfo {
	dynamic ref;
	dynamic width;
	String url;
	dynamic height;

	NewslistbenDataTechPicinfo({this.ref, this.width, this.url, this.height});

	NewslistbenDataTechPicinfo.fromJson(Map<String, dynamic> json) {
		ref = json['ref'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['ref'] = this.ref;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class NewslistbenDataAuto {
	dynamic liveInfo;
	int tcount;
	List<NewslistbenDataAutoPicinfo> picInfo;
	String docid;
	dynamic videoInfo;
	String channel;
	String link;
	String source;
	String title;
	String type;
	dynamic imgsrcFrom;
	int imgsrc3gtype;
	String unlikeReason;
	dynamic isTop;
	String digest;
	String typeid;
	dynamic addata;
	String tag;
	String category;
	String ptime;

	NewslistbenDataAuto({this.liveInfo, this.tcount, this.picInfo, this.docid, this.videoInfo, this.channel, this.link, this.source, this.title, this.type, this.imgsrcFrom, this.imgsrc3gtype, this.unlikeReason, this.isTop, this.digest, this.typeid, this.addata, this.tag, this.category, this.ptime});

	NewslistbenDataAuto.fromJson(Map<String, dynamic> json) {
		liveInfo = json['liveInfo'];
		tcount = json['tcount'];
		if (json['picInfo'] != null) {
			picInfo = new List<NewslistbenDataAutoPicinfo>();(json['picInfo'] as List).forEach((v) { picInfo.add(new NewslistbenDataAutoPicinfo.fromJson(v)); });
		}
		docid = json['docid'];
		videoInfo = json['videoInfo'];
		channel = json['channel'];
		link = json['link'];
		source = json['source'];
		title = json['title'];
		type = json['type'];
		imgsrcFrom = json['imgsrcFrom'];
		imgsrc3gtype = json['imgsrc3gtype'];
		unlikeReason = json['unlikeReason'];
		isTop = json['isTop'];
		digest = json['digest'];
		typeid = json['typeid'];
		addata = json['addata'];
		tag = json['tag'];
		category = json['category'];
		ptime = json['ptime'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['liveInfo'] = this.liveInfo;
		data['tcount'] = this.tcount;
		if (this.picInfo != null) {
      data['picInfo'] =  this.picInfo.map((v) => v.toJson()).toList();
    }
		data['docid'] = this.docid;
		data['videoInfo'] = this.videoInfo;
		data['channel'] = this.channel;
		data['link'] = this.link;
		data['source'] = this.source;
		data['title'] = this.title;
		data['type'] = this.type;
		data['imgsrcFrom'] = this.imgsrcFrom;
		data['imgsrc3gtype'] = this.imgsrc3gtype;
		data['unlikeReason'] = this.unlikeReason;
		data['isTop'] = this.isTop;
		data['digest'] = this.digest;
		data['typeid'] = this.typeid;
		data['addata'] = this.addata;
		data['tag'] = this.tag;
		data['category'] = this.category;
		data['ptime'] = this.ptime;
		return data;
	}
}

class NewslistbenDataAutoPicinfo {
	dynamic ref;
	dynamic width;
	String url;
	dynamic height;

	NewslistbenDataAutoPicinfo({this.ref, this.width, this.url, this.height});

	NewslistbenDataAutoPicinfo.fromJson(Map<String, dynamic> json) {
		ref = json['ref'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['ref'] = this.ref;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class NewslistbenDataMoney {
	dynamic liveInfo;
	int tcount;
	List<NewslistbenDataMoneyPicinfo> picInfo;
	String docid;
	dynamic videoInfo;
	String channel;
	String link;
	String source;
	String title;
	String type;
	dynamic imgsrcFrom;
	int imgsrc3gtype;
	String unlikeReason;
	dynamic isTop;
	String digest;
	String typeid;
	dynamic addata;
	String tag;
	String category;
	String ptime;

	NewslistbenDataMoney({this.liveInfo, this.tcount, this.picInfo, this.docid, this.videoInfo, this.channel, this.link, this.source, this.title, this.type, this.imgsrcFrom, this.imgsrc3gtype, this.unlikeReason, this.isTop, this.digest, this.typeid, this.addata, this.tag, this.category, this.ptime});

	NewslistbenDataMoney.fromJson(Map<String, dynamic> json) {
		liveInfo = json['liveInfo'];
		tcount = json['tcount'];
		if (json['picInfo'] != null) {
			picInfo = new List<NewslistbenDataMoneyPicinfo>();(json['picInfo'] as List).forEach((v) { picInfo.add(new NewslistbenDataMoneyPicinfo.fromJson(v)); });
		}
		docid = json['docid'];
		videoInfo = json['videoInfo'];
		channel = json['channel'];
		link = json['link'];
		source = json['source'];
		title = json['title'];
		type = json['type'];
		imgsrcFrom = json['imgsrcFrom'];
		imgsrc3gtype = json['imgsrc3gtype'];
		unlikeReason = json['unlikeReason'];
		isTop = json['isTop'];
		digest = json['digest'];
		typeid = json['typeid'];
		addata = json['addata'];
		tag = json['tag'];
		category = json['category'];
		ptime = json['ptime'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['liveInfo'] = this.liveInfo;
		data['tcount'] = this.tcount;
		if (this.picInfo != null) {
      data['picInfo'] =  this.picInfo.map((v) => v.toJson()).toList();
    }
		data['docid'] = this.docid;
		data['videoInfo'] = this.videoInfo;
		data['channel'] = this.channel;
		data['link'] = this.link;
		data['source'] = this.source;
		data['title'] = this.title;
		data['type'] = this.type;
		data['imgsrcFrom'] = this.imgsrcFrom;
		data['imgsrc3gtype'] = this.imgsrc3gtype;
		data['unlikeReason'] = this.unlikeReason;
		data['isTop'] = this.isTop;
		data['digest'] = this.digest;
		data['typeid'] = this.typeid;
		data['addata'] = this.addata;
		data['tag'] = this.tag;
		data['category'] = this.category;
		data['ptime'] = this.ptime;
		return data;
	}
}

class NewslistbenDataMoneyPicinfo {
	dynamic ref;
	dynamic width;
	String url;
	dynamic height;

	NewslistbenDataMoneyPicinfo({this.ref, this.width, this.url, this.height});

	NewslistbenDataMoneyPicinfo.fromJson(Map<String, dynamic> json) {
		ref = json['ref'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['ref'] = this.ref;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class NewslistbenDataSport {
	NewslistbenDataSportsLiveinfo liveInfo;
	int tcount;
	List<NewslistbenDataSportsPicinfo> picInfo;
	String docid;
	dynamic videoInfo;
	String channel;
	String link;
	String source;
	String title;
	String type;
	dynamic imgsrcFrom;
	int imgsrc3gtype;
	String unlikeReason;
	dynamic isTop;
	String digest;
	String typeid;
	dynamic addata;
	String tag;
	String category;
	String ptime;

	NewslistbenDataSport({this.liveInfo, this.tcount, this.picInfo, this.docid, this.videoInfo, this.channel, this.link, this.source, this.title, this.type, this.imgsrcFrom, this.imgsrc3gtype, this.unlikeReason, this.isTop, this.digest, this.typeid, this.addata, this.tag, this.category, this.ptime});

	NewslistbenDataSport.fromJson(Map<String, dynamic> json) {
		liveInfo = json['liveInfo'] != null ? new NewslistbenDataSportsLiveinfo.fromJson(json['liveInfo']) : null;
		tcount = json['tcount'];
		if (json['picInfo'] != null) {
			picInfo = new List<NewslistbenDataSportsPicinfo>();(json['picInfo'] as List).forEach((v) { picInfo.add(new NewslistbenDataSportsPicinfo.fromJson(v)); });
		}
		docid = json['docid'];
		videoInfo = json['videoInfo'];
		channel = json['channel'];
		link = json['link'];
		source = json['source'];
		title = json['title'];
		type = json['type'];
		imgsrcFrom = json['imgsrcFrom'];
		imgsrc3gtype = json['imgsrc3gtype'];
		unlikeReason = json['unlikeReason'];
		isTop = json['isTop'];
		digest = json['digest'];
		typeid = json['typeid'];
		addata = json['addata'];
		tag = json['tag'];
		category = json['category'];
		ptime = json['ptime'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.liveInfo != null) {
      data['liveInfo'] = this.liveInfo.toJson();
    }
		data['tcount'] = this.tcount;
		if (this.picInfo != null) {
      data['picInfo'] =  this.picInfo.map((v) => v.toJson()).toList();
    }
		data['docid'] = this.docid;
		data['videoInfo'] = this.videoInfo;
		data['channel'] = this.channel;
		data['link'] = this.link;
		data['source'] = this.source;
		data['title'] = this.title;
		data['type'] = this.type;
		data['imgsrcFrom'] = this.imgsrcFrom;
		data['imgsrc3gtype'] = this.imgsrc3gtype;
		data['unlikeReason'] = this.unlikeReason;
		data['isTop'] = this.isTop;
		data['digest'] = this.digest;
		data['typeid'] = this.typeid;
		data['addata'] = this.addata;
		data['tag'] = this.tag;
		data['category'] = this.category;
		data['ptime'] = this.ptime;
		return data;
	}
}

class NewslistbenDataSportsLiveinfo {
	int liveStatus;

	NewslistbenDataSportsLiveinfo({this.liveStatus});

	NewslistbenDataSportsLiveinfo.fromJson(Map<String, dynamic> json) {
		liveStatus = json['liveStatus'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['liveStatus'] = this.liveStatus;
		return data;
	}
}

class NewslistbenDataSportsPicinfo {
	dynamic ref;
	dynamic width;
	String url;
	dynamic height;

	NewslistbenDataSportsPicinfo({this.ref, this.width, this.url, this.height});

	NewslistbenDataSportsPicinfo.fromJson(Map<String, dynamic> json) {
		ref = json['ref'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['ref'] = this.ref;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class NewslistbenDataDy {
	dynamic liveInfo;
	int tcount;
	List<NewslistbenDataDyPicinfo> picInfo;
	String docid;
	dynamic videoInfo;
	String channel;
	String link;
	String source;
	String title;
	String type;
	dynamic imgsrcFrom;
	int imgsrc3gtype;
	String unlikeReason;
	dynamic isTop;
	String digest;
	String typeid;
	dynamic addata;
	String tag;
	String category;
	String ptime;

	NewslistbenDataDy({this.liveInfo, this.tcount, this.picInfo, this.docid, this.videoInfo, this.channel, this.link, this.source, this.title, this.type, this.imgsrcFrom, this.imgsrc3gtype, this.unlikeReason, this.isTop, this.digest, this.typeid, this.addata, this.tag, this.category, this.ptime});

	NewslistbenDataDy.fromJson(Map<String, dynamic> json) {
		liveInfo = json['liveInfo'];
		tcount = json['tcount'];
		if (json['picInfo'] != null) {
			picInfo = new List<NewslistbenDataDyPicinfo>();(json['picInfo'] as List).forEach((v) { picInfo.add(new NewslistbenDataDyPicinfo.fromJson(v)); });
		}
		docid = json['docid'];
		videoInfo = json['videoInfo'];
		channel = json['channel'];
		link = json['link'];
		source = json['source'];
		title = json['title'];
		type = json['type'];
		imgsrcFrom = json['imgsrcFrom'];
		imgsrc3gtype = json['imgsrc3gtype'];
		unlikeReason = json['unlikeReason'];
		isTop = json['isTop'];
		digest = json['digest'];
		typeid = json['typeid'];
		addata = json['addata'];
		tag = json['tag'];
		category = json['category'];
		ptime = json['ptime'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['liveInfo'] = this.liveInfo;
		data['tcount'] = this.tcount;
		if (this.picInfo != null) {
      data['picInfo'] =  this.picInfo.map((v) => v.toJson()).toList();
    }
		data['docid'] = this.docid;
		data['videoInfo'] = this.videoInfo;
		data['channel'] = this.channel;
		data['link'] = this.link;
		data['source'] = this.source;
		data['title'] = this.title;
		data['type'] = this.type;
		data['imgsrcFrom'] = this.imgsrcFrom;
		data['imgsrc3gtype'] = this.imgsrc3gtype;
		data['unlikeReason'] = this.unlikeReason;
		data['isTop'] = this.isTop;
		data['digest'] = this.digest;
		data['typeid'] = this.typeid;
		data['addata'] = this.addata;
		data['tag'] = this.tag;
		data['category'] = this.category;
		data['ptime'] = this.ptime;
		return data;
	}
}

class NewslistbenDataDyPicinfo {
	dynamic ref;
	dynamic width;
	String url;
	dynamic height;

	NewslistbenDataDyPicinfo({this.ref, this.width, this.url, this.height});

	NewslistbenDataDyPicinfo.fromJson(Map<String, dynamic> json) {
		ref = json['ref'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['ref'] = this.ref;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class NewslistbenDataWar {
	dynamic liveInfo;
	int tcount;
	List<NewslistbenDataWarPicinfo> picInfo;
	String docid;
	dynamic videoInfo;
	String channel;
	String link;
	String source;
	String title;
	String type;
	dynamic imgsrcFrom;
	int imgsrc3gtype;
	String unlikeReason;
	dynamic isTop;
	String digest;
	String typeid;
	dynamic addata;
	String tag;
	String category;
	String ptime;

	NewslistbenDataWar({this.liveInfo, this.tcount, this.picInfo, this.docid, this.videoInfo, this.channel, this.link, this.source, this.title, this.type, this.imgsrcFrom, this.imgsrc3gtype, this.unlikeReason, this.isTop, this.digest, this.typeid, this.addata, this.tag, this.category, this.ptime});

	NewslistbenDataWar.fromJson(Map<String, dynamic> json) {
		liveInfo = json['liveInfo'];
		tcount = json['tcount'];
		if (json['picInfo'] != null) {
			picInfo = new List<NewslistbenDataWarPicinfo>();(json['picInfo'] as List).forEach((v) { picInfo.add(new NewslistbenDataWarPicinfo.fromJson(v)); });
		}
		docid = json['docid'];
		videoInfo = json['videoInfo'];
		channel = json['channel'];
		link = json['link'];
		source = json['source'];
		title = json['title'];
		type = json['type'];
		imgsrcFrom = json['imgsrcFrom'];
		imgsrc3gtype = json['imgsrc3gtype'];
		unlikeReason = json['unlikeReason'];
		isTop = json['isTop'];
		digest = json['digest'];
		typeid = json['typeid'];
		addata = json['addata'];
		tag = json['tag'];
		category = json['category'];
		ptime = json['ptime'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['liveInfo'] = this.liveInfo;
		data['tcount'] = this.tcount;
		if (this.picInfo != null) {
      data['picInfo'] =  this.picInfo.map((v) => v.toJson()).toList();
    }
		data['docid'] = this.docid;
		data['videoInfo'] = this.videoInfo;
		data['channel'] = this.channel;
		data['link'] = this.link;
		data['source'] = this.source;
		data['title'] = this.title;
		data['type'] = this.type;
		data['imgsrcFrom'] = this.imgsrcFrom;
		data['imgsrc3gtype'] = this.imgsrc3gtype;
		data['unlikeReason'] = this.unlikeReason;
		data['isTop'] = this.isTop;
		data['digest'] = this.digest;
		data['typeid'] = this.typeid;
		data['addata'] = this.addata;
		data['tag'] = this.tag;
		data['category'] = this.category;
		data['ptime'] = this.ptime;
		return data;
	}
}

class NewslistbenDataWarPicinfo {
	dynamic ref;
	dynamic width;
	String url;
	dynamic height;

	NewslistbenDataWarPicinfo({this.ref, this.width, this.url, this.height});

	NewslistbenDataWarPicinfo.fromJson(Map<String, dynamic> json) {
		ref = json['ref'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['ref'] = this.ref;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class NewslistbenDataEnt {
	dynamic liveInfo;
	int tcount;
	List<NewslistbenDataEntPicinfo> picInfo;
	String docid;
	dynamic videoInfo;
	String channel;
	String link;
	String source;
	String title;
	String type;
	dynamic imgsrcFrom;
	int imgsrc3gtype;
	String unlikeReason;
	dynamic isTop;
	String digest;
	String typeid;
	dynamic addata;
	String tag;
	String category;
	String ptime;

	NewslistbenDataEnt({this.liveInfo, this.tcount, this.picInfo, this.docid, this.videoInfo, this.channel, this.link, this.source, this.title, this.type, this.imgsrcFrom, this.imgsrc3gtype, this.unlikeReason, this.isTop, this.digest, this.typeid, this.addata, this.tag, this.category, this.ptime});

	NewslistbenDataEnt.fromJson(Map<String, dynamic> json) {
		liveInfo = json['liveInfo'];
		tcount = json['tcount'];
		if (json['picInfo'] != null) {
			picInfo = new List<NewslistbenDataEntPicinfo>();(json['picInfo'] as List).forEach((v) { picInfo.add(new NewslistbenDataEntPicinfo.fromJson(v)); });
		}
		docid = json['docid'];
		videoInfo = json['videoInfo'];
		channel = json['channel'];
		link = json['link'];
		source = json['source'];
		title = json['title'];
		type = json['type'];
		imgsrcFrom = json['imgsrcFrom'];
		imgsrc3gtype = json['imgsrc3gtype'];
		unlikeReason = json['unlikeReason'];
		isTop = json['isTop'];
		digest = json['digest'];
		typeid = json['typeid'];
		addata = json['addata'];
		tag = json['tag'];
		category = json['category'];
		ptime = json['ptime'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['liveInfo'] = this.liveInfo;
		data['tcount'] = this.tcount;
		if (this.picInfo != null) {
      data['picInfo'] =  this.picInfo.map((v) => v.toJson()).toList();
    }
		data['docid'] = this.docid;
		data['videoInfo'] = this.videoInfo;
		data['channel'] = this.channel;
		data['link'] = this.link;
		data['source'] = this.source;
		data['title'] = this.title;
		data['type'] = this.type;
		data['imgsrcFrom'] = this.imgsrcFrom;
		data['imgsrc3gtype'] = this.imgsrc3gtype;
		data['unlikeReason'] = this.unlikeReason;
		data['isTop'] = this.isTop;
		data['digest'] = this.digest;
		data['typeid'] = this.typeid;
		data['addata'] = this.addata;
		data['tag'] = this.tag;
		data['category'] = this.category;
		data['ptime'] = this.ptime;
		return data;
	}
}

class NewslistbenDataEntPicinfo {
	dynamic ref;
	dynamic width;
	String url;
	dynamic height;

	NewslistbenDataEntPicinfo({this.ref, this.width, this.url, this.height});

	NewslistbenDataEntPicinfo.fromJson(Map<String, dynamic> json) {
		ref = json['ref'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['ref'] = this.ref;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class NewslistbenDataToutiao {
	dynamic liveInfo;
	int tcount;
	List<Null> picInfo;
	String docid;
	dynamic videoInfo;
	String channel;
	String link;
	String source;
	String title;
	String type;
	String imgsrcFrom;
	int imgsrc3gtype;
	String unlikeReason;
	bool isTop;
	String digest;
	String typeid;
	dynamic addata;
	String tag;
	String category;
	String ptime;

	NewslistbenDataToutiao({this.liveInfo, this.tcount, this.picInfo, this.docid, this.videoInfo, this.channel, this.link, this.source, this.title, this.type, this.imgsrcFrom, this.imgsrc3gtype, this.unlikeReason, this.isTop, this.digest, this.typeid, this.addata, this.tag, this.category, this.ptime});

	NewslistbenDataToutiao.fromJson(Map<String, dynamic> json) {
		liveInfo = json['liveInfo'];
		tcount = json['tcount'];
		if (json['picInfo'] != null) {
			picInfo = new List<Null>();
		}
		docid = json['docid'];
		videoInfo = json['videoInfo'];
		channel = json['channel'];
		link = json['link'];
		source = json['source'];
		title = json['title'];
		type = json['type'];
		imgsrcFrom = json['imgsrcFrom'];
		imgsrc3gtype = json['imgsrc3gtype'];
		unlikeReason = json['unlikeReason'];
		isTop = json['isTop'];
		digest = json['digest'];
		typeid = json['typeid'];
		addata = json['addata'];
		tag = json['tag'];
		category = json['category'];
		ptime = json['ptime'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['liveInfo'] = this.liveInfo;
		data['tcount'] = this.tcount;
		if (this.picInfo != null) {
      data['picInfo'] =  [];
    }
		data['docid'] = this.docid;
		data['videoInfo'] = this.videoInfo;
		data['channel'] = this.channel;
		data['link'] = this.link;
		data['source'] = this.source;
		data['title'] = this.title;
		data['type'] = this.type;
		data['imgsrcFrom'] = this.imgsrcFrom;
		data['imgsrc3gtype'] = this.imgsrc3gtype;
		data['unlikeReason'] = this.unlikeReason;
		data['isTop'] = this.isTop;
		data['digest'] = this.digest;
		data['typeid'] = this.typeid;
		data['addata'] = this.addata;
		data['tag'] = this.tag;
		data['category'] = this.category;
		data['ptime'] = this.ptime;
		return data;
	}
}
