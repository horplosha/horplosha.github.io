<div class="cont">
  <div class="conttext">
  <form action="index.php?dn=down" method="post">
    <table class="rating" width="100%">
    <tbody>
      <tr>
        <td width="33%" class="ratingrows ac">{down_rate}:</td>
        <td width="33%" class="ratingrows ac">
          <select name="rate" style="width:9em">
            <option value="">{down_rate_emp}</option>
            <option value="1">{down_rate_1}</option>
            <option value="2">{down_rate_2}</option>
            <option value="3">{down_rate_3}</option>
            <option value="4">{down_rate_4}</option>
            <option value="5">{down_rate_5}</option>
          </select>
        </td>
        <td width="33%" class="ratingrows ac">
          <input type="hidden" name="re" value="rating" />
          <input type="hidden" name="id" value="{id}" />
          <input class="button" type="submit" value="{down_rate_button}" />
        </td>
      </tr>
    </tbody>
    </table>
  </form>
  </div>
</div>
