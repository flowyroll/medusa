.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19291, %r12
nop
nop
nop
nop
nop
add $31239, %rcx
movb (%r12), %r10b
nop
cmp %r8, %r8
lea addresses_WT_ht+0x1202d, %r11
clflush (%r11)
nop
inc %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
dec %r8
lea addresses_D_ht+0x17c05, %rsi
lea addresses_normal_ht+0xe98f, %rdi
inc %rdx
mov $71, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $4472, %rsi
lea addresses_A_ht+0xba91, %r10
nop
nop
nop
nop
cmp $27680, %r8
mov (%r10), %esi
nop
and $5534, %rdi
lea addresses_UC_ht+0x1d691, %rdx
nop
nop
nop
nop
inc %rdi
movb $0x61, (%rdx)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x1e2b1, %rsi
lea addresses_normal_ht+0x15d51, %rdi
and $58463, %r8
mov $51, %rcx
rep movsl
nop
nop
and $10334, %rsi
lea addresses_normal_ht+0x12211, %r11
nop
nop
sub $2347, %r8
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
nop
nop
cmp $11112, %r10
lea addresses_A_ht+0x1d211, %rsi
lea addresses_normal_ht+0x1229d, %rdi
nop
nop
lfence
mov $39, %rcx
rep movsl
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x19a91, %rdi
nop
nop
nop
nop
add $9240, %r8
movb (%rdi), %r10b
and $36392, %rdi
lea addresses_D_ht+0x12391, %r12
clflush (%r12)
nop
nop
nop
nop
add $10002, %r11
movb $0x61, (%r12)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x15621, %r12
nop
nop
add $59060, %r10
movups (%r12), %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0xb291, %rsi
nop
nop
nop
xor $38122, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm2
and $0xffffffffffffffc0, %rsi
vmovaps %ymm2, (%rsi)
nop
nop
nop
nop
nop
sub $32630, %rcx
lea addresses_WT_ht+0x6291, %rdx
nop
nop
nop
add $46783, %rdi
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %r11
and $54308, %rsi
lea addresses_WC_ht+0x1291, %r10
clflush (%r10)
nop
nop
nop
nop
xor %r8, %r8
movb (%r10), %r12b
nop
add %r8, %r8
lea addresses_D_ht+0x13242, %rdx
clflush (%rdx)
nop
nop
nop
sub %r12, %r12
vmovups (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_normal+0x17e91, %r15
nop
nop
nop
nop
sub $27771, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
sub $2957, %rdi

// Store
lea addresses_PSE+0x15291, %r9
nop
nop
xor $21116, %r10
mov $0x5152535455565758, %r8
movq %r8, (%r9)
nop
nop
nop
nop
nop
add $35373, %r14

// Store
lea addresses_UC+0x5759, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rdi)

// Exception!!!
mov (0), %r9
add $59535, %rdi

// Faulty Load
lea addresses_PSE+0x15291, %rax
nop
and $32107, %r10
mov (%rax), %edi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 0}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
