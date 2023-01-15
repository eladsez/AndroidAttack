.class Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jraf/android/backport/switchwidget/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jraf/android/backport/switchwidget/SwitchPreference;


# direct methods
.method private constructor <init>(Lorg/jraf/android/backport/switchwidget/SwitchPreference;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;->this$0:Lorg/jraf/android/backport/switchwidget/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jraf/android/backport/switchwidget/SwitchPreference;Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;-><init>(Lorg/jraf/android/backport/switchwidget/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;->this$0:Lorg/jraf/android/backport/switchwidget/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->access$0(Lorg/jraf/android/backport/switchwidget/SwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 66
    :goto_1
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;->this$0:Lorg/jraf/android/backport/switchwidget/SwitchPreference;

    invoke-virtual {v0, p2}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
