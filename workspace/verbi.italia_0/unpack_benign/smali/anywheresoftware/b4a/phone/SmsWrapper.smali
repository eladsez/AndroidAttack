.class public Lanywheresoftware/b4a/phone/SmsWrapper;
.super Ljava/lang/Object;
.source "SmsWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "SmsMessages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/phone/SmsWrapper$Sms;
    }
.end annotation


# static fields
.field public static final TYPE_DRAFT:I = 0x3

.field public static final TYPE_FAILED:I = 0x5

.field public static final TYPE_INBOX:I = 0x1

.field public static final TYPE_OUTBOX:I = 0x4

.field public static final TYPE_QUEUED:I = 0x6

.field public static final TYPE_SENT:I = 0x2

.field public static final TYPE_UNKNOWN:I

.field private static final projection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 38
    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date"

    aput-object v2, v0, v1

    .line 37
    sput-object v0, Lanywheresoftware/b4a/phone/SmsWrapper;->projection:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private get(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 15
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 85
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lanywheresoftware/b4a/phone/SmsWrapper;->projection:[Ljava/lang/String;

    const-string v5, "date DESC"

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 85
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 87
    .local v11, "crsr":Landroid/database/Cursor;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v13, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "col":I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-lt v10, v1, :cond_0

    .line 91
    new-instance v12, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v12}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 92
    .local v12, "l":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v12}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 93
    .end local p0    # "this":Lanywheresoftware/b4a/phone/SmsWrapper;
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 107
    return-object v12

    .line 89
    .end local v12    # "l":Lanywheresoftware/b4a/objects/collections/List;
    .restart local p0    # "this":Lanywheresoftware/b4a/phone/SmsWrapper;
    :cond_0
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 94
    .end local p0    # "this":Lanywheresoftware/b4a/phone/SmsWrapper;
    .restart local v12    # "l":Lanywheresoftware/b4a/objects/collections/List;
    :cond_1
    const-string v1, "person"

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 95
    .local v14, "personId":Ljava/lang/String;
    new-instance v0, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;

    .line 96
    const-string v1, "_id"

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 97
    const-string v2, "thread_id"

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 98
    if-nez v14, :cond_2

    const/4 v3, -0x1

    .line 99
    :goto_2
    const-string v4, "date"

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 100
    const-string v6, "read"

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    .line 101
    :goto_3
    const-string v7, "type"

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 102
    const-string v8, "body"

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 103
    const-string v9, "address"

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 95
    invoke-direct/range {v0 .. v9}, Lanywheresoftware/b4a/phone/SmsWrapper$Sms;-><init>(IIIJZILjava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, "s":Lanywheresoftware/b4a/phone/SmsWrapper$Sms;
    invoke-virtual {v12, v0}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 98
    .end local v0    # "s":Lanywheresoftware/b4a/phone/SmsWrapper$Sms;
    :cond_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 100
    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method


# virtual methods
.method public GetAll()Lanywheresoftware/b4a/objects/collections/List;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, v0}, Lanywheresoftware/b4a/phone/SmsWrapper;->get(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public GetAllSince(J)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p1, "Date"    # J

    .prologue
    .line 76
    const-string v0, "date >= ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lanywheresoftware/b4a/phone/SmsWrapper;->get(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public GetBetweenDates(JJ)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p1, "StartDate"    # J
    .param p3, "EndDate"    # J

    .prologue
    .line 82
    const-string v0, "date >= ? AND date < ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lanywheresoftware/b4a/phone/SmsWrapper;->get(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public GetByMessageId(I)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p1, "Id"    # I

    .prologue
    .line 46
    const-string v0, "_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lanywheresoftware/b4a/phone/SmsWrapper;->get(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public GetByPersonId(I)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p1, "PersonId"    # I

    .prologue
    .line 58
    const-string v0, "person = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lanywheresoftware/b4a/phone/SmsWrapper;->get(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public GetByThreadId(I)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p1, "ThreadId"    # I

    .prologue
    .line 52
    const-string v0, "thread_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lanywheresoftware/b4a/phone/SmsWrapper;->get(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public GetByType(I)Lanywheresoftware/b4a/objects/collections/List;
    .locals 4
    .param p1, "Type"    # I

    .prologue
    .line 43
    const-string v0, "type = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lanywheresoftware/b4a/phone/SmsWrapper;->get(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public GetUnreadMessages()Lanywheresoftware/b4a/objects/collections/List;
    .locals 2

    .prologue
    .line 64
    const-string v0, "read = 0"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lanywheresoftware/b4a/phone/SmsWrapper;->get(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method
