.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x18d29, %r11
nop
cmp $30085, %r13
movups (%r11), %xmm6
vpextrq $1, %xmm6, %rbx
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x1b4af, %r9
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%r9), %ebx
sub $1508, %rdx
lea addresses_D_ht+0x12a8f, %r11
clflush (%r11)
nop
nop
nop
nop
nop
dec %rax
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x4d67, %rsi
lea addresses_WC_ht+0x1226f, %rdi
nop
cmp %rax, %rax
mov $108, %rcx
rep movsw
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_RW+0x1f76f, %rcx
sub %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
add %rax, %rax

// Load
lea addresses_WT+0x11e2f, %r8
sub %r13, %r13
mov (%r8), %bx
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0x2f, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_UC+0x1f74f, %rbx
nop
nop
xor %r11, %r11
movw $0x5152, (%rbx)
nop
nop
nop
and $9397, %r9

// Store
mov $0x757d120000000641, %r8
nop
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovaps %ymm0, (%r8)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_US+0x1eacb, %rax
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
sub $30798, %r11

// Load
lea addresses_normal+0x605f, %rax
add $32941, %r11
vmovups (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_A+0x5caf, %rbx
nop
nop
nop
nop
nop
cmp $24819, %r11
mov (%rbx), %r8w
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'00': 330}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
