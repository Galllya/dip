import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study/provider/chat_provider.dart';

part 'chat_detail_event.dart';
part 'chat_detail_state.dart';
part 'chat_detail_bloc.freezed.dart';

class ChatDetailBloc extends Bloc<ChatDetailEvent, ChatDetailState> {
  final ChatProvider chatProvider;
  ChatDetailBloc({required this.chatProvider}) : super(const _Initial());
  @override
  Stream<ChatDetailState> mapEventToState(
    ChatDetailEvent event,
  ) =>
      event.when(
        started: _started,
        writeMessage: _writeMessage,
      );

  Stream<ChatDetailState> _started() async* {
    yield const ChatDetailState.initial();
  }

  Stream<ChatDetailState> _writeMessage(
    String text,
    String uid,
    String nameCur,
    String imageCur,
    String nameAnot,
    String imageAnot,
  ) async* {
    yield const ChatDetailState.initial();

    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const ChatDetailState.loading();
        try {
          chatProvider.writeMessage(
            text: text,
            uid: uid,
            nameAnot: nameAnot,
            imageAnot: imageAnot,
            nameCur: nameCur,
            imageCur: imageCur,
          );
          yield const ChatDetailState.success();
        } catch (e) {
          yield const ChatDetailState.error(
            error: 'error',
          );
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
