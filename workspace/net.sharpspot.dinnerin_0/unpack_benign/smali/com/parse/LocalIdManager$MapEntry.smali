.class Lcom/parse/LocalIdManager$MapEntry;
.super Ljava/lang/Object;
.source "LocalIdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/LocalIdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapEntry"
.end annotation


# instance fields
.field objectId:Ljava/lang/String;

.field retainCount:I

.field final synthetic this$0:Lcom/parse/LocalIdManager;


# direct methods
.method private constructor <init>(Lcom/parse/LocalIdManager;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parse/LocalIdManager$MapEntry;->this$0:Lcom/parse/LocalIdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/LocalIdManager;Lcom/parse/LocalIdManager$MapEntry;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager$MapEntry;-><init>(Lcom/parse/LocalIdManager;)V

    return-void
.end method
