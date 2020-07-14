.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ed3, %rsi
lea addresses_WC_ht+0x2f13, %rdi
nop
nop
inc %r8
mov $19, %rcx
rep movsq
nop
nop
nop
nop
cmp $11060, %rsi
lea addresses_UC_ht+0x1aec7, %rcx
nop
nop
nop
nop
nop
cmp $50855, %rax
movb (%rcx), %r14b
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x19693, %r14
nop
nop
nop
and %r10, %r10
movw $0x6162, (%r14)
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x2353, %rsi
nop
cmp %r10, %r10
movb (%rsi), %cl
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x168bb, %r10
dec %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x19ad3, %rsi
lea addresses_UC_ht+0x13213, %rdi
sub %rbx, %rbx
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
add $26309, %rbx
lea addresses_UC_ht+0x11453, %r8
nop
sub $20407, %rax
mov (%r8), %r14w
nop
add %r14, %r14
lea addresses_WT_ht+0xa2d3, %rdi
nop
cmp $4197, %rbx
mov (%rdi), %rcx
nop
nop
nop
nop
nop
inc %r10
lea addresses_UC_ht+0x115e3, %rcx
nop
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm7
and $0xffffffffffffffc0, %rcx
movaps %xmm7, (%rcx)
xor $10762, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x1e3, %rax
nop
inc %rdi
movb $0x51, (%rax)
nop
and $1508, %r8

// Store
lea addresses_normal+0x42d3, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
xor $24597, %rax

// Faulty Load
lea addresses_UC+0x72d3, %rcx
sub $15889, %r8
movb (%rcx), %al
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'54': 1}
54
*/
