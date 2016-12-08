require "minitest/autorun"
require "minitest/pride"
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

class JungleBeatTest < Minitest::Test

  def test_create_Jungle_Beat
    jb = JungleBeat.new
    assert_equal LinkedList, jb.linked_list.class
  end

  def test_head_still_nil
    jb = JungleBeat.new
    assert_equal nil, jb.linked_list.head
  end

  def test_it_can_append_data
    jb = JungleBeat.new
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_adding_data_to_new_list
    jb = JungleBeat.new
    jb.append("deep doo ditt")  
    assert_equal "deep", jb.linked_list.head.data
  end

  def test_new_list_can_count_nodes
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal 6, jb.linked_list.count
  end

  def test_list_head_is_adding_data
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal "deep", jb.linked_list.head.data
  end

  def test_next_node_has_doo_data
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal "doo", jb.linked_list.head.next_node.data
  end

  def test_playing_the_beats

    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")

    assert_equal "deep doo ditt woo hoo shu", jb.linked_list.to_string
  end

end
