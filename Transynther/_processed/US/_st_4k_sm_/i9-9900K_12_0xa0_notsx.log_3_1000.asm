.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x10b06, %rsi
lea addresses_UC_ht+0x4b46, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r11, %r11
mov $40, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x3b58, %rsi
lea addresses_A_ht+0x1f06, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $59, %rcx
rep movsl
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %r9
push %rbx

// Store
lea addresses_D+0xa306, %r11
nop
nop
nop
nop
cmp $51092, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movaps %xmm3, (%r11)

// Exception!!!
mov (0), %r8
nop
inc %rbx

// Store
lea addresses_normal+0x15b06, %r11
clflush (%r11)
nop
cmp $2802, %r10
movl $0x51525354, (%r11)
nop
nop
nop
nop
inc %r8

// Load
lea addresses_WT+0xd14d, %r12
nop
add $44397, %r15
mov (%r12), %r8
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_US+0xfb06, %r12
nop
sub %r8, %r8
movw $0x5152, (%r12)
nop
nop
and %r8, %r8

// Store
lea addresses_WC+0x1dd06, %r8
nop
inc %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r8)
nop
cmp %r8, %r8

// Store
lea addresses_US+0x1bdc3, %r10
nop
nop
nop
dec %r11
mov $0x5152535455565758, %r8
movq %r8, (%r10)
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_US+0xfb06, %r12
nop
dec %rbx
mov (%r12), %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'52': 3}
52 52 52
*/
