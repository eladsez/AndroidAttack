.class final Ljp/beyond/sdk/BeadResponseParser;
.super Ljava/lang/Object;
.source "BeadResponseParser.java"


# static fields
.field private static final ACTION_TYPE_PARAM:Ljava/lang/String; = "action_type"

.field private static final ADID_PARAM:Ljava/lang/String; = "aid"

.field private static final ADS_PARAM:Ljava/lang/String; = "ads"

.field private static final ALT:Ljava/lang/String; = "alt"

.field private static final HEIGHT_PARAM:Ljava/lang/String; = "height"

.field private static final HREF_PARAM:Ljava/lang/String; = "href"

.field private static final ICON_HREF_PARAM:Ljava/lang/String; = "href"

.field private static final ICON_SRC_PARAM:Ljava/lang/String; = "src"

.field private static final ICON_TEXT_PARAM:Ljava/lang/String; = "text"

.field private static final ICON_TITLE_PARAM:Ljava/lang/String; = "title"

.field private static final ICON_TYPE_PARAM:Ljava/lang/String; = "type"

.field private static final IMPID_PARAM:Ljava/lang/String; = "impid"

.field private static final IS_OVERLAY_PARAM:Ljava/lang/String; = "is_overlay"

.field private static final POSITION_PARAM:Ljava/lang/String; = "position"

.field private static final REFRESH_RATE_PARAM:Ljava/lang/String; = "rotation"

.field private static final SRC_PARAM:Ljava/lang/String; = "src"

