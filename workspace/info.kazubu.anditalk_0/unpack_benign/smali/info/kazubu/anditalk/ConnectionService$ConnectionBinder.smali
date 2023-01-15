.class Linfo/kazubu/anditalk/ConnectionService$ConnectionBinder;
.super Landroid/os/Binder;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/kazubu/anditalk/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionBinder"
.end annotation


# instance fields
.field final synthetic this$0:Linfo/kazubu/anditalk/ConnectionService;


# direct methods
.method constructor <init>(Linfo/kazubu/anditalk/ConnectionService;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Linfo/kazubu/anditalk/ConnectionService$ConnectionBinder;->this$0:Linfo/kazubu/anditalk/ConnectionService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Linfo/kazubu/anditalk/ConnectionService;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Linfo/kazubu/anditalk/ConnectionService$ConnectionBinder;->this$0:Linfo/kazubu/anditalk/ConnectionService;

    return-object v0
.end method
