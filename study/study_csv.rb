require 'csv'
require 'pry-byebug'
class Area
#１行で１インスタンス モデル　
# キー：カラム　バリュー：データのハッシュを持つ。 
#初期化　カラムごとににデータを追加
  def initialize (code:,country_url:,url:,location_type:,name:,parent_id:,lat:,lng:,ancestry:,sort_order:,searchable:)
    @h = Hash[*args].symbolize_keys
    byebug

  end
# カラム名で呼び出すと要素をprintする　　引数はカラム名
@h.each_key do |method_name|
  class_eval <<-EOF
    def print #{method_name}
      puts @h[:#{method_name}]
    end
  EOF


end

areas = []
CSV.foreach("jp_area.tsv",headers: true,col_sep: "\t") do |row|
  args = row.to_a.flatten
  areas << Area.new(args)

end
 
areas.each do |area|
  num = rand()
  area.print
end
