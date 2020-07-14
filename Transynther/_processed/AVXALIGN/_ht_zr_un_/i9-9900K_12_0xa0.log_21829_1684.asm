.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xddea, %rsi
lea addresses_UC_ht+0x117ea, %rdi
nop
and $12583, %r9
mov $106, %rcx
rep movsw
nop
nop
nop
xor $49967, %r12
lea addresses_normal_ht+0xf9ea, %rsi
lea addresses_normal_ht+0x177ea, %rdi
nop
nop
nop
nop
and $59301, %rdx
mov $70, %rcx
rep movsb
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x1816a, %rdx
nop
nop
nop
nop
and $31568, %r10
movb (%rdx), %r9b
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x1036a, %r12
nop
nop
xor $50035, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
add $14104, %rcx
lea addresses_WC_ht+0x190e5, %rdx
nop
nop
and %r12, %r12
movw $0x6162, (%rdx)
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0xc5ea, %rcx
clflush (%rcx)
nop
and $35204, %r12
movw $0x6162, (%rcx)
and %r9, %r9
lea addresses_WC_ht+0x18c72, %rsi
lea addresses_normal_ht+0x59ea, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $120, %rcx
rep movsl
nop
nop
nop
nop
cmp $5222, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rdi
push %rdx

// Store
lea addresses_D+0x11ae2, %r15
nop
nop
nop
nop
cmp $18652, %r9
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
xor $50797, %r15

// Faulty Load
lea addresses_normal+0x1ea, %r10
sub %r12, %r12
vmovntdqa (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'48': 9988, '49': 9929, '08': 3, '00': 1909}
49 48 49 48 49 49 49 49 49 49 49 00 00 48 48 48 48 49 49 49 49 48 48 00 49 49 49 49 49 49 48 48 48 00 49 49 49 48 48 48 48 48 49 49 49 49 49 49 48 48 48 00 49 49 49 48 48 48 49 49 49 49 48 48 48 48 00 49 49 49 48 49 00 48 48 48 00 49 49 48 48 48 00 49 49 48 49 49 49 48 48 48 48 49 49 48 48 48 48 48 48 48 00 49 49 49 48 48 48 49 49 49 00 49 49 48 48 48 48 49 49 49 00 49 49 48 48 48 48 49 49 49 00 48 48 48 49 49 49 48 48 48 00 48 48 48 49 49 49 48 48 48 48 00 49 49 49 48 48 48 48 48 48 00 49 49 49 48 48 48 49 49 49 00 48 48 48 48 48 48 49 49 49 48 48 48 48 49 49 49 49 48 49 48 48 48 48 49 49 49 49 49 48 00 48 48 48 49 49 49 48 48 48 00 49 49 49 49 49 49 48 48 48 00 49 48 49 48 49 48 48 48 48 00 49 49 49 48 48 48 49 49 49 00 49 49 49 49 49 48 48 49 49 49 00 49 49 49 48 49 48 49 49 49 00 48 49 48 48 48 48 49 49 49 00 48 48 48 49 49 49 49 49 49 00 48 48 48 49 49 49 48 48 48 00 49 49 49 49 49 49 48 49 48 48 48 49 49 00 48 48 48 48 00 48 49 49 49 49 49 48 48 48 48 49 49 49 48 49 49 00 48 48 48 49 49 48 49 48 48 49 00 48 48 48 49 49 49 48 48 48 48 48 49 49 48 48 49 49 49 48 48 48 48 48 49 49 48 48 48 00 48 48 48 49 49 49 48 48 48 00 49 49 00 49 48 48 48 00 49 49 49 49 49 49 00 48 48 48 49 49 49 49 49 48 49 48 48 48 48 48 48 48 49 49 49 48 48 48 49 49 49 00 49 48 48 48 49 49 49 48 48 48 00 48 49 48 49 49 49 48 48 48 00 49 49 49 48 49 49 49 48 48 00 49 49 49 49 48 48 00 49 49 48 48 48 00 49 49 49 49 00 49 49 49 48 48 48 00 49 49 49 49 48 49 48 48 49 00 49 49 49 48 48 49 49 49 49 00 49 48 48 48 48 48 49 49 49 00 48 48 48 00 49 49 48 49 49 48 49 48 49 49 00 48 49 48 49 49 49 00 48 48 49 48 49 49 49 49 49 48 48 48 48 48 49 49 48 48 49 00 48 48 48 49 49 49 48 49 48 48 48 00 49 49 00 49 48 49 48 48 48 48 49 49 48 00 49 49 48 48 48 48 49 49 49 00 48 48 48 49 49 49 49 49 49 00 48 48 48 49 49 49 48 49 48 48 49 49 49 00 48 49 49 49 48 48 48 48 49 49 49 49 48 48 48 48 49 49 49 49 49 49 49 49 49 48 48 48 48 49 49 49 48 00 48 49 48 48 49 48 00 49 49 49 48 48 48 49 49 49 00 49 48 49 48 48 48 49 49 49 48 49 48 49 48 48 48 49 48 49 00 48 48 48 49 49 49 49 49 49 00 48 48 48 48 49 49 49 49 49 49 49 49 00 48 00 49 48 48 48 48 00 49 49 49 49 49 48 48 48 48 49 49 49 48 48 48 48 48 49 49 49 48 49 49 48 00 48 48 48 49 49 49 00 49 49 49 00 48 48 48 49 49 49 00 48 48 48 49 49 49 49 48 49 00 48 48 48 49 49 49 49 48 49 00 48 48 48 49 49 49 48 48 48 00 00 48 48 00 49 49 49 49 48 48 00 48 48 48 49 49 49 49 48 49 48 48 49 49 49 49 49 49 49 49 49 48 48 48 49 48 48 48 48 00 49 49 49 49 00 48 48 48 00 49 49 49 48 48 48 00 49 49 49 49 49 49 48 48 48 00 49 49 49 48 49 49 48 48 48 00 49 49 49 48 48 48 49 49 49 00 49 49 49 48 49 48 48 48 48 48 48 49 49 49 48 48 48 49 49 49 00 49 48 49 48 48 48 48 49 49 00 49 48 48 48 48 48 49 49 49 00 48 48 48 49 49 49 49 49 49 00 48 48 48 49 49 49 48 49 48 48 48 48 48 49 49 49 48 48 48 00 49 49 49 49 49 49 48 48 48 00 49 49 48 48 48 49 48 48 48 48 48 48 48 49 49 49 48 48 48 48 48 49 49 49 48 49 49 00 48 48 48 49 49 49 48 48 48 00 49 49 49 49 49 49 48 48 48
*/
