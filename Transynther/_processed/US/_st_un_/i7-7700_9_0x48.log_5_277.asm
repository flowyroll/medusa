.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x380a, %rsi
lea addresses_WC_ht+0x19b82, %rdi
cmp %r15, %r15
mov $104, %rcx
rep movsq
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x1c702, %rbx
nop
sub $1941, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
and $0xffffffffffffffc0, %rbx
movaps %xmm5, (%rbx)
dec %rdi
lea addresses_WT_ht+0x19702, %rbx
clflush (%rbx)
nop
nop
add $2340, %r14
movb (%rbx), %cl
nop
nop
nop
nop
cmp $11510, %rsi
lea addresses_WT_ht+0x3a99, %r15
nop
nop
nop
add %rdi, %rdi
movups (%r15), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
xor $59504, %r14
lea addresses_WC_ht+0x14b04, %rsi
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x1eae2, %rdi
nop
nop
nop
and %rdx, %rdx
mov (%rdi), %r15d
nop
nop
cmp $400, %r14
lea addresses_normal_ht+0x11e82, %rsi
lea addresses_A_ht+0x3b02, %rdi
nop
nop
nop
nop
sub $44965, %rax
mov $87, %rcx
rep movsq
nop
nop
nop
nop
inc %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x1a682, %rsi
lea addresses_US+0x10e82, %rdi
nop
nop
nop
and $27212, %r10
mov $36, %rcx
rep movsw
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_US+0x10e82, %r8
nop
nop
xor $43182, %rbp
movb (%r8), %r15b
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 6, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'5f': 1, '33': 4}
33 33 33 33 5f
*/
