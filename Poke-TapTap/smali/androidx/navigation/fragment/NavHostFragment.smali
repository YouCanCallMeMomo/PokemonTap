.class public Landroidx/navigation/fragment/NavHostFragment;
.super Landroidx/fragment/app/Fragment;
.source "NavHostFragment.kt"

# interfaces
.implements Landroidx/navigation/NavHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/NavHostFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavHostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavHostFragment.kt\nandroidx/navigation/fragment/NavHostFragment\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt__NavigatorProviderKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n*L\n1#1,395:1\n114#2,2:396\n1#3:398\n233#4,3:399\n233#4,3:402\n*S KotlinDebug\n*F\n+ 1 NavHostFragment.kt\nandroidx/navigation/fragment/NavHostFragment\n*L\n205#1:396,2\n275#1:399,3\n282#1:402,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 12\u00020\u00012\u00020\u0002:\u00011B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0017J\u0012\u0010\u0019\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0017J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0015J\u0010\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012H\u0015J\u0010\u0010\u001e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020 0\u001fH\u0015J&\u0010!\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001a\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\"\u0010+\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010,\u001a\u00020-2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0017J\u0010\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u001bH\u0017J\u0008\u00100\u001a\u00020\u0016H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010&\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(\u00a8\u00062"
    }
    d2 = {
        "Landroidx/navigation/fragment/NavHostFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/navigation/NavHost;",
        "<init>",
        "()V",
        "navHostController",
        "Landroidx/navigation/NavHostController;",
        "getNavHostController$navigation_fragment_release",
        "()Landroidx/navigation/NavHostController;",
        "navHostController$delegate",
        "Lkotlin/Lazy;",
        "viewParent",
        "Landroid/view/View;",
        "graphId",
        "",
        "defaultNavHost",
        "",
        "navController",
        "Landroidx/navigation/NavController;",
        "getNavController",
        "()Landroidx/navigation/NavController;",
        "onAttach",
        "",
        "context",
        "Landroid/content/Context;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateNavHostController",
        "onCreateNavController",
        "createFragmentNavigator",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "containerId",
        "getContainerId",
        "()I",
        "onViewCreated",
        "view",
        "onInflate",
        "attrs",
        "Landroid/util/AttributeSet;",
        "onSaveInstanceState",
        "outState",
        "onDestroyView",
        "Companion",
        "navigation-fragment_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

.field private static final KEY_DEFAULT_NAV_HOST:Ljava/lang/String; = "android-support-nav:fragment:defaultHost"

.field public static final KEY_GRAPH_ID:Ljava/lang/String; = "android-support-nav:fragment:graphId"

.field private static final KEY_NAV_CONTROLLER_STATE:Ljava/lang/String; = "android-support-nav:fragment:navControllerState"

.field public static final KEY_START_DESTINATION_ARGS:Ljava/lang/String; = "android-support-nav:fragment:startDestinationArgs"


# instance fields
.field private defaultNavHost:Z

.field private graphId:I

.field private final navHostController$delegate:Lkotlin/Lazy;

.field private viewParent:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$3MKQtQloKtSGmeBwffYeiWjwAJo(Landroidx/navigation/fragment/NavHostFragment;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->navHostController_delegate$lambda$6$lambda$5$lambda$4(Landroidx/navigation/fragment/NavHostFragment;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AMzD0AXAI0-V8D64ZagkWZgFtqo(Landroidx/navigation/NavHostController;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->navHostController_delegate$lambda$6$lambda$5$lambda$2(Landroidx/navigation/NavHostController;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i8-GzfWsEFHZTqxzfFiFVjpftC8(Landroidx/navigation/fragment/NavHostFragment;)Landroidx/navigation/NavHostController;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->navHostController_delegate$lambda$6(Landroidx/navigation/fragment/NavHostFragment;)Landroidx/navigation/NavHostController;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/fragment/NavHostFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/fragment/NavHostFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 77
    new-instance v0, Landroidx/navigation/fragment/NavHostFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/navigation/fragment/NavHostFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/fragment/NavHostFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController$delegate:Lkotlin/Lazy;

    .line 76
    return-void
.end method

.method public static final create(I)Landroidx/navigation/fragment/NavHostFragment;
    .locals 1
    .param p0, "graphResId"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->create(I)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v0

    .line 392
    return-object v0
.end method

.method public static final create(ILandroid/os/Bundle;)Landroidx/navigation/fragment/NavHostFragment;
    .locals 1
    .param p0, "graphResId"    # I
    .param p1, "startDestinationArgs"    # Landroid/os/Bundle;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/navigation/fragment/NavHostFragment$Companion;->create(ILandroid/os/Bundle;)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v0

    .line 392
    return-object v0
.end method

.method public static final findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 361
    return-object v0
.end method

.method private final getContainerId()I
    .locals 2

    .line 246
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getId()I

    move-result v0

    .line 247
    .local v0, "id":I
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 248
    move v1, v0

    goto :goto_0

    .line 249
    :cond_0
    sget v1, Landroidx/navigation/fragment/R$id;->nav_host_fragment_container:I

    .line 247
    :goto_0
    return v1
.end method

.method private static final navHostController_delegate$lambda$6(Landroidx/navigation/fragment/NavHostFragment;)Landroidx/navigation/NavHostController;
    .locals 8
    .param p0, "this$0"    # Landroidx/navigation/fragment/NavHostFragment;

    .line 79
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 78
    nop

    .line 82
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/navigation/NavHostController;

    invoke-direct {v1, v0}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .local v2, "$this$navHostController_delegate_u24lambda_u246_u24lambda_u245":Landroidx/navigation/NavHostController;
    const/4 v3, 0x0

    .line 83
    .local v3, "$i$a$-apply-NavHostFragment$navHostController$2$1":I
    move-object v4, p0

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v2, v4}, Landroidx/navigation/NavHostController;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 84
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v4

    const-string v5, "<get-viewModelStore>(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    .line 85
    invoke-virtual {p0, v2}, Landroidx/navigation/fragment/NavHostFragment;->onCreateNavHostController(Landroidx/navigation/NavHostController;)V

    .line 86
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v4

    const-string v5, "android-support-nav:fragment:navControllerState"

    invoke-virtual {v4, v5}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .local v4, "it":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 87
    .local v6, "$i$a$-let-NavHostFragment$navHostController$2$1$1":I
    invoke-virtual {v2, v4}, Landroidx/navigation/NavHostController;->restoreState(Landroid/os/Bundle;)V

    .line 88
    nop

    .line 86
    .end local v4    # "it":Landroid/os/Bundle;
    .end local v6    # "$i$a$-let-NavHostFragment$navHostController$2$1$1":I
    nop

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v4

    new-instance v6, Landroidx/navigation/fragment/NavHostFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2}, Landroidx/navigation/fragment/NavHostFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavHostController;)V

    invoke-virtual {v4, v5, v6}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 92
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v4

    const-string v5, "android-support-nav:fragment:graphId"

    invoke-virtual {v4, v5}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    .local v4, "bundle":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 93
    .local v6, "$i$a$-let-NavHostFragment$navHostController$2$1$3":I
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 94
    nop

    .line 92
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "$i$a$-let-NavHostFragment$navHostController$2$1$3":I
    nop

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v4

    new-instance v6, Landroidx/navigation/fragment/NavHostFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Landroidx/navigation/fragment/NavHostFragment$$ExternalSyntheticLambda2;-><init>(Landroidx/navigation/fragment/NavHostFragment;)V

    invoke-virtual {v4, v5, v6}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 102
    iget v4, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    if-eqz v4, :cond_2

    .line 104
    iget v4, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    invoke-virtual {v2, v4}, Landroidx/navigation/NavHostController;->setGraph(I)V

    goto :goto_2

    .line 107
    :cond_2
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 108
    .local v4, "args":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 109
    .local v5, "graphId":I
    :goto_0
    if-eqz v4, :cond_4

    const-string v6, "android-support-nav:fragment:startDestinationArgs"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 110
    .local v6, "startDestinationArgs":Landroid/os/Bundle;
    :goto_1
    if-eqz v5, :cond_5

    .line 111
    invoke-virtual {v2, v5, v6}, Landroidx/navigation/NavHostController;->setGraph(ILandroid/os/Bundle;)V

    .line 114
    .end local v4    # "args":Landroid/os/Bundle;
    .end local v5    # "graphId":I
    .end local v6    # "startDestinationArgs":Landroid/os/Bundle;
    :cond_5
    :goto_2
    nop

    .line 82
    .end local v2    # "$this$navHostController_delegate_u24lambda_u246_u24lambda_u245":Landroidx/navigation/NavHostController;
    .end local v3    # "$i$a$-apply-NavHostFragment$navHostController$2$1":I
    nop

    .line 114
    return-object v1

    .line 79
    .end local v0    # "context":Landroid/content/Context;
    :cond_6
    const/4 v0, 0x0

    .line 80
    .local v0, "$i$a$-checkNotNull-NavHostFragment$navHostController$2$context$1":I
    nop

    .line 79
    .end local v0    # "$i$a$-checkNotNull-NavHostFragment$navHostController$2$context$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavController cannot be created before the fragment is attached"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final navHostController_delegate$lambda$6$lambda$5$lambda$2(Landroidx/navigation/NavHostController;)Landroid/os/Bundle;
    .locals 2
    .param p0, "$this_apply"    # Landroidx/navigation/NavHostController;

    .line 90
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->saveState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v1, "EMPTY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static final navHostController_delegate$lambda$6$lambda$5$lambda$4(Landroidx/navigation/fragment/NavHostFragment;)Landroid/os/Bundle;
    .locals 3
    .param p0, "this$0"    # Landroidx/navigation/fragment/NavHostFragment;

    .line 96
    iget v0, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    iget v1, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android-support-nav:fragment:graphId"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 98
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected createFragmentNavigator()Landroidx/navigation/Navigator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use {@link #onCreateNavController(NavController)}"
    .end annotation

    .line 220
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator;

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "getChildFragmentManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment;->getContainerId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/navigation/fragment/FragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    check-cast v0, Landroidx/navigation/Navigator;

    return-object v0
.end method

.method public final getNavController()Landroidx/navigation/NavController;
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getNavHostController$navigation_fragment_release()Landroidx/navigation/NavHostController;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    return-object v0
.end method

.method public final getNavHostController$navigation_fragment_release()Landroidx/navigation/NavHostController;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavHostController;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 140
    iget-boolean v0, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 143
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 148
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getNavHostController$navigation_fragment_release()Landroidx/navigation/NavHostController;

    .line 149
    if-eqz p1, :cond_0

    .line 150
    const-string v0, "android-support-nav:fragment:defaultHost"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    .line 152
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 159
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method protected onCreateNavController(Landroidx/navigation/NavController;)V
    .locals 5
    .param p1, "navController"    # Landroidx/navigation/NavController;
    .annotation runtime Lkotlin/Deprecated;
        message = "Override {@link #onCreateNavHostController(NavHostController)} to gain\n      access to the full {@link NavHostController} that is created by this NavHostFragment."
    .end annotation

    const-string v0, "navController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .line 206
    new-instance v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "getChildFragmentManager(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    check-cast v1, Landroidx/navigation/Navigator;

    .line 205
    nop

    .local v0, "$this$plusAssign$iv":Landroidx/navigation/NavigatorProvider;
    .local v1, "navigator$iv":Landroidx/navigation/Navigator;
    const/4 v2, 0x0

    .line 396
    .local v2, "$i$f$plusAssign":I
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 397
    nop

    .line 207
    .end local v0    # "$this$plusAssign$iv":Landroidx/navigation/NavigatorProvider;
    .end local v1    # "navigator$iv":Landroidx/navigation/Navigator;
    .end local v2    # "$i$f$plusAssign":I
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->createFragmentNavigator()Landroidx/navigation/Navigator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 208
    return-void
.end method

.method protected onCreateNavHostController(Landroidx/navigation/NavHostController;)V
    .locals 1
    .param p1, "navHostController"    # Landroidx/navigation/NavHostController;

    const-string v0, "navHostController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavController;

    invoke-virtual {p0, v0}, Landroidx/navigation/fragment/NavHostFragment;->onCreateNavController(Landroidx/navigation/NavController;)V

    .line 183
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "containerView":Landroidx/fragment/app/FragmentContainerView;
    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment;->getContainerId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentContainerView;->setId(I)V

    .line 234
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 5

    .line 299
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 300
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .local v0, "it":Landroid/view/View;
    const/4 v2, 0x0

    .line 301
    .local v2, "$i$a$-let-NavHostFragment$onDestroyView$1":I
    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getNavHostController$navigation_fragment_release()Landroidx/navigation/NavHostController;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 302
    invoke-static {v0, v1}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 304
    :cond_0
    nop

    .line 300
    .end local v0    # "it":Landroid/view/View;
    .end local v2    # "$i$a$-let-NavHostFragment$onDestroyView$1":I
    nop

    .line 305
    :cond_1
    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    .line 306
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 275
    sget-object v0, Landroidx/navigation/R$styleable;->NavHost:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "obtainStyledAttributes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$use$iv":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 399
    .local v2, "$i$f$use":I
    move-object v3, v0

    .local v3, "navHost":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    .line 277
    .local v4, "$i$a$-use-NavHostFragment$onInflate$1":I
    sget v5, Landroidx/navigation/R$styleable;->NavHost_navGraph:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 278
    .local v5, "graphId":I
    if-eqz v5, :cond_0

    .line 279
    iput v5, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 281
    :cond_0
    nop

    .end local v3    # "navHost":Landroid/content/res/TypedArray;
    .end local v4    # "$i$a$-use-NavHostFragment$onInflate$1":I
    .end local v5    # "graphId":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 399
    nop

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 400
    .local v4, "$i$a$-also-TypedArrayKt$use$1$iv":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 401
    nop

    .line 399
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-also-TypedArrayKt$use$1$iv":I
    nop

    .line 282
    .end local v0    # "$this$use$iv":Landroid/content/res/TypedArray;
    .end local v2    # "$i$f$use":I
    sget-object v0, Landroidx/navigation/fragment/R$styleable;->NavHostFragment:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .restart local v0    # "$this$use$iv":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 402
    .local v1, "$i$f$use":I
    move-object v2, v0

    .local v2, "array":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 283
    .local v3, "$i$a$-use-NavHostFragment$onInflate$2":I
    sget v4, Landroidx/navigation/fragment/R$styleable;->NavHostFragment_defaultNavHost:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 284
    .local v4, "defaultHost":Z
    if-eqz v4, :cond_1

    .line 285
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    .line 287
    :cond_1
    nop

    .end local v2    # "array":Landroid/content/res/TypedArray;
    .end local v3    # "$i$a$-use-NavHostFragment$onInflate$2":I
    .end local v4    # "defaultHost":Z
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 402
    nop

    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 403
    .local v3, "$i$a$-also-TypedArrayKt$use$1$iv":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 404
    nop

    .line 402
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-also-TypedArrayKt$use$1$iv":I
    nop

    .line 288
    .end local v0    # "$this$use$iv":Landroid/content/res/TypedArray;
    .end local v1    # "$i$f$use":I
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 293
    iget-boolean v0, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "android-support-nav:fragment:defaultHost"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 256
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getNavHostController$navigation_fragment_release()Landroidx/navigation/NavHostController;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController;

    invoke-static {p1, v0}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 260
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    .line 262
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getNavHostController$navigation_fragment_release()Landroidx/navigation/NavHostController;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavController;

    invoke-static {v0, v1}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 266
    :cond_0
    return-void

    .line 398
    :cond_1
    const/4 v0, 0x0

    .line 256
    .local v0, "$i$a$-check-NavHostFragment$onViewCreated$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created host view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a ViewGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-check-NavHostFragment$onViewCreated$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
