.class public Lanywheresoftware/b4a/phone/Contacts2Wrapper;
.super Ljava/lang/Object;
.source "Contacts2Wrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Contacts2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/phone/Contacts2Wrapper$Contact2;
    }
.end annotation


# static fields
.field private static final people_projection:[Ljava/lang/String;

.field private static final phone_projection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "times_contacted"

    aput-object v1, v0, v3

    .line 48
    const-string v1, "last_time_contacted"

    aput-object v1, v0, v4

    .line 49
    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "has_phone_number"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 50
    const-string v2, "photo_id"

    aput-object v2, v0, v1

    .line 47
    sput-object v0, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->people_projection:[Ljava/lang/String;

    .line 51
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "is_primary"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    .line 52
    const-string v1, "contact_id"

    aput-object v1, v0, v5

    .line 51
    sput-object v0, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->phone_projection:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAllContacts(Ljava/lang/String;[Ljava/lang/String;ZZ)Lanywheresoftware/b4a/objects/collections/List;
    .locals 24
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "includePhone"    # Z
    .param p4, "includeNotes"    # Z

    .prologue
    .line 155
    sget-object v5, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 156
    .local v3, "cr":Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->people_projection:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 157
    .local v16, "crsr":Landroid/database/Cursor;
    new-instance v18, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct/range {v18 .. v18}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 158
    .local v18, "l":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual/range {v18 .. v18}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    .line 159
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v19, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    .local v15, "col":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-lt v15, v5, :cond_0

    .line 164
    .end local p0    # "this":Lanywheresoftware/b4a/phone/Contacts2Wrapper;
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 201
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 202
    return-object v18

    .line 161
    .restart local p0    # "this":Lanywheresoftware/b4a/phone/Contacts2Wrapper;
    :cond_0
    move-object/from16 v0, v16

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 165
    .end local p0    # "this":Lanywheresoftware/b4a/phone/Contacts2Wrapper;
    :cond_1
    const-string v22, ""

    .line 166
    .local v22, "phoneNumber":Ljava/lang/String;
    const-string v20, ""

    .line 167
    .local v20, "notes":Ljava/lang/String;
    const-string v5, "_id"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 168
    .local v17, "id":I
    if-eqz p3, :cond_3

    const-string v5, "has_phone_number"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    sget-object v5, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 170
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->phone_projection:[Ljava/lang/String;

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "contact_id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 169
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 172
    .local v23, "phones":Landroid/database/Cursor;
    :cond_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 177
    :goto_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 179
    .end local v23    # "phones":Landroid/database/Cursor;
    :cond_3
    if-eqz p4, :cond_7

    .line 180
    sget-object v5, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 181
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "data1"

    aput-object v8, v6, v7

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "contact_id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 183
    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mimetype"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 183
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "vnd.android.cursor.item/note"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    .line 180
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .local v21, "notesC":Landroid/database/Cursor;
    move-object/from16 v9, v20

    .line 184
    .end local v20    # "notes":Ljava/lang/String;
    .local v9, "notes":Ljava/lang/String;
    :goto_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 187
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 189
    .end local v21    # "notesC":Landroid/database/Cursor;
    :goto_4
    new-instance v4, Lanywheresoftware/b4a/phone/Contacts2Wrapper$Contact2;

    .line 190
    const-string v5, "display_name"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 192
    const-string v6, "starred"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x1

    move v7, v6

    .line 195
    :goto_5
    const-string v6, "times_contacted"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 196
    const-string v6, "last_time_contacted"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 197
    const-string v6, "display_name"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 198
    const-string v6, "photo_id"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v6, v22

    move/from16 v8, v17

    .line 189
    invoke-direct/range {v4 .. v14}, Lanywheresoftware/b4a/phone/Contacts2Wrapper$Contact2;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;IJLjava/lang/String;I)V

    .line 199
    .local v4, "contact":Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 173
    .end local v4    # "contact":Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;
    .end local v9    # "notes":Ljava/lang/String;
    .restart local v20    # "notes":Ljava/lang/String;
    .restart local v23    # "phones":Landroid/database/Cursor;
    :cond_4
    const-string v5, "data1"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 174
    const-string v5, "is_primary"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_2

    .line 185
    .end local v20    # "notes":Ljava/lang/String;
    .end local v23    # "phones":Landroid/database/Cursor;
    .restart local v9    # "notes":Ljava/lang/String;
    .restart local v21    # "notesC":Landroid/database/Cursor;
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 192
    .end local v21    # "notesC":Landroid/database/Cursor;
    :cond_6
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_5

    .end local v9    # "notes":Ljava/lang/String;
    .restart local v20    # "notes":Ljava/lang/String;
    :cond_7
    move-object/from16 v9, v20

    .end local v20    # "notes":Ljava/lang/String;
    .restart local v9    # "notes":Ljava/lang/String;
    goto/16 :goto_4
.end method


# virtual methods
.method public FindByMail(Ljava/lang/String;ZZZ)Lanywheresoftware/b4a/objects/collections/List;
    .locals 19
    .param p1, "Email"    # Ljava/lang/String;
    .param p2, "Exact"    # Z
    .param p3, "IncludePhoneNumber"    # Z
    .param p4, "IncludeNotes"    # Z

    .prologue
    .line 82
    sget-object v6, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 84
    .local v5, "cr":Landroid/content/ContentResolver;
    if-nez p2, :cond_1

    .line 85
    const-string v17, " LIKE ?"

    .line 86
    .local v17, "sel":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 92
    .local v11, "args":Ljava/lang/String;
    :goto_0
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "contact_id"

    aput-object v9, v7, v8

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "data1"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x0

    .line 92
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 94
    .local v13, "crsr":Landroid/database/Cursor;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v16, "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 100
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 101
    .local v12, "count":I
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 102
    if-nez v12, :cond_3

    .line 103
    new-instance v15, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v15}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 104
    .local v15, "l":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v15}, Lanywheresoftware/b4a/objects/collections/List;->Initialize()V

    move-object v6, v15

    .line 109
    .end local v15    # "l":Lanywheresoftware/b4a/objects/collections/List;
    :goto_1
    return-object v6

    .line 89
    .end local v11    # "args":Ljava/lang/String;
    .end local v12    # "count":I
    .end local v13    # "crsr":Landroid/database/Cursor;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "sel":Ljava/lang/String;
    :cond_1
    const-string v17, " = ?"

    .line 90
    .restart local v17    # "sel":Ljava/lang/String;
    move-object/from16 v11, p1

    .restart local v11    # "args":Ljava/lang/String;
    goto :goto_0

    .line 96
    .restart local v13    # "crsr":Landroid/database/Cursor;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    if-ge v14, v6, :cond_0

    .line 97
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 107
    .end local v14    # "i":I
    .restart local v12    # "count":I
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id IN ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 109
    .local v18, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v6

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;ZZ)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v6

    goto :goto_1
