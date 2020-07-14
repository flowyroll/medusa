.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1df35, %rcx
nop
nop
xor $50236, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rcx)
add %rbx, %rbx
lea addresses_normal_ht+0xe14b, %r15
nop
nop
nop
sub $26239, %rbx
mov (%r15), %r14w
nop
nop
nop
nop
nop
add $36899, %r15
lea addresses_normal_ht+0x13deb, %r12
clflush (%r12)
sub $11084, %rbx
movb $0x61, (%r12)
nop
nop
nop
xor $8255, %rdi
lea addresses_WT_ht+0x7e15, %r15
add %rsi, %rsi
mov (%r15), %di
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x19ab, %r8
xor $14206, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_RW+0x15d4b, %r11
nop
nop
and $62458, %rcx
movl $0x51525354, (%r11)
nop
nop
nop
nop
and $56055, %r11

// REPMOV
lea addresses_WT+0x1fdb, %rsi
lea addresses_US+0x15b4b, %rdi
clflush (%rdi)
nop
nop
and %r11, %r11
mov $15, %rcx
rep movsw
nop
add $54898, %r8

// Faulty Load
lea addresses_US+0x15b4b, %rcx
nop
nop
nop
nop
nop
cmp $39528, %r8
mov (%rcx), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 0, 'same': True}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'79': 13680, '00': 8149}
79 00 79 00 00 79 79 79 00 00 79 00 00 00 79 79 00 79 00 00 79 00 00 79 79 79 00 00 00 00 00 79 00 79 00 00 00 00 00 00 00 79 00 79 79 79 79 00 00 79 00 79 00 00 00 79 00 00 79 00 00 79 00 79 79 79 79 79 00 79 79 79 00 79 79 00 79 79 79 79 00 00 00 79 79 79 00 79 00 00 79 79 00 00 00 79 79 79 79 00 79 00 00 79 79 00 79 00 79 00 00 00 79 79 79 79 00 79 00 79 79 79 00 79 79 79 79 79 79 79 00 00 00 79 79 00 00 79 79 79 79 79 79 79 79 79 00 00 79 79 79 00 79 00 79 79 00 79 79 00 79 79 79 79 00 00 79 79 00 00 79 79 79 00 00 79 79 79 00 79 79 00 00 79 79 79 00 00 79 00 79 79 79 00 79 79 00 00 79 79 79 79 79 00 00 00 00 79 00 00 79 00 79 00 00 00 79 00 79 00 79 00 00 79 79 00 79 79 00 79 00 79 00 00 00 79 00 00 79 79 79 00 00 00 00 00 79 00 79 79 79 79 79 00 00 00 00 00 79 79 00 00 00 00 79 00 79 00 79 00 00 79 00 00 79 79 79 00 00 00 79 00 00 79 00 00 79 00 79 79 79 00 79 00 79 79 79 79 00 79 00 79 79 79 79 00 79 00 79 00 00 79 00 00 00 79 00 00 79 79 00 79 79 79 00 79 00 00 00 00 79 79 00 00 79 00 79 00 00 79 79 79 79 00 00 00 00 00 79 00 79 00 00 79 00 79 00 79 00 79 00 79 79 00 79 00 00 79 79 79 00 00 00 79 00 79 00 79 00 79 79 00 00 79 00 00 79 79 79 00 79 79 00 00 79 79 79 79 00 00 79 00 79 79 79 79 00 00 00 79 00 00 79 79 00 79 79 00 79 79 79 79 79 79 79 79 00 79 00 00 79 79 79 79 79 79 79 79 00 79 79 00 00 79 00 79 79 00 00 79 00 79 79 00 79 00 79 00 00 79 00 79 00 00 79 00 79 00 00 79 00 00 00 79 00 79 79 79 00 00 00 00 00 79 00 79 79 79 79 00 00 79 00 00 79 00 00 79 00 00 00 00 00 79 79 00 79 79 79 00 79 00 00 79 00 00 79 79 00 00 00 00 79 79 79 00 00 00 79 00 79 79 00 79 79 79 79 79 79 79 79 00 00 00 79 00 79 79 79 79 00 79 79 00 00 79 79 00 00 79 00 79 79 00 79 79 79 79 79 00 79 79 00 00 79 00 79 00 79 79 79 00 00 79 00 79 00 79 00 79 00 00 79 00 00 79 79 79 79 00 00 79 00 00 79 79 00 00 79 79 79 79 00 00 00 00 79 79 79 00 79 79 79 79 00 79 00 79 79 00 79 79 00 79 00 79 79 00 79 79 79 00 00 79 79 79 79 00 79 79 79 00 79 00 00 79 79 00 79 79 00 00 79 79 00 79 00 79 79 79 79 79 00 79 00 79 79 00 79 79 79 00 79 79 79 79 00 00 79 79 79 79 79 79 00 79 00 00 00 79 79 79 79 79 79 79 79 79 00 00 79 79 79 79 00 79 79 79 79 00 00 79 00 79 79 79 79 00 79 00 79 79 00 00 79 79 00 79 79 79 79 00 00 79 79 00 79 79 00 79 79 00 00 79 79 79 79 79 79 79 00 79 00 79 00 00 79 00 00 79 00 00 79 79 79 79 79 79 00 79 79 79 79 00 00 79 79 79 79 79 79 79 00 79 00 79 00 00 00 00 00 79 79 00 00 79 00 79 00 79 79 00 79 00 79 79 00 79 00 79 79 79 00 79 79 00 79 79 79 79 79 00 79 00 79 79 00 79 79 79 79 79 79 00 00 79 00 79 79 79 79 79 00 79 00 79 00 79 00 00 00 79 00 79 79 79 00 00 00 79 00 79 00 00 79 79 00 00 79 79 79 00 79 79 79 79 00 79 79 79 00 79 79 00 79 79 79 79 00 79 79 79 79 00 79 79 00 00 00 79 79 79 79 79 79 79 00 79 79 00 79 79 79 79 79 79 00 79 79 00 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 00 79 00 79 00 79 00 79 79 00 79 00 79 00 79 00 00 79 00 79 79 79 79 00 00 79 00 79 79 00 79 79 79 00 00 00 79 79 79 00 79 79 79 00 79 00 79 79 79 00 79 79 79 00 79
*/
