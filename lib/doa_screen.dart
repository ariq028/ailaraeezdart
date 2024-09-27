import 'package:flutter/material.dart';
import 'detail_doa_screen.dart';
import 'doa_umroh.dart';

class DoaActivity extends StatelessWidget {
  final List<DoaUmroh> list = [
    DoaUmroh(
    name: 'Doa Naik Kendaraan',
    detailArab: 'سُبْحَانَ الَّذِىْ سَخَّرَلَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِيْنَ وَاِنَّآ اِلَى رَبّنَا لَمُنْقَلِبُوْن',
    detailLatin: 'Subhaanalladzi sakhoro lana hadza wa ma kunna lahu muqrinin, wa innaa ilaa robbina lamunqolibuun.',
  ),
  DoaUmroh(
    name: 'Doa Masuk Madinah',
    detailArab: 'اَللَّهُمَّ هَذَا حَرَمُ رَسُوْلِكَ فَاجْعَلْهُ وِقَايَةً مِنَ النَّارِ وَاَمَانَةً مِنَ اْلعَذَابِ وَسُوءِ اْلحِسَابِ',
    detailLatin: 'Allahumma hadza haramu rasulika faj alhu liy riqayatan minannaari wa aamaanatan minal adzabi wa suu-il hisaabi.',
  ),
  DoaUmroh(
    name: 'Doa Minum Air Zam Zam',
    detailArab: 'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا وَاسِعًا وَشِفَاءً مِنْ كُلِّ دَاءٍ وَسَقَامٍ بِرَحْمَتِكَ يَا اَرْحَمَ الرَّاحِمِيْنَ',
    detailLatin: 'Allahumma inni as-aluka ilman naafian, wa rizqan waasian, wasyifaa-an min kulli daa-in, wa saqamin birahmatika yaa arhamarraahimiin.',
  ),
  DoaUmroh(
    name: 'Niat Umroh',
    detailArab: 'نَوَيْتُ الْعُمْرَةَ وَأَحْرَمْتُ بِهِ لِلَّهِ تَعَالَى. لَبَّيْكَ اللَّهُمَّ عُمْرَة',
    detailLatin: 'Nawaitul umrata wa ahramtu bihi lillahi taala. Labbaika Allahumma umratan',
  ),
  DoaUmroh(
    name: 'Doa Talbiyah',
    detailArab: 'لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ، لَبَّيْكَ لَا شَرِيكَ لَكَ لَبَّيْكَ، إِنَّ الْحَمْدَ وَالنِّعْمَةَ لَكَ وَالْمُلْكَ، لَا شَرِيكَ لَك',
    detailLatin: 'Labbaikallahumma labbaik, labbaika la syarika laka labbaik. Innal hamda wanni mata laka wal mulk. Laa syarika laka',
  ),
  DoaUmroh(
    name: 'Doa Masuk Masjidil Haram',
    detailArab: 'اَللّٰهُمَّ أَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ فَحَيِّنَا رَبَّنَا بِالسَّلَامِ وَأَدْخِلْنَا الْجَنَّةَ دَارَالسَّلَامَ تَبَارَكْتَ وَتَعَالَيْتَ يَا ذَاالْجَلَالِ وَاْلإِكْرَامِ. اَللّٰهُمَّ افْتَحْ لِيْ أَبْوَابَ رَحْمَتِكَ وَمَغْفِرَتِكَ وَأَدْخِلْنِيْ فِيْهَا. بِسْمِ اللهِ وَالْحَمْدُ ِللهِ وَالصَّلَاةُ وَالسَّلَامُ عَلٰى رَسُوْلِ اللهِ',
    detailLatin: 'Allahumma antassalaam, waminkassalaam fahayyinaa rabbanaa bissalaam wa adkhilnal jannata daarassalaam tabaarakta wataaalaita yaa dzaljalaali wal ikraam. Allahummaftah lii abwaaba rahmatika wamaghfiratika wa adkhilnii fiihaa. Bismillahi walhamdulillahi wasshalaatu wassalaamu alaa rasuulillaah.',
  ),
  DoaUmroh(
    name: 'Doa saat memulai Thawaf',
    detailArab: 'بِسْمِ اللَّهِ وَاللَّهُ أَكْبَرُ اللَّهُمَّ إيمَانًا بِكَ وَتَصْدِيقًا بِكِتَابِك وَوَفَاءً بِعَهْدِك وَاتِّبَاعًا لِسُنَّةِ نَبِيِّك مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ',
    detailLatin: 'Bismillāhi wallāhu akbar. Allāhumma īmānan bika, wa tashdīqan bi kitābika, wa wafā an bi ahdika, wattibāan li sunnati nabiyyika Muhammadin shallallāhu alayhi wa sallama.',
  ),
  DoaUmroh(
    name: 'Doa Thawaf Putaran ke-1',
    detailArab: 'سُبْحَانَ اللهِ وَالْحَمْدُ لِلَّهِ وَلَا إِلَهَ إِلَّا اللهَ اللهُ أَكْبَرُ. وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ الْعَلِيِّ الْعَظِيْمِ. وَالصَّلَاةُ وَالسَّلاَمُ عَلَى رَسُولِ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ. اللَّهُمَّ إِيْمَانًا بِكَ وَتَصَدِّيْقًا بِكِتَابِكَ وَوَفَاءاً بِعِبَادِكَ وَاتِّبَاعًا لِسُنَّةِ نَبِيِّكَ مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ. اللَّهُمَّ إِنِّي أَسْئَلُكَ الْعَفْوَى وَالْعَافِيَةَ الدَّائِمَةَ فِي الدِّيْنِ وَالدُّنْيَا وَالْأَخِرَةَ وَالْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةِ مِنَ النَّارِ',
    detailLatin: 'Subahaanallaahi walhamdulillaahi wa laa ilaaha illallaahu allahu akbar. wa laa haula wa laa quwwata illaa billaahil aliyyil azhiimi. Wash shalaatu wassalaamu alaa rasuulillaaahi shallallaahu alaihi wa sallama. Allahumma iimaanan bika wa tashdiqan bikitaabika wa wafaa an bi aadhika wattibaa an li sunnati nabiyyika muhammadin shallaahu alaihi wa sallama. Allahumma inni as alukal afwa wal aafiya wal mu aafatan daaimata fid diini wad dunyaa wal aakhirati wal fauza bil jannati wannajaata minannaari.',
  ),
  DoaUmroh(
    name: 'Doa Thawaf Putaran ke-2',
    detailArab: 'رَبَّنَا آتِنَا فِيْ الدُّنْيَا حَسَنَةً وَفِيْ الْاٰخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ وَأَدْخِلْنَا الْجَنَّةَ مَعَ الْأَبْرَارِ. يَا عَزِيْزُ يَا غَفَّارُ يَا رَبَّ الْعَالَمِيْنَ',
    detailLatin: 'Rabbanaa aatinaa fid dunyaa hasanatan wa fil aakhirati hasanatan wa qinaa adzaabannaar wa adkhilnal jannata maal abraar. Ya aziizu yaa ghoffaar yaa rabbal aalamiin.',
  ),
  DoaUmroh(
    name: 'Doa Thawaf Putaran ke-3',
    detailArab: 'سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ وَلَا إِلَهَ إِلَّا اللَّهَ وَاللَّهُ أَكْبَرُ. وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ الْعَلِيِّ الْعَظِيْمِ. اللَّهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلِّمْ. اللَّهُمَّ إِنِّيْ أَسْأَلُكَ الرِّضَا وَالْجَنَّةَ وَأَعُوْذُ بِكَ مِنْ سَخَطِكَ وَالنَّارِ. اللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْجَنَّةَ وَمَا قَرَّبَ إِلَيْهَا مِنْ قَوْلٍ أَوْ عَمَلٍ وَأَعُوْذُ بِكَ مِنَ النَّارِ وَمَا قَرَّبَ إِلَيْهَا مِنْ قَوْلٍ أَوْ عَمَلٍ. رَبِّ اغْفِرْ وَارْحَمْ وَأَنْتَ خَيْرُ الرَّاحِمِيْنَ',
    detailLatin: 'Subhaanallaahi walhamdulillaahi wa laa ilaaha illallaahu allaahu akbar. Wa laa haula wa laa quwwata illaa billaahil aliyil azhiimi. Allahumma shalli alaa sayyidinaa muhammad wa alaa aalihi wa shahbihi wa sallim. Allahumma innii as alukal ridha wal jannata wa a uudzubika min sakhotika wannaar. Allahumma innii as alukal jannata wa maa qorrobailaihaa min qoulin aw amal, wa a uudzubika minan naar wa maa qorraba ilaihaa min qoulin aw amal. Robbighfir warham wa anta khoirur roohimiin.',
  ),
  DoaUmroh(
    name: 'Doa Thawaf Putaran ke-4',
    detailArab: 'سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ وَلَا إِلَهَ إِلَّا اللَّهَ وَاللَّهُ أَكْبَرُ. وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ الْعَلِيِّ الْعَظِيْمِ. اللَّهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلِّمْ. اللَّهُمَّ إِنِّيْ أَسْأَلُكَ الرِّضَا وَالْجَنَّةَ وَأَعُوْذُ بِكَ مِنْ سَخَطِكَ وَالنَّارِ. اللَّهُمَّ إِنِّيْ أَسْأَلُكَ الرِّضَا وَالْجَنَّةَ وَمَا قَرَّبَ إِلَيْهَا مِنْ قَوْلٍ أَوْ عَمَلٍ وَأَعُوْذُ بِكَ مِنَ النَّارِ وَمَا قَرَّبَ إِلَيْهَا مِنْ قَوْلٍ أَوْ عَمَلٍ. رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيْعُ الْعَلِيْمُ',
    detailLatin: 'Subhaanallaahi walhamdulillaahi wa laa ilaaha illallaahu allaahu akbar. Wa laa haula wa laa quwwata illaa billaahil aliyil azhiimi. Allahumma shalli alaa sayyidinaa muhammad wa alaa aalihi wa shahbihi wa sallim. Allahumma innii as alukal ridha wal jannata wa a uudzubika min sakhotika wannaar. Allahumma innii as alukal jannata wa maa qorraba ilaihaa min qoulin aw amal, wa a uudzubika minan naar wa maa qorraba ilaihaa min qoulin aw amal. Robbanaa taqobbala minnaa innaka antassamii ul aliimu.',
  ),
  DoaUmroh(
    name: 'Doa Thawaf Putaran ke-5',
    detailArab: 'اللَّهُمَّ اغْفِرْ وَارْحَمْ وَتَجَاوَزْ عَنْ مَا تَعْلَمُ إِنَّكَ أَنْتَ الأَعَزُّ الأَكْرَمُ. اللَّهُمَّ آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ. اللَّهُمَّ إِنِّيْ أَعُوْذُ بِكَ مِنْ فِتْنَةِ النَّارِ وَعَذَابِ النَّارِ وَفِتْنَةِ الْقَبْرِ وَعَذَابِ الْقَبْرِ وَشَرِّ فِتْنَةِ الْغِنَى وَشَرِّ فِتْنَةِ الْفَقْرِ. اللَّهُمَّ إِنِّيْ أَعُوْذُ بِكَ مِنْ شَرِّ مَا جِيْءَ بِهِ الرِّيْحُ',
    detailLatin: 'Allahummaghfir warham watajaawaz an maa ta a lamu innaka antal a azzul akramu. Allahumma aatinaa fid dunyaa hasanatan wa fil aakhirati hasanatan wa qinaa adzaabannaar. Allahumma innii a uudzubika min fitnatinnar wa adzaabinnar wa fitnatil qobri wa adzaabil qobri wa syarri fitnatil ghinaa wa syarri fitnatil faqr. Allahumma innii a uudzubika min syarri maa ji a bihir riihu.',
  ),
  DoaUmroh(
    name: 'Doa Thawaf Putaran ke-6',
    detailArab: 'اللَّهُمَّ إِنِّيْ أَسْأَلُكَ هُدًى وَتُقًى وَعَفَافًا وَغِنًى. رَبِّ اغْفِرْ وَارْحَمْ وَأَنْتَ خَيْرُ الرَّاحِمِيْنَ. اللَّهُمَّ اجْعَلْنِيْ مِنَ التَّوَّابِيْنَ وَاجْعَلْنِيْ مِنَ المُتَطَهِّرِيْنَ. اللَّهُمَّ اغْفِرْ لِيْ وَلِوَالِدِيَّ وَلِوَالِدِيْنَ وَارْحَمْهُمْ كَمَا رَبَّوْنِيْ صَغِيْرًا',
    detailLatin: 'Allahumma inni as aluka hudan wa tuqaa wa afaafan wa ghinaa. Robbighfir warham wa anta khoirur roohimiin. Allahummaj alnii minattawwaabiin waj alnii minal mutathohhiriin. Allahummaghfir lii wali waalidayya wa li waalidayn warhamhum kamaa robbayaanii shaghiiraa.',
  ),
  DoaUmroh(
    name: 'Doa Thawaf Putaran ke-7',
    detailArab: 'اللَّهُمَّ إِنِّي أَسْأَلُكَ يَا اللهُ يَا رَحْمَنُ يَا رَحِيْمُ يَا حَيُّ يَا قَيُّوْمُ يَا قَابِضُ يَا بَاسِطُ يَا مُعْطِيُ يَا مَانِعُ يَا فَاتِحُ يَا لَطِيْفُ يَا حَفِيْظُ يَا مَرِيْضُ يَا مَقِيْتُ يَا مُحْيِيْ يَا مُبْدِيءُ يَا بَدِيْعُ يَا جَلِيْلُ يَا جَمِيْلُ يَا وَلِيُّ يَا وَكِيْلُ يَا كَافِيُ يَا شَافِيُ يَا وَدُوْدُ يَا مُجِيْبُ يَا حَسِيْبُ يَا مَقِيْتُ يَا قَرِيْبُ يَا رَقِيْبُ يَا مُحِيْطُ يَا عَلِيُّ يَا غَنِيُّ يَا مُغْنِيْ يَا مَلِيْكُ يَا مَجِيْدُ يَا مَحْمُوْدُ يَا مَعْبُوْدُ يَا بَاعِثُ يَا وَارِثُ يَا قَوِيُّ يَا مَتِيْنُ يَا مَكِيْنُ يَا مُمَكِّنُ يَا مُتَكَبِّرُ يَا جَبَّارُ يَا قَهَّارُ يَا فَعَّالُ لِمَا يُرِيْدُ. رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ وَأَدْخِلْنَا الْجَنَّةَ مَعَ الأَبْرَارِ يَا عَزِيْزُ يَا غَفَّارُ يَا رَبَّ الْعَالَمِيْنَ',
    detailLatin: 'Allahumma inni as aluka ya allah ya rahman ya rahiim ya hayyu ya qoyyum ya qaabidh ya baashith ya mu thii yaa maani ya faatihu ya lathiifu ya hafiiz ya mariidh ya maqiit yaa muhyii ya mubdii ya badii ya jaliilu ya jamiilu ya waliyyu ya wakiilu ya kaafii ya shaafii ya waduudu ya mujiibu ya hasibu ya maqiit ya qoriiqu ya roqiib ya muhiitu ya aliyyi ya ghaniyyu ya mughnii ya malliiku ya majiidu ya mahmuudu ya ma buudu ya baani yaa waariy ya qowiyu ya matiin ya makiim yaa mumakinu ya mutakabbiru ya jabbaaru ya qoyyaaru ya faalu limaa yuriid. Robbanaa aatinaa fid dunyaa hasanatan wa fil aakhirati hasanatan wa qinaa adzaabannaar wa adkhilnal jannata maal abraar ya aziizu yaa ghoffaar ya rabbal aalamiin.',
  ),
  DoaUmroh(
    name: 'Doa Multazam',
    detailArab: 'يَا رَبِّ البَيْتِ العَتِيقِ أَعْتِقْ رِقَابَنَا وَرِقَابَ آبَائِنَا وَأُمَّهَاتِنَا وَذُرِّيَّاتِنَا مِنَ النَّارِ يَا ذَا الجَلاَلِ وَالإِكْرَامِ يَا عَزِيزُ يَا غَفَّارُ، رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ',
    detailLatin: 'Ya rabbal baitil atiqi atiq riqobanaa wa riqooba aabaainaa wa ummaahaatinaa wa dzuriyyaatinaa minan naar yaa dzal jalaali wal ikroom yaa aziiz yaa goffaar, robbanaa aatinaa fid dunyaa hasanatan wa fil aakhirati hasanatan wa qinaa adzaabannaar.',
  ),
  DoaUmroh(
    name: 'Doa di Depan Kabah',
    detailArab: 'اللَّهُمَّ إِنِّيْ عَبْدُكَ وَابْنُ عَبْدِكَ وَابْنُ أَمَتِكَ فِيْ طَاعَتِكَ وَرَحْمَتِكَ اللَّهُمَّ اجْعَلْنِيْ مُحِبَّبًا فِيْ قُلُوْبِ الْمُؤْمِنِيْنَ وَاجْعَلْنِيْ عَظِيْمًا فِيْ أَعْيُنِهِمْ وَاجْعَلْنِيْ شَرَفًا لَهُمْ فِيْ دِيْنِيْ وَدُنْيَايَ وَآخِرَتِيْ اللَّهُمَّ وَمَحَبَّتُكَ وَمَحَبَّةَ مَلَائِكَتِكَ وَأَنْبِيَائِكَ وَرُسُلِكَ وَعِبَادِكَ الصَّالِحِيْنَ اللَّهُمَّ اَجْعَلْنِيْ نُوْرًا بَيْنَ عَيْنَيَّ وَبَصَرًا فِيْ دِيْنِيْ وَيَقِيْنًا فِيْ قَلْبِيْ وَاِخْلَاصًا فِيْ عَمَلِيْ وَذِكْرًا بِلِسَانِيْ وَنُوْرًا فِيْ قَبْرِيْ وَنُوْرًا فِيْ حَشْرِيْ وَنُوْرًا فِيْ وُجُوْهِ الْمُؤْمِنِيْنَ يَوْمَ تَرْمَسُ وُجُوْهُ الْكُفَّارِ اللَّهُمَّ أَعْطِنِيْ نُوْرًا فِيْ بَصَرِيْ وَعَظِّمْ نُوْرَكَ فِيْ وَجْهِى وَضَيِّقْ عَلَيَّ فِيْ قَبْرِيْ حَتَّى لَا أَسْتَأْنِسَ بِهِ إِلَّا إِلَيْكَ وَحَرِّمْ لَحْمِيْ وَدَمِيْ عَلَى النَّارِ وَأَمِّنِّيْ مِنْ عَذَابِكَ وَيَوْمَ تَبْعَثُ عِبَادَكَ وَارْزُقْنِيْ مُجَاوَرَةَ نَبِيِّكَ مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فِيْ الجَنَّةِ',
    detailLatin: 'Allahumma inni abduka wabnu abdika wabnu amatika fii tha a atika wa rahmatika. Allahummaj alnii muhabbaban fii quluubil mu miniin waj alnii azhiiman fii ayunihim waj alnii syarofan lahum fii diinii wadunyaa yaa wa aakhirotii, allahumma wahubbaka wahubbamalaikatiqka wa anbiya ika wa rusulika wa ibaadikas shoolihiin. Allahummaj alnii nuuran baina ainayya wa bashoron fii diinii wa yaqiinan fii qolbii wa ikhlashon fii amalillii wa dzikron bilisaannii wa nuuron fii qobrii wa nuuron fii hasrii wa nuuron fii wujuuhil mu miniina yauma tar mamu wujuuhul kuffaar. Allahumma a thini nuuron fii bashorii wa a dzim nuuroka fii wajhii wadhoiiq alayya fii qobrii hattaa laa asta nisi bihi illaa ilaiika wa harrim lahmii wa damii alannaar wa am minnii min adzaabika wa yauma tab atsu ibaadaka warzuqnnii mujaawarat nabiyyika muhammadin shallallaahu alaihi wa sallam fil jannah.',
  ),
  DoaUmroh(
    name: 'Doa di Maqam Ibrahim',
    detailArab: 'وَاتَّخِذُوْا مِنْ مَّقَامِ اِبْرَاهِيْمَ مُصَلًّى . اَللّٰهُمَّ يَارَبِّيْ لَاأَعْلَمُ فِيْهِ مَكَانًا أَفْضَلَ مِنْهُ، فَاَجِبْ دُعَائِيْ، وَاقْضِ حَاجَتِيْ، وَاَصْلِحْ حَالِيْ، وَاغْفِرْ ذُنُوْبِيْ وَارْزُقْنِيْ تِبَاعَهُ دُعَائِيْ، إِنَّكَ أَنْتَ الْغَفُوْرُ الرَّحِيْمُ',
    detailLatin: 'Wattakhidzuu min maqaami ibraahiima mushollaa. Allahumma yaa robbii laa a lamu fiihi makaanan afdlala minhu, faajib duaa ii, waqdhi haajatii wa ashlih haalii, waghfir dzunuubii warzuqnii tibaahu duaa ii, innaka antal ghofuurur rohiim.',
  ),
  DoaUmroh(
    name: 'Doa Sai saat di Bukit Shafa',
    detailArab: 'إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللهِ. أَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ. نَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ. نَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ. اللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، لَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَرُ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، يُحْيِي وَيُمِيتُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ، أَنْجَزَ وَعْدَهُ، وَنَصَرَ عَبْدَهُ، وَهَزَمَ الْأَحْزَابَ وَحْدَهُ، لَا إِلَهَ إِلَّا اللَّهُ وَلَا نَعْبُدُ إِلَّا إِيَّاهُ، مُخْلِصِينَ لَهُ الدِّينَ وَلَوْ كَرِهَ الْكَافِرُونَ. اَللّهُمَّ اجْعَلْنِيْ أُحِبُّكَ وَأُحِبُّ عَمَلًا يُقَرِّبُنِيْ إِلَى حُبِّكَ. يَارَبِّ اشْرَحْ لِيْ صَدْرِيْ وَيَسِّرْ لِيْ أَمْرِيْ',
    detailLatin: 'Innas shofaa wal marwata min syaaairillah. Abdau bimaa badaallahu bihi. Nabdau bimaa badaallahu bihi. Nabdau bimaa badaallahu bihi. Allahu akbar, Allahu akbar, Allahu akbar, laa ilaaha illallah wallahu akbar, laa ilaaha illallahu wahdahu laa syariikalahu, lahul mulku walahul hamdu, yuhyii wa yumiitu wahuwa ‘alaa kulli syai in qodiir, laa ilaaha illallah wahdahu, anjaza wadahu, wa nashoro ‘abdahu, wa hazamal ahzaaba wahdahu, laa ilaaha illallah walaa nabudu illaa iyaahu, mukhlishiina lahuddiina walau karihal kaafiruun. Allahummajalnii uhibbuka wa uhibbu ‘amalan yuqorribunii ilaa hubbika. Yaa robbisyrohlii shodrii wa yassirlii amrii.',
  ),
  DoaUmroh(
    name: 'Doa Sai saat di Bukit Marwah',
    detailArab: 'إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللهِ. أَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ. نَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ. نَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ. اللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، لَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَرُ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، يُحْيِي وَيُمِيتُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ، أَنْجَزَ وَعْدَهُ، وَنَصَرَ عَبْدَهُ، وَهَزَمَ الْأَحْزَابَ وَحْدَهُ، لَا إِلَهَ إِلَّا اللَّهُ وَلَا نَعْبُدُ إِلَّا إِيَّاهُ، مُخْلِصِينَ لَهُ الدِّينَ وَلَوْ كَرِهَ الْكَافِرُونَ. اَللّهُمَّ اجْعَلْنِيْ أُحِبُّكَ وَأُحِبُّ عَمَلًا يُقَرِّبُنِيْ إِلَى حُبِّكَ. يَارَبِّ اشْرَحْ لِيْ صَدْرِيْ وَيَسِّرْ لِيْ أَمْرِيْ',
    detailLatin: 'Innas shofaa wal marwata min syaaairillah. Abdau bimaa badaallahu bihi. Nabdau bimaa badaallahu bihi. Nabdau bimaa badaallahu bihi. Allahu akbar, Allahu akbar, Allahu akbar, laa ilaaha illallah wallahu akbar, laa ilaaha illallahu wahdahu laa syariikalahu, lahul mulku walahul hamdu, yuhyii wa yumiitu wahuwa ‘alaa kulli syai in qodiir, laa ilaaha illallah wahdahu, anjaza wadahu, wa nashoro ‘abdahu, wa hazamal ahzaaba wahdahu, laa ilaaha illallah walaa nabudu illaa iyaahu, mukhlishiina lahuddiina walau karihal kaafiruun. Allahummajalnii uhibbuka wa uhibbu ‘amalan yuqorribunii ilaa hubbika. Yaa robbisyrohlii shodrii wa yassirlii amrii.',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa Umroh'),
        backgroundColor: Color(0xFFFA9A55),
      ),
      backgroundColor: Color(0xFFFA9A55),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color(0xFFFCB079),
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              title: Text(
                list[index].name,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                list[index].detailArab,
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.black54),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailDoaActivity(doa: list[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
