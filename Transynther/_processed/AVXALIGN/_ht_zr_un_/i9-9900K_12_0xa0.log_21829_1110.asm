.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x156fe, %rsi
lea addresses_D_ht+0x16e53, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $64, %rcx
rep movsl
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x3c21, %rsi
lea addresses_A_ht+0x12073, %rdi
nop
nop
nop
and %rdx, %rdx
mov $101, %rcx
rep movsl
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1121f, %r14
nop
nop
nop
xor $17584, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
xor $14606, %rsi
lea addresses_UC_ht+0x1c13b, %rcx
nop
nop
and $56302, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rcx)
nop
inc %rdi
lea addresses_A_ht+0x5253, %rcx
nop
nop
nop
cmp %rdi, %rdi
mov (%rcx), %r10w
nop
nop
nop
nop
sub $28328, %r14
lea addresses_WT_ht+0x18502, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xe8d3, %rdx
add $59625, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
sub $62138, %r14
lea addresses_D_ht+0x1ea53, %rsi
lea addresses_normal_ht+0x15bb, %rdi
nop
nop
and %r10, %r10
mov $104, %rcx
rep movsq
nop
nop
nop
cmp $13834, %r10
lea addresses_WC_ht+0xac63, %rsi
lea addresses_normal_ht+0xed63, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $110, %rcx
rep movsq
nop
add $47235, %rdx
lea addresses_WT_ht+0x553, %rsi
lea addresses_UC_ht+0x16d53, %rdi
nop
and %r14, %r14
mov $86, %rcx
rep movsw
and %rdi, %rdi
lea addresses_WC_ht+0xfa53, %rsi
nop
nop
nop
nop
sub $38825, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
and $16647, %rcx
lea addresses_A_ht+0xb8cb, %rdi
nop
nop
add %rdx, %rdx
movb $0x61, (%rdi)
nop
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rcx
push %rdi
push %rsi

// Faulty Load
lea addresses_PSE+0x16253, %rcx
xor $28191, %rsi
vmovntdqa (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'48': 5005, '49': 14209, '7b': 1, '00': 2602, '46': 12}
48 48 49 49 00 48 48 49 49 49 49 48 49 48 49 00 49 49 48 49 00 49 49 49 49 49 48 49 49 49 49 48 49 48 49 48 49 49 48 49 49 00 49 49 48 49 49 48 49 49 48 49 00 48 49 48 49 48 49 49 48 49 00 49 49 48 48 48 49 49 48 48 00 49 49 00 49 48 48 48 49 48 49 49 48 49 00 49 49 48 49 48 49 49 48 49 48 49 49 48 49 00 49 49 48 49 48 49 49 48 49 48 49 49 48 49 48 49 49 49 00 49 49 48 49 48 49 49 48 49 48 49 49 48 48 48 49 48 49 48 49 49 48 49 00 49 49 48 49 48 49 48 48 49 00 49 49 48 48 49 48 49 49 00 49 49 48 48 49 49 48 49 48 49 49 49 48 49 49 48 49 48 49 49 48 49 48 48 49 48 49 00 49 48 49 48 48 49 48 49 48 49 48 49 00 49 49 48 49 48 49 49 48 48 48 49 49 48 49 00 48 49 48 49 48 49 49 48 49 49 48 48 49 48 48 00 49 48 49 48 49 49 48 49 48 49 49 48 49 48 49 49 49 48 49 49 48 48 00 49 49 48 49 48 49 48 48 49 00 49 49 48 49 49 48 49 49 48 49 48 49 49 48 49 00 48 49 48 49 00 49 48 48 49 48 49 49 00 49 48 49 49 48 49 49 48 49 49 00 49 48 49 49 48 49 48 49 49 48 49 00 48 49 48 49 00 49 49 00 49 00 49 49 48 49 00 49 49 48 49 00 49 49 48 49 00 48 49 48 49 48 49 49 49 00 49 49 48 49 48 49 49 00 49 00 49 49 48 49 00 49 48 49 49 00 49 49 48 48 49 48 49 49 48 49 48 49 48 49 49 49 48 49 49 48 48 49 48 49 48 49 49 48 49 48 49 49 48 49 48 49 49 48 49 48 49 49 48 49 48 49 49 48 48 00 49 48 48 49 48 49 49 00 48 49 00 49 49 00 49 48 00 49 49 00 49 49 00 48 49 00 49 49 00 49 49 00 49 49 00 49 49 00 48 49 00 49 49 00 49 48 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 48 49 48 49 49 00 49 48 00 49 00 49 49 00 48 49 48 49 49 49 49 48 49 00 49 00 49 49 49 48 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 48 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 48 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 49 49 48 49 49 49 49 49 48 49 48 49 49 00 49 48 49 49 48 48 00 49 49 49 48 49 49 00 49 48 48 49 49 00 49 49 48 48 49 48 49 49 49 49 48 49 49 49 49 49 00 49 48 49 49 48 49 48 49 48 49 48 49 49 48 49 49 49 49 00 48 49 49 49 49 48 49 48 48 49 49 48 49 48 48 49 00 49 49 48 49 00 49 49 48 49 48 49 49 48 49 48 49 49 48 49 48 49 48 48 49 48 49 49 48 48 00 49 48 49 48 00 49 49 48 49 48 48 48 49 48 49 49 48 49 48 49 49 48 49 48 49 48 49 49 48 49 49 48 48 48 49 49 48 49 48 49 49 48 49 00 48 49 00 49 49 48 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 48 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 49 49 00 48 49 00 49 49 00 49 49 00 49 49 48 49 49 00 49 49 00 49 49 00 49 48 00 49 00 49 49 49 49 48 49 49 48 49 49 48 49 49 49 49 49 48 49 48 48 49 49 48 49 49 48 49 49 48 49 00 49 49 49 49 48 49 49 48 48 48 49 49 48 49 48 49 00 49 49 49 49 48 49 48 49 49 00 49 48 48 49 49 48 49 48 49 00 49 49 49 49 00 49 48 49 49 49 49 49 48 49 49 48 49 48 48 00 49 48 48 49 48 49 49 48 48 48 49 49 48 49 48 49 49 49 48 49 49 48 49 00 49 48 49 48 49 49 48 49 48 49 48 49 49 48 49 49 48 49 00 48 49 48 49 48 49
*/