.end method

.method public FindByName(Ljava/lang/String;ZZZ)Lanywheresoftware/b4a/objects/collections/List;
    .locals 6
    .param p1, "Name"    # Ljava/lang/String;
    .param p2, "Exact"    # Z
    .param p3, "IncludePhoneNumber"    # Z
    .param p4, "IncludeNotes"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v5, "%"

    .line 121
    if-nez p2, :cond_0

    .line 122
    const-string v0, "display_name LIKE ?"

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

    invoke-direct {p0, v0, v1, p3, p4}, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;ZZ)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "display_name = ?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-direct {p0, v0, v1, p3, p4}, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;ZZ)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    goto :goto_0
.end method

.method public GetAll(ZZ)Lanywheresoftware/b4a/objects/collections/List;
    .locals 1
    .param p1, "IncludePhoneNumber"    # Z
    .param p2, "IncludeNotes"    # Z

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0, v0, p1, p2}, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;ZZ)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0
.end method

.method public GetById(IZZ)Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;
    .locals 5
    .param p1, "Id"    # I
    .param p2, "IncludePhoneNumber"    # Z
    .param p3, "IncludeNotes"    # Z

    .prologue
    const/4 v4, 0x0

    .line 66
    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2, p2, p3}, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;ZZ)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    .line 67
    .local v0, "l":Lanywheresoftware/b4a/objects/collections/List;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->getSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 70
    .end local p0    # "this":Lanywheresoftware/b4a/phone/Contacts2Wrapper;
    :goto_0
    return-object v1

    .restart local p0    # "this":Lanywheresoftware/b4a/phone/Contacts2Wrapper;
    :cond_0
    invoke-virtual {v0, v4}, Lanywheresoftware/b4a/objects/collections/List;->Get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/phone/Contacts2Wrapper;
    check-cast p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;

    move-object v1, p0

    goto :goto_0
.end method

.method public GetContactsAsync(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "EventName"    # Ljava/lang/String;
    .param p3, "Query"    # Ljava/lang/String;
    .param p4, "Arguments"    # [Ljava/lang/String;
    .param p5, "IncludePhoneNumber"    # Z
    .param p6, "IncludeNotes"    # Z

    .prologue
    .line 132
    new-instance v0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lanywheresoftware/b4a/phone/Contacts2Wrapper$1;-><init>(Lanywheresoftware/b4a/phone/Contacts2Wrapper;Ljava/lang/String;[Ljava/lang/String;ZZLanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x0

    .line 132
    invoke-static {v0, p0, v1}, Lanywheresoftware/b4a/BA;->submitRunnable(Ljava/lang/Runnable;Ljava/lang/Object;I)Ljava/util/concurrent/Future;

    .line 141
    return-void
.end method

.method public GetContactsByQuery(Ljava/lang/String;[Ljava/lang/String;ZZ)Lanywheresoftware/b4a/objects/collections/List;
    .locals 1
    .param p1, "Query"    # Ljava/lang/String;
    .param p2, "Arguments"    # [Ljava/lang/String;
    .param p3, "IncludePhoneNumber"    # Z
    .param p4, "IncludeNotes"    # Z

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2, p3, p4}, Lanywheresoftware/b4a/phone/Contacts2Wrapper;->getAllContacts(Ljava/lang/String;[Ljava/lang/String;ZZ)Lanywheresoftware/b4a/objects/collections/List;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
