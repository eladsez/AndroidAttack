.class public Lorg/apache/cordova/contacts/ContactAccessorSdk5;
.super Lorg/apache/cordova/contacts/ContactAccessor;
.source "ContactAccessorSdk5.java"


# static fields
.field private static final EMAIL_REGEXP:Ljava/lang/String; = ".+@.+\\.+.+"

.field private static final MAX_PHOTO_SIZE:J = 0x100000L

.field private static final dbMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    .line 88
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "displayName"

    const-string v2, "display_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.formatted"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.familyName"

    const-string v2, "data3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.givenName"

    const-string v2, "data2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.middleName"

    const-string v2, "data5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.honorificPrefix"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "name.honorificSuffix"

    const-string v2, "data6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "nickname"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "phoneNumbers.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "emails"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "emails.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.formatted"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.streetAddress"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.locality"

    const-string v2, "data7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.region"

    const-string v2, "data8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.postalCode"

    const-string v2, "data9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "addresses.country"

    const-string v2, "data10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "ims"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "ims.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.name"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.department"

    const-string v2, "data5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "organizations.title"

    const-string v2, "data4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "birthday"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "note"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "photos.value"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "urls"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v1, "urls.value"

    const-string v2, "data1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaInterface;)V
    .locals 0
    .param p1, "context"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/apache/cordova/contacts/ContactAccessor;-><init>()V

    .line 127
    iput-object p1, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    .line 128
    return-void
.end method

