#!/usr/bin/env ruby

Tree = Struct.new(:height, :seen)

def build_grid(file)
  file.each_line.each_with_object([]) do |line, grid|
    grid.push(line.strip.split('').map { |n| Tree.new(n.to_i, false) })
  end
end

def mark_seen_trees(grid)
  grid.each do |row|
    row.each_with_index do |tree, idx|
      tree.seen = true if row.first([0, idx].max).all? { |t| t.height < tree.height }
    end
  end
end

def count_seen_trees(grid)
  grid.inject(0) do |total, row|
    count = row.select(&:seen).count
    total + count
  end
end

def rotate(grid)
  grid.transpose.map(&:reverse)
end

grid = build_grid(DATA)

mark_seen_trees(grid)
grid_90 = rotate(grid)
mark_seen_trees(grid_90)
grid_180 = rotate(grid_90)
mark_seen_trees(grid_180)
grid_270 = rotate(grid_180)
mark_seen_trees(grid_270)

puts count_seen_trees(grid_270)

__END__
121212011303121030310342042402330124244111344151215543452341031241241020400101112013333020112100012
021211021113201200034023433130134132413414155334115143443355322133444324121312404302011201132211211
112100131112221303204244242431121003451531135255455445141455432541312201002214304203010313110102221
020110213013113103013204332232423553543445433222155153431441144442133012114241240204113022033210212
220211123123023221431120203212535513244235435131233452411353515142141342420233430124211033211103201
201022331320201202140104411413522115413213345254535252552153334555534422544330002102424023033322310
002011111302111311312434241323154521232411313453434133354341132333115133343011222312043111232231222
013200323000441302142430153512351514554144243134335236231323244242514241141543000044010321332222320
030100102011023442422335322343425254455155645352466333266624622411411531253414114432034034311131222
322030202043440231214443243242233422366246622362565344565233563555324325333511154331042320111021203
213003300414441314312513553152343433222235343463444622556454453564615122442121152433110144401122122
021322211313341320225244345212526464422556233255442242524636654565546141313334241514223301121200020
200002004321134302434442521521345336526234552642236565226243663554552342241443523255344432431132112
112123334441323144345534151556562252635233363355224653254253523344642442351332145221300143332241010
022320131410010151254142156636463345252452625423376754343432433653322245664252425413321040141302232
213010110022111155333545424663525462442454635436533755536636426266424643655512213435531304111222000
130321001200011144555214565543554643256537345337535434444635673532262633225653144544344432301332432
022001420212325411453144445434236254466446337636634543774555355374353662522435224132353244034031000
002330010431341554551434253422254276654743665367455334457473364473622344254456352551331135411240234
312302212143534422423465564263334474566667447435655556674563544344656444223542363235332253222404014
212121032141343134355434224534464675674454653637667644577377433543363445523354433252255211144312024
032232100153554252235624563224356655547365457745734763767533657435437475664325434442351433444413432
110200301524124453246544643533747547556475446575748877586377673774564455425343566541443431232401214
401423221442241424632554334447574565754568668848564545648588775376576657452244522662354432522131430
104434155511311263462424433673653733578444556668584487456756485643337355375433336556353432343531212
232312213322425552554325453754633766755865457774587845874856686753435335647736522565231415412413211
431001313425254645265623577666433748788645854658656747656847848685876376476452325453225544433534043
313010515252544635324244436374454465476587445778467648477556767674587735374763224263634154351324340
144012455355126524425677566774755774557844864767878874787745686455847654436466543454462444251355032
000424311444526324323553475355554746544864774656675767558855668566488767334344352635356531552442234
013342542545525235236366465754548568775676857795999885788785445466456855736374463562353442551411143
311242111152354425663445553378875855775477957697697578856798848566484877333477545525362635425135332
341433232336543522273555566685786646768568869658667859787755556468565557473633366352553433511511241
200113144455442526465477677487545446885795579597859665775997897975488858867346567332543224253422254
321322215536436463377577768487764477789778877885995868965678966676487767568444576663626645634432310
443312521324223555545636634855747678676887796567769797975557659998448677554734374642453342212431515
411525331432266364737736458775755877785596969568668977556998758996667657677735543737262252641333145
442522353464222643737346685584745598686858597889698887876897967879654657446543634637433266563152432
454243531252525455465534878756559675878866666799676687797788596788597656655885633463554433643143535
254423532244235655655733654475546977569587699768887776679688866766759778548883343347646235554115351
314314544653622563457635588785666699859596886897989897689788798876985987846687577376763532335135532
412142442632445563355677548756466696866899796677677889898887669778596858564457554576762226623533152
332242122354466554535565547487598955988896787986776867776877888955599984888475443433742663453323444
144151346544425765674636457564767658869896996679899997667979896767868998474585737643642635544533421
314415255322554774543648464765966788579669799899779987788989898667968687447844667337662354653241144
531151535525325346676758455659698557997896686798987988779868698785888786564857433665336664523341524
433523552663344344473467546666588759889896677787898898779776878975758958484784434645376646243431411
515135226664626774436754686667956875999777879798898978998697788977889685548778857447736246224344422
145435565465625543633666766675858858766886989979799999899997668785989599567745864566755645326525215
451353163534546735577664785687859598879898988887899889888777867978579599658876447575744455463535421
224133454534644344357668774586679766688667987978788777787978767996768679587486553753676234444243145
212224343354636435353376785568986575788667679879987787799996968667996977844764744747546562653555311
533215146234664535345776886669575768966898869977999998888778799896585966878485433376437563225631352
511524423463344353364385568455757877769888788888799787979869867976859678654676857776376644445445215
351234256625356736743655474675867598588879869899999799789878697766889955677655765744675453466515352
334415234234535577366766846485775897899678799797988789798686779975797678558486666454465242325255315
141341534526526535446644587564577966676787678799988989799997999875957694554787466435645653653555414
313324416232534373476357468674589657599899799798689797986786698995665798657574376535655252364222345
311221544446655446757777886865788857567967696689867999769799886898598995658847463557355652223224412
455533545356434343353337767878785976765769968899769879969687867689997585485648456367636362352431235
344444353536223353357778884687469798765676998669777968698779855796996985778555675367324552333255445
051125313425464566733636456767476978655987889896897676668688798768558878654457367667555264222423551
353542241453466263566466444568785959568996966999897988769675557699898764775776773566735422341532411
022324211323442654554445655776687576866866899996988868898585669578658688644533765553546656434125445
114453323344233423677473675646888489555668785777968786767598875656578848476447533734652563225415414
114422544242345362734473678567647667869987569695895789896698699557445648854544743436662644341252531
121342551166453322745565437644747478898555998668897895775999796995587786474657764352544656531442143
303141113253266635447343344867888466769679588758558756866968688847688674876656737744543462242255453
211553143135554522563734546548487876869685667557688879976567575866584774455433565742656362424324221
124145331431636546255374743445654474455696878969759677857655988487587487353655433225556322453333301
212244412131664532653366547437778778757756559965879758976787487565565586665457556563646654415332511
011305211242465446332773543655556877674464555978676866698775787766666456756644432225665434112311020
004241221433546245432264563633447545674557677448454476555877787756767637433767625564453222213212214
310343115521416426645326746575333484685764464876676658588877654688747777476753344453622354123212043
140122345414213664253233365647757664866655755465564678758484884488574665556644653435636451242442431
244102135324345326634353374375547456884585456867666677454868468687435553747753654545544441144303342
432104041214342544334655425474547463448788757857558655488554466655536543533544446366314241124214112
323340324334354443354245236535677365643457874448486874757456574363667673472262365365211122323243114
430330302152115233222436253333446747553365334585488745577537474744744537762432632263215224143034311
311442302225213454546466432534566554436677736533674654344734776664563675555452243452512224320440414
012223322322424155255455565223573376357653457774454463735446656766537352553544256234512225223230043
301040234123443123232563623663643633535443553744547733637676336764634633454454353153253554114310123
133230222202333125332643444534665265775555366656333664577746375536432522432632352414133321233403141
130131122340253113451232453334526422447633735643377464757575366556545326434445112532143151333444233
123141143123235144241534634442646462453347557645744747744444465243533265534335312135141342344141402
003321424141234554211325444625623263425263674757674335463664556352656232255214521252351130300034201
112312001424231145115555432333342644223335545625473535264242623526263634466325543223334324011234121
000221124024240324421331531356324362422542263363234455442425223655564222213351113145440100221140111
033311243403013332514242224522366666224344244563634356355445532225333344231213331535121420140433130
303323104303402340514525522211134233445565565244563523544534354246644545425131313341424434300003032
011323012002420122421144112234234535335555456426433464426356545662531135434153435334430024313303120
031202221220044224202355531555315433255252442366562265422542236431311515541243440113402324302332130
201100001202303212021041315334534534143533633663456666642564224231354441333414120340321342200233132
221201212012302142404132243444141351134325452546423522255432534112215145442242342110400232302021322
220223222003322321422133444521333545342441534125321334411524122521525135453342042001304403200303321
222220302103313411301404030054314141423224422211413131115533525334423132133412232211310121021132101
122003101321113124242202433422213424522545354542323525531511234344125550023302132204220012211210020
000112201313122024204100421340022524132134142432553221315323551243135131212431102431311323201221002
020202200133011113024021012122001204231413324533351552454535514252231001424310042133312311233022121
