.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1b7c6, %rsi
lea addresses_WT_ht+0xee0, %rdi
nop
nop
sub %r8, %r8
mov $17, %rcx
rep movsq
add %rbx, %rbx
lea addresses_D_ht+0x149ca, %r11
xor %rbx, %rbx
movb (%r11), %r8b
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x9b06, %r11
nop
add %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
cmp $22031, %r11
lea addresses_normal_ht+0x14106, %rsi
lea addresses_WC_ht+0x426, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $4, %rcx
rep movsb
nop
add $27520, %rdi
lea addresses_WC_ht+0xfc6, %rsi
nop
and %rcx, %rcx
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
xor $52266, %r8
lea addresses_WT_ht+0x15702, %r10
nop
nop
xor $31696, %r8
mov (%r10), %r9d
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x14ac6, %r10
nop
xor $48423, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x13fad, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
and $0xffffffffffffffc0, %rsi
vmovaps %ymm4, (%rsi)
nop
sub $64124, %rdi
lea addresses_D_ht+0xffc6, %rcx
nop
nop
nop
nop
cmp $59657, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
and $0xffffffffffffffc0, %rcx
movaps %xmm1, (%rcx)
nop
nop
nop
cmp $32506, %rdi
lea addresses_normal_ht+0x13fc6, %r9
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x185c6, %r10
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
xor $23171, %r11
lea addresses_normal_ht+0xba86, %r11
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
and $0xffffffffffffffc0, %r11
movntdq %xmm2, (%r11)
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x12bc6, %rsi
lea addresses_A_ht+0xb336, %rdi
nop
sub %r11, %r11
mov $12, %rcx
rep movsl
nop
nop
and $45979, %r8
lea addresses_D_ht+0x1cc72, %rcx
sub %rsi, %rsi
movb (%rcx), %r9b
nop
nop
nop
nop
nop
sub $28084, %r9
lea addresses_A_ht+0x1290c, %rsi
lea addresses_D_ht+0x10dd4, %rdi
nop
nop
and %r10, %r10
mov $63, %rcx
rep movsw
nop
nop
nop
nop
nop
add $45128, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx

// Store
lea addresses_D+0x97c6, %r8
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
nop
and $62153, %r12

// Store
lea addresses_D+0x1f7c6, %r10
nop
nop
nop
nop
sub $40372, %rax
mov $0x5152535455565758, %r8
movq %r8, (%r10)
nop
xor $37334, %r14

// Store
lea addresses_RW+0xe3c6, %rax
nop
xor $20622, %r8
movl $0x51525354, (%rax)
nop
inc %r14

// Store
lea addresses_A+0x16e3e, %r10
nop
nop
nop
nop
sub $40930, %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
inc %rax

// Faulty Load
lea addresses_D+0x1f7c6, %r10
nop
nop
nop
nop
add %r13, %r13
mov (%r10), %eax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
