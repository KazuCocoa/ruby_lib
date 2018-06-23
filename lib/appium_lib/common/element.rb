require 'rexml/document'

module Appium
  class Element
    Rectangle = Struct.new(:x, :y, :width, :height)

    def self.on(driver)
      xml = driver.page_source
      Element.new
    end

    def initialize
      # TODO: remove
      @page_source = %(<?xml version="1.0" encoding="UTF-8"?><hierarchy rotation="0"><android.widget.FrameLayout index="0" text="" class="android.widget.FrameLayout" package="io.appium.android.apis" content-desc="" checkable="false" checked="false" clickable="false" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,0][1080,1794]" resource-id="" instance="0"><android.view.ViewGroup index="0" text="" class="android.view.ViewGroup" package="io.appium.android.apis" content-desc="" checkable="false" checked="false" clickable="false" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,0][1080,1794]" resource-id="android:id/decor_content_parent" instance="0"><android.widget.FrameLayout index="0" text="" class="android.widget.FrameLayout" package="io.appium.android.apis" content-desc="" checkable="false" checked="false" clickable="false" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,63][1080,210]" resource-id="android:id/action_bar_container" instance="1"><android.view.ViewGroup index="0" text="" class="android.view.ViewGroup" package="io.appium.android.apis" content-desc="" checkable="false" checked="false" clickable="false" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,63][1080,210]" resource-id="android:id/action_bar" instance="1"><android.widget.TextView index="0" text="API Demos" class="android.widget.TextView" package="io.appium.android.apis" content-desc="" checkable="false" checked="false" clickable="false" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[42,101][305,172]" resource-id="" instance="0"/></android.view.ViewGroup></android.widget.FrameLayout><android.widget.FrameLayout index="1" text="" class="android.widget.FrameLayout" package="io.appium.android.apis" content-desc="" checkable="false" checked="false" clickable="false" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,210][1080,1794]" resource-id="android:id/content" instance="2"><android.widget.ListView index="0" text="" class="android.widget.ListView" package="io.appium.android.apis" content-desc="" checkable="false" checked="false" clickable="false" enabled="true" focusable="true" focused="true" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,210][1080,1794]" resource-id="android:id/list" instance="0"><android.widget.TextView index="0" text="Access'ibility" class="android.widget.TextView" package="io.appium.android.apis" content-desc="Access'ibility" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,210][1080,336]" resource-id="android:id/text1" instance="1"/><android.widget.TextView index="1" text="Accessibility" class="android.widget.TextView" package="io.appium.android.apis" content-desc="Accessibility" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,339][1080,465]" resource-id="android:id/text1" instance="2"/><android.widget.TextView index="2" text="Animation" class="android.widget.TextView" package="io.appium.android.apis" content-desc="Animation" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,468][1080,594]" resource-id="android:id/text1" instance="3"/><android.widget.TextView index="3" text="App" class="android.widget.TextView" package="io.appium.android.apis" content-desc="App" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,597][1080,723]" resource-id="android:id/text1" instance="4"/><android.widget.TextView index="4" text="Content" class="android.widget.TextView" package="io.appium.android.apis" content-desc="Content" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,726][1080,852]" resource-id="android:id/text1" instance="5"/><android.widget.TextView index="5" text="Graphics" class="android.widget.TextView" package="io.appium.android.apis" content-desc="Graphics" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,855][1080,981]" resource-id="android:id/text1" instance="6"/><android.widget.TextView index="6" text="Media" class="android.widget.TextView" package="io.appium.android.apis" content-desc="Media" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,984][1080,1110]" resource-id="android:id/text1" instance="7"/><android.widget.TextView index="7" text="NFC" class="android.widget.TextView" package="io.appium.android.apis" content-desc="NFC" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,1113][1080,1239]" resource-id="android:id/text1" instance="8"/><android.widget.TextView index="8" text="OS" class="android.widget.TextView" package="io.appium.android.apis" content-desc="OS" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,1242][1080,1368]" resource-id="android:id/text1" instance="9"/><android.widget.TextView index="9" text="Preference" class="android.widget.TextView" package="io.appium.android.apis" content-desc="Preference" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,1371][1080,1497]" resource-id="android:id/text1" instance="10"/><android.widget.TextView index="10" text="Text" class="android.widget.TextView" package="io.appium.android.apis" content-desc="Text" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,1500][1080,1626]" resource-id="android:id/text1" instance="11"/><android.widget.TextView index="11" text="Views" class="android.widget.TextView" package="io.appium.android.apis" content-desc="Views" checkable="false" checked="false" clickable="true" enabled="true" focusable="false" focused="false" scrollable="false" long-clickable="false" password="false" selected="false" bounds="[0,1629][1080,1755]" resource-id="android:id/text1" instance="12"/></android.widget.ListView></android.widget.FrameLayout></android.view.ViewGroup></android.widget.FrameLayout></hierarchy>)
      @full_source = ::REXML::Document.new @page_source
    end

    def all
      ::REXML::XPath.match(@full_source, '//').select do |node|
        next if node.is_a? REXML::XMLDecl
        next unless node.has_attributes?

        node.attributes.size > 1
      end
    end

    # @example
    #
    #     Appium::Element.on(driver).actionable
    #     #=> [<android.widget.FrameLayout index='0' text='' class='android.widget.FrameLayout' package='io.appium.android.apis' content-desc='' checkable='false' checked='false' clickable='false' enabled='true' focusable='false' focused='false' scrollable='false' long-clickable='false' password='false' selected='false' bounds='[0,0][1080,1794]' resource-id='' instance='0' b='o' bounds_array='[[0, 0], [1080, 1794]]'> ... </>,...]
    #
    EVAL_ATTRIBUTES = %w(checkable clickable focusable scrollable long_clickable enabled).freeze
    def actionable
      all.select { |node|
        EVAL_ATTRIBUTES.find { |attribute| node.attributes[attribute] == 'true' }
      }.select { |node|
        !node.attributes['bounds'].nil?
      }
    end

    #
    # Return a rectangle of actionable[index]
    #
    # @example
    #
    #     Appium::Element.on(driver).actionable_rect 1
    #     #=> #<struct Appium::Element::Rectangle x=0, y=0, width=1080, height=1794
    #
    def actionable_rect(index)
      return if actionable[index].nil?
      return if actionable[index].attributes['bounds'].nil?

      x, y, width, height = actionable[index].attributes['bounds'].scan(/\d*/).reject(&:empty?).map(&:to_i)
      Rectangle.new x, y, width, height
    end
  end
end
