package id.ajr.japos.db.postgresql.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import id.ajr.japos.db.postgresql.model.TbMasterMember;

@Repository
public interface MasterMemberRepository extends BaseRepository<TbMasterMember, String> {

	@Query(value = "select * from tb_master_member where tbmm_id = :tbmmId", nativeQuery = true)
	Optional<TbMasterMember> findByTbmmId(@Param("tbmmId") Integer tbmmId);

}
