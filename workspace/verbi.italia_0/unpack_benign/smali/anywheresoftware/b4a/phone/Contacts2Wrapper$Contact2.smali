.class public Lanywheresoftware/b4a/phone/Contacts2Wrapper$Contact2;
.super Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;
.source "Contacts2Wrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Contacts2Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Contact2"
.end annotation


# instance fields
.field private photoId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;IJLjava/lang/String;I)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "starred"    # Z
    .param p4, "id"    # I
    .param p5, "notes"    # Ljava/lang/String;
    .param p6, "timesContacted"    # I
    .param p7, "lastTimeContacted"    # J
    .param p9, "name"    # Ljava/lang/String;
    .param p10, "photoId"    # I

    .prologue
    .line 217
    invoke-direct/range {p0 .. p9}, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;IJLjava/lang/String;)V

    .line 218
    iput p10, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$Contact2;->photoId:I

    .line 219
    return-void
.end method


# virtual methods
.method public GetEmails()Lanywheresoftware/b4a/objects/collections/Map;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 238
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 239
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v8

    const-string v3, "data2"

    aput-object v3, v2, v9

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "contact_id = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$Contact2;->Id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 238
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 241
    .local v6, "emails":Landroid/database/Cursor;
    new-instance v7, Lanywheresoftware/b4a/objects/collections/Map;

    invoke-direct {v7}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    .local v7, "m":Lanywheresoftware/b4a/objects/collections/Map;
    invoke-virtual {v7}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 242
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    return-object v7

    .line 243
    :cond_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public GetPhones()Lanywheresoftware/b4a/objects/collections/Map;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 250
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 251
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v8

    const-string v3, "data2"

    aput-object v3, v2, v9

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "contact_id = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$Contact2;->Id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 250
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 253
    .local v7, "phones":Landroid/database/Cursor;
    new-instance v6, Lanywheresoftware/b4a/objects/collections/Map;

    invoke-direct {v6}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    .local v6, "m":Lanywheresoftware/b4a/objects/collections/Map;
    invoke-virtual {v6}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 254
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 258
    return-object v6

    .line 255
    :cond_0
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public GetPhoto()Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 223
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lanywheresoftware/b4a/phone/Contacts2Wrapper$Contact2;->photoId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 224
    .local v9, "photo":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 225
    .local v7, "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "data15"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 227
    .local v6, "b":[B
    if-eqz v6, :cond_0

    .line 228
    new-instance v7, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .end local v7    # "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-direct {v7}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 229
    .restart local v7    # "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 230
    .local v8, "in":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v7, v8}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize2(Ljava/io/InputStream;)V

    .line 233
    .end local v6    # "b":[B
    .end local v8    # "in":Ljava/io/ByteArrayInputStream;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 234
    return-object v7
.end method
