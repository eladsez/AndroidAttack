.class public Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;
.super Ljava/lang/Object;
.source "ContactsWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Contact"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/ContactsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation


# static fields
.field public static final EMAIL_CUSTOM:I = 0x0

.field public static final EMAIL_HOME:I = 0x1

.field public static final EMAIL_MOBILE:I = 0x4

.field public static final EMAIL_OTHER:I = 0x3

.field public static final EMAIL_WORK:I = 0x2

.field public static final PHONE_CUSTOM:I = 0x0

.field public static final PHONE_FAX_HOME:I = 0x5

.field public static final PHONE_FAX_WORK:I = 0x4

.field public static final PHONE_HOME:I = 0x1

.field public static final PHONE_MOBILE:I = 0x2

.field public static final PHONE_OTHER:I = 0x7

.field public static final PHONE_PAGER:I = 0x6

.field public static final PHONE_WORK:I = 0x3


# instance fields
.field public DisplayName:Ljava/lang/String;

.field public Id:I

.field public LastTimeContacted:J

.field public Name:Ljava/lang/String;

.field public Notes:Ljava/lang/String;

.field public PhoneNumber:Ljava/lang/String;

.field public Starred:Z

.field public TimesContacted:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->PhoneNumber:Ljava/lang/String;

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Id:I

    .line 194
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "starred"    # Z
    .param p4, "id"    # I
    .param p5, "notes"    # Ljava/lang/String;
    .param p6, "timesContacted"    # I
    .param p7, "lastTimeContacted"    # J
    .param p9, "name"    # Ljava/lang/String;

    .prologue
    const-string v1, ""

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const-string v0, ""

    iput-object v1, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->PhoneNumber:Ljava/lang/String;

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Id:I

    .line 199
    if-nez p1, :cond_0

    const-string v0, ""

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->DisplayName:Ljava/lang/String;

    .line 200
    if-nez p2, :cond_1

    const-string v0, ""

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->PhoneNumber:Ljava/lang/String;

    .line 201
    iput-boolean p3, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Starred:Z

    .line 202
    iput p4, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Id:I

    .line 203
    if-nez p5, :cond_2

    const-string v0, ""

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Notes:Ljava/lang/String;

    .line 204
    iput p6, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->TimesContacted:I

    .line 205
    iput-wide p7, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->LastTimeContacted:J

    .line 206
    if-nez p9, :cond_3

    const-string v0, ""

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Name:Ljava/lang/String;

    .line 207
    return-void

    :cond_0
    move-object v0, p1

    .line 199
    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 200
    goto :goto_1

    :cond_2
    move-object v0, p5

    .line 203
    goto :goto_2

    :cond_3
    move-object v0, p9

    .line 206
    goto :goto_3
.end method


# virtual methods
.method public GetEmails()Lanywheresoftware/b4a/objects/collections/Map;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 236
    iget v0, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Id:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Contact object should be set by calling one of the Contacts methods."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Id:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 239
    const-string v2, "contact_methods"

    .line 238
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 240
    .local v1, "u":Landroid/net/Uri;
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v8

    const-string v3, "type"

    aput-object v3, v2, v9

    const/4 v3, 0x2

    .line 241
    const-string v5, "kind"

    aput-object v5, v2, v3

    .line 242
    const-string v3, "kind = 1"

    move-object v5, v4

    .line 240
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, "crsr":Landroid/database/Cursor;
    new-instance v7, Lanywheresoftware/b4a/objects/collections/Map;

    invoke-direct {v7}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    .local v7, "m":Lanywheresoftware/b4a/objects/collections/Map;
    invoke-virtual {v7}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 244
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 248
    return-object v7

    .line 245
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public GetPhones()Lanywheresoftware/b4a/objects/collections/Map;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 255
    iget v0, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Id:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 256
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Contact object should be set by calling one of the Contacts methods."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Id:I

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 258
    const-string v2, "phones"

    .line 257
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 259
    .local v1, "u":Landroid/net/Uri;
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v8

    const-string v4, "type"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 261
    .local v6, "crsr":Landroid/database/Cursor;
    new-instance v7, Lanywheresoftware/b4a/objects/collections/Map;

    invoke-direct {v7}, Lanywheresoftware/b4a/objects/collections/Map;-><init>()V

    .local v7, "m":Lanywheresoftware/b4a/objects/collections/Map;
    invoke-virtual {v7}, Lanywheresoftware/b4a/objects/collections/Map;->Initialize()V

    .line 262
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 266
    return-object v7

    .line 263
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lanywheresoftware/b4a/objects/collections/Map;->Put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public GetPhoto()Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 213
    iget v0, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Id:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Contact object should be set by calling one of the Contacts methods."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Id:I

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 216
    const-string v2, "photo"

    .line 215
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 217
    .local v1, "u":Landroid/net/Uri;
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 218
    .local v8, "crsr":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 219
    .local v7, "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 221
    .local v6, "b":[B
    if-eqz v6, :cond_1

    .line 222
    new-instance v9, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    invoke-direct {v9}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;-><init>()V

    .line 223
    .local v9, "isw":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    array-length v0, v6

    invoke-virtual {v9, v6, v10, v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->InitializeFromBytesArray([BII)V

    .line 224
    new-instance v7, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .end local v7    # "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-direct {v7}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 225
    .restart local v7    # "bw":Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-virtual {v9}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v7, p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize2(Ljava/io/InputStream;)V

    .line 228
    .end local v6    # "b":[B
    .end local v9    # "isw":Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 229
    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->DisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->PhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    const-string v1, ", Starred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Starred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Notes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Notes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TimesContacted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    iget v1, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->TimesContacted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LastTimeContacted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->LastTimeContacted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanywheresoftware/b4a/phone/ContactsWrapper$Contact;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
