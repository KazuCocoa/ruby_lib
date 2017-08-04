# Tests specifically for areas where the web_context differs in behaviour
describe 'the web context' do
  t 'get_android_inspect' do
    text('Web').click

    wait { available_contexts.size >= 2 }
    web_view_context = available_contexts.find { |c| c.start_with? 'WEBVIEW' } # Get WEBVIEW_59153.1 for example.

    set_context web_view_context
    current_context.must_equal web_view_context
    sleep 1  # Give a chance to load
    page.start_with?("\nhtml\n").must_equal true
  end

  t 'after_last' do
    set_context 'NATIVE_APP'
    back_click
  end
end
