.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xfa5d, %r12
nop
nop
nop
nop
cmp %r8, %r8
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rsi
nop
dec %r15
lea addresses_A_ht+0x130fd, %r14
xor %r12, %r12
mov (%r14), %di
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x357d, %rsi
lea addresses_WT_ht+0x45, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $117, %rcx
rep movsw
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1a2fd, %r12
sub $58383, %r14
mov (%r12), %cx
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x190fd, %rsi
lea addresses_A_ht+0x194fd, %rdi
nop
nop
nop
nop
inc %r8
mov $121, %rcx
rep movsb
nop
nop
nop
cmp $40691, %r14
lea addresses_UC_ht+0x17b8f, %r12
nop
nop
inc %r9
mov (%r12), %esi
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0xdd54, %r14
inc %r15
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
sub $60986, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_WT+0xeefd, %rax
inc %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rax)
nop
nop
sub %r11, %r11

// Faulty Load
mov $0x2fd, %rax
nop
nop
nop
sub %r11, %r11
mov (%rax), %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'f5': 1, 'e0': 6, 'c0': 14}
c0 c0 c0 c0 c0 c0 c0 e0 f5 c0 e0 e0 e0 c0 e0 c0 e0 c0 c0 c0 c0
*/
