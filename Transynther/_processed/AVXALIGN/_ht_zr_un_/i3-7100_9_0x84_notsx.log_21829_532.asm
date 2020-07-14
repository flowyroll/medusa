.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2ea4, %rsi
lea addresses_normal_ht+0xe6a4, %rdi
clflush (%rsi)
nop
nop
sub $61767, %rbp
mov $19, %rcx
rep movsw
nop
nop
nop
and $27161, %r11
lea addresses_WC_ht+0xaba4, %rcx
nop
nop
nop
inc %r12
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x3bec, %rsi
lea addresses_UC_ht+0x60a4, %rdi
nop
add $28698, %r13
mov $96, %rcx
rep movsq
nop
nop
nop
nop
add $35734, %r12
lea addresses_WC_ht+0x7714, %rcx
nop
nop
nop
inc %r13
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
nop
lfence
lea addresses_D_ht+0x1dfa6, %rsi
nop
nop
nop
nop
and %r12, %r12
movb (%rsi), %r13b
nop
xor $23314, %r13
lea addresses_UC_ht+0x1aca4, %r12
clflush (%r12)
nop
nop
nop
nop
nop
dec %r13
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x8aa4, %rbp
nop
dec %rdi
mov (%rbp), %r11w
nop
cmp $23790, %r13
lea addresses_WC_ht+0x156a4, %rsi
lea addresses_D_ht+0x102fa, %rdi
nop
nop
nop
sub $29876, %r9
mov $17, %rcx
rep movsb
nop
nop
nop
nop
cmp $24522, %rbp
lea addresses_UC_ht+0xf424, %r13
and %r12, %r12
movups (%r13), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xca04, %r12
sub $27921, %r11
movups (%r12), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
sub $57056, %r13
lea addresses_WC_ht+0x18aa4, %r11
nop
nop
nop
lfence
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm2
vpextrq $1, %xmm2, %rbp
and %r13, %r13
lea addresses_WT_ht+0x2c12, %rsi
lea addresses_normal_ht+0x1b1e4, %rdi
nop
nop
nop
mfence
mov $46, %rcx
rep movsl
nop
nop
nop
nop
add $53342, %rdi
lea addresses_A_ht+0x117bc, %r11
nop
nop
and $13580, %rbp
mov (%r11), %edi
nop
nop
nop
sub $36142, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rdx

// Store
lea addresses_PSE+0x192a4, %r10
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%r10)

// Exception!!!
nop
mov (0), %rdx
nop
nop
nop
sub $19920, %r10

// Faulty Load
lea addresses_UC+0x132a4, %r15
nop
nop
nop
and %r9, %r9
movntdqa (%r15), %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 13115, '00': 8711, 'ff': 1, '45': 2}
00 00 00 00 46 46 46 46 00 46 46 00 46 46 00 46 46 46 46 46 46 00 00 46 46 46 46 46 00 46 46 00 46 00 46 00 00 46 46 00 00 00 00 00 46 00 46 46 00 46 46 00 46 46 00 00 00 00 00 46 00 46 00 00 00 00 00 00 46 46 46 00 46 00 00 00 46 46 00 46 46 46 46 46 00 46 46 46 00 46 00 00 46 00 46 46 46 46 00 46 00 00 00 00 00 46 46 00 46 46 46 00 46 00 00 46 46 46 00 46 46 00 00 46 00 46 00 00 46 00 46 46 00 46 46 00 46 46 46 46 00 46 00 00 00 00 46 46 46 46 00 46 00 46 46 46 46 00 00 00 46 00 00 00 00 46 46 46 46 46 46 00 46 46 00 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 00 00 46 46 46 46 46 00 46 46 00 00 46 46 46 00 00 46 00 46 46 00 46 46 46 00 46 46 00 46 46 46 46 00 00 46 00 46 46 46 46 00 46 46 00 00 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 00 00 00 46 00 00 46 46 00 46 46 46 46 46 00 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 00 00 46 46 46 46 46 46 00 00 00 46 46 46 00 46 00 00 00 00 46 46 46 46 46 00 46 00 46 00 00 46 00 00 46 46 46 46 46 46 46 00 00 46 46 00 46 46 46 46 00 46 00 46 00 00 00 46 46 46 00 46 00 00 46 46 46 46 46 00 46 46 46 46 00 00 46 46 00 00 46 46 46 00 46 46 46 00 46 00 00 00 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 46 00 46 46 46 46 00 00 00 00 00 46 46 00 46 46 00 46 00 00 46 46 46 46 46 46 46 00 00 00 46 00 00 46 46 00 46 00 46 00 00 46 46 00 00 46 46 46 46 00 46 46 00 00 46 46 46 46 46 00 46 46 46 00 00 00 46 46 46 46 46 46 00 46 46 46 00 00 46 00 00 46 46 46 46 46 46 46 46 00 00 46 46 00 00 46 46 46 46 46 00 46 46 46 46 46 46 00 00 00 46 00 00 00 46 00 00 46 46 46 00 00 00 00 00 00 46 00 00 46 00 46 00 46 46 00 00 46 46 00 46 00 00 46 46 46 00 00 00 00 46 46 00 46 46 46 46 46 00 46 46 46 46 46 00 00 46 46 46 00 46 00 46 00 46 46 46 46 00 46 46 00 00 46 46 00 46 00 00 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 46 00 46 00 46 00 46 46 46 46 46 46 46 00 46 46 00 46 46 46 00 46 46 46 46 46 46 00 46 00 46 46 46 00 00 00 46 46 46 46 46 46 00 00 46 46 46 46 00 46 00 46 46 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 46 46 00 46 46 46 00 46 46 00 46 00 00 46 00 46 46 46 46 00 00 00 46 00 46 46 00 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 00 46 00 46 00 00 46 00 00 46 00 00 46 46 00 46 46 00 00 46 46 46 00 00 00 46 00 46 46 46 46 46 00 46 46 00 46 46 00 46 00 46 00 00 46 46 46 46 00 00 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 00 46 46 46 00 46 00 46 46 46 00 46 46 46 46 46 00 00 00 46 46 00 00 00 00 00 46 46 00 46 46 46 46 46 46 46 00 46 46 00 46 46 00 46 00 00 46 00 46 46 00 46 46 46 46 46 46 00 46 00 46 46 46 46 00 46 00 00 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 00 46 00 00 00 00 46 46 46 46 46 46 00 46 00 46 46 00 46 46 46 00 00 46 46 46 00 00 00 46 46 46 00 46 46 46 00 46 46 46 00 00 46 46 00 00 46 00 46 00 46 00 46 00 00 00 46 00 46 46 00 46 46 46 46 46 00 00 46 00 46 00 46 46 00 00 00 46 46 46 46 00 46 46 46 00 46 00 00 46 46 00 46
*/
