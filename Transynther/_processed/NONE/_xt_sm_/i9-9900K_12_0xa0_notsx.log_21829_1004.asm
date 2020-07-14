.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x31dd, %rsi
lea addresses_WT_ht+0x194dd, %rdi
nop
nop
nop
nop
add $31812, %rbx
mov $31, %rcx
rep movsb
and $61055, %r13
lea addresses_UC_ht+0x635d, %rbx
clflush (%rbx)
nop
and %r10, %r10
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
and %r13, %r13
lea addresses_UC_ht+0x1937d, %rbx
nop
cmp %r11, %r11
mov (%rbx), %r10w
inc %rsi
lea addresses_WC_ht+0xe0dd, %rsi
nop
nop
xor %rdi, %rdi
movb (%rsi), %r11b
nop
nop
nop
add $63921, %r11
lea addresses_normal_ht+0x17fb5, %rsi
lea addresses_normal_ht+0x60b5, %rdi
nop
and %r14, %r14
mov $78, %rcx
rep movsl
nop
nop
nop
nop
xor $56288, %rbx
lea addresses_WT_ht+0x16cbd, %rsi
lea addresses_normal_ht+0x8bdd, %rdi
nop
nop
nop
nop
sub $49901, %rbx
mov $32, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xed61, %rbx
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
and $38793, %r13
lea addresses_UC_ht+0x2fad, %rcx
nop
xor $33585, %rsi
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0xbf9d, %rsi
lea addresses_UC_ht+0x463d, %rdi
nop
nop
sub $28602, %r14
mov $123, %rcx
rep movsl
nop
nop
nop
sub $53820, %r14
lea addresses_normal_ht+0x12c9d, %rdi
and %r11, %r11
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
nop
cmp $64190, %rbx
lea addresses_WC_ht+0xaae1, %r13
clflush (%r13)
nop
and %rcx, %rcx
mov (%r13), %di
add %r11, %r11
lea addresses_WT_ht+0xd4dd, %r13
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %r13
movntdq %xmm0, (%r13)
nop
nop
nop
nop
nop
add $38524, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rdx
push %rsi

// Store
lea addresses_WC+0x1bcdd, %rsi
nop
sub %r13, %r13
movl $0x51525354, (%rsi)
nop
add $31118, %r10

// Faulty Load
lea addresses_WC+0x1bcdd, %r13
nop
nop
nop
nop
nop
cmp $36743, %r9
movb (%r13), %dl
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 11}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
