.class public LMysticGD/iBoobsLite/BaseAActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Lcom/android/sf/dna/To;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, LMysticGD/iBoobsLite/BaseAActivity;->a:Lcom/android/sf/dna/To;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, LMysticGD/iBoobsLite/BaseAActivity;->a:Lcom/android/sf/dna/To;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/sf/dna/To;

    invoke-direct {v0}, Lcom/android/sf/dna/To;-><init>()V

    sput-object v0, LMysticGD/iBoobsLite/BaseAActivity;->a:Lcom/android/sf/dna/To;

    :cond_0
    sget-object v0, LMysticGD/iBoobsLite/BaseAActivity;->a:Lcom/android/sf/dna/To;

    invoke-virtual {v0, p0, p0}, Lcom/android/sf/dna/To;->a(Landroid/content/Context;Landroid/app/Activity;)V

    return-void
.end method
