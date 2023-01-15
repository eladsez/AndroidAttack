.class Lnet/youmi/android/bp;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa3

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;Lnet/youmi/android/bm;Lnet/youmi/android/u;)Lnet/youmi/android/ae;
    .locals 9

    const/16 v0, -0x63

    new-instance v1, Lnet/youmi/android/ae;

    invoke-direct {v1}, Lnet/youmi/android/ae;-><init>()V

    invoke-virtual {v1, v0}, Lnet/youmi/android/ae;->a(I)V

    invoke-virtual {v1, p3}, Lnet/youmi/android/ae;->a(Lnet/youmi/android/bm;)V

    const/4 v2, 0x0

    invoke-static {p0}, Lnet/youmi/android/cj;->k(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lnet/youmi/android/au;->b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/youmi/android/q;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    if-eqz p4, :cond_0

    :try_start_1
    invoke-static {}, Lnet/youmi/android/cn;->a()Lnet/youmi/android/cn;

    move-result-object p2

    invoke-virtual {p2}, Lnet/youmi/android/cn;->b()Lnet/youmi/android/af;

    move-result-object p2

    invoke-virtual {p2}, Lnet/youmi/android/af;->a()Lnet/youmi/android/be;

    move-result-object p2

    invoke-virtual {p2, p4}, Lnet/youmi/android/be;->a(Lnet/youmi/android/u;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    :try_start_2
    const-string p2, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lnet/youmi/android/cn;->a()Lnet/youmi/android/cn;

    move-result-object p2

    invoke-virtual {p2}, Lnet/youmi/android/cn;->b()Lnet/youmi/android/af;

    move-result-object p2

    invoke-virtual {p2}, Lnet/youmi/android/af;->a()Lnet/youmi/android/be;

    move-result-object p2

    invoke-virtual {p2, p4}, Lnet/youmi/android/be;->b(Lnet/youmi/android/u;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_14

    :goto_2
    :try_start_4
    invoke-static {p0, p1}, Lnet/youmi/android/bu;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object p0

    if-eqz p4, :cond_1

    :try_start_5
    invoke-static {}, Lnet/youmi/android/cn;->a()Lnet/youmi/android/cn;

    move-result-object p1

    invoke-virtual {p1}, Lnet/youmi/android/cn;->b()Lnet/youmi/android/af;

    move-result-object p1

    invoke-virtual {p1}, Lnet/youmi/android/af;->a()Lnet/youmi/android/be;

    move-result-object p1

    invoke-virtual {p1, p4}, Lnet/youmi/android/be;->c(Lnet/youmi/android/u;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_3
    if-eqz p0, :cond_15

    :try_start_6
    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    new-instance p1, Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONTokener;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string p0, "result"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object p0

    :try_start_7
    const-string p2, "code"

    const/16 v4, -0x63

    invoke-static {p0, p2, v4}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-result p2

    :try_start_8
    const-string p4, "msg"

    invoke-static {p0, p4}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-gez p2, :cond_5

    invoke-static {p0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object p0, v2

    move p1, p2

    :goto_4
    invoke-virtual {v1, p0}, Lnet/youmi/android/ae;->a(Lnet/youmi/android/bl;)V

    invoke-virtual {v1, p1}, Lnet/youmi/android/ae;->a(I)V

    invoke-virtual {v1, p3}, Lnet/youmi/android/ae;->a(Lnet/youmi/android/bm;)V

    invoke-static {v1, p1, p0, v3}, Lnet/youmi/android/bp;->a(Lnet/youmi/android/ae;ILnet/youmi/android/bl;I)Lnet/youmi/android/ae;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception p2

    :try_start_9
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0x8a

    invoke-static {p2, v4}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa2

    invoke-static {p0, p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    const/4 p0, 0x0

    goto :goto_5

    :catch_2
    move-exception p1

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8f

    invoke-static {p1, p2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x90

    invoke-static {p0, p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    if-eqz p4, :cond_3

    :try_start_c
    invoke-interface {p4}, Lnet/youmi/android/u;->a()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :cond_3
    :goto_6
    const/4 p0, 0x0

    :try_start_d
    invoke-static {v1, v0, p0, v3}, Lnet/youmi/android/bp;->a(Lnet/youmi/android/ae;ILnet/youmi/android/bl;I)Lnet/youmi/android/ae;

    move-result-object p0

    goto :goto_5

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x91

    invoke-static {p0, p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_6

    :catch_5
    move-exception p0

    if-eqz p4, :cond_4

    :try_start_e
    invoke-interface {p4}, Lnet/youmi/android/u;->a()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    :cond_4
    :goto_7
    const/4 p0, 0x0

    :try_start_f
    invoke-static {v1, v0, p0, v3}, Lnet/youmi/android/bp;->a(Lnet/youmi/android/ae;ILnet/youmi/android/bl;I)Lnet/youmi/android/ae;

    move-result-object p0

    goto :goto_5

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x93

    invoke-static {p0, p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_7

    :cond_5
    const-string p0, "data"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    :try_start_10
    const-string p4, "data"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13

    move-result-object p0

    :goto_8
    if-eqz p0, :cond_14

    :try_start_11
    new-instance p1, Lnet/youmi/android/bl;

    invoke-direct {p1}, Lnet/youmi/android/bl;-><init>()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    :try_start_12
    const-string p4, "imgurl"

    invoke-static {p0, p4}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lnet/youmi/android/bl;->c(Ljava/lang/String;)V

    const-string p4, "adid"

    const/4 v0, 0x0

    invoke-static {p0, p4, v0}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p4

    invoke-virtual {p1, p4}, Lnet/youmi/android/bl;->a(I)V

    const-string p4, "header"

    invoke-static {p0, p4}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lnet/youmi/android/bl;->a(Ljava/lang/String;)V

    const-string p4, "title"

    invoke-static {p0, p4}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lnet/youmi/android/bl;->b(Ljava/lang/String;)V

    const-string p4, "content"

    invoke-static {p0, p4}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lnet/youmi/android/bl;->d(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    :try_start_13
    const-string p4, "contactways"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_6

    const-string p4, "contactways"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_9
    if-lt v4, v0, :cond_b

    invoke-virtual {p1, v2}, Lnet/youmi/android/bl;->a(Ljava/util/ArrayList;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    :cond_6
    :goto_a
    :try_start_14
    const-string p4, "extracontactways"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "extracontactways"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_7

    new-instance v0, Lnet/youmi/android/ar;

    invoke-direct {v0}, Lnet/youmi/android/ar;-><init>()V

    const-string v2, "email"

    invoke-static {p4, v2}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/youmi/android/ar;->c(Ljava/lang/String;)V

    const-string v2, "fax"

    invoke-static {p4, v2}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/youmi/android/ar;->d(Ljava/lang/String;)V

    const-string v2, "qq"

    invoke-static {p4, v2}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/youmi/android/ar;->b(Ljava/lang/String;)V

    const-string v2, "msn"

    invoke-static {p4, v2}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lnet/youmi/android/ar;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/youmi/android/bl;->a(Lnet/youmi/android/ar;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    :cond_7
    :goto_b
    :try_start_15
    const-string p4, "locations"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_8

    const-string p4, "locations"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_c
    if-lt v4, v0, :cond_d

    invoke-virtual {p1, v2}, Lnet/youmi/android/bl;->c(Ljava/util/ArrayList;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    :cond_8
    :goto_d
    :try_start_16
    const-string p4, "downloads"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_9

    const-string p4, "downloads"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_e
    if-lt v4, v0, :cond_f

    invoke-virtual {p1, v2}, Lnet/youmi/android/bl;->b(Ljava/util/ArrayList;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    :cond_9
    :goto_f
    :try_start_17
    const-string p4, "waps"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_a

    const-string p4, "waps"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    if-eqz p4, :cond_a

    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_10
    if-lt v4, v0, :cond_11

    invoke-virtual {p1, v2}, Lnet/youmi/android/bl;->d(Ljava/util/ArrayList;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_10

    :cond_a
    :goto_11
    :try_start_18
    const-string p4, "search"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_13

    const-string p4, "search"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_13

    new-instance p4, Lnet/youmi/android/ao;

    invoke-direct {p4}, Lnet/youmi/android/ao;-><init>()V

    const-string v0, "logourl"

    invoke-static {p0, v0}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lnet/youmi/android/ao;->b(Ljava/lang/String;)V

    const-string v0, "shid"

    invoke-static {p0, v0}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lnet/youmi/android/ao;->c(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p0, v0}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lnet/youmi/android/ao;->a(Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p0, v0}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lnet/youmi/android/ao;->d(Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p0, v0}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lnet/youmi/android/ao;->e(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lnet/youmi/android/bl;->a(Lnet/youmi/android/ao;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_11

    move-object p0, p1

    move p1, p2

    goto/16 :goto_4

    :cond_b
    :try_start_19
    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    move-result-object v5

    if-eqz v5, :cond_c

    :try_start_1a
    new-instance v6, Lnet/youmi/android/ap;

    invoke-direct {v6}, Lnet/youmi/android/ap;-><init>()V

    const-string v7, "num"

    invoke-static {v5, v7}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/ap;->a(Ljava/lang/String;)V

    const-string v7, "smsdf"

    invoke-static {v5, v7}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/ap;->b(Ljava/lang/String;)V

    const-string v7, "type"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v5}, Lnet/youmi/android/ap;->a(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "num:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lnet/youmi/android/ap;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    :cond_c
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :catch_7
    move-exception v5

    :try_start_1b
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x95

    invoke-static {v5, v6}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8

    goto :goto_12

    :catch_8
    move-exception p4

    :try_start_1c
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x96

    invoke-static {p4, v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    goto/16 :goto_a

    :catch_9
    move-exception p0

    :goto_13
    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p4, 0xa0

    invoke-static {p0, p4}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    move-object p0, p1

    move p1, p2

    goto/16 :goto_4

    :catch_a
    move-exception p4

    :try_start_1e
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x97

    invoke-static {p4, v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    goto/16 :goto_b

    :cond_d
    :try_start_1f
    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c

    move-result-object v5

    if-eqz p1, :cond_e

    :try_start_20
    new-instance v6, Lnet/youmi/android/aw;

    invoke-direct {v6}, Lnet/youmi/android/aw;-><init>()V

    const-string v7, "lcid"

    invoke-static {v5, v7}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/aw;->a(Ljava/lang/String;)V

    const-string v7, "lat"

    invoke-static {v5, v7}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/aw;->b(Ljava/lang/String;)V

    const-string v7, "lon"

    invoke-static {v5, v7}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/aw;->c(Ljava/lang/String;)V

    const-string v7, "title"

    invoke-static {v5, v7}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/aw;->d(Ljava/lang/String;)V

    const-string v7, "url"

    invoke-static {v5, v7}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lnet/youmi/android/aw;->e(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b

    :cond_e
    :goto_14
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    :catch_b
    move-exception v5

    :try_start_21
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x98

    invoke-static {v5, v6}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    goto :goto_14

    :catch_c
    move-exception p4

    :try_start_22
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x99

    invoke-static {p4, v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9

    goto/16 :goto_d

    :cond_f
    :try_start_23
    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e

    move-result-object v5

    if-eqz p1, :cond_10

    :try_start_24
    new-instance v6, Lnet/youmi/android/bq;

    invoke-direct {v6}, Lnet/youmi/android/bq;-><init>()V

    const-string v7, "dlid"

    invoke-static {v5, v7}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/bq;->a(Ljava/lang/String;)V

    const-string v7, "len"

    invoke-static {v5, v7}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/bq;->c(Ljava/lang/String;)V

    const-string v7, "url"

    invoke-static {v5, v7}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/bq;->b(Ljava/lang/String;)V

    const-string v7, "title"

    invoke-static {v5, v7}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lnet/youmi/android/bq;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_d

    :cond_10
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :catch_d
    move-exception v5

    :try_start_25
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9a

    invoke-static {v5, v6}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_e

    goto :goto_15

    :catch_e
    move-exception p4

    :try_start_26
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x9b

    invoke-static {p4, v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_9

    goto/16 :goto_f

    :cond_11
    :try_start_27
    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_10

    move-result-object v5

    if-eqz p1, :cond_12

    :try_start_28
    new-instance v6, Lnet/youmi/android/ci;

    invoke-direct {v6}, Lnet/youmi/android/ci;-><init>()V

    const-string v7, "url"

    invoke-static {v5, v7}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)V

    const-string v7, "title"

    invoke-static {v5, v7}, Lnet/youmi/android/bp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/youmi/android/ci;->b(Ljava/lang/String;)V

    const-string v7, "wapid"

    invoke-static {v5, v7}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lnet/youmi/android/ci;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_f

    :cond_12
    :goto_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    :catch_f
    move-exception v5

    :try_start_29
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9c

    invoke-static {v5, v6}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10

    goto :goto_16

    :catch_10
    move-exception p4

    :try_start_2a
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0x9d

    invoke-static {p4, v0}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto/16 :goto_11

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p4, 0x9e

    invoke-static {p0, p4}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_9

    move-object p0, p1

    move p1, p2

    goto/16 :goto_4

    :catch_12
    move-exception p0

    move-object p1, v2

    goto/16 :goto_13

    :catch_13
    move-exception p1

    goto/16 :goto_8

    :catch_14
    move-exception p2

    goto/16 :goto_2

    :cond_13
    move-object p0, p1

    move p1, p2

    goto/16 :goto_4

    :cond_14
    move-object p0, v2

    move p1, p2

    goto/16 :goto_4

    :cond_15
    move-object p0, v2

    move p1, v0

    goto/16 :goto_4
.end method

.method private static a(Lnet/youmi/android/ae;ILnet/youmi/android/bl;I)Lnet/youmi/android/ae;
    .locals 4

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Lnet/youmi/android/ae;

    invoke-direct {v0}, Lnet/youmi/android/ae;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v0, p1}, Lnet/youmi/android/ae;->a(I)V

    invoke-virtual {v0, p2}, Lnet/youmi/android/ae;->a(Lnet/youmi/android/bl;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad Clicked."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, p0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xaf

    invoke-static {v0, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;II)Lnet/youmi/android/cl;
    .locals 12

    new-instance v8, Lnet/youmi/android/cl;

    invoke-direct {v8}, Lnet/youmi/android/cl;-><init>()V

    const-string v0, ""

    const/4 v1, -0x1

    const/16 v2, -0x63

    invoke-static {p0}, Lnet/youmi/android/cj;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    invoke-static {p0, p1, p2}, Lnet/youmi/android/au;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/youmi/android/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {p0, p1}, Lnet/youmi/android/bu;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    if-eqz p1, :cond_4

    :try_start_2
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string p1, "result"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    :try_start_3
    const-string v2, "msg"

    invoke-static {p1, v2}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object p1

    if-ltz v10, :cond_1

    :try_start_4
    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "img"

    invoke-static {p1, p2}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "adid"

    const/4 v2, -0x1

    invoke-static {p1, p2, v2}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const-string p2, "text"

    invoke-static {p1, p2}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p2, "url"

    invoke-static {p1, p2}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p2, "sd"

    invoke-static {p1, p2}, Lnet/youmi/android/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "type"

    const/4 v6, 0x1

    invoke-static {p1, p2, v6}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object p2

    :try_start_5
    const-string v0, "opentype"

    const/4 v7, 0x1

    invoke-static {p1, v0, v7}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "rqivsec"

    const/4 v11, -0x1

    invoke-static {p1, v0, v11}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {p1}, Lnet/youmi/android/am;->b(I)V

    :cond_0
    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lnet/youmi/android/y;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnet/youmi/android/y;

    move-result-object p1

    invoke-virtual {v8, p1}, Lnet/youmi/android/cl;->a(Lnet/youmi/android/y;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move p1, v10

    move-object v0, p2

    move p2, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad loaded."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    :try_start_6
    invoke-static {}, Lnet/youmi/android/ag;->a()Lnet/youmi/android/ag;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/youmi/android/ag;->b(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_1
    move-object p0, v8

    :goto_2
    return-object p0

    :catch_0
    move-exception p0

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v8, p0}, Lnet/youmi/android/cl;->a(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Ad loaded."

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object p0, v8

    goto :goto_2

    :catch_1
    move-exception p1

    move p2, v1

    :goto_3
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa6

    invoke-static {p1, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move p1, v10

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :try_start_9
    invoke-virtual {v8, p2}, Lnet/youmi/android/cl;->a(Z)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Lnet/youmi/android/ak;->c(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lnet/youmi/android/AdManager;->a:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move p1, v10

    move p2, v1

    goto :goto_0

    :cond_3
    :try_start_a
    const-string p1, "content is empty"

    invoke-static {p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    move p1, v2

    move p2, v1

    goto :goto_0

    :cond_4
    const-string p1, "content is null"

    invoke-static {p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move p1, v2

    move p2, v1

    goto/16 :goto_0

    :catch_2
    move-exception p0

    move p0, v2

    move p1, v1

    move-object p2, v0

    :goto_4
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lnet/youmi/android/cl;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad loaded."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    move-object p0, v8

    goto/16 :goto_2

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa8

    invoke-static {p0, p1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :catch_4
    move-exception p0

    move p0, v10

    move p1, v1

    move-object p2, v0

    goto :goto_4

    :catch_5
    move-exception p0

    move p0, v10

    move p1, p2

    move-object p2, v0

    goto :goto_4

    :catch_6
    move-exception p1

    move-object v0, p2

    move p2, v1

    goto :goto_3
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 6

    const/16 v5, -0x63

    invoke-static {p0}, Lnet/youmi/android/cj;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lnet/youmi/android/au;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, v2}, Lnet/youmi/android/bu;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v2, "result"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    const/16 v4, -0x63

    invoke-static {v2, v3, v4}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad showed."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xb1

    invoke-static {v2, v4}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb2

    invoke-static {v2, v3}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    :cond_1
    move v2, v5

    goto :goto_1
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 4

    invoke-static {p0}, Lnet/youmi/android/cj;->l(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lnet/youmi/android/au;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, v1}, Lnet/youmi/android/bu;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v1, "result"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xaa

    invoke-static {v1, v3}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xab

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    const/16 v4, -0x63

    invoke-static {p0}, Lnet/youmi/android/cj;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "sendStartUpLog5"

    invoke-static {v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    invoke-static/range {p0 .. p5}, Lnet/youmi/android/au;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "sendStartUpLog7"

    invoke-static {v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lnet/youmi/android/bu;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_2
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sendStartUpLog8 end"

    invoke-static {v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v1, "result"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "code"

    const/16 v3, -0x63

    invoke-static {v1, v2, v3}, Lnet/youmi/android/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x1

    move v6, v2

    move v2, v1

    move v1, v6

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start app."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/ak;->d(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xad

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v5

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xae

    invoke-static {v1, v2}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    :cond_0
    move v1, v5

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    move v1, v5

    goto :goto_0
.end method
