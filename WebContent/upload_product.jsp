<jsp:directive.include file="header.jsp" />

<%
/*Request attribute values
 *  1: successfully inserted
 *  2: unsuccessfully inserted
 */
 HttpSession sessionUploadProduct = request.getSession(false);
 String loginStatus = (String)sessionUploadProduct.getAttribute("user");
 if(sessionUploadProduct.getAttribute("user") == null || sessionUploadProduct.getAttribute("user") == "0")
 {
	 sessionUploadProduct.setAttribute("user", "0");
 	response.sendRedirect("login.jsp"); 
 }

 else
 {
 int isUploaded;

if(request.getAttribute("isUploaded") == null || request.getAttribute("isUploaded") == "")
{
	isUploaded = 0;
}
else
{
	isUploaded = (Integer)(request.getAttribute("isUploaded"));
	switch (isUploaded)
	{
		case 1:
				%><script type="text/javascript">alert("Product uploaded successfully.")</script> <%
			break;
		case 2:
			%><script type="text/javascript">alert("Error while upload product, please try after sometime.")</script> <%
			break;
		case 3:
			%><script type="text/javascript">alert("Registeration unsuccessful")</script> <%
			break;
	}
}

 %> 
<div class="tygh-content clearfix">
    <div class="container-fluid  content-grid">
                    


<div class="row-fluid ">    <div class="span16 breadcrumbs-grid" >
                    <div id="breadcrumbs_1">

    <div class="ty-breadcrumbs clearfix">
        <a href="index.jsp" class="ty-breadcrumbs__a">Home</a><span class="ty-breadcrumbs__slash">/</span><span class="ty-breadcrumbs__current">Registration</span>
    </div>

<!--breadcrumbs_1--></div>
            </div>
</div>                


<div class="row-fluid ">    <div class="span8 main-content-grid" >
                    <div class="mainbox-container clearfix">
                    <h2 class="ty-mainbox-title">
                
                                    Upload your product
                                

            </h2>
                <div class="ty-mainbox-body"><script type="text/javascript">
(function(_, $) {

    /* Do not put this code to document.ready, because it should be
       initialized first
    */
    $.ceRebuildStates('init', {
        default_country: 'US',
        states: {"AU":[{"country_code":"AU","code":"ACT","state":"Australian Capital Territory"},{"country_code":"AU","code":"NSW","state":"New South Wales"},{"country_code":"AU","code":"NT","state":"Northern Territory"},{"country_code":"AU","code":"QLD","state":"Queensland"},{"country_code":"AU","code":"SA","state":"South Australia"},{"country_code":"AU","code":"TAS","state":"Tasmania"},{"country_code":"AU","code":"VIC","state":"Victoria"},{"country_code":"AU","code":"WA","state":"Western Australia"}],"BG":[{"country_code":"BG","code":"SF","state":"Sofia"}],"CA":[{"country_code":"CA","code":"AB","state":"Alberta"},{"country_code":"CA","code":"BC","state":"British Columbia"},{"country_code":"CA","code":"MB","state":"Manitoba"},{"country_code":"CA","code":"NB","state":"New Brunswick"},{"country_code":"CA","code":"NL","state":"Newfoundland and Labrador"},{"country_code":"CA","code":"NT","state":"Northwest Territories"},{"country_code":"CA","code":"NS","state":"Nova Scotia"},{"country_code":"CA","code":"NU","state":"Nunavut"},{"country_code":"CA","code":"ON","state":"Ontario"},{"country_code":"CA","code":"PE","state":"Prince Edward Island"},{"country_code":"CA","code":"QC","state":"Quebec"},{"country_code":"CA","code":"SK","state":"Saskatchewan"},{"country_code":"CA","code":"YT","state":"Yukon"}],"CH":[{"country_code":"CH","code":"AR","state":"Appenzell Rhodes-Ext\u00e9rieures"},{"country_code":"CH","code":"AI","state":"Appenzell Rhodes-Int\u00e9rieures"},{"country_code":"CH","code":"AG","state":"Argovie"},{"country_code":"CH","code":"BL","state":"B\u00e2le-Campagne"},{"country_code":"CH","code":"BS","state":"B\u00e2le-Ville"},{"country_code":"CH","code":"BE","state":"Berne"},{"country_code":"CH","code":"FR","state":"Fribourg"},{"country_code":"CH","code":"GE","state":"Gen\u00e8ve"},{"country_code":"CH","code":"GL","state":"Glaris"},{"country_code":"CH","code":"GR","state":"Grisons"},{"country_code":"CH","code":"JU","state":"Jura"},{"country_code":"CH","code":"LU","state":"Lucerne"},{"country_code":"CH","code":"NE","state":"Neuch\u00e2tel"},{"country_code":"CH","code":"NW","state":"Nidwald"},{"country_code":"CH","code":"OW","state":"Obwald"},{"country_code":"CH","code":"SG","state":"Saint-Gall"},{"country_code":"CH","code":"SH","state":"Schaffhouse"},{"country_code":"CH","code":"SZ","state":"Schwytz"},{"country_code":"CH","code":"SO","state":"Soleure"},{"country_code":"CH","code":"TI","state":"Tessin"},{"country_code":"CH","code":"TG","state":"Thurgovie"},{"country_code":"CH","code":"UR","state":"Uri"},{"country_code":"CH","code":"VS","state":"Valais"},{"country_code":"CH","code":"VD","state":"Vaud"},{"country_code":"CH","code":"ZG","state":"Zoug"},{"country_code":"CH","code":"ZH","state":"Zurich"}],"DE":[{"country_code":"DE","code":"BAW","state":"Baden-W\u00fcrttemberg"},{"country_code":"DE","code":"BAY","state":"Bayern"},{"country_code":"DE","code":"BER","state":"Berlin"},{"country_code":"DE","code":"BRG","state":"Branderburg"},{"country_code":"DE","code":"BRE","state":"Bremen"},{"country_code":"DE","code":"HAM","state":"Hamburg"},{"country_code":"DE","code":"HES","state":"Hessen"},{"country_code":"DE","code":"MEC","state":"Mecklenburg-Vorpommern"},{"country_code":"DE","code":"NDS","state":"Niedersachsen"},{"country_code":"DE","code":"NRW","state":"Nordrhein-Westfalen"},{"country_code":"DE","code":"RHE","state":"Rheinland-Pfalz"},{"country_code":"DE","code":"SAR","state":"Saarland"},{"country_code":"DE","code":"SAS","state":"Sachsen"},{"country_code":"DE","code":"SAC","state":"Sachsen-Anhalt"},{"country_code":"DE","code":"SCN","state":"Schleswig-Holstein"},{"country_code":"DE","code":"THE","state":"Th\u00fcringen"}],"ES":[{"country_code":"ES","code":"C","state":"A Coru\u00f1a"},{"country_code":"ES","code":"VI","state":"\u00c1lava"},{"country_code":"ES","code":"AB","state":"Albacete"},{"country_code":"ES","code":"A","state":"Alicante"},{"country_code":"ES","code":"AL","state":"Almer\u00eda"},{"country_code":"ES","code":"O","state":"Asturias"},{"country_code":"ES","code":"AV","state":"\u00c1vila"},{"country_code":"ES","code":"BA","state":"Badajoz"},{"country_code":"ES","code":"PM","state":"Baleares"},{"country_code":"ES","code":"B","state":"Barcelona"},{"country_code":"ES","code":"BU","state":"Burgos"},{"country_code":"ES","code":"CC","state":"C\u00e1ceres"},{"country_code":"ES","code":"CA","state":"C\u00e1diz"},{"country_code":"ES","code":"S","state":"Cantabria"},{"country_code":"ES","code":"CS","state":"Castell\u00f3n"},{"country_code":"ES","code":"CE","state":"Ceuta"},{"country_code":"ES","code":"CR","state":"Ciudad Real"},{"country_code":"ES","code":"CO","state":"C\u00f3rdoba"},{"country_code":"ES","code":"CU","state":"Cuenca"},{"country_code":"ES","code":"GI","state":"Girona"},{"country_code":"ES","code":"GR","state":"Granada"},{"country_code":"ES","code":"GU","state":"Guadalajara"},{"country_code":"ES","code":"SS","state":"Guip\u00fazcoa"},{"country_code":"ES","code":"H","state":"Huelva"},{"country_code":"ES","code":"HU","state":"Huesca"},{"country_code":"ES","code":"J","state":"Ja\u00e9n"},{"country_code":"ES","code":"LO","state":"La Rioja"},{"country_code":"ES","code":"GC","state":"Las Palmas"},{"country_code":"ES","code":"LE","state":"Le\u00f3n"},{"country_code":"ES","code":"L","state":"Lleida"},{"country_code":"ES","code":"LU","state":"Lugo"},{"country_code":"ES","code":"M","state":"Madrid"},{"country_code":"ES","code":"MA","state":"M\u00e1laga"},{"country_code":"ES","code":"ML","state":"Melilla"},{"country_code":"ES","code":"MU","state":"Murcia"},{"country_code":"ES","code":"NA","state":"Navarra"},{"country_code":"ES","code":"OR","state":"Ourense"},{"country_code":"ES","code":"P","state":"Palencia"},{"country_code":"ES","code":"PO","state":"Pontevedra"},{"country_code":"ES","code":"SA","state":"Salamanca"},{"country_code":"ES","code":"TF","state":"Santa Cruz de Tenerife"},{"country_code":"ES","code":"SG","state":"Segovia"},{"country_code":"ES","code":"SE","state":"Sevilla"},{"country_code":"ES","code":"SO","state":"Soria"},{"country_code":"ES","code":"T","state":"Tarragona"},{"country_code":"ES","code":"TE","state":"Teruel"},{"country_code":"ES","code":"TO","state":"Toledo"},{"country_code":"ES","code":"V","state":"Valencia"},{"country_code":"ES","code":"VA","state":"Valladolid"},{"country_code":"ES","code":"BI","state":"Vizcaya"},{"country_code":"ES","code":"ZA","state":"Zamora"},{"country_code":"ES","code":"Z","state":"Zaragoza"}],"FR":[{"country_code":"FR","code":"01","state":"Ain"},{"country_code":"FR","code":"02","state":"Aisne"},{"country_code":"FR","code":"03","state":"Allier"},{"country_code":"FR","code":"04","state":"Alpes-de-Haute-Provence"},{"country_code":"FR","code":"06","state":"Alpes-Maritimes"},{"country_code":"FR","code":"07","state":"Ard\u00e8che"},{"country_code":"FR","code":"08","state":"Ardennes"},{"country_code":"FR","code":"09","state":"Ari\u00e8ge"},{"country_code":"FR","code":"10","state":"Aube"},{"country_code":"FR","code":"11","state":"Aude"},{"country_code":"FR","code":"12","state":"Aveyron"},{"country_code":"FR","code":"67","state":"Bas-Rhin"},{"country_code":"FR","code":"13","state":"Bouches-du-Rh\u00f4ne"},{"country_code":"FR","code":"14","state":"Calvados"},{"country_code":"FR","code":"15","state":"Cantal"},{"country_code":"FR","code":"16","state":"Charente"},{"country_code":"FR","code":"17","state":"Charente-Maritime"},{"country_code":"FR","code":"18","state":"Cher"},{"country_code":"FR","code":"19","state":"Corr\u00e8ze"},{"country_code":"FR","code":"2A","state":"Corse-du-Sud"},{"country_code":"FR","code":"21","state":"C\u00f4te-d'Or"},{"country_code":"FR","code":"22","state":"C\u00f4tes-d'Armor"},{"country_code":"FR","code":"23","state":"Creuse"},{"country_code":"FR","code":"79","state":"Deux-S\u00e8vres"},{"country_code":"FR","code":"24","state":"Dordogne"},{"country_code":"FR","code":"25","state":"Doubs"},{"country_code":"FR","code":"26","state":"Dr\u00f4me"},{"country_code":"FR","code":"91","state":"Essonne"},{"country_code":"FR","code":"27","state":"Eure"},{"country_code":"FR","code":"28","state":"Eure-et-Loir"},{"country_code":"FR","code":"29","state":"Finist\u00e8re"},{"country_code":"FR","code":"30","state":"Gard"},{"country_code":"FR","code":"32","state":"Gers"},{"country_code":"FR","code":"33","state":"Gironde"},{"country_code":"FR","code":"68","state":"Haut-Rhin"},{"country_code":"FR","code":"2B","state":"Haute-Corse"},{"country_code":"FR","code":"31","state":"Haute-Garonne"},{"country_code":"FR","code":"43","state":"Haute-Loire"},{"country_code":"FR","code":"52","state":"Haute-Marne"},{"country_code":"FR","code":"70","state":"Haute-Sa\u00f4ne"},{"country_code":"FR","code":"74","state":"Haute-Savoie"},{"country_code":"FR","code":"87","state":"Haute-Vienne"},{"country_code":"FR","code":"05","state":"Hautes-Alpes"},{"country_code":"FR","code":"65","state":"Hautes-Pyr\u00e9n\u00e9es"},{"country_code":"FR","code":"92","state":"Hauts-de-Seine"},{"country_code":"FR","code":"34","state":"H\u00e9rault"},{"country_code":"FR","code":"35","state":"Ille-et-Vilaine"},{"country_code":"FR","code":"36","state":"Indre"},{"country_code":"FR","code":"37","state":"Indre-et-Loire"},{"country_code":"FR","code":"38","state":"Is\u00e8re"},{"country_code":"FR","code":"39","state":"Jura"},{"country_code":"FR","code":"40","state":"Landes"},{"country_code":"FR","code":"41","state":"Loir-et-Cher"},{"country_code":"FR","code":"42","state":"Loire"},{"country_code":"FR","code":"44","state":"Loire-Atlantique"},{"country_code":"FR","code":"45","state":"Loiret"},{"country_code":"FR","code":"46","state":"Lot"},{"country_code":"FR","code":"47","state":"Lot-et-Garonne"},{"country_code":"FR","code":"48","state":"Loz\u00e8re"},{"country_code":"FR","code":"49","state":"Maine-et-Loire"},{"country_code":"FR","code":"50","state":"Manche"},{"country_code":"FR","code":"51","state":"Marne"},{"country_code":"FR","code":"53","state":"Mayenne"},{"country_code":"FR","code":"54","state":"Meurthe-et-Moselle"},{"country_code":"FR","code":"55","state":"Meuse"},{"country_code":"FR","code":"56","state":"Morbihan"},{"country_code":"FR","code":"57","state":"Moselle"},{"country_code":"FR","code":"58","state":"Ni\u00e8vre"},{"country_code":"FR","code":"59","state":"Nord"},{"country_code":"FR","code":"60","state":"Oise"},{"country_code":"FR","code":"61","state":"Orne"},{"country_code":"FR","code":"75","state":"Paris"},{"country_code":"FR","code":"62","state":"Pas-de-Calais"},{"country_code":"FR","code":"63","state":"Puy-de-D\u00f4me"},{"country_code":"FR","code":"64","state":"Pyr\u00e9n\u00e9es-Atlantiques"},{"country_code":"FR","code":"66","state":"Pyr\u00e9n\u00e9es-Orientales"},{"country_code":"FR","code":"69","state":"Rh\u00f4ne"},{"country_code":"FR","code":"71","state":"Sa\u00f4ne-et-Loire"},{"country_code":"FR","code":"72","state":"Sarthe"},{"country_code":"FR","code":"73","state":"Savoie"},{"country_code":"FR","code":"77","state":"Seine-et-Marne"},{"country_code":"FR","code":"76","state":"Seine-Maritime"},{"country_code":"FR","code":"93","state":"Seine-Saint-Denis"},{"country_code":"FR","code":"80","state":"Somme"},{"country_code":"FR","code":"81","state":"Tarn"},{"country_code":"FR","code":"82","state":"Tarn-et-Garonne"},{"country_code":"FR","code":"90","state":"Territoire de Belfort"},{"country_code":"FR","code":"95","state":"Val-d'Oise"},{"country_code":"FR","code":"94","state":"Val-de-Marne"},{"country_code":"FR","code":"83","state":"Var"},{"country_code":"FR","code":"84","state":"Vaucluse"},{"country_code":"FR","code":"85","state":"Vend\u00e9e"},{"country_code":"FR","code":"86","state":"Vienne"},{"country_code":"FR","code":"88","state":"Vosges"},{"country_code":"FR","code":"89","state":"Yonne"},{"country_code":"FR","code":"78","state":"Yvelines"}],"GB":[{"country_code":"GB","code":"ABN","state":"Aberdeen"},{"country_code":"GB","code":"ABNS","state":"Aberdeenshire"},{"country_code":"GB","code":"ANG","state":"Anglesey"},{"country_code":"GB","code":"AGS","state":"Angus"},{"country_code":"GB","code":"ARY","state":"Argyll and Bute"},{"country_code":"GB","code":"AVN","state":"Avon"},{"country_code":"GB","code":"BAN","state":"Banffshire"},{"country_code":"GB","code":"BEDS","state":"Bedfordshire"},{"country_code":"GB","code":"BERKS","state":"Berkshire"},{"country_code":"GB","code":"BEW","state":"Berwickshire"},{"country_code":"GB","code":"BLA","state":"Blaenau Gwent"},{"country_code":"GB","code":"BRI","state":"Bridgend"},{"country_code":"GB","code":"BSTL","state":"Bristol"},{"country_code":"GB","code":"BUCKS","state":"Buckinghamshire"},{"country_code":"GB","code":"CAE","state":"Caerphilly"},{"country_code":"GB","code":"CAI","state":"Caithness"},{"country_code":"GB","code":"CAMBS","state":"Cambridgeshire"},{"country_code":"GB","code":"CDF","state":"Cardiff"},{"country_code":"GB","code":"CARM","state":"Carmarthenshire"},{"country_code":"GB","code":"CDGN","state":"Ceredigion"},{"country_code":"GB","code":"CHES","state":"Cheshire"},{"country_code":"GB","code":"CLACK","state":"Clackmannanshire"},{"country_code":"GB","code":"CLV","state":"Cleveland"},{"country_code":"GB","code":"CWD","state":"Clwyd"},{"country_code":"GB","code":"CON","state":"Conwy"},{"country_code":"GB","code":"CORN","state":"Cornwall"},{"country_code":"GB","code":"ANT","state":"County Antrim"},{"country_code":"GB","code":"ARM","state":"County Armagh"},{"country_code":"GB","code":"DOW","state":"County Down"},{"country_code":"GB","code":"FER","state":"County Fermanagh"},{"country_code":"GB","code":"LDY","state":"County Londonderry"},{"country_code":"GB","code":"TYR","state":"County Tyrone"},{"country_code":"GB","code":"CMA","state":"Cumbria"},{"country_code":"GB","code":"DNBG","state":"Denbighshire"},{"country_code":"GB","code":"DERBY","state":"Derbyshire"},{"country_code":"GB","code":"DVN","state":"Devon"},{"country_code":"GB","code":"DOR","state":"Dorset"},{"country_code":"GB","code":"DGL","state":"Dumfries and Galloway"},{"country_code":"GB","code":"DFS","state":"Dumfries-shire"},{"country_code":"GB","code":"DUND","state":"Dundee"},{"country_code":"GB","code":"DHM","state":"Durham"},{"country_code":"GB","code":"DFD","state":"Dyfed"},{"country_code":"GB","code":"ARYE","state":"East Ayrshire"},{"country_code":"GB","code":"DUNBE","state":"East Dunbartonshire"},{"country_code":"GB","code":"LOTE","state":"East Lothian"},{"country_code":"GB","code":"RENE","state":"East Renfrewshire"},{"country_code":"GB","code":"ERYS","state":"East Riding of Yorkshire"},{"country_code":"GB","code":"SXE","state":"East Sussex"},{"country_code":"GB","code":"EDIN","state":"Edinburgh"},{"country_code":"GB","code":"ESX","state":"Essex"},{"country_code":"GB","code":"FALK","state":"Falkirk"},{"country_code":"GB","code":"FFE","state":"Fife"},{"country_code":"GB","code":"FLINT","state":"Flintshire"},{"country_code":"GB","code":"GLAS","state":"Glasgow"},{"country_code":"GB","code":"GLOS","state":"Gloucestershire"},{"country_code":"GB","code":"LDN","state":"Greater London"},{"country_code":"GB","code":"MCH","state":"Greater Manchester"},{"country_code":"GB","code":"GDD","state":"Gwynedd"},{"country_code":"GB","code":"HANTS","state":"Hampshire"},{"country_code":"GB","code":"HWR","state":"Herefordshire"},{"country_code":"GB","code":"HERTS","state":"Hertfordshire"},{"country_code":"GB","code":"HLD","state":"Highlands"},{"country_code":"GB","code":"HUM","state":"Humberside"},{"country_code":"GB","code":"IVER","state":"Inverclyde"},{"country_code":"GB","code":"INV","state":"Inverness-shire"},{"country_code":"GB","code":"IOW","state":"Isle of Wight"},{"country_code":"GB","code":"IOS","state":"Isles of Scilly"},{"country_code":"GB","code":"KNT","state":"Kent"},{"country_code":"GB","code":"KCD","state":"Kincardineshire"},{"country_code":"GB","code":"LANCS","state":"Lancashire"},{"country_code":"GB","code":"LEICS","state":"Leicestershire"},{"country_code":"GB","code":"LINCS","state":"Lincolnshire"},{"country_code":"GB","code":"MER","state":"Merionethshire"},{"country_code":"GB","code":"MSY","state":"Merseyside"},{"country_code":"GB","code":"MERT","state":"Merthyr Tydfil"},{"country_code":"GB","code":"MDX","state":"Middlesex"},{"country_code":"GB","code":"MLOT","state":"Midlothian"},{"country_code":"GB","code":"MMOUTH","state":"Monmouthshire"},{"country_code":"GB","code":"MORAY","state":"Moray"},{"country_code":"GB","code":"NAI","state":"Nairnshire"},{"country_code":"GB","code":"NPRTAL","state":"Neath Port Talbot"},{"country_code":"GB","code":"NEWPT","state":"Newport"},{"country_code":"GB","code":"NOR","state":"Norfolk"},{"country_code":"GB","code":"ARYN","state":"North Ayrshire"},{"country_code":"GB","code":"LANN","state":"North Lanarkshire"},{"country_code":"GB","code":"YSN","state":"North Yorkshire"},{"country_code":"GB","code":"NHM","state":"Northamptonshire"},{"country_code":"GB","code":"NLD","state":"Northumberland"},{"country_code":"GB","code":"NOT","state":"Nottinghamshire"},{"country_code":"GB","code":"ORK","state":"Orkney Islands"},{"country_code":"GB","code":"OFE","state":"Oxfordshire"},{"country_code":"GB","code":"PEE","state":"Peebles-shire"},{"country_code":"GB","code":"PEM","state":"Pembrokeshire"},{"country_code":"GB","code":"PERTH","state":"Perth and Kinross"},{"country_code":"GB","code":"PWS","state":"Powys"},{"country_code":"GB","code":"REN","state":"Renfrewshire"},{"country_code":"GB","code":"RHON","state":"Rhondda Cynon Taff"},{"country_code":"GB","code":"ROX","state":"Roxburghshire"},{"country_code":"GB","code":"RUT","state":"Rutland"},{"country_code":"GB","code":"BOR","state":"Scottish Borders"},{"country_code":"GB","code":"SEL","state":"Selkirkshire"},{"country_code":"GB","code":"SHET","state":"Shetland Islands"},{"country_code":"GB","code":"SPE","state":"Shropshire"},{"country_code":"GB","code":"SOM","state":"Somerset"},{"country_code":"GB","code":"ARYS","state":"South Ayrshire"},{"country_code":"GB","code":"LANS","state":"South Lanarkshire"},{"country_code":"GB","code":"SYK","state":"South Yorkshire"},{"country_code":"GB","code":"SFD","state":"Staffordshire"},{"country_code":"GB","code":"STIR","state":"Stirling"},{"country_code":"GB","code":"STI","state":"Stirlingshire"},{"country_code":"GB","code":"SFK","state":"Suffolk"},{"country_code":"GB","code":"SRY","state":"Surrey"},{"country_code":"GB","code":"SUT","state":"Sutherland"},{"country_code":"GB","code":"SWAN","state":"Swansea"},{"country_code":"GB","code":"TORF","state":"Torfaen"},{"country_code":"GB","code":"TWR","state":"Tyne and Wear"},{"country_code":"GB","code":"VGLAM","state":"Vale of Glamorgan"},{"country_code":"GB","code":"WARKS","state":"Warwickshire"},{"country_code":"GB","code":"WDUN","state":"West Dunbartonshire"},{"country_code":"GB","code":"WLOT","state":"West Lothian"},{"country_code":"GB","code":"WMD","state":"West Midlands"},{"country_code":"GB","code":"SXW","state":"West Sussex"},{"country_code":"GB","code":"YSW","state":"West Yorkshire"},{"country_code":"GB","code":"WIL","state":"Western Isles"},{"country_code":"GB","code":"WIG","state":"Wigtownshire"},{"country_code":"GB","code":"WLT","state":"Wiltshire"},{"country_code":"GB","code":"WORCS","state":"Worcestershire"},{"country_code":"GB","code":"WRX","state":"Wrexham"},{"country_code":"GB","code":"YKS","state":"Yorkshire"}],"IT":[{"country_code":"IT","code":"AG","state":"Agrigento"},{"country_code":"IT","code":"AL","state":"Alessandria"},{"country_code":"IT","code":"AN","state":"Ancona"},{"country_code":"IT","code":"AO","state":"Aosta"},{"country_code":"IT","code":"AR","state":"Arezzo"},{"country_code":"IT","code":"AP","state":"Ascoli Piceno"},{"country_code":"IT","code":"AT","state":"Asti"},{"country_code":"IT","code":"AV","state":"Avellino"},{"country_code":"IT","code":"BA","state":"Bari"},{"country_code":"IT","code":"BL","state":"Belluno"},{"country_code":"IT","code":"BN","state":"Benevento"},{"country_code":"IT","code":"BG","state":"Bergamo"},{"country_code":"IT","code":"BI","state":"Biella"},{"country_code":"IT","code":"BO","state":"Bologna"},{"country_code":"IT","code":"BZ","state":"Bolzano"},{"country_code":"IT","code":"BS","state":"Brescia"},{"country_code":"IT","code":"BR","state":"Brindisi"},{"country_code":"IT","code":"CA","state":"Cagliari"},{"country_code":"IT","code":"CL","state":"Caltanissetta"},{"country_code":"IT","code":"CB","state":"Campobasso"},{"country_code":"IT","code":"CI","state":"Carbonia-Iglesias"},{"country_code":"IT","code":"CE","state":"Caserta"},{"country_code":"IT","code":"CT","state":"Catania"},{"country_code":"IT","code":"CZ","state":"Catanzaro"},{"country_code":"IT","code":"CH","state":"Chieti"},{"country_code":"IT","code":"CO","state":"Como"},{"country_code":"IT","code":"CS","state":"Cosenza"},{"country_code":"IT","code":"CR","state":"Cremona"},{"country_code":"IT","code":"KR","state":"Crotone"},{"country_code":"IT","code":"CN","state":"Cuneo"},{"country_code":"IT","code":"EN","state":"Enna"},{"country_code":"IT","code":"FE","state":"Ferrara"},{"country_code":"IT","code":"FI","state":"Firenze"},{"country_code":"IT","code":"FG","state":"Foggia"},{"country_code":"IT","code":"FC","state":"Forli-Cesena"},{"country_code":"IT","code":"FR","state":"Frosinone"},{"country_code":"IT","code":"GE","state":"Genova"},{"country_code":"IT","code":"GO","state":"Gorizia"},{"country_code":"IT","code":"GR","state":"Grosseto"},{"country_code":"IT","code":"IM","state":"Imperia"},{"country_code":"IT","code":"IS","state":"Isernia"},{"country_code":"IT","code":"AQ","state":"L'Aquila"},{"country_code":"IT","code":"SP","state":"La Spezia"},{"country_code":"IT","code":"LT","state":"Latina"},{"country_code":"IT","code":"LE","state":"Lecce"},{"country_code":"IT","code":"LC","state":"Lecco"},{"country_code":"IT","code":"LI","state":"Livorno"},{"country_code":"IT","code":"LO","state":"Lodi"},{"country_code":"IT","code":"LU","state":"Lucca"},{"country_code":"IT","code":"MC","state":"Macerata"},{"country_code":"IT","code":"MN","state":"Mantova"},{"country_code":"IT","code":"MS","state":"Massa-Carrara"},{"country_code":"IT","code":"MT","state":"Matera"},{"country_code":"IT","code":"VS","state":"Medio Campidano"},{"country_code":"IT","code":"ME","state":"Messina"},{"country_code":"IT","code":"MI","state":"Milano"},{"country_code":"IT","code":"MO","state":"Modena"},{"country_code":"IT","code":"NA","state":"Napoli"},{"country_code":"IT","code":"NO","state":"Novara"},{"country_code":"IT","code":"NU","state":"Nuoro"},{"country_code":"IT","code":"OG","state":"Ogliastra"},{"country_code":"IT","code":"OT","state":"Olbia-Tempio"},{"country_code":"IT","code":"OR","state":"Oristano"},{"country_code":"IT","code":"PD","state":"Padova"},{"country_code":"IT","code":"PA","state":"Palermo"},{"country_code":"IT","code":"PR","state":"Parma"},{"country_code":"IT","code":"PV","state":"Pavia"},{"country_code":"IT","code":"PG","state":"Perugia"},{"country_code":"IT","code":"PU","state":"Pesaro e Urbino"},{"country_code":"IT","code":"PE","state":"Pescara"},{"country_code":"IT","code":"PC","state":"Piacenza"},{"country_code":"IT","code":"PI","state":"Pisa"},{"country_code":"IT","code":"PT","state":"Pistoia"},{"country_code":"IT","code":"PN","state":"Pordenone"},{"country_code":"IT","code":"PZ","state":"Potenza"},{"country_code":"IT","code":"PO","state":"Prato"},{"country_code":"IT","code":"RG","state":"Ragusa"},{"country_code":"IT","code":"RA","state":"Ravenna"},{"country_code":"IT","code":"RC","state":"Reggio Calabria"},{"country_code":"IT","code":"RE","state":"Reggio Emilia"},{"country_code":"IT","code":"RI","state":"Rieti"},{"country_code":"IT","code":"RN","state":"Rimini"},{"country_code":"IT","code":"RM","state":"Roma"},{"country_code":"IT","code":"RO","state":"Rovigo"},{"country_code":"IT","code":"SA","state":"Salerno"},{"country_code":"IT","code":"SS","state":"Sassari"},{"country_code":"IT","code":"SV","state":"Savona"},{"country_code":"IT","code":"SI","state":"Siena"},{"country_code":"IT","code":"SR","state":"Siracusa"},{"country_code":"IT","code":"SO","state":"Sondrio"},{"country_code":"IT","code":"TA","state":"Taranto"},{"country_code":"IT","code":"TE","state":"Teramo"},{"country_code":"IT","code":"TR","state":"Terni"},{"country_code":"IT","code":"TO","state":"Torino"},{"country_code":"IT","code":"TP","state":"Trapani"},{"country_code":"IT","code":"TN","state":"Trento"},{"country_code":"IT","code":"TV","state":"Treviso"},{"country_code":"IT","code":"TS","state":"Trieste"},{"country_code":"IT","code":"UD","state":"Udine"},{"country_code":"IT","code":"VA","state":"Varese"},{"country_code":"IT","code":"VE","state":"Venezia"},{"country_code":"IT","code":"VB","state":"Verbano-Cusio-Ossola"},{"country_code":"IT","code":"VC","state":"Vercelli"},{"country_code":"IT","code":"VR","state":"Verona"},{"country_code":"IT","code":"VV","state":"Vibo Valentia"},{"country_code":"IT","code":"VI","state":"Vicenza"},{"country_code":"IT","code":"VT","state":"Viterbo"}],"NL":[{"country_code":"NL","code":"DR","state":"Drenthe"},{"country_code":"NL","code":"FL","state":"Flevoland"},{"country_code":"NL","code":"FR","state":"Friesland"},{"country_code":"NL","code":"GE","state":"Gelderland"},{"country_code":"NL","code":"GR","state":"Groningen"},{"country_code":"NL","code":"LI","state":"Limburg"},{"country_code":"NL","code":"NB","state":"Noord Brabant"},{"country_code":"NL","code":"NH","state":"Noord Holland"},{"country_code":"NL","code":"OV","state":"Overijssel"},{"country_code":"NL","code":"UT","state":"Utrecht"},{"country_code":"NL","code":"ZE","state":"Zeeland"},{"country_code":"NL","code":"ZH","state":"Zuid Holland"}],"RU":[{"country_code":"RU","code":"ALT","state":"Altajskij kraj"},{"country_code":"RU","code":"AMU","state":"Amurskaja oblast'"},{"country_code":"RU","code":"ARK","state":"Arhangel'skaja oblast'"},{"country_code":"RU","code":"AST","state":"Astrahanskaja oblast'"},{"country_code":"RU","code":"BEL","state":"Belgorodskaja oblast'"},{"country_code":"RU","code":"BRY","state":"Brjanskaja oblast'"},{"country_code":"RU","code":"CE","state":"Chechenskaja respublika"},{"country_code":"RU","code":"CHE","state":"Cheljabinskaja oblast'"},{"country_code":"RU","code":"CHU","state":"Chukotskij avtonomnyj okrug"},{"country_code":"RU","code":"CU","state":"Chuvashskaja Respublika"},{"country_code":"RU","code":"YEV","state":"Evrejskaja avtonomnaja oblast'"},{"country_code":"RU","code":"KHA","state":"Habarovskij kraj"},{"country_code":"RU","code":"KHM","state":"Hanty-Mansijskij avtonomnyj okrug - Jugra"},{"country_code":"RU","code":"IRK","state":"Irkutskaja oblast'"},{"country_code":"RU","code":"IVA","state":"Ivanovskaja oblast'"},{"country_code":"RU","code":"YAN","state":"Jamalo-Neneckij avtonomnyj okrug"},{"country_code":"RU","code":"YAR","state":"Jaroslavskaja oblast'"},{"country_code":"RU","code":"KB","state":"Kabardino-Balkarskaja Respublika"},{"country_code":"RU","code":"KGD","state":"Kaliningradskaja oblast'"},{"country_code":"RU","code":"KLU","state":"Kaluzhskaja oblast'"},{"country_code":"RU","code":"KAM","state":"Kamchatskiy kraj"},{"country_code":"RU","code":"KC","state":"Karachaevo-Cherkesskaja respublika"},{"country_code":"RU","code":"KEM","state":"Kemerovskaja oblast'"},{"country_code":"RU","code":"KIR","state":"Kirovskaja oblast'"},{"country_code":"RU","code":"KOS","state":"Kostromskaja oblast'"},{"country_code":"RU","code":"KDA","state":"Krasnodarskij kraj"},{"country_code":"RU","code":"KIA","state":"Krasnojarskij kraj"},{"country_code":"RU","code":"KGN","state":"Kurganskaja oblast'"},{"country_code":"RU","code":"KRS","state":"Kurskaja oblast'"},{"country_code":"RU","code":"LEN","state":"Leningradskaja oblast'"},{"country_code":"RU","code":"LIP","state":"Lipeckaja oblast'"},{"country_code":"RU","code":"MAG","state":"Magadanskaja oblast'"},{"country_code":"RU","code":"MOS","state":"Moskovskaja oblast'"},{"country_code":"RU","code":"MOW","state":"Moskva"},{"country_code":"RU","code":"MUR","state":"Murmanskaja oblast'"},{"country_code":"RU","code":"NEN","state":"Neneckij avtonomnyj okrug"},{"country_code":"RU","code":"NIZ","state":"Nizhegorodskaja oblast'"},{"country_code":"RU","code":"NGR","state":"Novgorodskaja oblast'"},{"country_code":"RU","code":"NVS","state":"Novosibirskaja oblast'"},{"country_code":"RU","code":"OMS","state":"Omskaja oblast'"},{"country_code":"RU","code":"ORE","state":"Orenburgskaja oblast'"},{"country_code":"RU","code":"ORL","state":"Orlovskaja oblast'"},{"country_code":"RU","code":"PNZ","state":"Penzenskaja oblast'"},{"country_code":"RU","code":"PER","state":"Permskij kraj"},{"country_code":"RU","code":"PRI","state":"Primorskij kraj"},{"country_code":"RU","code":"PSK","state":"Pskovskaja oblast'"},{"country_code":"RU","code":"AD","state":"Respublika Adygeja"},{"country_code":"RU","code":"AL","state":"Respublika Altaj"},{"country_code":"RU","code":"BA","state":"Respublika Bashkortostan"},{"country_code":"RU","code":"BU","state":"Respublika Burjatija"},{"country_code":"RU","code":"DA","state":"Respublika Dagestan"},{"country_code":"RU","code":"KK","state":"Respublika Hakasija"},{"country_code":"RU","code":"IN","state":"Respublika Ingushetija"},{"country_code":"RU","code":"KL","state":"Respublika Kalmykija"},{"country_code":"RU","code":"KR","state":"Respublika Karelija"},{"country_code":"RU","code":"KO","state":"Respublika Komi"},{"country_code":"RU","code":"ME","state":"Respublika Marij Jel"},{"country_code":"RU","code":"MO","state":"Respublika Mordovija"},{"country_code":"RU","code":"SA","state":"Respublika Saha (Jakutija)"},{"country_code":"RU","code":"SE","state":"Respublika Severnaja Osetija-Alanija"},{"country_code":"RU","code":"TA","state":"Respublika Tatarstan"},{"country_code":"RU","code":"TY","state":"Respublika Tyva"},{"country_code":"RU","code":"RYA","state":"Rjazanskaja oblast'"},{"country_code":"RU","code":"ROS","state":"Rostovskaja oblast'"},{"country_code":"RU","code":"SAK","state":"Sahalinskaja oblast'"},{"country_code":"RU","code":"SAM","state":"Samarskaja oblast'"},{"country_code":"RU","code":"SPE","state":"Sankt-Peterburg"},{"country_code":"RU","code":"SAR","state":"Saratovskaja oblast'"},{"country_code":"RU","code":"SMO","state":"Smolenskaja oblast'"},{"country_code":"RU","code":"STA","state":"Stavropol'skij kraj"},{"country_code":"RU","code":"SVE","state":"Sverdlovskaja oblast'"},{"country_code":"RU","code":"TAM","state":"Tambovskaja oblast'"},{"country_code":"RU","code":"TYU","state":"Tjumenskaja oblast'"},{"country_code":"RU","code":"TOM","state":"Tomskaja oblast'"},{"country_code":"RU","code":"TUL","state":"Tul'skaja oblast'"},{"country_code":"RU","code":"TVE","state":"Tverskaja oblast'"},{"country_code":"RU","code":"UD","state":"Udmurtskaja Respublika"},{"country_code":"RU","code":"ULY","state":"Ul'janovskaja oblast'"},{"country_code":"RU","code":"VLA","state":"Vladimirskaja oblast'"},{"country_code":"RU","code":"VGG","state":"Volgogradskaja oblast'"},{"country_code":"RU","code":"VLG","state":"Vologodskaja oblast'"},{"country_code":"RU","code":"VOR","state":"Voronezhskaja oblast'"},{"country_code":"RU","code":"ZAB","state":"Zabaykal'skiy kraj"}],"US":[{"country_code":"US","code":"AL","state":"Alabama"},{"country_code":"US","code":"AK","state":"Alaska"},{"country_code":"US","code":"AZ","state":"Arizona"},{"country_code":"US","code":"AR","state":"Arkansas"},{"country_code":"US","code":"CA","state":"California"},{"country_code":"US","code":"CO","state":"Colorado"},{"country_code":"US","code":"CT","state":"Connecticut"},{"country_code":"US","code":"DE","state":"Delaware"},{"country_code":"US","code":"DC","state":"District of Columbia"},{"country_code":"US","code":"FL","state":"Florida"},{"country_code":"US","code":"GA","state":"Georgia"},{"country_code":"US","code":"GU","state":"Guam"},{"country_code":"US","code":"HI","state":"Hawaii"},{"country_code":"US","code":"ID","state":"Idaho"},{"country_code":"US","code":"IL","state":"Illinois"},{"country_code":"US","code":"IN","state":"Indiana"},{"country_code":"US","code":"IA","state":"Iowa"},{"country_code":"US","code":"KS","state":"Kansas"},{"country_code":"US","code":"KY","state":"Kentucky"},{"country_code":"US","code":"LA","state":"Louisiana"},{"country_code":"US","code":"ME","state":"Maine"},{"country_code":"US","code":"MD","state":"Maryland"},{"country_code":"US","code":"MA","state":"Massachusetts"},{"country_code":"US","code":"MI","state":"Michigan"},{"country_code":"US","code":"MN","state":"Minnesota"},{"country_code":"US","code":"MS","state":"Mississippi"},{"country_code":"US","code":"MO","state":"Missouri"},{"country_code":"US","code":"MT","state":"Montana"},{"country_code":"US","code":"NE","state":"Nebraska"},{"country_code":"US","code":"NV","state":"Nevada"},{"country_code":"US","code":"NH","state":"New Hampshire"},{"country_code":"US","code":"NJ","state":"New Jersey"},{"country_code":"US","code":"NM","state":"New Mexico"},{"country_code":"US","code":"NY","state":"New York"},{"country_code":"US","code":"NC","state":"North Carolina"},{"country_code":"US","code":"ND","state":"North Dakota"},{"country_code":"US","code":"MP","state":"Northern Mariana Islands"},{"country_code":"US","code":"OH","state":"Ohio"},{"country_code":"US","code":"OK","state":"Oklahoma"},{"country_code":"US","code":"OR","state":"Oregon"},{"country_code":"US","code":"PA","state":"Pennsylvania"},{"country_code":"US","code":"PR","state":"Puerto Rico"},{"country_code":"US","code":"RI","state":"Rhode Island"},{"country_code":"US","code":"SC","state":"South Carolina"},{"country_code":"US","code":"SD","state":"South Dakota"},{"country_code":"US","code":"TN","state":"Tennessee"},{"country_code":"US","code":"TX","state":"Texas"},{"country_code":"US","code":"UT","state":"Utah"},{"country_code":"US","code":"VT","state":"Vermont"},{"country_code":"US","code":"VI","state":"Virgin Islands"},{"country_code":"US","code":"VA","state":"Virginia"},{"country_code":"US","code":"WA","state":"Washington"},{"country_code":"US","code":"WV","state":"West Virginia"},{"country_code":"US","code":"WI","state":"Wisconsin"},{"country_code":"US","code":"WY","state":"Wyoming"}]}
    });


    
    $.ceFormValidator('setZipcode', {
        US: {
            regexp: /^(\d{5})(-\d{4})?$/,
            format: '01342 (01342-5678)'
        },
        CA: {
            regexp: /^(\w{3} ?\w{3})$/,
            format: 'K1A OB1 (K1AOB1)'
        },
        RU: {
            regexp: /^(\d{6})?$/,
            format: '123456'
        }
    });
    

}(Tygh, Tygh.$));

(function($) {
    $.fn.checkFileType = function(options) {
        var defaults = {
            allowedExtensions: [],
            success: function() {},
            error: function() {}
        };
        options = $.extend(defaults, options);

        return this.each(function() {

            $(this).on('change', function() {
                var value = $(this).val(),
                    file = value.toLowerCase(),
                    extension = file.substring(file.lastIndexOf('.') + 1);

                if ($.inArray(extension, options.allowedExtensions) == -1) {
                    options.error();
                   
                } else {
                    options.success();

                }

            });

        });
    };

})(jQuery);

$(function() {
    $('#pic').checkFileType({
        allowedExtensions: ['jpg', 'jpeg', 'png'],
        success: function() {
			
        },
        error: function() {
			alert("Invalid file-type. ");
            $("#pic").val('');
        }
    });

});


</script>


    <div class="ty-account">
    
        <form name="profiles_register_form" action="UploadProduct" method="post" enctype="multipart/form-data">
            

	<div class="ty-control-group">
            <label for="title" class="cm-required ty-control-group__title cm-title">Title</label>
            <input type="text" id="title" name="product_data[title]" size="32" maxlength="128" value="" class="ty-input-text" data-validation="length alphanumeric" data-validation-length="min4" />
        </div>	
		
	<div class="ty-control-group">
            <label for="description" class="cm-required ty-control-group__title cm-lname">Description</label>
            <input type="text" id="description" name="product_data[description]" size="32" maxlength="128" value="" class="ty-input-text" data-validation="length alphanumeric" data-validation-length="min4" />
        </div>	
			

    
    <div class="ty-control-group">
            <label for="mrp" class="ty-control-group__title cm-required cm-mrp">Maximum Retail Price (MRP)</label>
            <input type="text" id="mrp" name="product_data[mrp]" size="32" maxlength="128" value="" class="ty-input-text cm-numeric" />
    </div>
    
    <div class="ty-control-group">
            <label for="minimum" class="ty-control-group__title cm-required cm-minimum">Minimum Bid Amount</label>
            <input type="text" id="minimum" name="product_data[minimum_bid]" size="32" maxlength="128" value="" class="ty-input-text cm-numeric" />
    </div>
	
	<div class="ty-control-group">
            <label for="pic" class="ty-control-group__title cm-required cm-pic">Product Picture</label>
            <input type="file" id="pic" name="file" size="32" maxlength="128" value="" class="" />
    </div>


        
            


            
            
            <div class="ty-profile-field__buttons buttons-container">
                    
 
    <button  class="ty-btn__secondary ty-btn" type="submit" >Upload</button>


            </div>
        </form>
    </div>
    </div>
    </div>
            </div>
                


    <div class="span8 profile-information-grid" >
                    <div class="ty-account-benefits">
        <h4>Benefits of becoming a registered member</h4><ul><li>Log in at any time to check order statuses</li><li>Personalize your shopping</li><li>Speed up future purchases</li></ul>
    </div>
            </div>
</div>
</div>
</div>

<jsp:directive.include file="footer.jsp" />
<%} %>

