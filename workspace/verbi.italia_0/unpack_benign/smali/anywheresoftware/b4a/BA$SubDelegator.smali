.class public interface abstract Lanywheresoftware/b4a/BA$SubDelegator;
.super Ljava/lang/Object;
.source "BA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/BA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubDelegator"
.end annotation


# static fields
.field public static final SubNotFound:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 764
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/BA$SubDelegator;->SubNotFound:Ljava/lang/Object;

    .line 763
    return-void
.end method


# virtual methods
.method public abstract callSub(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
