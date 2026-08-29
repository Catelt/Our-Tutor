import 'dart:io';

void main() {
  final dir = Directory('lib');
  final files = dir.listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.contains('button_dropdown_'))
      .toList();
      
  for (final file in files) {
    var content = file.readAsStringSync();
    content = content.replaceAll('DropdownMenuItem<', 'DropdownItem<');
    
    content = content.replaceAll('value: selectedItems,', 'valueListenable: ValueNotifier(selectedItems),');
    content = content.replaceAll(
      'value: selectedItems.isEmpty ? null : selectedItems.last,', 
      'valueListenable: ValueNotifier(selectedItems.isEmpty ? null : selectedItems.last),'
    );
    
    file.writeAsStringSync(content);
    print("Fixed \${file.path}");
  }
}
