define(["utils/utils"],function(){var a=Backbone.Model.extend({initialize:function(a){this.app=a},checksum:function(){var a="",b=this;return this.app.section.$el.find(".section-row").each(function(){var c=$(this).attr("id"),d=b.app.field_list[c];d&&(a+=c+":"+JSON.stringify(d.value&&d.value())+":"+d.collapsed+";")}),a},set:function(a){for(var b in a.attributes){var c=this.match(b);c&&this.app.field_list[c].value(a.get(b))}},create:function(){function a(a,b,c){d.flat_dict[a]=b,f[a]=c,d.app.element_list[b]&&d.app.element_list[b].$el.attr("tour_id",a)}function c(e,f){for(var g in f){var h=f[g];if(h.input){var i=h.input,j=e;switch(""!=e&&(j+="|"),j+=i.name,i.type){case"repeat":var k="section-",l=[],m=null;for(var n in h){var o=n.indexOf(k);-1!=o&&(o+=k.length,l.push(parseInt(n.substr(o))),m||(m=n.substr(0,o)))}l.sort(function(a,b){return a-b});var g=0;for(var p in l)c(j+"_"+g++,h[m+l[p]]);break;case"conditional":var q=d.app.field_list[i.id].value();a(j+"|"+i.test_param.name,i.id,q);var r=b(i,q);-1!=r&&c(j,f[i.id+"-section-"+r]);break;case"section":c(!i.flat&&j||"",h);break;default:var s=d.app.field_list[i.id];if(s&&s.value){var q=s.value();if((void 0===i.ignore||i.ignore!=q)&&(s.collapsed&&i.collapsible_value&&(q=i.collapsible_value),a(j,i.id,q),i.payload))for(var t in i.payload)a(t,i.id,i.payload[t])}}}}}var d=this,e={};this._iterate(this.app.section.$el,e);var f={};return this.flat_dict={},c("",e),f},match:function(a){return this.flat_dict&&this.flat_dict[a]},matchCase:function(a,c){return b(a,c)},matchModel:function(a,b){var d=this;c(a.inputs,function(a,c){d.flat_dict[c]&&b(a,d.flat_dict[c])})},matchResponse:function(a){function b(a,e){if("string"==typeof e){var f=d.flat_dict[a];f&&(c[f]=e)}else for(var g in e){var h=g;if(""!==a){var i="|";e instanceof Array&&(i="_"),h=a+i+h}b(h,e[g])}}var c={},d=this;return b("",a),c},_iterate:function(a,b){var c=this,d=$(a).children();d.each(function(){var a=this,d=$(a).attr("id");if($(a).hasClass("section-row")){var e=c.app.input_list[d];b[d]=e&&{input:e}||{},c._iterate(a,b[d])}else c._iterate(a,b)})}}),b=function(a,b){"boolean"==a.test_param.type&&(b="true"==b?a.test_param.truevalue||"true":a.test_param.falsevalue||"false");for(var c in a.cases)if(a.cases[c].value==b)return c;return-1},c=function(a,d,e,f){f=$.extend(!0,{},f),_.each(a,function(a){a&&a.type&&a.name&&(f[a.name]=a)});for(var g in a){var h=a[g],i=e?e+"|"+h.name:h.name;switch(h.type){case"repeat":_.each(h.cache,function(a,b){c(a,d,i+"_"+b,f)});break;case"conditional":if(h.test_param){d(h.test_param,i+"|"+h.test_param.name,f);var j=b(h,h.test_param.value);-1!=j?c(h.cases[j].inputs,d,i,f):Galaxy.emit.debug("form-data::visitInputs() - Invalid case for "+i+".")}else Galaxy.emit.debug("form-data::visitInputs() - Conditional test parameter missing for "+i+".");break;case"section":c(h.inputs,d,i,f);break;default:d(h,i,f)}}};return{Manager:a,visitInputs:c}});
//# sourceMappingURL=../../../maps/mvc/form/form-data.js.map