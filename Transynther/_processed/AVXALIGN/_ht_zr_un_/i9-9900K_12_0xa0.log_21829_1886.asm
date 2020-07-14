.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1657d, %rsi
lea addresses_normal_ht+0x1905d, %rdi
nop
nop
nop
nop
nop
xor $40631, %r13
mov $38, %rcx
rep movsw
nop
nop
nop
dec %r13
lea addresses_D_ht+0x1bc7d, %r9
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
nop
nop
and $41645, %rsi
lea addresses_WT_ht+0xf6dd, %r9
xor %r10, %r10
movups (%r9), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
add $40212, %r13
lea addresses_UC_ht+0x617d, %rsi
lea addresses_A_ht+0xad7d, %rdi
nop
nop
nop
nop
and $48786, %r8
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $57066, %rcx
lea addresses_normal_ht+0x1e37d, %r8
nop
nop
nop
nop
cmp $61105, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
nop
nop
add $24356, %r8
lea addresses_UC_ht+0xb901, %rsi
lea addresses_D_ht+0x14a19, %rdi
nop
nop
nop
xor $47630, %r10
mov $40, %rcx
rep movsb
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x357d, %rcx
nop
nop
nop
sub %r12, %r12
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x17e7d, %rsi
lea addresses_UC_ht+0x109bd, %rdi
clflush (%rsi)
nop
nop
inc %r12
mov $9, %rcx
rep movsw
nop
nop
nop
cmp $18394, %r13
lea addresses_WC_ht+0x12a59, %rsi
lea addresses_normal_ht+0x117d, %rdi
clflush (%rdi)
nop
add $41003, %r10
mov $100, %rcx
rep movsq
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0xa17d, %r10
nop
inc %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r10)
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x104d5, %rdi
nop
add $62759, %r8
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x9aad, %r9
xor %r12, %r12
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
nop
xor $46973, %rcx
lea addresses_UC_ht+0x63b5, %rsi
lea addresses_normal_ht+0x14e7d, %rdi
nop
nop
nop
nop
nop
sub $29769, %r12
mov $51, %rcx
rep movsw
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x1d517, %rsi
lea addresses_WC_ht+0x7d7d, %rdi
nop
nop
nop
and %r13, %r13
mov $54, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rdi

// Faulty Load
lea addresses_D+0x697d, %r13
nop
nop
dec %r15
movaps (%r13), %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'44': 10477, '48': 92, '49': 451, '08': 13, '00': 3631, '40': 29, '45': 7096, '6c': 10, 'ff': 29, '03': 1}
00 6c 6c 6c 44 6c 6c 6c 6c 6c 6c 6c 44 49 44 44 45 45 44 44 45 45 45 45 45 45 49 45 44 44 44 45 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 44 44 44 49 45 44 45 44 45 44 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 44 45 44 45 45 45 45 45 44 45 45 45 44 44 45 45 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 00 00 00 44 44 44 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 44 00 00 44 44 44 00 00 00 00 00 44 44 44 44 44 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 49 00 00 44 00 00 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 44 45 45 45 44 44 45 45 45 00 45 45 45 45 45 45 44 44 45 45 45 45 45 49 00 00 44 00 44 00 00 44 00 00 00 00 00 00 00 00 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 45 45 45 45 45 45 45 45 45 00 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 45 44 44 45 45 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 45 45 45 45 45 45 44 45 49 45 45 45 45 45 45 45 44 45 45 45 45 00 00 00 44 44 00 45 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 44 44 44 44 44 44 44 44 44 45 45 45 45 45 45 44 44 44 45 45 45 45 45 45 45 44 45 45 44 45 44 44 44 49 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 44 45 45 45 45 45 44 44 44 45 45 44 45 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44
*/
