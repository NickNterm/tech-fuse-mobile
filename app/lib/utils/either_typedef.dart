import 'package:dartz/dartz.dart';

import '../core/errors/failures.dart';

typedef FutureEither<Success> = Future<Either<Failure, Success>>;
