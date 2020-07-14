.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x180ea, %r8
dec %r13
movw $0x6162, (%r8)
nop
and %rdi, %rdi
lea addresses_normal_ht+0x14156, %rax
nop
nop
cmp %r8, %r8
movb $0x61, (%rax)
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x135aa, %rax
clflush (%rax)
nop
inc %r14
movb $0x61, (%rax)
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1ee8a, %rdi
and $49276, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
and $3222, %rsi
lea addresses_A_ht+0x129ca, %rsi
lea addresses_WC_ht+0x16f2a, %rdi
nop
nop
nop
nop
nop
add $15191, %r12
mov $79, %rcx
rep movsl
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x1932a, %r12
sub $57830, %rcx
mov (%r12), %r14
sub $61684, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x19dea, %rsi
lea addresses_WT+0x50ea, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $111, %rcx
rep movsl
nop
add $63929, %rcx

// REPMOV
lea addresses_WC+0x3e4c, %rsi
lea addresses_PSE+0x181ea, %rdi
clflush (%rdi)
nop
nop
inc %r15
mov $50, %rcx
rep movsb
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_D+0x12e4a, %rbx
nop
and %r15, %r15
movw $0x5152, (%rbx)
nop
inc %rdi

// Store
lea addresses_RW+0x6152, %rbx
nop
nop
and %r15, %r15
movb $0x51, (%rbx)
xor $4755, %rbp

// Load
lea addresses_UC+0x1180e, %r10
clflush (%r10)
nop
nop
nop
cmp %r15, %r15
vmovaps (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
inc %r15

// Load
lea addresses_D+0xaea, %rdi
nop
sub %rbx, %rbx
mov (%rdi), %r10w
inc %rbx

// Store
mov $0x2b48440000000716, %rcx
nop
and $43362, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
sub %r10, %r10

// Store
lea addresses_D+0x18cba, %rbx
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movaps %xmm5, (%rbx)
nop
nop
nop
nop
and $42357, %rsi

// Faulty Load
lea addresses_PSE+0x181ea, %rdi
add %rcx, %rcx
movb (%rdi), %bl
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'38': 38}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
