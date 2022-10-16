import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/loading.dart';

final _authProvider = Provider<FirebaseAuth>((_) => FirebaseAuth.instance);

final authUserProvider = StreamProvider<User?>(
  (ref) => ref.watch(_authProvider).userChanges(),
);

final userIdProvider = Provider<AsyncValue<String?>>(
  (ref) => ref.watch(authUserProvider).whenData((user) => user?.uid),
);

final isSignedInProvider = Provider(
  (ref) => ref.watch(userIdProvider).whenData((userId) => userId != null),
);

/// Google でサインインする。
final signInWithGoogleProvider = Provider<Future<UserCredential?> Function()>(
  (ref) => () async {
    final googleAuthProvider = GoogleAuthProvider()
      ..addScope('https://www.googleapis.com/auth/contacts.readonly')
      ..setCustomParameters(<dynamic, dynamic>{
        'login_hint': 'user@example.com',
      });
    try {
      ref.read(overlayLoadingProvider.notifier).update((state) => true);
      final userCredential = await ref.read(_authProvider).signInWithPopup(googleAuthProvider);
      return userCredential;
    } finally {
      ref.read(overlayLoadingProvider.notifier).update((state) => false);
    }
  },
);

/// FirebaseAuth からログアウトする。
final signOutProvider = Provider<Future<void> Function()>(
  (ref) => () async {
    try {
      ref.read(overlayLoadingProvider.notifier).update((state) => true);
      await ref.read(_authProvider).signOut();
    } finally {
      ref.read(overlayLoadingProvider.notifier).update((state) => false);
    }
  },
);
