.class final Lcom/crashlytics/android/c/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/f;->a(Landroid/app/Activity;La/a/a/a/a/g/o;Lcom/crashlytics/android/c/f$a;)Lcom/crashlytics/android/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/f$b;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/f$1;->a:Lcom/crashlytics/android/c/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/crashlytics/android/c/f$1;->a:Lcom/crashlytics/android/c/f$b;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/crashlytics/android/c/f$b;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
