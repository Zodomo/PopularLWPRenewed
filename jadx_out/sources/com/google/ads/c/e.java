package com.google.ads.c;

import com.google.ads.e.i;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    public final void a(Map map) throws f {
        String str;
        HashMap map2 = new HashMap();
        for (Field field : getClass().getFields()) {
            g gVar = (g) field.getAnnotation(g.class);
            if (gVar != null) {
                map2.put(gVar.a(), field);
            }
        }
        if (map2.isEmpty()) {
            i.h();
        }
        for (Map.Entry entry : map.entrySet()) {
            Field field2 = (Field) map2.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                } catch (IllegalAccessException e) {
                    String str2 = "Server Option '" + ((String) entry.getKey()) + "' could not be set: Illegal Access";
                    i.c();
                } catch (IllegalArgumentException e2) {
                    String str3 = "Server Option '" + ((String) entry.getKey()) + "' could not be set: Bad Type";
                    i.c();
                }
            } else {
                String str4 = "Unexpected Server Option: " + ((String) entry.getKey()) + " = '" + ((String) entry.getValue()) + "'";
                i.h();
            }
        }
        String str5 = null;
        for (Field field3 : map2.values()) {
            if (((g) field3.getAnnotation(g.class)).b()) {
                String str6 = "Required Server Option missing: " + ((g) field3.getAnnotation(g.class)).a();
                i.c();
                str = (str5 == null ? "" : str5 + ", ") + ((g) field3.getAnnotation(g.class)).a();
            } else {
                str = str5;
            }
            str5 = str;
        }
        if (str5 != null) {
            throw new f("Required Server Option(s) missing: " + str5);
        }
    }
}
