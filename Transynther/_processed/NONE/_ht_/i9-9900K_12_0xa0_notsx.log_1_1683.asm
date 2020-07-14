.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rbp
push %rbx
lea addresses_UC_ht+0x63ea, %r10
nop
nop
nop
nop
xor $63542, %rax
movb (%r10), %bl
nop
nop
nop
nop
nop
dec %r10
pop %rbx
pop %rbp
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xcfea, %r15
nop
nop
nop
and $7430, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r15)
nop
nop
nop
nop
cmp $33749, %r14

// Load
lea addresses_WT+0x1cdea, %rsi
nop
nop
nop
nop
and $51068, %r9
mov (%rsi), %r15d

// Exception!!!
nop
xor %r9, %r9
div %r9
nop
nop
cmp %r12, %r12

// Load
mov $0xdea, %r15
nop
inc %rcx
mov (%r15), %r12d
nop
nop
nop
nop
nop
cmp $46996, %r15

// REPMOV
lea addresses_normal+0x125ea, %rsi
lea addresses_normal+0x1adea, %rdi
clflush (%rdi)
nop
nop
nop
inc %r14
mov $40, %rcx
rep movsl
nop
nop
nop
xor $11757, %rsi

// Load
lea addresses_PSE+0x14dea, %r15
nop
nop
nop
nop
nop
inc %r9
mov (%r15), %r14w
nop
nop
sub %rdi, %rdi

// Store
lea addresses_A+0x1c4a6, %r14
clflush (%r14)
nop
nop
nop
nop
nop
mfence
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_normal+0x1adea, %r14
add $10369, %rsi
movb $0x51, (%r14)
xor $52743, %rdi

// Load
lea addresses_normal+0x1adea, %rsi
nop
inc %r12
mov (%rsi), %r14w
nop
nop
sub $25310, %r15

// Store
lea addresses_PSE+0x1f3ea, %r9
nop
sub $45521, %rcx
movw $0x5152, (%r9)
nop
nop
dec %r14

// Store
mov $0x8ea, %rdi
nop
nop
nop
nop
nop
cmp $45591, %rsi
movl $0x51525354, (%rdi)
nop
nop
cmp %r12, %r12

// Store
lea addresses_UC+0x141ea, %r15
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_normal+0x1adea, %rcx
nop
nop
nop
sub $59129, %r12
mov (%rcx), %ax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'45': 1}
45
*/
