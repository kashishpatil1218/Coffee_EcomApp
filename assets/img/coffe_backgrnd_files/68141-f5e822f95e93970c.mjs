"use strict";(self.__LOADABLE_LOADED_CHUNKS__=self.__LOADABLE_LOADED_CHUNKS__||[]).push([[68141],{969548:(e,l,a)=>{var n;a.r(l),a.d(l,{default:()=>t});let i={argumentDefinitions:[],kind:"Fragment",metadata:null,name:"CloseupLink_pin",selections:[{alias:null,args:null,kind:"ScalarField",name:"advertiserId",storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"attributionSourceId",storageKey:null},{alias:null,args:null,concreteType:"Board",kind:"LinkedField",name:"board",plural:!1,selections:[{alias:null,args:null,kind:"ScalarField",name:"url",storageKey:null}],storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"campaignId",storageKey:null},{alias:null,args:null,concreteType:"PinCarouselData",kind:"LinkedField",name:"carouselData",plural:!1,selections:[{alias:null,args:null,concreteType:"PinCarouselSlot",kind:"LinkedField",name:"carouselSlots",plural:!0,selections:[{alias:"entityId",args:null,kind:"ScalarField",name:"id",storageKey:null}],storageKey:null},n={alias:null,args:null,kind:"ScalarField",name:"entityId",storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"index",storageKey:null}],storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"description",storageKey:null},n,{alias:null,args:null,kind:"ScalarField",name:"gridTitle",storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"isDownstreamPromotion",storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"isPromoted",storageKey:null},{alias:null,args:null,concreteType:"User",kind:"LinkedField",name:"pinner",plural:!1,selections:[{alias:null,args:null,kind:"ScalarField",name:"username",storageKey:null}],storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"pinPromotionId",storageKey:null},{alias:null,args:null,concreteType:"User",kind:"LinkedField",name:"promoter",plural:!1,selections:[n],storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"promotedIsLeadAd",storageKey:null},{alias:null,args:null,concreteType:"PromotedLeadForm",kind:"LinkedField",name:"promotedLeadForm",plural:!1,selections:[{alias:null,args:null,kind:"ScalarField",name:"leadFormId",storageKey:null}],storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"storyPinDataId",storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"title",storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"trackingParams",storageKey:null},{args:null,kind:"FragmentSpread",name:"useGetStringifiedCommerceAuxData_pin"},{kind:"InlineDataFragmentSpread",name:"getPinTrackingParamsMap_pin",selections:[{kind:"ClientExtension",selections:[{alias:null,args:null,concreteType:"TrackingParamsMap",kind:"LinkedField",name:"trackingParamsMap",plural:!0,selections:[{alias:null,args:null,kind:"ScalarField",name:"data",storageKey:null},{alias:null,args:null,kind:"ScalarField",name:"key",storageKey:null}],storageKey:null}]}],args:null,argumentDefinitions:[]}],type:"Pin",abstractKey:null};i.hash="2f8b7ad02619a272640140b4402e0cfc";let t=i},498594:(e,l,a)=>{var n,i,t;a.r(l),a.d(l,{default:()=>s});let r={argumentDefinitions:[],kind:"Fragment",metadata:null,name:"CollageChips_pin",selections:[{alias:null,args:null,concreteType:"AggregatedPinData",kind:"LinkedField",name:"aggregatedPinData",plural:!1,selections:[{alias:null,args:null,concreteType:"PinTagChipImagesPerSpec",kind:"LinkedField",name:"pinTagsChips",plural:!0,selections:[{alias:"entityId",args:null,kind:"ScalarField",name:"id",storageKey:null},{alias:null,args:null,concreteType:"Thumbnails",kind:"LinkedField",name:"image",plural:!1,selections:[n={alias:null,args:null,kind:"ScalarField",name:"height",storageKey:null},i={alias:null,args:null,kind:"ScalarField",name:"url",storageKey:null},t={alias:null,args:null,kind:"ScalarField",name:"width",storageKey:null}],storageKey:null}],storageKey:null}],storageKey:null},{alias:null,args:null,concreteType:"CollectionPin",kind:"LinkedField",name:"collectionPin",plural:!1,selections:[{alias:null,args:null,concreteType:"CollectionPinItem",kind:"LinkedField",name:"itemData",plural:!0,selections:[{alias:null,args:null,kind:"ScalarField",name:"pinId",storageKey:null},{alias:null,args:[{kind:"Literal",name:"spec",value:"750x"}],concreteType:"Thumbnails",kind:"LinkedField",name:"images",plural:!1,selections:[i,t,n],storageKey:'images(spec:"750x")'}],storageKey:null}],storageKey:null},{args:null,kind:"FragmentSpread",name:"CollageChips_pin2"}],type:"Pin",abstractKey:null};r.hash="ccfee94118043ad859460cc7806b13e4";let s=r},387944:(e,l,a)=>{a.r(l),a.d(l,{default:()=>i});let n={argumentDefinitions:[],kind:"Fragment",metadata:null,name:"CollageChips_pin2",selections:[{args:null,kind:"FragmentSpread",name:"CloseupLink_pin"}],type:"Pin",abstractKey:null};n.hash="df1a502b4660ea1f2f0f126f142daec4";let i=n},363074:(e,l,a)=>{a.d(l,{Z:()=>u});var n=a(667294);let i=new Map,t=null,r=e=>{e.forEach(e=>{let l=i.get(e.target);l&&l(e)})},s=e=>{t.unobserve(e),i.delete(e)},o=(e,l="-64px 0px 0px 0px",a)=>{let n={root:"undefined"==typeof document?null:document.querySelector("#mainContainer"),rootMargin:l,threshold:[0,.5,1]};t=t||new window.IntersectionObserver(r,n),i.set(e,a),t.observe(e)},d=e=>i.has(e);function u({onVisibilityChanged:e,trackFullVisible:l,rootMargin:a}){let t=(0,n.useRef)(null),r=!1,u=l=>{(r=l.intersectionRatio>0||l.isIntersecting)&&e(!0)},p=()=>{t.current instanceof HTMLElement&&d(t.current)&&r&&(e(!1),r=!1)},c=(0,n.useCallback)(e=>{t.current instanceof HTMLElement&&o(t.current,e,e=>{if(!i.has(t.current))return;let a=l?e.intersectionRatio>=1:e.intersectionRatio>=.5,n=l?0===e.intersectionRatio:!a;!r&&a?u(e):r&&n&&p()})},[t.current]);return(0,n.useEffect)(()=>(c(a),()=>{t.current instanceof HTMLElement&&(p(),s(t.current))}),[c]),t}},239821:(e,l,a)=>{a.d(l,{g:()=>c,I:()=>p});var n=a(667294),i=a(342513),t=a(705895),r=a(259866);let s={appInFocus:!0,footerPlusButtonVisible:!0,isAutoplay:!1,showTypeaheadOverlay:!1,videosAutoplaying:{currentlyPlayingOrganicVideoId:null,organicVideosAutoplaying:{},promotedVideosAutoplaying:{}},viewportSize:"lg"},o=(e=s,l)=>{if("TOGGLE_TYPEAHEAD_OVERLAY"===l.type&&e.showTypeaheadOverlay!==l.payload)return{...e,showTypeaheadOverlay:l.payload};if("SET_CURRENT_VIDEO"===l.type){let{payload:a}=l,{pinId:n,isPromoted:i,currentTime:t,allowMultipleOrganicVideos:s}=a,{videosAutoplaying:o}=e,{currentlyPlayingOrganicVideoId:d,promotedVideosAutoplaying:u,organicVideosAutoplaying:p}=o,c=(0,r.Z)(u),g=(0,r.Z)(p);return i||!d||s?(i?c[n]={pinId:n,currentTime:t,paused:!1}:g[n]={pinId:n,currentTime:t,paused:!1},{...e,videosAutoplaying:{currentlyPlayingOrganicVideoId:i?d:n,promotedVideosAutoplaying:c,organicVideosAutoplaying:g}}):e}if("SET_IS_AUTOPLAY"===l.type&&e.isAutoplay!==l.payload)return{...e,isAutoplay:l.payload};if("PAUSE_CURRENT_VIDEO"===l.type){let{payload:a}=l,{pinId:n,isPromoted:i,currentTime:t}=a,{videosAutoplaying:s}=e,{promotedVideosAutoplaying:o,organicVideosAutoplaying:d}=s,u=(0,r.Z)(o),p=(0,r.Z)(d);return i?u[n]={...u[n],paused:!0,currentTime:t}:p[n]={...p[n],paused:!0,currentTime:t},{...e,videosAutoplaying:{currentlyPlayingOrganicVideoId:null,promotedVideosAutoplaying:u,organicVideosAutoplaying:p}}}if("SET_APP_FOCUS_STATE"===l.type&&e.appInFocus!==l.payload)return{...e,appInFocus:l.payload};if("SET_VIEWPORT_SIZE"===l.type&&e.viewportSize!==l.payload)return{...e,viewportSize:l.payload};if("SET_FOOTER_VISIBILITY_STATE"===l.type&&e.footerPlusButtonVisible!==l.payload)return{...e,footerPlusButtonVisible:l.payload};return e};var d=a(785893);let{Provider:u,useHook:p}=(0,i.Z)("AppUI");function c({children:e}){let[l,a]=(0,n.useReducer)(o,s),i=(0,n.useCallback)(e=>a({type:"PAUSE_CURRENT_VIDEO",payload:e}),[]),r=(0,n.useCallback)(e=>a({type:"SET_APP_FOCUS_STATE",payload:e}),[]),p=(0,n.useCallback)(e=>a({type:"SET_CURRENT_VIDEO",payload:e}),[]),c=(0,n.useCallback)(e=>a({type:"SET_FOOTER_VISIBILITY_STATE",payload:e}),[]),g=(0,n.useCallback)(e=>a({type:"SET_IS_AUTOPLAY",payload:e}),[]),y=(0,n.useCallback)(e=>a({type:"SET_VIEWPORT_SIZE",payload:e}),[]),m=(0,n.useCallback)(e=>a({type:"TOGGLE_TYPEAHEAD_OVERLAY",payload:e}),[]),_=(0,n.useMemo)(()=>({pauseAutoplay:i,setCurrentVideo:p,setFooterPlusButtonVisible:c,setIsAutoplay:g,setViewportSize:y,toggleTypeaheadOverlay:m,setAppFocusState:r,appUI:l}),[i,p,c,g,y,m,r,l]);return(0,n.useEffect)(()=>{t.Z.onSessionResume(()=>{r(!0)}).onSessionPause(()=>{r(!1)})},[r]),(0,d.jsx)(u,{value:_,children:e})}},392071:(e,l,a)=>{a.d(l,{Z:()=>g}),a(167912);var n,i,t=a(883119),r=a(207012),s=a(807023),o=a(340523),d=a(182074),u=a(785893);let p={chip:{marginRight:1,flex:"1 1 0"},chipInner:{paddingBottom:"100%"},chipContainer:{marginRight:-1}},c=void 0!==n?n:n=a(498594);function g({pinKey:e,enableCloseupLink:l}){let n=(0,r.Z)(c,e),{checkExperiment:g}=(0,o.F)(),{anyEnabled:y}=g("aid_web_collection_pin_data"),{childDataKey__DEPRECATED:m}=(0,s.Q)(void 0!==i?i:i=a(387944),n,{useLegacyAdapter:e=>({})}),{aggregatedPinData:_,collectionPin:h}=n,{pinTagsChips:S}=_||{},{itemData:k}=h||{},I=S&&S.length>=3?S.slice(0,3):[],T=k&&k.length>=3?k.slice(0,3):[];return y?(0,u.jsx)(t.xu,{dangerouslySetInlineStyle:{__style:p.chipContainer},display:"flex",children:T.map(e=>{let a=e.images||{},n=(0,u.jsx)(t.Ee,{alt:"",fit:"cover",naturalHeight:a.height??1,naturalWidth:a.width??1,role:"presentation",src:a.url??""});return(0,u.jsx)(t.xu,{dangerouslySetInlineStyle:{__style:p.chip},"data-test-id":"collageChip",children:(0,u.jsx)(t.xu,{dangerouslySetInlineStyle:{__style:p.chipInner},position:"relative",children:(0,u.jsx)(t.xu,{bottom:!0,left:!0,position:"absolute",right:!0,top:!0,children:(0,u.jsx)(t.zd,{height:"100%",wash:!0,width:"100%",children:l?(0,u.jsx)(d.Z,{collageChipId:e.pinId??"",pinKey:m,sizing:"fullSize",children:n}):n})})})},e.pinId)})}):(0,u.jsx)(t.xu,{dangerouslySetInlineStyle:{__style:p.chipContainer},display:"flex",children:I.map(e=>{let a=e.image||{},n=(0,u.jsx)(t.Ee,{alt:"",fit:"cover",naturalHeight:a.height??1,naturalWidth:a.width??1,role:"presentation",src:a.url??""});return(0,u.jsx)(t.xu,{dangerouslySetInlineStyle:{__style:p.chip},"data-test-id":"collageChip",children:(0,u.jsx)(t.xu,{dangerouslySetInlineStyle:{__style:p.chipInner},position:"relative",children:(0,u.jsx)(t.xu,{bottom:!0,left:!0,position:"absolute",right:!0,top:!0,children:(0,u.jsx)(t.zd,{height:"100%",wash:!0,width:"100%",children:l?(0,u.jsx)(d.Z,{collageChipId:e.entityId??"",pinKey:m,sizing:"fullSize",children:n}):n})})})},e.entityId)})})}},182074:(e,l,a)=>{a.d(l,{Z:()=>k}),a(167912);var n,i=a(883119),t=a(598356),r=a(214877),s=a(207012),o=a(140017),d=a(340370),u=a(456299),p=a(340523),c=a(5859),g=a(427514),y=a(268127),m=a(149722),_=a(879977),h=a(785893);let S=void 0!==n?n:n=a(969548);function k({sizing:e="default",children:l,collageChipId:a,componentType:n,contextLogData:k,elementType:I,disableA11yLabel:T,pinKey:f,derivedSaveButtonOptionsSavedInfo:v,productTagParentPinId:P,viewParameter:F,viewType:b}){let E;let x=(0,o.ZP)(),{isRTL:A}=(0,c.B)(),K=(0,s.Z)(S,f),{logContextEvent:L}=(0,r.v)(),w=(0,_.E)(),{checkExperiment:C}=(0,p.F)(),{isAuth:D}=(0,m.Z)(),O=C("web_contextual_board_suggestions").anyEnabled,R=w.contextLogData?.story_type==="product_tagged_shopping_module_upsell",V=["polished_stacked_closeup"].includes(!A&&C(D?"closeup_auth_related_pins_above_fold_2024_dweb":"closeup_unauth_related_pins_above_fold_2024_dweb").group||""),Z=D&&C("closeup_dweb_remove_magnifying_glass").anyEnabled,{carouselData:j,entityId:U}=K,z=!!K.promotedIsLeadAd,H={},B=`/pin/${a||U}/`,M=(0,t.Xx)();if(M?.variantUrl&&(B=`/pin/${M.variantUrl}/`),j){let{carouselSlots:e,entityId:l}=j,a=j.index??0;B=`/pin/${U}/`,H={carousel_slot_id:e?.[a]&&e[a].entityId,carousel_data_id:l,carousel_slot_index:a}}let Y=(0,y.Z)(K);H={...H,...Y({default:k?.commerce_data})};let N=()=>{let e={};if(z)L({event_type:8948,view_type:b||w.viewType,view_parameter:F||w.viewParameter,component:null,object_id_str:K.entityId,aux_data:{closeup_navigation_type:"click",lead_form_id:K.promotedLeadForm?.leadFormId,is_lead_ad:1}}),L({event_type:12,view_type:b||w.viewType,view_parameter:F||w.viewParameter,component:null,object_id_str:K.entityId,aux_data:{lead_form_id:K.promotedLeadForm?.leadFormId,is_lead_ad:1,...Y()}});else{let l={...k,...Y({default:k?.commerce_data})};L({event_type:101,component:n||w.componentType,element:I,object_id_str:U,view_type:b||w.viewType,view_parameter:F||w.viewParameter,aux_data:l}),R&&(e={storyPinProductEventData:{productPinIdStr:U,pinIdStr:P}}),L({aux_data:{closeup_navigation_type:"click",...l},component:n||w.componentType,element:I,event_data:e,event_type:8948,object_id_str:U,view_type:b||w.viewType,view_parameter:F||w.viewParameter})}};O&&v&&(E=v);let G={pathname:B,state:{board:E}},W=(0,d.Z)({href:O&&E?G:B,externalData:{auxData:H,pin:K&&{advertiserId:K.advertiserId,attributionSourceId:K.attributionSourceId,board:K.board&&{url:K.board.url},campaignId:K.campaignId,entityId:K.entityId,isDownstreamPromotion:K.isDownstreamPromotion,isPromoted:K.isPromoted,pinner:K.pinner&&{username:K.pinner.username},pinPromotionId:K.pinPromotionId,promoter:K.promoter&&{entityId:K.promoter.entityId},storyPinDataId:K.storyPinDataId,trackingParams:K.trackingParams,trackingParamsMap:(0,u.Z)(K)}}});return(0,h.jsx)(i.Tg,{accessibilityLabel:T?void 0:(0,g.Z)(x._('{{ pinTitle }} pin page', 'pinRep.closeupLink.tapArea.accessibilityLabel', 'Accessibility label with pin title on individual links'),{pinTitle:K.gridTitle||K.title||K.description||""}),fullHeight:"fullSize"===e,fullWidth:"fullSize"===e,href:B,mouseCursor:V||Z?void 0:"zoomIn",onTap:({event:e,dangerouslyDisableOnNavigation:l})=>{l(),N(),W({event:e})},rounding:2,children:l})}}}]);
//# sourceMappingURL=https://sm.pinimg.com/webapp/68141-f5e822f95e93970c.mjs.map