.class public Lanywheresoftware/b4a/phone/ContactsWrapper;
.super Ljava/lang/Object;
.source "ContactsWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Contacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;
    }
.end annotation


# static fields
.field private static final people_projection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 47
    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_time_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 48
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "notes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lanywheresoftware/b4a/phone/ContactsWrapper;->people_projection:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAllContacts(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;
    .locals 15
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 117
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lanywheresoftware/b4a/phone/ContactsWrapper;->people_projection:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 119
    .local v12, "crsr":Landroid/database/Cursor;
    new-instance v13, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v13}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 120
    .local v13, "l":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v13}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 121
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v14, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "col":I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-lt v11, v2, :cond_0

    .line 126
    .end local p0    # "this":Lanywheresoftware/b4a/phone/ContactsWrapper;
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 139
    return-object v13

    .line 123
    .restart local p0    # "this":Lanywheresoftware/b4a/phone/ContactsWrapper;
    :cond_0
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 127
    .end local p0    # "this":Lanywheresoftware/b4a/phone/ContactsWrapper;
    :cond_1
    new-instance v1, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;

    .line 128
    const-string v2, "display_name"

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string v3, "number"

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    const-string v4, "starred"

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    .line 131
    :goto_2
    const-string v5, "_id"

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 132
    const-string v6, "notes"

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 133
    const-string v7, "times_contacted"

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 134
    const-string v8, "last_time_contacted"

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 135
    const-string v10, "name"

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 127
    invoke-direct/range {v1 .. v10}, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;IJLjava/lang/String;)V

    .line 136
    .local v1, "contact":Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;
    invoke-virtual {v13, v1}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 130
    .end local v1    # "contact":Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public FindByMail(Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/collections/List;
    .locals 14
    .param p1, "Email"    # Ljava/lang/String;
    .param p2, "Exact"    # Z

    .prologue
    .line 75
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez p2, :cond_1

    .line 78
    const-string v12, " LIKE ?"

    .line 79
    .local v12, "sel":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "args":Ljava/lang/String;
    :goto_0
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "person"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 86
    const-string v4, "data"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 85
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 87
    .local v8, "crsr":Landroid/database/Cursor;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v11, "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 94
    .local v7, "count":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 95
    if-nez v7, :cond_3

    .line 96
    new-instance v10, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v10}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 97
    .local v10, "l":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v10}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    move-object v1, v10

    .line 102
    .end local v10    # "l":Lanywheresoftware/b4a/objects/collections/List;
    :goto_1
    return-object v1

    .line 82
    .end local v6    # "args":Ljava/lang/String;
    .end local v7    # "count":I
    .end local v8    # "crsr":Landroid/database/Cursor;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "sel":Ljava/lang/String;
    :cond_1
    const-string v12, " = ?"

    .line 83
    .restart local v12    # "sel":Ljava/lang/String;
    move-object v6, p1

    .restart local v6    # "args":Ljava/lang/String;
    goto :goto_0

    .line 89
    .restart local v8    # "crsr":Landroid/database/Cursor;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 100
    .end local v9    # "i":I
    .restart local v7    # "count":I
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, "selection":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v13, v1}, Lanywheresoftware/b4a/phone/ContactsWrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v1

    goto :goto_1
.end method

.method public FindByName(Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/collections/List;
    .locals 6
    .param p1, "Name"    # Ljava/lang/String;
    .param p2, "Exact"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v5, "%"

    .line 63
    if-nez p2, :cond_0

    .line 64
    const-string v0, "name LIKE ?"

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lanywheresoftware/b4a/phone/ContactsWrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "name = ?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-direct {p0, v0, v1}, Lanywheresoftware/b4a/phone/ContactsWrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    goto :goto_0
.end method

.method public GetAll()Lanywheresoftware/b4a/objects/collections/List;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0, v0}, Lanywheresoftware/b4a/phone/ContactsWrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public GetById(I)Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;
    .locals 5
    .param p1, "Id"    # I

    .prologue
    const/4 v4, 0x0

    .line 109
    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2}, Lanywheresoftware/b4a/phone/ContactsWrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    .line 110
    .local v0, "l":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x0

    .line 113
    .end local p0    # "this":Lanywheresoftware/b4a/phone/ContactsWrapper;
    :goto_0
    return-object v1

    .restart local p0    # "this":Lanywheresoftware/b4a/phone/ContactsWrapper;
    :cond_0
    invoke-virtual {v0, v4}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/phone/ContactsWrapper;
    check-cast p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;

    move-object v1, p0

    goto :goto_0
.end method
