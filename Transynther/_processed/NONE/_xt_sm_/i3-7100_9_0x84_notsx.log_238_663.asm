.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x15467, %rdi
nop
nop
nop
nop
cmp $50089, %r11
mov (%rdi), %r14w
nop
nop
and $23774, %r11
lea addresses_UC_ht+0x1267, %rax
nop
sub $30754, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
xor $43514, %r11
lea addresses_A_ht+0x7467, %rbx
nop
nop
add $35351, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0xfc67, %rax
nop
cmp $1042, %r14
mov (%rax), %ebx
nop
nop
sub $46399, %r11
lea addresses_WC_ht+0x18a67, %rdi
inc %r14
movw $0x6162, (%rdi)
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x2827, %rsi
lea addresses_A_ht+0x159e7, %rdi
nop
nop
nop
nop
nop
sub $1256, %rax
mov $19, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x1587, %r14
nop
nop
nop
sub $20642, %rdi
movups (%r14), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
xor $61989, %rdi
lea addresses_normal_ht+0xfbe7, %rsi
lea addresses_UC_ht+0x37e7, %rdi
nop
nop
and %r12, %r12
mov $87, %rcx
rep movsw
nop
inc %r12
lea addresses_UC_ht+0x17197, %rsi
lea addresses_D_ht+0x12e67, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $63853, %r12
mov $64, %rcx
rep movsw
nop
nop
nop
nop
xor $58384, %rax
lea addresses_WT_ht+0x1297, %rcx
cmp %rax, %rax
movb (%rcx), %r14b
dec %r12
lea addresses_WC_ht+0x3467, %rsi
lea addresses_UC_ht+0x8047, %rdi
dec %r14
mov $50, %rcx
rep movsw
nop
xor $11387, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rdx
push %rsi

// Store
lea addresses_WT+0x1fc67, %r12
nop
xor %r11, %r11
movw $0x5152, (%r12)
nop
nop
xor $49188, %r9

// Store
lea addresses_RW+0x1f8bf, %r9
nop
nop
nop
nop
and $59244, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_UC+0x1c267, %r8
nop
nop
nop
nop
and $53367, %r10
movl $0x51525354, (%r8)
nop
nop
inc %r8

// Store
mov $0x101f710000000267, %r9
and $32997, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
nop
add $50949, %r9

// Load
lea addresses_RW+0x9aa7, %r9
cmp $22209, %rsi
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
cmp $27849, %rsi

// Load
lea addresses_WC+0xf867, %r9
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r9), %r10w
nop
nop
nop
nop
add $45821, %r11

// Store
lea addresses_WT+0xaf67, %r11
clflush (%r11)
nop
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%r11)
nop
add $27188, %rsi

// Faulty Load
lea addresses_WT+0x1fc67, %r9
clflush (%r9)
nop
nop
nop
xor %r12, %r12
movups (%r9), %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'52': 238}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
