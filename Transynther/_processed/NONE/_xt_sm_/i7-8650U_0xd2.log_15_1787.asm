.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x69c2, %rsi
lea addresses_WT_ht+0x5912, %rdi
nop
nop
nop
cmp $26969, %rbx
mov $113, %rcx
rep movsl
nop
nop
dec %r10
lea addresses_normal_ht+0x19524, %rdx
nop
nop
nop
nop
nop
and $57068, %r15
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xa25f, %rsi
lea addresses_WC_ht+0x4502, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $57, %rcx
rep movsq
and $43540, %r15
lea addresses_WC_ht+0xb7fe, %r10
nop
nop
nop
nop
nop
cmp $41688, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %r10
vmovaps %ymm6, (%r10)
nop
nop
nop
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xb302, %rbp
nop
and $21085, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
and $63789, %rbp

// Store
lea addresses_UC+0x3702, %rdi
clflush (%rdi)
nop
and %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rdi)
nop
add $1833, %rsi

// Load
mov $0x34a2690000000b02, %rcx
nop
nop
nop
nop
nop
cmp $39727, %r10
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rdi
inc %r10

// Faulty Load
lea addresses_normal+0xb302, %r8
nop
nop
nop
nop
nop
dec %rbp
mov (%r8), %r10w
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'58': 15}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