.method private addressQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 751
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 753
    .local v0, "address":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 755
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getAddressType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    const-string v2, "formatted"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 757
    const-string v2, "streetAddress"

    const-string v3, "data4"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    const-string v2, "locality"

    const-string v3, "data7"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    const-string v2, "region"

    const-string v3, "data8"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    const-string v2, "postalCode"

    const-string v3, "data9"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    const-string v2, "country"

    const-string v3, "data10"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_0
    return-object v0

    .line 762
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private buildIdClause(Ljava/util/Set;Ljava/lang/String;)Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    .locals 5
    .param p2, "searchTerm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;

    invoke-direct {v2, p0}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;-><init>(Lorg/apache/cordova/contacts/ContactAccessor;)V

    .line 466
    .local v2, "options":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    const-string v3, "%"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    const-string v3, "(contact_id LIKE ? )"

    invoke-virtual {v2, v3}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 468
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    .line 487
    :goto_0
    return-object v2

    .line 473
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 474
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "("

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 482
    :cond_2
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 485
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildWhereClause(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    .locals 13
    .param p1, "fields"    # Lorg/json/JSONArray;
    .param p2, "searchTerm"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 542
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v6, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v7, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;

    invoke-direct {v3, p0}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;-><init>(Lorg/apache/cordova/contacts/ContactAccessor;)V

    .line 550
    .local v3, "options":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    invoke-direct {p0, p1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isWildCardSearch(Lorg/json/JSONArray;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 552
    const-string v8, "%"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 553
    const-string v8, "(display_name LIKE ? )"

    invoke-virtual {v3, v8}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 554
    new-array v8, v11, [Ljava/lang/String;

    aput-object p2, v8, v12

    invoke-virtual {v3, v8}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    .line 702
    :goto_0
    return-object v3

    .line 558
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "displayName"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "name"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "nickname"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "phoneNumbers"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "emails"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "addresses"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "ims"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    const-string v8, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "organizations"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "note"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    const-string v8, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    const-string v10, "urls"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_1
    const-string v8, "%"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 603
    const-string v8, "(display_name LIKE ? )"

    invoke-virtual {v3, v8}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 604
    new-array v8, v11, [Ljava/lang/String;

    aput-object p2, v8, v12

    invoke-virtual {v3, v8}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 611
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 612
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "key":Ljava/lang/String;
    const-string v8, "id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 615
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    const/4 v8, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 618
    :cond_4
    const-string v8, "displayName"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 619
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 681
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 687
    .local v4, "selection":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_10

    .line 688
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v1, v8, :cond_6

    .line 690
    const-string v8, " OR "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 622
    .end local v4    # "selection":Ljava/lang/StringBuffer;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v8, "name"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 623
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 628
    :cond_8
    const-string v8, "nickname"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 629
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 634
    :cond_9
    const-string v8, "phoneNumbers"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 635
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 640
    :cond_a
    const-string v8, "emails"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 641
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 646
    :cond_b
    const-string v8, "addresses"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 647
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 652
    :cond_c
    const-string v8, "ims"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 653
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    const-string v8, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 658
    :cond_d
    const-string v8, "organizations"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 659
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 668
    :cond_e
    const-string v8, "note"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 669
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    const-string v8, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 674
    :cond_f
    const-string v8, "urls"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 675
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->dbMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 693
    .end local v2    # "key":Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/StringBuffer;
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhere(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 697
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_11

    .line 698
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v1

    .line 697
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 700
    :cond_11
    invoke-virtual {v3, v5}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->setWhereArgs([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private createNewContact(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1605
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1608
    .local v18, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v27, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "account_type"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "account_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    :try_start_0
    const-string v27, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1616
    .local v14, "name":Lorg/json/JSONObject;
    const-string v27, "displayName"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1617
    .local v7, "displayName":Ljava/lang/String;
    if-nez v7, :cond_0

    if-eqz v14, :cond_1

    .line 1618
    :cond_0
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/name"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data3"

    const-string v29, "familyName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data5"

    const-string v29, "middleName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data2"

    const-string v29, "givenName"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data4"

    const-string v29, "honorificPrefix"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data6"

    const-string v29, "honorificSuffix"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v14    # "name":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    const/16 v22, 0x0

    .line 1636
    .local v22, "phones":Lorg/json/JSONArray;
    :try_start_1
    const-string v27, "phoneNumbers"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 1637
    if-eqz v22, :cond_2

    .line 1638
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_2

    .line 1639
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/json/JSONObject;

    .line 1640
    .local v21, "phone":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertPhone(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1638
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1629
    .end local v11    # "i":I
    .end local v21    # "phone":Lorg/json/JSONObject;
    .end local v22    # "phones":Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 1630
    .local v8, "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get name object"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1643
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v22    # "phones":Lorg/json/JSONArray;
    :catch_1
    move-exception v8

    .line 1644
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get phone numbers"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_2
    const/4 v10, 0x0

    .line 1650
    .local v10, "emails":Lorg/json/JSONArray;
    :try_start_2
    const-string v27, "emails"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1651
    if-eqz v10, :cond_3

    .line 1652
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_3

    .line 1653
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 1654
    .local v9, "email":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertEmail(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1652
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1657
    .end local v9    # "email":Lorg/json/JSONObject;
    .end local v11    # "i":I
    :catch_2
    move-exception v8

    .line 1658
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get emails"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_3
    const/4 v4, 0x0

    .line 1664
    .local v4, "addresses":Lorg/json/JSONArray;
    :try_start_3
    const-string v27, "addresses"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1665
    if-eqz v4, :cond_4

    .line 1666
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_4

    .line 1667
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1668
    .local v3, "address":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertAddress(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1666
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1671
    .end local v3    # "address":Lorg/json/JSONObject;
    .end local v11    # "i":I
    :catch_3
    move-exception v8

    .line 1672
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get addresses"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_4
    const/16 v20, 0x0

    .line 1678
    .local v20, "organizations":Lorg/json/JSONArray;
    :try_start_4
    const-string v27, "organizations"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 1679
    if-eqz v20, :cond_5

    .line 1680
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_5

    .line 1681
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 1682
    .local v19, "org":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertOrganization(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1680
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1685
    .end local v11    # "i":I
    .end local v19    # "org":Lorg/json/JSONObject;
    :catch_4
    move-exception v8

    .line 1686
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get organizations"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_5
    const/4 v13, 0x0

    .line 1692
    .local v13, "ims":Lorg/json/JSONArray;
    :try_start_5
    const-string v27, "ims"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 1693
    if-eqz v13, :cond_6

    .line 1694
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_6

    .line 1695
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 1696
    .local v12, "im":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertIm(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1694
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1699
    .end local v11    # "i":I
    .end local v12    # "im":Lorg/json/JSONObject;
    :catch_5
    move-exception v8

    .line 1700
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get emails"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_6
    const-string v27, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1705
    .local v17, "note":Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 1706
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/note"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    :cond_7
    const-string v27, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1715
    .local v16, "nickname":Ljava/lang/String;
    if-eqz v16, :cond_8

    .line 1716
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/nickname"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    :cond_8
    const/16 v26, 0x0

    .line 1726
    .local v26, "websites":Lorg/json/JSONArray;
    :try_start_6
    const-string v27, "urls"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    .line 1727
    if-eqz v26, :cond_9

    .line 1728
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_9

    .line 1729
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/json/JSONObject;

    .line 1730
    .local v25, "website":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertWebsite(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1728
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1733
    .end local v11    # "i":I
    .end local v25    # "website":Lorg/json/JSONObject;
    :catch_6
    move-exception v8

    .line 1734
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get websites"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_9
    const-string v27, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1739
    .local v5, "birthday":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 1740
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "raw_contact_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "mimetype"

    const-string v29, "vnd.android.cursor.item/contact_event"

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data2"

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    const-string v28, "data1"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    :cond_a
    const/16 v24, 0x0

    .line 1751
    .local v24, "photos":Lorg/json/JSONArray;
    :try_start_7
    const-string v27, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 1752
    if-eqz v24, :cond_b

    .line 1753
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_b

    .line 1754
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/json/JSONObject;

    .line 1755
    .local v23, "photo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->insertPhoto(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1753
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1758
    .end local v11    # "i":I
    .end local v23    # "photo":Lorg/json/JSONObject;
    :catch_7
    move-exception v8

    .line 1759
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v27, "ContactsAccessor"

    const-string v28, "Could not get photos"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_b
    const/4 v15, 0x0

    .line 1765
    .local v15, "newId":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "com.android.contacts"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 1766
    .local v6, "cpResults":[Landroid/content/ContentProviderResult;
    array-length v0, v6

    move/from16 v27, v0

    if-ltz v27, :cond_c

    .line 1767
    const/16 v27, 0x0

    aget-object v27, v6, v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_9

    move-result-object v15

    .line 1774
    .end local v6    # "cpResults":[Landroid/content/ContentProviderResult;
    :cond_c
    :goto_8
    return-object v15

    .line 1769
    :catch_8
    move-exception v8

    .line 1770
    .local v8, "e":Landroid/os/RemoteException;
    const-string v27, "ContactsAccessor"

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1771
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v8

    .line 1772
    .local v8, "e":Landroid/content/OperationApplicationException;
    const-string v27, "ContactsAccessor"

    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private emailQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 838
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 840
    .local v1, "email":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 841
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 842
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 843
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-object v1

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getAddressType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2062
    const/4 v0, 0x3

    .line 2063
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2064
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2065
    const/4 v0, 0x2

    .line 2074
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 2067
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2068
    const/4 v0, 0x3

    goto :goto_0

    .line 2070
    :cond_2
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2071
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAddressType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2084
    packed-switch p1, :pswitch_data_0

    .line 2093
    const-string v0, "other"

    .line 2096
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2086
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "home"

    .line 2087
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2089
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "work"

    .line 2090
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2084
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getContactType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1964
    const/4 v0, 0x3

    .line 1965
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 1966
    const-string v1, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1967
    const/4 v0, 0x1

    .line 1982
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 1969
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1970
    const/4 v0, 0x2

    goto :goto_0

    .line 1972
    :cond_2
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1973
    const/4 v0, 0x3

    goto :goto_0

    .line 1975
    :cond_3
    const-string v1, "mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1976
    const/4 v0, 0x4

    goto :goto_0

    .line 1978
    :cond_4
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1979
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContactType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1992
    packed-switch p1, :pswitch_data_0

    .line 2007
    :pswitch_0
    const-string v0, "other"

    .line 2010
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1994
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "custom"

    .line 1995
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1997
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "home"

    .line 1998
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2000
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "work"

    .line 2001
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2003
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "mobile"

    .line 2004
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1992
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getImType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2105
    const/4 v0, -0x1

    .line 2106
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2107
    const-string v1, "aim"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2108
    const/4 v0, 0x0

    .line 2135
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 2110
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "google talk"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2111
    const/4 v0, 0x5

    goto :goto_0

    .line 2113
    :cond_2
    const-string v1, "icq"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2114
    const/4 v0, 0x6

    goto :goto_0

    .line 2116
    :cond_3
    const-string v1, "jabber"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2117
    const/4 v0, 0x7

    goto :goto_0

    .line 2119
    :cond_4
    const-string v1, "msn"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2120
    const/4 v0, 0x1

    goto :goto_0

    .line 2122
    :cond_5
    const-string v1, "netmeeting"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2123
    const/16 v0, 0x8

    goto :goto_0

    .line 2125
    :cond_6
    const-string v1, "qq"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2126
    const/4 v0, 0x4

    goto :goto_0

    .line 2128
    :cond_7
    const-string v1, "skype"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2129
    const/4 v0, 0x3

    goto :goto_0

    .line 2131
    :cond_8
    const-string v1, "yahoo"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2132
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getImType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2146
    packed-switch p1, :pswitch_data_0

    .line 2175
    const-string v0, "custom"

    .line 2178
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2148
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "AIM"

    .line 2149
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2151
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Google Talk"

    .line 2152
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2154
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "ICQ"

    .line 2155
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2157
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "Jabber"

    .line 2158
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2160
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "MSN"

    .line 2161
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2163
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "NetMeeting"

    .line 2164
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2166
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "QQ"

    .line 2167
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2169
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "Skype"

    .line 2170
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2172
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "Yahoo"

    .line 2173
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private getOrgType(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2019
    const/4 v0, 0x2

    .line 2020
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2021
    const-string v1, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2022
    const/4 v0, 0x1

    .line 2031
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 2024
    .restart local v0    # "type":I
    :cond_1
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2025
    const/4 v0, 0x2

    goto :goto_0

    .line 2027
    :cond_2
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2028
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrgType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2041
    packed-switch p1, :pswitch_data_0

    .line 2050
    const-string v0, "other"

    .line 2053
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2043
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "custom"

    .line 2044
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2046
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "work"

    .line 2047
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 2041
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1584
    const-string v2, "content:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1585
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1586
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1593
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 1588
    :cond_0
    const-string v2, "http:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "file:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1589
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1590
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 1593
    .end local v1    # "url":Ljava/net/URL;
    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPhoneType(Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 1813
    const/4 v0, 0x7

    .line 1814
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 1815
    const-string v2, "home"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1816
    const/4 v0, 0x1

    .line 1882
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v0

    .line 1818
    .restart local v0    # "type":I
    :cond_1
    const-string v2, "mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1819
    const/4 v0, 0x2

    goto :goto_0

    .line 1821
    :cond_2
    const-string v2, "work"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1822
    const/4 v0, 0x3

    goto :goto_0

    .line 1824
    :cond_3
    const-string v2, "work fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1825
    goto :goto_0

    .line 1827
    :cond_4
    const-string v2, "home fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1828
    const/4 v0, 0x5

    goto :goto_0

    .line 1830
    :cond_5
    const-string v2, "fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 1831
    goto :goto_0

    .line 1833
    :cond_6
    const-string v1, "pager"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1834
    const/4 v0, 0x6

    goto :goto_0

    .line 1836
    :cond_7
    const-string v1, "other"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1837
    const/4 v0, 0x7

    goto :goto_0

    .line 1839
    :cond_8
    const-string v1, "car"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1840
    const/16 v0, 0x9

    goto :goto_0

    .line 1842
    :cond_9
    const-string v1, "company main"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1843
    const/16 v0, 0xa

    goto :goto_0

    .line 1845
    :cond_a
    const-string v1, "isdn"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1846
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 1848
    :cond_b
    const-string v1, "main"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1849
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 1851
    :cond_c
    const-string v1, "other fax"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1852
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1854
    :cond_d
    const-string v1, "radio"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1855
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1857
    :cond_e
    const-string v1, "telex"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1858
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 1860
    :cond_f
    const-string v1, "work mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1861
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 1863
    :cond_10
    const-string v1, "work pager"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1864
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 1866
    :cond_11
    const-string v1, "assistant"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1867
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 1869
    :cond_12
    const-string v1, "mms"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1870
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 1872
    :cond_13
    const-string v1, "callback"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1873
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 1875
    :cond_14
    const-string v1, "tty ttd"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1876
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 1878
    :cond_15
    const-string v1, "custom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1879
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getPhoneType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1892
    packed-switch p1, :pswitch_data_0

    .line 1952
    :pswitch_0
    const-string v0, "other"

    .line 1955
    .local v0, "stringType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1894
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "custom"

    .line 1895
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1897
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "home fax"

    .line 1898
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1900
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "work fax"

    .line 1901
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1903
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "home"

    .line 1904
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1906
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "mobile"

    .line 1907
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1909
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "pager"

    .line 1910
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1912
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "work"

    .line 1913
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1915
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "callback"

    .line 1916
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1918
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_9
    const-string v0, "car"

    .line 1919
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1921
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_a
    const-string v0, "company main"

    .line 1922
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1924
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_b
    const-string v0, "other fax"

    .line 1925
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1927
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_c
    const-string v0, "radio"

    .line 1928
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1930
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_d
    const-string v0, "telex"

    .line 1931
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1933
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_e
    const-string v0, "tty tdd"

    .line 1934
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1936
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_f
    const-string v0, "work mobile"

    .line 1937
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1939
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_10
    const-string v0, "work pager"

    .line 1940
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1942
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_11
    const-string v0, "assistant"

    .line 1943
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1945
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_12
    const-string v0, "mms"

    .line 1946
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1948
    .end local v0    # "stringType":Ljava/lang/String;
    :pswitch_13
    const-string v0, "isdn"

    .line 1949
    .restart local v0    # "stringType":Ljava/lang/String;
    goto :goto_0

    .line 1892
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_13
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getPhotoBytes(Ljava/lang/String;)[B
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1554
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1556
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1557
    .local v1, "bytesRead":I
    const-wide/16 v5, 0x0

    .line 1558
    .local v5, "totalBytesRead":J
    const/16 v7, 0x2000

    :try_start_0
    new-array v2, v7, [B

    .line 1559
    .local v2, "data":[B
    invoke-direct {p0, p1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1561
    .local v4, "in":Ljava/io/InputStream;
    :goto_0
    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {v4, v2, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    const-wide/32 v7, 0x100000

    cmp-long v7, v5, v7

    if-gtz v7, :cond_0

    .line 1562
    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1563
    int-to-long v7, v1

    add-long/2addr v5, v7

    goto :goto_0

    .line 1566
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1567
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1573
    .end local v2    # "data":[B
    .end local v4    # "in":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 1568
    :catch_0
    move-exception v3

    .line 1569
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v7, "ContactsAccessor"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1570
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 1571
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "ContactsAccessor"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private imQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 856
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 858
    .local v1, "im":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 860
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 861
    const-string v2, "type"

    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getImType(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    return-object v1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private insertAddress(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "address"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getAddressType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "formatted"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data4"

    const-string v2, "streetAddress"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data7"

    const-string v2, "locality"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data8"

    const-string v2, "region"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data9"

    const-string v2, "postalCode"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data10"

    const-string v2, "country"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    return-void
.end method

.method private insertEmail(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "email"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1505
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    return-void
.end method

.method private insertIm(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "im"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1450
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getImType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    return-void
.end method

.method private insertOrganization(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "org"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1466
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getOrgType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data5"

    const-string v2, "department"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "name"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data4"

    const-string v2, "title"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    return-void
.end method

.method private insertPhone(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "phone"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1521
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    return-void
.end method

.method private insertPhoto(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 4
    .param p2, "photo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1537
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v1, "value"

    invoke-virtual {p0, p2, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhotoBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1538
    .local v0, "bytes":[B
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "is_super_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data15"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    return-void
.end method

.method private insertWebsite(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "website"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1435
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "value"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "type"

    invoke-virtual {p0, p2, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1441
    return-void
.end method

.method private isWildCardSearch(Lorg/json/JSONArray;)Z
    .locals 5
    .param p1, "fields"    # Lorg/json/JSONArray;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 713
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 715
    :try_start_0
    const-string v3, "*"

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    :goto_0
    return v1

    .line 718
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move v1, v2

    .line 719
    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    move v1, v2

    .line 722
    goto :goto_0
.end method

.method private modifyContact(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 50
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "contact"    # Lorg/json/JSONObject;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountName"    # Ljava/lang/String;

    .prologue
    .line 971
    new-instance v44, Ljava/lang/Integer;

    const-string v45, "rawId"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 974
    .local v39, "rawId":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v29, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v44, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "account_type"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "account_name"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    :try_start_0
    const-string v44, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 986
    .local v10, "displayName":Ljava/lang/String;
    const-string v44, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 987
    .local v26, "name":Lorg/json/JSONObject;
    if-nez v10, :cond_0

    if-eqz v26, :cond_7

    .line 988
    :cond_0
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "contact_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object p1, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/name"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 993
    .local v7, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v10, :cond_1

    .line 994
    const-string v44, "data1"

    move-object/from16 v0, v44

    invoke-virtual {v7, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 997
    :cond_1
    const-string v44, "familyName"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 998
    .local v17, "familyName":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 999
    const-string v44, "data3"

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1001
    :cond_2
    const-string v44, "middleName"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1002
    .local v25, "middleName":Ljava/lang/String;
    if-eqz v25, :cond_3

    .line 1003
    const-string v44, "data5"

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1005
    :cond_3
    const-string v44, "givenName"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1006
    .local v18, "givenName":Ljava/lang/String;
    if-eqz v18, :cond_4

    .line 1007
    const-string v44, "data2"

    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1009
    :cond_4
    const-string v44, "honorificPrefix"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1010
    .local v19, "honorificPrefix":Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 1011
    const-string v44, "data4"

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1013
    :cond_5
    const-string v44, "honorificSuffix"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1014
    .local v20, "honorificSuffix":Ljava/lang/String;
    if-eqz v20, :cond_6

    .line 1015
    const-string v44, "data6"

    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1018
    :cond_6
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    .end local v7    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v10    # "displayName":Ljava/lang/String;
    .end local v17    # "familyName":Ljava/lang/String;
    .end local v18    # "givenName":Ljava/lang/String;
    .end local v19    # "honorificPrefix":Ljava/lang/String;
    .end local v20    # "honorificSuffix":Ljava/lang/String;
    .end local v25    # "middleName":Ljava/lang/String;
    .end local v26    # "name":Lorg/json/JSONObject;
    :cond_7
    :goto_0
    const/16 v35, 0x0

    .line 1027
    .local v35, "phones":Lorg/json/JSONArray;
    :try_start_1
    const-string v44, "phoneNumbers"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 1028
    if-eqz v35, :cond_8

    .line 1030
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_11

    .line 1031
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "raw_contact_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/phone_v2"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1071
    :cond_8
    :goto_1
    const/16 v16, 0x0

    .line 1073
    .local v16, "emails":Lorg/json/JSONArray;
    :try_start_2
    const-string v44, "emails"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 1074
    if-eqz v16, :cond_9

    .line 1076
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_13

    .line 1077
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "raw_contact_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/email_v2"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1126
    :cond_9
    :goto_2
    const/4 v5, 0x0

    .line 1128
    .local v5, "addresses":Lorg/json/JSONArray;
    :try_start_3
    const-string v44, "addresses"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1129
    if-eqz v5, :cond_a

    .line 1131
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_16

    .line 1132
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "raw_contact_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/postal-address_v2"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1182
    :cond_a
    :goto_3
    const/16 v32, 0x0

    .line 1184
    .local v32, "organizations":Lorg/json/JSONArray;
    :try_start_4
    const-string v44, "organizations"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 1185
    if-eqz v32, :cond_b

    .line 1187
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_18

    .line 1188
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "raw_contact_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/organization"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1232
    :cond_b
    :goto_4
    const/16 v24, 0x0

    .line 1234
    .local v24, "ims":Lorg/json/JSONArray;
    :try_start_5
    const-string v44, "ims"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 1235
    if-eqz v24, :cond_c

    .line 1237
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_1a

    .line 1238
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "raw_contact_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/im"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1278
    :cond_c
    :goto_5
    const-string v44, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1279
    .local v28, "note":Ljava/lang/String;
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "contact_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object p1, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/note"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data1"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    const-string v44, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1288
    .local v27, "nickname":Ljava/lang/String;
    if-eqz v27, :cond_d

    .line 1289
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "contact_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object p1, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/nickname"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data1"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_d
    const/16 v43, 0x0

    .line 1300
    .local v43, "websites":Lorg/json/JSONArray;
    :try_start_6
    const-string v44, "urls"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v43

    .line 1301
    if-eqz v43, :cond_e

    .line 1303
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_1c

    .line 1304
    const-string v44, "ContactsAccessor"

    const-string v45, "This means we should be deleting all the phone numbers."

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "raw_contact_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/website"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1345
    :cond_e
    :goto_6
    const-string v44, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1346
    .local v6, "birthday":Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 1347
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "contact_id=? AND mimetype=? AND data2=?"

    const/16 v46, 0x3

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object p1, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/contact_event"

    aput-object v48, v46, v47

    const/16 v47, 0x2

    new-instance v48, Ljava/lang/String;

    const-string v49, "3"

    invoke-direct/range {v48 .. v49}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data2"

    const/16 v46, 0x3

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data1"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    :cond_f
    const/16 v38, 0x0

    .line 1360
    .local v38, "photos":Lorg/json/JSONArray;
    :try_start_7
    const-string v44, "photos"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v38

    .line 1361
    if-eqz v38, :cond_10

    .line 1363
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v44

    if-nez v44, :cond_1e

    .line 1364
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "raw_contact_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/photo"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1404
    :cond_10
    :goto_7
    const/16 v40, 0x1

    .line 1408
    .local v40, "retVal":Z
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "com.android.contacts"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_9

    .line 1420
    :goto_8
    if-eqz v40, :cond_20

    .line 1423
    .end local p1    # "id":Ljava/lang/String;
    :goto_9
    return-object p1

    .line 1020
    .end local v5    # "addresses":Lorg/json/JSONArray;
    .end local v6    # "birthday":Ljava/lang/String;
    .end local v16    # "emails":Lorg/json/JSONArray;
    .end local v24    # "ims":Lorg/json/JSONArray;
    .end local v27    # "nickname":Ljava/lang/String;
    .end local v28    # "note":Ljava/lang/String;
    .end local v32    # "organizations":Lorg/json/JSONArray;
    .end local v35    # "phones":Lorg/json/JSONArray;
    .end local v38    # "photos":Lorg/json/JSONArray;
    .end local v40    # "retVal":Z
    .end local v43    # "websites":Lorg/json/JSONArray;
    .restart local p1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1021
    .local v12, "e1":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get name"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1039
    .end local v12    # "e1":Lorg/json/JSONException;
    .restart local v35    # "phones":Lorg/json/JSONArray;
    :cond_11
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_a
    :try_start_9
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_8

    .line 1040
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/json/JSONObject;

    .line 1041
    .local v33, "phone":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1043
    .local v34, "phoneId":Ljava/lang/String;
    if-nez v34, :cond_12

    .line 1044
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1045
    .local v9, "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1046
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1050
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_a

    .line 1055
    :cond_12
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v34, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/phone_v2"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data1"

    const-string v46, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhoneType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_b

    .line 1066
    .end local v21    # "i":I
    .end local v33    # "phone":Lorg/json/JSONObject;
    .end local v34    # "phoneId":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1067
    .local v11, "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get phone numbers"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1085
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v16    # "emails":Lorg/json/JSONArray;
    :cond_13
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_c
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_9

    .line 1086
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 1087
    .local v13, "email":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1089
    .local v14, "emailId":Ljava/lang/String;
    if-nez v14, :cond_14

    .line 1090
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1091
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1092
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1096
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_d
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_c

    .line 1101
    :cond_14
    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1102
    .local v15, "emailValue":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v44

    if-nez v44, :cond_15

    .line 1103
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v14, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/email_v2"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data1"

    const-string v46, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v13, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_d

    .line 1121
    .end local v13    # "email":Lorg/json/JSONObject;
    .end local v14    # "emailId":Ljava/lang/String;
    .end local v15    # "emailValue":Ljava/lang/String;
    .end local v21    # "i":I
    :catch_2
    move-exception v11

    .line 1122
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get emails"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1111
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v13    # "email":Lorg/json/JSONObject;
    .restart local v14    # "emailId":Ljava/lang/String;
    .restart local v15    # "emailValue":Ljava/lang/String;
    .restart local v21    # "i":I
    :cond_15
    :try_start_b
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v14, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/email_v2"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_d

    .line 1140
    .end local v13    # "email":Lorg/json/JSONObject;
    .end local v14    # "emailId":Ljava/lang/String;
    .end local v15    # "emailValue":Ljava/lang/String;
    .end local v21    # "i":I
    .restart local v5    # "addresses":Lorg/json/JSONArray;
    :cond_16
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_e
    :try_start_c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_a

    .line 1141
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1142
    .local v3, "address":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, "addressId":Ljava/lang/String;
    if-nez v4, :cond_17

    .line 1145
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1146
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1147
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getAddressType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1149
    const-string v44, "data1"

    const-string v45, "formatted"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v44, "data4"

    const-string v45, "streetAddress"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v44, "data7"

    const-string v45, "locality"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const-string v44, "data8"

    const-string v45, "region"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const-string v44, "data9"

    const-string v45, "postalCode"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string v44, "data10"

    const-string v45, "country"

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_f
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_e

    .line 1161
    :cond_17
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v4, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/postal-address_v2"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getAddressType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data1"

    const-string v46, "formatted"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data4"

    const-string v46, "streetAddress"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data7"

    const-string v46, "locality"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data8"

    const-string v46, "region"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data9"

    const-string v46, "postalCode"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data10"

    const-string v46, "country"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_f

    .line 1177
    .end local v3    # "address":Lorg/json/JSONObject;
    .end local v4    # "addressId":Ljava/lang/String;
    .end local v21    # "i":I
    :catch_3
    move-exception v11

    .line 1178
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get addresses"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1196
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v32    # "organizations":Lorg/json/JSONArray;
    :cond_18
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_10
    :try_start_d
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_b

    .line 1197
    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/json/JSONObject;

    .line 1198
    .local v30, "org":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1200
    .local v31, "orgId":Ljava/lang/String;
    if-nez v31, :cond_19

    .line 1201
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1202
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1203
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getOrgType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    const-string v44, "data5"

    const-string v45, "department"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v44, "data1"

    const-string v45, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v44, "data4"

    const-string v45, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_10

    .line 1214
    :cond_19
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v31, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/organization"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getOrgType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data5"

    const-string v46, "department"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data1"

    const-string v46, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data4"

    const-string v46, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_11

    .line 1227
    .end local v21    # "i":I
    .end local v30    # "org":Lorg/json/JSONObject;
    .end local v31    # "orgId":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 1228
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get organizations"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1246
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v24    # "ims":Lorg/json/JSONArray;
    :cond_1a
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_12
    :try_start_e
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_c

    .line 1247
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/json/JSONObject;

    .line 1248
    .local v22, "im":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1250
    .local v23, "imId":Ljava/lang/String;
    if-nez v23, :cond_1b

    .line 1251
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1252
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1253
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/im"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getImType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1257
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_13
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_12

    .line 1262
    :cond_1b
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v23, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/im"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data1"

    const-string v46, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_13

    .line 1273
    .end local v21    # "i":I
    .end local v22    # "im":Lorg/json/JSONObject;
    .end local v23    # "imId":Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 1274
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get emails"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1313
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v27    # "nickname":Ljava/lang/String;
    .restart local v28    # "note":Ljava/lang/String;
    .restart local v43    # "websites":Lorg/json/JSONArray;
    :cond_1c
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_14
    :try_start_f
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_e

    .line 1314
    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/json/JSONObject;

    .line 1315
    .local v41, "website":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1317
    .local v42, "websiteId":Ljava/lang/String;
    if-nez v42, :cond_1d

    .line 1318
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1319
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1320
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/website"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v44, "data1"

    const-string v45, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string v44, "data2"

    const-string v45, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1324
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_15
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_14

    .line 1329
    :cond_1d
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v42, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/website"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data1"

    const-string v46, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data2"

    const-string v46, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_15

    .line 1340
    .end local v21    # "i":I
    .end local v41    # "website":Lorg/json/JSONObject;
    .end local v42    # "websiteId":Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 1341
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get websites"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1372
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v6    # "birthday":Ljava/lang/String;
    .restart local v38    # "photos":Lorg/json/JSONArray;
    :cond_1e
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_16
    :try_start_10
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_10

    .line 1373
    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/json/JSONObject;

    .line 1374
    .local v36, "photo":Lorg/json/JSONObject;
    const-string v44, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1375
    .local v37, "photoId":Ljava/lang/String;
    const-string v44, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhotoBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1377
    .local v8, "bytes":[B
    if-nez v37, :cond_1f

    .line 1378
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1379
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    const-string v44, "raw_contact_id"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1380
    const-string v44, "mimetype"

    const-string v45, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v44, "is_super_primary"

    const/16 v45, 0x1

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1382
    const-string v44, "data15"

    move-object/from16 v0, v44

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1384
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    :goto_17
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_16

    .line 1389
    :cond_1f
    sget-object v44, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "_id=? AND mimetype=?"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v37, v46, v47

    const/16 v47, 0x1

    const-string v48, "vnd.android.cursor.item/photo"

    aput-object v48, v46, v47

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "is_super_primary"

    const/16 v46, 0x1

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    const-string v45, "data15"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_17

    .line 1400
    .end local v8    # "bytes":[B
    .end local v21    # "i":I
    .end local v36    # "photo":Lorg/json/JSONObject;
    .end local v37    # "photoId":Ljava/lang/String;
    :catch_7
    move-exception v11

    .line 1401
    .restart local v11    # "e":Lorg/json/JSONException;
    const-string v44, "ContactsAccessor"

    const-string v45, "Could not get photos"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1409
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v40    # "retVal":Z
    :catch_8
    move-exception v11

    .line 1410
    .local v11, "e":Landroid/os/RemoteException;
    const-string v44, "ContactsAccessor"

    invoke-virtual {v11}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    const-string v44, "ContactsAccessor"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1412
    const/16 v40, 0x0

    .line 1417
    goto/16 :goto_8

    .line 1413
    .end local v11    # "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v11

    .line 1414
    .local v11, "e":Landroid/content/OperationApplicationException;
    const-string v44, "ContactsAccessor"

    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1415
    const-string v44, "ContactsAccessor"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1416
    const/16 v40, 0x0

    goto/16 :goto_8

    .line 1423
    .end local v11    # "e":Landroid/content/OperationApplicationException;
    :cond_20
    const/16 p1, 0x0

    goto/16 :goto_9
.end method

.method private nameQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 774
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 776
    .local v0, "contactName":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "data3"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 777
    .local v2, "familyName":Ljava/lang/String;
    const-string v8, "data2"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 778
    .local v4, "givenName":Ljava/lang/String;
    const-string v8, "data5"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 779
    .local v7, "middleName":Ljava/lang/String;
    const-string v8, "data4"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 780
    .local v5, "honorificPrefix":Ljava/lang/String;
    const-string v8, "data6"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 783
    .local v6, "honorificSuffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v3, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 784
    .local v3, "formatted":Ljava/lang/StringBuffer;
    if-eqz v5, :cond_0

    .line 785
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    :cond_0
    if-eqz v4, :cond_1

    .line 788
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    :cond_1
    if-eqz v7, :cond_2

    .line 791
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    :cond_2
    if-eqz v2, :cond_3

    .line 794
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    :cond_3
    if-eqz v6, :cond_4

    .line 797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    :cond_4
    const-string v8, "familyName"

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    const-string v8, "givenName"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    const-string v8, "middleName"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    const-string v8, "honorificPrefix"

    invoke-virtual {v0, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    const-string v8, "honorificSuffix"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    const-string v8, "formatted"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    .end local v2    # "familyName":Ljava/lang/String;
    .end local v3    # "formatted":Ljava/lang/StringBuffer;
    .end local v4    # "givenName":Ljava/lang/String;
    .end local v5    # "honorificPrefix":Ljava/lang/String;
    .end local v6    # "honorificSuffix":Ljava/lang/String;
    .end local v7    # "middleName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 806
    :catch_0
    move-exception v1

    .line 807
    .local v1, "e":Lorg/json/JSONException;
    const-string v8, "ContactsAccessor"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private organizationQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 731
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 733
    .local v1, "organization":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 735
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getOrgType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    const-string v2, "department"

    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    const-string v2, "name"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    const-string v2, "title"

    const-string v3, "data4"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :goto_0
    return-object v1

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 818
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 820
    .local v2, "phoneNumber":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 821
    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 822
    const-string v3, "value"

    const-string v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string v3, "type"

    const-string v4, "data2"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getPhoneType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 829
    :goto_0
    return-object v2

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 826
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 827
    .local v1, "excp":Ljava/lang/Exception;
    const-string v3, "ContactsAccessor"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private photoQuery(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    .line 892
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 894
    .local v2, "photo":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 895
    const-string v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 896
    const-string v4, "type"

    const-string v5, "url"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 897
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 898
    .local v1, "person":Landroid/net/Uri;
    const-string v4, "photo"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 899
    .local v3, "photoUri":Landroid/net/Uri;
    const-string v4, "value"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    .end local v1    # "person":Landroid/net/Uri;
    .end local v3    # "photoUri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "contact"    # Lorg/json/JSONObject;
    .param p2, "organizations"    # Lorg/json/JSONArray;
    .param p3, "addresses"    # Lorg/json/JSONArray;
    .param p4, "phones"    # Lorg/json/JSONArray;
    .param p5, "emails"    # Lorg/json/JSONArray;
    .param p6, "ims"    # Lorg/json/JSONArray;
    .param p7, "websites"    # Lorg/json/JSONArray;
    .param p8, "photos"    # Lorg/json/JSONArray;

    .prologue
    .line 507
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 508
    const-string v1, "organizations"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 511
    const-string v1, "addresses"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    :cond_1
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 514
    const-string v1, "phoneNumbers"

    invoke-virtual {p1, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    :cond_2
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 517
    const-string v1, "emails"

    invoke-virtual {p1, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    :cond_3
    invoke-virtual {p6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 520
    const-string v1, "ims"

    invoke-virtual {p1, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    :cond_4
    invoke-virtual {p7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 523
    const-string v1, "urls"

    invoke-virtual {p1, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    :cond_5
    invoke-virtual {p8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 526
    const-string v1, "photos"

    invoke-virtual {p1, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_6
    :goto_0
    return-object p1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private populateContactArray(ILjava/util/HashMap;Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 36
    .param p1, "limit"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v22, ""

    .line 317
    .local v22, "contactId":Ljava/lang/String;
    const-string v33, ""

    .line 318
    .local v33, "rawId":Ljava/lang/String;
    const-string v29, ""

    .line 319
    .local v29, "oldContactId":Ljava/lang/String;
    const/16 v28, 0x1

    .line 320
    .local v28, "newContact":Z
    const-string v27, ""

    .line 322
    .local v27, "mimetype":Ljava/lang/String;
    new-instance v23, Lorg/json/JSONArray;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONArray;-><init>()V

    .line 323
    .local v23, "contacts":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 324
    .local v4, "contact":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 325
    .local v5, "organizations":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 326
    .local v6, "addresses":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 327
    .local v7, "phones":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 328
    .local v8, "emails":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 329
    .local v9, "ims":Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 330
    .local v10, "websites":Lorg/json/JSONArray;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 333
    .local v11, "photos":Lorg/json/JSONArray;
    const-string v3, "contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 334
    .local v14, "colContactId":I
    const-string v3, "raw_contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 335
    .local v20, "colRawContactId":I
    const-string v3, "mimetype"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 336
    .local v17, "colMimetype":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 337
    .local v15, "colDisplayName":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 338
    .local v19, "colNote":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 339
    .local v18, "colNickname":I
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 340
    .local v13, "colBirthday":I
    const-string v3, "data2"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 342
    .local v16, "colEventType":I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_10

    .line 343
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v35, p1, -0x1

    move/from16 v0, v35

    if-gt v3, v0, :cond_f

    .line 345
    :try_start_0
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 346
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 349
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-nez v3, :cond_0

    .line 350
    move-object/from16 v29, v22

    .line 355
    :cond_0
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v3, p0

    .line 358
    invoke-direct/range {v3 .. v11}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 362
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v4    # "contact":Lorg/json/JSONObject;
    .local v21, "contact":Lorg/json/JSONObject;
    :try_start_1
    new-instance v30, Lorg/json/JSONArray;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .local v30, "organizations":Lorg/json/JSONArray;
    :try_start_2
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 365
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .local v12, "addresses":Lorg/json/JSONArray;
    :try_start_3
    new-instance v31, Lorg/json/JSONArray;

    invoke-direct/range {v31 .. v31}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 366
    .end local v7    # "phones":Lorg/json/JSONArray;
    .local v31, "phones":Lorg/json/JSONArray;
    :try_start_4
    new-instance v25, Lorg/json/JSONArray;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONArray;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 367
    .end local v8    # "emails":Lorg/json/JSONArray;
    .local v25, "emails":Lorg/json/JSONArray;
    :try_start_5
    new-instance v26, Lorg/json/JSONArray;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONArray;-><init>()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 368
    .end local v9    # "ims":Lorg/json/JSONArray;
    .local v26, "ims":Lorg/json/JSONArray;
    :try_start_6
    new-instance v34, Lorg/json/JSONArray;

    invoke-direct/range {v34 .. v34}, Lorg/json/JSONArray;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 369
    .end local v10    # "websites":Lorg/json/JSONArray;
    .local v34, "websites":Lorg/json/JSONArray;
    :try_start_7
    new-instance v32, Lorg/json/JSONArray;

    invoke-direct/range {v32 .. v32}, Lorg/json/JSONArray;-><init>()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 372
    .end local v11    # "photos":Lorg/json/JSONArray;
    .local v32, "photos":Lorg/json/JSONArray;
    const/16 v28, 0x1

    move-object/from16 v11, v32

    .end local v32    # "photos":Lorg/json/JSONArray;
    .restart local v11    # "photos":Lorg/json/JSONArray;
    move-object/from16 v10, v34

    .end local v34    # "websites":Lorg/json/JSONArray;
    .restart local v10    # "websites":Lorg/json/JSONArray;
    move-object/from16 v9, v26

    .end local v26    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .line 377
    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    :cond_1
    if-eqz v28, :cond_2

    .line 378
    const/16 v28, 0x0

    .line 379
    :try_start_8
    const-string v3, "id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v3, "rawId"

    move-object/from16 v0, v33

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 386
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    const-string v3, "displayName"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    :cond_3
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 392
    const-string v3, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->nameQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    :cond_4
    :goto_1
    move-object/from16 v29, v22

    goto/16 :goto_0

    .line 394
    :cond_5
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "phoneNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->phoneQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 436
    :catch_0
    move-exception v24

    .line 437
    .local v24, "e":Lorg/json/JSONException;
    :goto_2
    const-string v3, "ContactsAccessor"

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 398
    .end local v24    # "e":Lorg/json/JSONException;
    :cond_6
    :try_start_9
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "emails"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->emailQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 402
    :cond_7
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "addresses"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->addressQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 406
    :cond_8
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "organizations"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->organizationQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 410
    :cond_9
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "ims"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 412
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->imQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 414
    :cond_a
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 416
    const-string v3, "note"

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 418
    :cond_b
    const-string v3, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 420
    const-string v3, "nickname"

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 422
    :cond_c
    const-string v3, "vnd.android.cursor.item/website"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "urls"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 424
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->websiteQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 426
    :cond_d
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 427
    const-string v3, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v0, v35

    if-ne v3, v0, :cond_4

    .line 429
    const-string v3, "birthday"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 432
    :cond_e
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "photos"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->photoQuery(Landroid/database/Cursor;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 446
    :cond_f
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, p1

    if-ge v3, v0, :cond_10

    move-object/from16 v3, p0

    .line 447
    invoke-direct/range {v3 .. v11}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->populateContact(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 451
    :cond_10
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 452
    return-object v23

    .line 436
    .end local v4    # "contact":Lorg/json/JSONObject;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    :catch_1
    move-exception v24

    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    :catch_2
    move-exception v24

    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    :catch_3
    move-exception v24

    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    :catch_4
    move-exception v24

    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v25    # "emails":Lorg/json/JSONArray;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    :catch_5
    move-exception v24

    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .end local v9    # "ims":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v25    # "emails":Lorg/json/JSONArray;
    .restart local v26    # "ims":Lorg/json/JSONArray;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    :catch_6
    move-exception v24

    move-object/from16 v9, v26

    .end local v26    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v4    # "contact":Lorg/json/JSONObject;
    .end local v5    # "organizations":Lorg/json/JSONArray;
    .end local v6    # "addresses":Lorg/json/JSONArray;
    .end local v7    # "phones":Lorg/json/JSONArray;
    .end local v8    # "emails":Lorg/json/JSONArray;
    .end local v9    # "ims":Lorg/json/JSONArray;
    .end local v10    # "websites":Lorg/json/JSONArray;
    .restart local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v21    # "contact":Lorg/json/JSONObject;
    .restart local v25    # "emails":Lorg/json/JSONArray;
    .restart local v26    # "ims":Lorg/json/JSONArray;
    .restart local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v31    # "phones":Lorg/json/JSONArray;
    .restart local v34    # "websites":Lorg/json/JSONArray;
    :catch_7
    move-exception v24

    move-object/from16 v10, v34

    .end local v34    # "websites":Lorg/json/JSONArray;
    .restart local v10    # "websites":Lorg/json/JSONArray;
    move-object/from16 v9, v26

    .end local v26    # "ims":Lorg/json/JSONArray;
    .restart local v9    # "ims":Lorg/json/JSONArray;
    move-object/from16 v8, v25

    .end local v25    # "emails":Lorg/json/JSONArray;
    .restart local v8    # "emails":Lorg/json/JSONArray;
    move-object/from16 v7, v31

    .end local v31    # "phones":Lorg/json/JSONArray;
    .restart local v7    # "phones":Lorg/json/JSONArray;
    move-object v6, v12

    .end local v12    # "addresses":Lorg/json/JSONArray;
    .restart local v6    # "addresses":Lorg/json/JSONArray;
    move-object/from16 v5, v30

    .end local v30    # "organizations":Lorg/json/JSONArray;
    .restart local v5    # "organizations":Lorg/json/JSONArray;
    move-object/from16 v4, v21

    .end local v21    # "contact":Lorg/json/JSONObject;
    .restart local v4    # "contact":Lorg/json/JSONObject;
    goto/16 :goto_2
.end method

.method private websiteQuery(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 874
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 876
    .local v1, "website":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 877
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 878
    const-string v2, "value"

    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    const-string v2, "type"

    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getContactType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-object v1

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ContactsAccessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getContactById(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 285
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id = ? "

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    const-string v5, "contact_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 291
    .local v6, "c":Landroid/database/Cursor;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 292
    .local v8, "fields":Lorg/json/JSONArray;
    const-string v0, "*"

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 294
    invoke-virtual {p0, v8}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->buildPopulationSet(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v9

    .line 296
    .local v9, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0, v10, v9, v6}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->populateContactArray(ILjava/util/HashMap;Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v7

    .line 298
    .local v7, "contacts":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 299
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 301
    :cond_0
    return-object v2
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1783
    const/4 v8, 0x0

    .line 1784
    .local v8, "result":I
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1788
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 1789
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1790
    const-string v0, "lookup"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1791
    .local v7, "lookupKey":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1792
    .local v9, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v9, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1797
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    :goto_0
    if-lez v8, :cond_1

    move v0, v10

    :goto_1
    return v0

    .line 1794
    :cond_0
    const-string v0, "ContactsAccessor"

    const-string v1, "Could not find contact with ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v11

    .line 1797
    goto :goto_1
.end method

.method public save(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 12
    .param p1, "contact"    # Lorg/json/JSONObject;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 914
    iget-object v9, p0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    .line 915
    .local v8, "mgr":Landroid/accounts/AccountManager;
    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 916
    .local v3, "accounts":[Landroid/accounts/Account;
    const/4 v1, 0x0

    .line 917
    .local v1, "accountName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 919
    .local v2, "accountType":Ljava/lang/String;
    array-length v9, v3

    if-ne v9, v11, :cond_1

    .line 920
    aget-object v9, v3, v10

    iget-object v1, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 921
    aget-object v9, v3, v10

    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 951
    :cond_0
    :goto_0
    const-string v9, "id"

    invoke-virtual {p0, p1, v9}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 952
    .local v6, "id":Ljava/lang/String;
    if-nez v6, :cond_7

    .line 954
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->createNewContact(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 957
    :goto_1
    return-object v9

    .line 923
    .end local v6    # "id":Ljava/lang/String;
    :cond_1
    array-length v9, v3

    if-le v9, v11, :cond_0

    .line 924
    move-object v4, v3

    .local v4, "arr$":[Landroid/accounts/Account;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_2

    aget-object v0, v4, v5

    .line 925
    .local v0, "a":Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v10, "eas"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v10, ".+@.+\\.+.+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 926
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 927
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 931
    .end local v0    # "a":Landroid/accounts/Account;
    :cond_2
    if-nez v1, :cond_3

    .line 932
    move-object v4, v3

    array-length v7, v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v7, :cond_3

    aget-object v0, v4, v5

    .line 933
    .restart local v0    # "a":Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v10, "com.google"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v10, ".+@.+\\.+.+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 934
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 935
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 940
    .end local v0    # "a":Landroid/accounts/Account;
    :cond_3
    if-nez v1, :cond_0

    .line 941
    move-object v4, v3

    array-length v7, v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_0

    aget-object v0, v4, v5

    .line 942
    .restart local v0    # "a":Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v10, ".+@.+\\.+.+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 943
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 944
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 945
    goto :goto_0

    .line 924
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 932
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 941
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 957
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v4    # "arr$":[Landroid/accounts/Account;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .restart local v6    # "id":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v6, p1, v2, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->modifyContact(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method public search(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 21
    .param p1, "fields"    # Lorg/json/JSONArray;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 140
    const-string v19, ""

    .line 141
    .local v19, "searchTerm":Ljava/lang/String;
    const v16, 0x7fffffff

    .line 142
    .local v16, "limit":I
    const/16 v17, 0x1

    .line 144
    .local v17, "multiple":Z
    if-eqz p2, :cond_3

    .line 145
    const-string v3, "filter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 146
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 147
    const-string v19, "%"

    .line 154
    :goto_0
    :try_start_0
    const-string v3, "multiple"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 155
    if-nez v17, :cond_0

    .line 156
    const/16 v16, 0x1

    .line 172
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->buildPopulationSet(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v18

    .line 175
    .local v18, "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->buildWhereClause(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;

    move-result-object v20

    .line 178
    .local v20, "whereOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "contact_id"

    aput-object v7, v5, v6

    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->getWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "contact_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 185
    .local v14, "idCursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v11, "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v13, -0x1

    .line 187
    .local v13, "idColumn":I
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    if-gez v13, :cond_1

    .line 189
    const-string v3, "contact_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 191
    :cond_1
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 150
    .end local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "idColumn":I
    .end local v14    # "idCursor":Landroid/database/Cursor;
    .end local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v20    # "whereOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 163
    :cond_3
    const-string v19, "%"

    goto :goto_1

    .line 193
    .restart local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "idColumn":I
    .restart local v14    # "idCursor":Landroid/database/Cursor;
    .restart local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v20    # "whereOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->buildIdClause(Ljava/util/Set;Ljava/lang/String;)Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;

    move-result-object v15

    .line 199
    .local v15, "idOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 200
    .local v10, "columnsToFetch":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "contact_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v3, "raw_contact_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v3, "mimetype"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v3, "displayName"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_5
    const-string v3, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 208
    const-string v3, "data3"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v3, "data5"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v3, "data4"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v3, "data6"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_6
    const-string v3, "phoneNumbers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 215
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_7
    const-string v3, "emails"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 220
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_8
    const-string v3, "addresses"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 225
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v3, "data4"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v3, "data7"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v3, "data8"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v3, "data9"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v3, "data10"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_9
    const-string v3, "organizations"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 235
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v3, "data5"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v3, "data4"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_a
    const-string v3, "ims"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 242
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_b
    const-string v3, "note"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 247
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_c
    const-string v3, "nickname"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 250
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_d
    const-string v3, "urls"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 253
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_e
    const-string v3, "birthday"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 258
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    const-string v3, "data2"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_f
    const-string v3, "photos"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->isRequired(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 262
    const-string v3, "_id"

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->mApp:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v15}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->getWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "contact_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 272
    .local v9, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lorg/apache/cordova/contacts/ContactAccessorSdk5;->populateContactArray(ILjava/util/HashMap;Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v12

    .line 273
    .local v12, "contacts":Lorg/json/JSONArray;
    return-object v12

    .line 158
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "columnsToFetch":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "contactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "contacts":Lorg/json/JSONArray;
    .end local v13    # "idColumn":I
    .end local v14    # "idCursor":Landroid/database/Cursor;
    .end local v15    # "idOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    .end local v18    # "populate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v20    # "whereOptions":Lorg/apache/cordova/contacts/ContactAccessor$WhereOptions;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method
