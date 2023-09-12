import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

import '../../../constants/app_size.dart';
import '../../../localization/localization_utils.dart';
import '../../../utils/utils.dart';

class CustomEditText extends StatefulWidget {
  const CustomEditText({super.key, required this.onSendText});
  final void Function(String) onSendText;

  @override
  State<CustomEditText> createState() => _CustomEditTextState();
}

class _CustomEditTextState extends State<CustomEditText> {
  final stt.SpeechToText _speechToText = stt.SpeechToText();
  final controller = TextEditingController();

  @override
  void dispose() {
    _stopListening();
    controller.dispose();
    super.dispose();
  }

  Future<void> _initSpeech() async {
    if (!_speechToText.isAvailable) {
      await _speechToText.initialize(onError: (error) => xLog.e(error));
    }
  }

  Future<void> _stopListening() async {
    if (_speechToText.isAvailable) {
      await _speechToText.stop();
      setState(() {});
    }
  }

  void _startListening() async {
    await _initSpeech();
    if (_speechToText.isAvailable) {
      await _speechToText.listen(
          pauseFor: const Duration(seconds: 5), onResult: _onSpeechResult);
      setState(() {});
    }
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      if (_speechToText.isListening) {
        controller.text = result.recognizedWords;
        controller.selection =
            TextSelection.collapsed(offset: controller.text.length);
      }
    });
  }

  void _handleSendText() async {
    await _stopListening();
    if (controller.text.isEmpty) return;
    widget.onSendText(controller.text);
    controller.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: _speechToText.isListening,
          child: AnimatedOpacity(
            opacity: _speechToText.isListening ? 1 : 0,
            duration: const Duration(seconds: 1),
            child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: Sizes.p8, horizontal: Sizes.p12),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(Sizes.p12)),
                child: Text(
                  S.of(context).is_listening_gpt,
                  style: const TextStyle(
                    fontSize: Sizes.p16,
                  ),
                )),
          ),
        ),
        gapH8,
        Material(
          borderRadius: BorderRadius.circular(Sizes.p12),
          elevation: 8,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: controller,
                decoration: InputDecoration(
                  hintText: S.of(context).hint_edit_text,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Sizes.p12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(Sizes.p12),
                ),
              )),
              IconButton(
                onPressed: () {
                  _speechToText.isListening
                      ? _stopListening()
                      : _startListening();
                },
                icon: Icon(
                  Icons.mic,
                  size: Sizes.p24,
                  color: _speechToText.isListening
                      ? Theme.of(context).colorScheme.primary
                      : null,
                ),
              ),
              IconButton(
                onPressed: _handleSendText,
                icon: Icon(
                  Icons.send_rounded,
                  size: Sizes.p24,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
