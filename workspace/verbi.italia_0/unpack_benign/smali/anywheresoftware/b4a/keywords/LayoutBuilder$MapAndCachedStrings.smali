.class Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;
.super Ljava/lang/Object;
.source "LayoutBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/keywords/LayoutBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapAndCachedStrings"
.end annotation


# instance fields
.field public final cachedStrings:[Ljava/lang/String;

.field public final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 0
    .param p2, "cachedStrings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;->map:Ljava/util/HashMap;

    .line 62
    iput-object p2, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$MapAndCachedStrings;->cachedStrings:[Ljava/lang/String;

    .line 63
    return-void
.end method
