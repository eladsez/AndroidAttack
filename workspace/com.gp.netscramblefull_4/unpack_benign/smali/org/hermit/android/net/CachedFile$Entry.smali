.class public final Lorg/hermit/android/net/CachedFile$Entry;
.super Ljava/lang/Object;
.source "CachedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/net/CachedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public date:J

.field public name:Ljava/lang/String;

.field public path:Ljava/io/File;

.field public final url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/net/CachedFile$Entry;->path:Ljava/io/File;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/hermit/android/net/CachedFile$Entry;->date:J

    .line 60
    iput-object p1, p0, Lorg/hermit/android/net/CachedFile$Entry;->url:Ljava/net/URL;

    .line 61
    iput-object p2, p0, Lorg/hermit/android/net/CachedFile$Entry;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/hermit/android/net/CachedFile$Entry;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/hermit/android/net/CachedFile$Entry;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-void
.end method
