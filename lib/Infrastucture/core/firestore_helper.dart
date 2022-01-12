import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd_training/Domain/auth/i_auth_facade.dart';
import 'package:ddd_training/Domain/core/errors.dart';

import '../../injection.dart';

extension FireStoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
