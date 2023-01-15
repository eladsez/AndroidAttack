.class public Lanywheresoftware/b4a/phone/CallLogWrapper;
.super Ljava/lang/Object;
.source "CallLogWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "CallLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;
    }
.end annotation


# static fields
.field private static final calls_projection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 45
    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lanywheresoftware/b4a/phone/CallLogWrapper;->calls_projection:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAllCalls(Ljava/lang/String;[Ljava/lang/String;I)Lanywheresoftware/b4a/objects/collections/List;
    .locals 18
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "limit"    # I

    .prologue
    .line 73
    sget-object v5, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 74
    .local v3, "cr":Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lanywheresoftware/b4a/phone/CallLogWrapper;->calls_projection:[Ljava/lang/String;

    const-string v8, "date DESC"

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 75
    .local v14, "crsr":Landroid/database/Cursor;
    new-instance v16, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct/range {v16 .. v16}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 76
    .local v16, "l":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual/range {v16 .. v16}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 77
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v17, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "col":I
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-lt v13, v5, :cond_1

    .line 81
    const/4 v15, 0x0

    .line 82
    .end local p0    # "this":Lanywheresoftware/b4a/phone/CallLogWrapper;
    .local v15, "i":I
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 95
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 96
    return-object v16

    .line 79
    .end local v15    # "i":I
    .restart local p0    # "this":Lanywheresoftware/b4a/phone/CallLogWrapper;
    :cond_1
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 84
    .end local p0    # "this":Lanywheresoftware/b4a/phone/CallLogWrapper;
    .restart local v15    # "i":I
    :cond_2
    new-instance v4, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;

    const-string v5, "number"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    const-string v6, "_id"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 86
    const-string v7, "duration"

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 87
    const-string v9, "type"

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 88
    const-string v10, "date"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 89
    const-string v12, "name"

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 84
    invoke-direct/range {v4 .. v12}, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;-><init>(Ljava/lang/String;IJIJLjava/lang/String;)V

    .line 91
    .local v4, "ci":Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;
    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    .line 92
    if-lez p3, :cond_0

    add-int/lit8 v15, v15, 0x1

    move v0, v15

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    goto/16 :goto_1
.end method


# virtual methods
.method public GetAll(I)Lanywheresoftware/b4a/objects/collections/List;
    .locals 1
    .param p1, "Limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, v0, p1}, Lanywheresoftware/b4a/phone/CallLogWrapper;->getAllCalls(Ljava/lang/String;[Ljava/lang/String;I)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public GetById(I)Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;
    .locals 5
    .param p1, "Id"    # I

    .prologue
    const/4 v4, 0x0

    .line 58
    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2, v4}, Lanywheresoftware/b4a/phone/CallLogWrapper;->getAllCalls(Ljava/lang/String;[Ljava/lang/String;I)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    .line 59
    .local v0, "l":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 62
    .end local p0    # "this":Lanywheresoftware/b4a/phone/CallLogWrapper;
    :goto_0
    return-object v1

    .restart local p0    # "this":Lanywheresoftware/b4a/phone/CallLogWrapper;
    :cond_0
    invoke-virtual {v0, v4}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/phone/CallLogWrapper;
    check-cast p0, Lanywheresoftware/b4a/phone/CallLogWrapper$CallItem;

    move-object v1, p0

    goto :goto_0
.end method

.method public GetSince(JI)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p1, "Date"    # J
    .param p3, "Limit"    # I

    .prologue
    .line 69
    const-string v0, "date >= ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1, p3}, Lanywheresoftware/b4a/phone/CallLogWrapper;->getAllCalls(Ljava/lang/String;[Ljava/lang/String;I)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method
