.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1df14, %r13
xor $59554, %r11
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
xor $20120, %r15
lea addresses_WC_ht+0x1839e, %rsi
lea addresses_A_ht+0x14b24, %rdi
clflush (%rdi)
nop
nop
nop
dec %r9
mov $51, %rcx
rep movsw
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x1d854, %rcx
nop
dec %r15
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r13
sub %r9, %r9
lea addresses_A_ht+0x1cc54, %rbx
nop
nop
inc %rdi
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
nop
nop
sub $5989, %rdi
lea addresses_WT_ht+0x8e14, %r9
clflush (%r9)
nop
sub %rbx, %rbx
movl $0x61626364, (%r9)
add $46181, %rbx
lea addresses_D_ht+0x3864, %r13
sub %r15, %r15
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x1c4ac, %rcx
add $17253, %r12
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
xor $64710, %rbx

// Load
mov $0x8ec, %r13
nop
nop
cmp $34405, %rdx
vmovntdqa (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
cmp %r12, %r12

// Store
lea addresses_UC+0x12154, %rcx
nop
nop
nop
cmp $11793, %r12
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0x6e46e0000000154, %rax
and $56594, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_D+0xb954, %r13
nop
nop
nop
nop
xor $64822, %rdx
movups (%r13), %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'36': 101}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
