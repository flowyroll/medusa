.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ef2b, %r9
clflush (%r9)
lfence
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
xor $1669, %rax
lea addresses_normal_ht+0x17bdb, %r12
nop
nop
dec %rax
mov (%r12), %r8
nop
nop
nop
sub $63904, %r9
lea addresses_normal_ht+0x1492b, %r9
nop
nop
nop
nop
nop
add $64195, %r14
movb $0x61, (%r9)
nop
nop
nop
nop
sub $15743, %r9
lea addresses_WT_ht+0x1aa0b, %r11
cmp $54607, %r9
mov (%r11), %ax
nop
nop
nop
nop
nop
and $17854, %r11
lea addresses_normal_ht+0x15dab, %rax
nop
nop
nop
nop
sub $41560, %r8
mov (%rax), %r14
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x1cf2b, %r8
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r8)
sub $42002, %r9
lea addresses_WC_ht+0xb67d, %rsi
lea addresses_A_ht+0x14173, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r14, %r14
mov $82, %rcx
rep movsq
and %rcx, %rcx
lea addresses_WC_ht+0x1b123, %rsi
lea addresses_normal_ht+0x1a9, %rdi
nop
cmp %r11, %r11
mov $96, %rcx
rep movsb
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xd01b, %rsi
lea addresses_normal_ht+0x1352b, %rdi
nop
nop
nop
nop
nop
add $41325, %r9
mov $77, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x15f2b, %rsi
lea addresses_WT_ht+0x15d2b, %rdi
nop
nop
cmp %r8, %r8
mov $3, %rcx
rep movsl
nop
and $7614, %r14
lea addresses_WT_ht+0x1607c, %rsi
lea addresses_D_ht+0x772b, %rdi
nop
dec %r8
mov $107, %rcx
rep movsl
nop
and %r14, %r14
lea addresses_normal_ht+0x1bdab, %rcx
inc %r11
mov (%rcx), %esi
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x7d35, %rax
nop
nop
nop
xor $9755, %r11
mov (%rax), %edi
nop
nop
nop
nop
nop
add $22401, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_WT+0xa0c4, %rdx
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
and $43971, %r8

// Load
lea addresses_US+0x162b, %r9
nop
nop
nop
nop
nop
add %rax, %rax
mov (%r9), %r8d
add $11608, %r10

// Store
lea addresses_PSE+0xc2cb, %r10
nop
nop
nop
nop
sub $56863, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movntdq %xmm6, (%r10)
nop
add $13593, %r12

// Store
lea addresses_UC+0x1e393, %rbx
nop
and %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovaps %ymm0, (%rbx)
nop
sub %r8, %r8

// Faulty Load
mov $0x66578c0000000f2b, %r8
nop
nop
and $11262, %rdx
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': True, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': True, 'same': True, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'48': 16725, '72': 1, '00': 5103}
00 48 00 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 00 00 48 48 00 48 48 00 00 48 00 00 48 48 48 00 48 00 48 48 48 48 48 00 48 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 00 00 48 48 00 48 00 00 48 00 48 48 00 00 48 48 00 48 48 48 48 00 00 48 48 48 00 00 48 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 00 48 48 00 48 00 00 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 48 48 00 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 00 48 48 00 00 48 00 00 48 00 00 48 48 48 48 48 48 48 00 48 00 48 00 48 48 48 48 00 48 48 48 48 00 00 48 00 00 48 48 48 48 00 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 00 00 48 00 00 48 00 48 00 00 48 48 48 00 00 48 00 48 48 00 48 00 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 00 48 48 00 48 48 48 00 48 00 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 00 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 00 48 00 48 48 48 48 00 00 48 48 48 48 48 00 00 48 00 00 48 00 00 48 48 48 48 48 00 00 48 00 00 48 00 48 48 48 48 00 48 00 00 48 48 48 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 00 00 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 00 00 48 48 48 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 48 00 00 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 00 00 48 48 00 48 48 00 48 00 48 48 00 48 00 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 00 00 48 00 00 48 48 48 00 48 00 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 00 00 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 00 48 48 48 48 48 00 48 00 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 00 00 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 00 48 48 00 48 48 48 00 48 00 00 48 00 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 00 00 48 00 00 48 48 48 48 48 48 00 48 00 00 48 00 00 48 48 00 48 00 48 00
*/
