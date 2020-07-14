.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x471c, %rdx
nop
nop
add $64923, %rsi
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
and $675, %r15
lea addresses_normal_ht+0x56de, %rsi
lea addresses_normal_ht+0xc93e, %rdi
and %r10, %r10
mov $73, %rcx
rep movsq
and %r10, %r10
lea addresses_D_ht+0xccbe, %rsi
lea addresses_A_ht+0x8f3e, %rdi
nop
nop
and $15397, %rdx
mov $72, %rcx
rep movsb
nop
nop
nop
nop
nop
and $21314, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x643e, %rsi
lea addresses_WT+0x10b3e, %rdi
nop
nop
cmp $32386, %r10
mov $76, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $37411, %rsi

// Store
lea addresses_normal+0xda3e, %r8
nop
dec %r15
movw $0x5152, (%r8)
nop
nop
nop
xor $3433, %r8

// REPMOV
lea addresses_A+0xe858, %rsi
lea addresses_A+0x1d73e, %rdi
nop
and $55442, %r8
mov $8, %rcx
rep movsb

// Exception!!!
nop
mov (0), %r14
nop
nop
nop
nop
and %r8, %r8

// Load
lea addresses_D+0x15afe, %r10
nop
nop
nop
nop
nop
and $9946, %rsi
mov (%r10), %r14
nop
and $52678, %rcx

// Faulty Load
lea addresses_normal+0x1213e, %rsi
clflush (%rsi)
nop
nop
sub %r14, %r14
mov (%rsi), %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'34': 110}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