.field private static final WIDTH_PARAM:Ljava/lang/String; = "width"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Ljp/beyond/sdk/BeadData;
    .locals 13
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "adData":Ljp/beyond/sdk/BeadData;
    if-eqz p0, :cond_0

    const-string v11, ""

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move-object v10, v0

    .line 224
    :goto_0
    return-object v10

    .line 71
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .local v6, "result":Lorg/json/JSONObject;
    new-instance v1, Ljp/beyond/sdk/BeadData;

    invoke-direct {v1}, Ljp/beyond/sdk/BeadData;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .local v1, "adData":Ljp/beyond/sdk/BeadData;
    :try_start_1
    const-string v11, "ads"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 76
    const-string v11, "Bead"

    const-string v12, "Icon AD:"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v7, "results_ads":Lorg/json/JSONObject;
    const-string v11, "ads"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "temp":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 81
    .local v9, "temp_array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v4, v11, :cond_a

    .line 85
    const-string v11, "href"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 86
    const-string v10, "href"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setHref(Ljava/lang/String;)V

    .line 90
    const-string v10, "src"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 91
    const-string v10, "src"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setSrc(Ljava/lang/String;)V

    .line 92
    :cond_2
    const-string v10, "text"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 93
    const-string v10, "text"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setIcon_Text(Ljava/lang/String;)V

    .line 94
    :cond_3
    const-string v10, "title"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 95
    const-string v10, "title"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setIcon_title(Ljava/lang/String;)V

    .line 96
    :cond_4
    const-string v10, "type"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 97
    const-string v10, "type"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setIcon_type(Ljava/lang/String;)V

    .line 99
    :cond_5
    const-string v10, "aid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 100
    const-string v10, "aid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setAid(I)V

    .line 102
    :cond_6
    const-string v10, "action_type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 103
    const-string v10, "action_type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setActionType(Ljava/lang/String;)V

    .line 105
    :cond_7
    const-string v10, "alt"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 106
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setBtnText(Ljava/lang/String;)V

    .line 108
    :cond_8
    const-string v10, "impid"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 109
    const-string v10, "impid"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setIMPID(Ljava/lang/String;)V

    .line 111
    :cond_9
    const-string v10, "0"

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setFrmColor(Ljava/lang/String;)V

    .line 118
    const-string v10, "6"

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setBdrColor(Ljava/lang/String;)V

    .line 119
    const-string v10, "1"

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setBdrEnable(Ljava/lang/String;)V

    .line 120
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setTransitionAnimation(Ljava/lang/String;)V

    move-object v0, v1

    .end local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .end local v4    # "i":I
    .end local v6    # "result":Lorg/json/JSONObject;
    .end local v7    # "results_ads":Lorg/json/JSONObject;
    .end local v8    # "temp":Ljava/lang/String;
    .end local v9    # "temp_array":Lorg/json/JSONArray;
    .restart local v0    # "adData":Ljp/beyond/sdk/BeadData;
    :goto_2
    move-object v10, v0

    .line 224
    goto/16 :goto_0

    .line 82
    .end local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v4    # "i":I
    .restart local v6    # "result":Lorg/json/JSONObject;
    .restart local v7    # "results_ads":Lorg/json/JSONObject;
    .restart local v8    # "temp":Ljava/lang/String;
    .restart local v9    # "temp_array":Lorg/json/JSONArray;
    :cond_a
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    .line 88
    .end local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v0    # "adData":Ljp/beyond/sdk/BeadData;
    goto/16 :goto_0

    .line 124
    .end local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .end local v4    # "i":I
    .end local v7    # "results_ads":Lorg/json/JSONObject;
    .end local v8    # "temp":Ljava/lang/String;
    .end local v9    # "temp_array":Lorg/json/JSONArray;
    .restart local v1    # "adData":Ljp/beyond/sdk/BeadData;
    :cond_c
    const-string v11, "position"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 125
    const-string v11, "Bead"

    const-string v12, "Banner AD:"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v11, "is_overlay"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 127
    const-string v11, "is_overlay"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljp/beyond/sdk/BeadData;->setIsOverlay(Ljava/lang/String;)V

    .line 128
    :cond_d
    const-string v11, "rotation"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 129
    const-string v11, "rotation"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljp/beyond/sdk/BeadData;->setRefresh_rate(Ljava/lang/String;)V

    .line 130
    :cond_e
    const-string v11, "position"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 131
    const-string v11, "position"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljp/beyond/sdk/BeadData;->setPosition(Ljava/lang/String;)V

    .line 138
    :cond_f
    :goto_3
    const-string v11, "href"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 139
    const-string v10, "href"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setHref(Ljava/lang/String;)V

    .line 143
    const-string v10, "width"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 144
    const-string v10, "width"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setSrc(Ljava/lang/String;)V

    .line 145
    :cond_10
    const-string v10, "height"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 146
    const-string v10, "height"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setSrc(Ljava/lang/String;)V

    .line 147
    :cond_11
    const-string v10, "src"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 148
    const-string v10, "src"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setSrc(Ljava/lang/String;)V

    .line 149
    :cond_12
    const-string v10, "aid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 150
    const-string v10, "aid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setAid(I)V

    .line 151
    :cond_13
    const-string v10, "action_type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 152
    const-string v10, "action_type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setActionType(Ljava/lang/String;)V

    .line 154
    :cond_14
    const-string v10, "impid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 155
    const-string v10, "impid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setIMPID(Ljava/lang/String;)V

    .line 157
    :cond_15
    const-string v10, "alt"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 159
    const-string v10, "alt"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "alt":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljp/beyond/sdk/BeadData;->setAlt(Ljava/lang/String;)V

    .line 194
    const-string v10, "&"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "items":[Ljava/lang/String;
    array-length v10, v5

    const/4 v11, 0x6

    if-ne v10, v11, :cond_19

    .line 196
    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setBtnText(Ljava/lang/String;)V

    .line 197
    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setFrmColor(Ljava/lang/String;)V

    .line 198
    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setBdrColor(Ljava/lang/String;)V

    .line 199
    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setBdrEnable(Ljava/lang/String;)V

    .line 200
    const/4 v10, 0x5

    aget-object v10, v5, v10

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setTransitionAnimation(Ljava/lang/String;)V

    .line 201
    const-string v10, "BEAD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljp/beyond/sdk/BeadData;->getBtnText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 202
    invoke-virtual {v1}, Ljp/beyond/sdk/BeadData;->getFrmColor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 203
    invoke-virtual {v1}, Ljp/beyond/sdk/BeadData;->getBdrColor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 204
    invoke-virtual {v1}, Ljp/beyond/sdk/BeadData;->getBdrEnable()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 205
    invoke-virtual {v1}, Ljp/beyond/sdk/BeadData;->getTransitionAnimation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 201
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 210
    .end local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v0    # "adData":Ljp/beyond/sdk/BeadData;
    goto/16 :goto_2

    .line 134
    .end local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .end local v2    # "alt":Ljava/lang/String;
    .end local v5    # "items":[Ljava/lang/String;
    .restart local v1    # "adData":Ljp/beyond/sdk/BeadData;
    :cond_16
    const-string v11, "Bead"

    const-string v12, "Normal AD:"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 219
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 220
    .end local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .end local v6    # "result":Lorg/json/JSONObject;
    .restart local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .local v3, "e":Lorg/json/JSONException;
    :goto_4
    const-string v10, "Bead"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Parser Error :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, 0x0

    goto/16 :goto_2

    .end local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v6    # "result":Lorg/json/JSONObject;
    :cond_17
    move-object v0, v1

    .line 141
    .end local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v0    # "adData":Ljp/beyond/sdk/BeadData;
    goto/16 :goto_0

    .line 211
    .end local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v1    # "adData":Ljp/beyond/sdk/BeadData;
    :cond_18
    :try_start_2
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setBtnText(Ljava/lang/String;)V

    .line 212
    const-string v10, "0"

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setFrmColor(Ljava/lang/String;)V

    .line 213
    const-string v10, "6"

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setBdrColor(Ljava/lang/String;)V

    .line 214
    const-string v10, "1"

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setBdrEnable(Ljava/lang/String;)V

    .line 215
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljp/beyond/sdk/BeadData;->setTransitionAnimation(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 219
    .end local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v0    # "adData":Ljp/beyond/sdk/BeadData;
    goto/16 :goto_2

    .end local v6    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    goto :goto_4

    .end local v0    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v2    # "alt":Ljava/lang/String;
    .restart local v5    # "items":[Ljava/lang/String;
    .restart local v6    # "result":Lorg/json/JSONObject;
    :cond_19
    move-object v0, v1

    .end local v1    # "adData":Ljp/beyond/sdk/BeadData;
    .restart local v0    # "adData":Ljp/beyond/sdk/BeadData;
    goto/16 :goto_2
.end method
