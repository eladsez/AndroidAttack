.class public Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;
.super Landroid/content/ContentProvider;
.source "FingerNotesProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.blogspot.mvnblogbuild.FingerNotesProvider"

.field public static final CONTACT_CONTENT_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MIME_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final NOTE_TABLE:Ljava/lang/String; = "notes"

.field static final URI_NOTES:I = 0x0

.field static final URI_NOTES_ID:I = 0x1

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbConnector:Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    const-class v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 21
    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->LOG_TAG:Ljava/lang/String;

    .line 28
    const-string v0, "content://com.blogspot.mvnblogbuild.FingerNotesProvider/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->CONTACT_CONTENT_URI:Landroid/net/Uri;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->MIME_TYPES:Ljava/util/HashMap;

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 38
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.blogspot.mvnblogbuild.FingerNotesProvider"

    const-string v2, "notes"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.blogspot.mvnblogbuild.FingerNotesProvider"

    const-string v2, "notes/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->MIME_TYPES:Ljava/util/HashMap;

    const-string v1, ".png"

    const-string v2, "application/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 104
    const-string v1, "Not supported by this provider"

    .line 103
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 45
    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 53
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->MIME_TYPES:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    const/4 v2, 0x0

    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 47
    :pswitch_0
    const-string v2, "vnd.android.cursor.dir/vnd.com.blogspot.mvnblogbuild.FingerNotesProvider.notes"

    goto :goto_0

    .line 49
    :pswitch_1
    const-string v2, "vnd.android.cursor.item/vnd.com.blogspot.mvnblogbuild.FingerNotesProvider.notes"

    goto :goto_0

    .line 55
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->MIME_TYPES:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 99
    const-string v1, "Not supported by this provider"

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->dbConnector:Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "fTmp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->getfilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "filePath":Ljava/lang/String;
    sget-object v4, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->INTERNAL_STORAGE_FLAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 142
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    const/high16 v4, 0x10000000

    .line 143
    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    return-object v4

    .line 140
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "f":Ljava/io/File;
    goto :goto_0

    .line 147
    :cond_1
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 71
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :pswitch_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string p5, "alarm_date DESC, updated_date DESC"

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->dbConnector:Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 92
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->CONTACT_CONTENT_URI:Landroid/net/Uri;

    .line 92
    invoke-interface {v8, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 94
    return-object v8

    .line 78
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, "id":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " _id= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND _id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 84
    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 109
    sget-object v2, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 121
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrong URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "id":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " _id= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 123
    .end local v1    # "id":Ljava/lang/String;
    :goto_0
    :pswitch_1
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->dbConnector:Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    invoke-virtual {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 124
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "notes"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "cnt":I
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 126
    return v0

    .line 117
    .end local v0    # "cnt":I
    .restart local v1    # "id":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " AND _id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 119
    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
