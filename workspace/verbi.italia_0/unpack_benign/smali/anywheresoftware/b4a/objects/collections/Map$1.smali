.class Lanywheresoftware/b4a/objects/collections/Map$1;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$IterableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/collections/Map;->Keys()Lanywheresoftware/b4a/BA$IterableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/objects/collections/Map;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/collections/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/collections/Map$1;->this$0:Lanywheresoftware/b4a/objects/collections/Map;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$1;->this$0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/collections/Map;->GetKeyAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lanywheresoftware/b4a/objects/collections/Map$1;->this$0:Lanywheresoftware/b4a/objects/collections/Map;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/Map;->getSize()I

    move-result v0

    return v0
.end method
