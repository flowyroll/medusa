.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc3e1, %r11
nop
nop
nop
inc %rbx
movl $0x61626364, (%r11)
inc %rbx
lea addresses_UC_ht+0x1b9e1, %rcx
nop
nop
nop
nop
nop
and $46955, %r11
movb (%rcx), %bl
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x150a1, %rsi
lea addresses_WT_ht+0xd301, %rdi
nop
nop
nop
mfence
mov $124, %rcx
rep movsl
nop
inc %rdi
lea addresses_WC_ht+0x6561, %r10
clflush (%r10)
nop
xor %rsi, %rsi
movb $0x61, (%r10)
nop
nop
nop
nop
nop
xor $32567, %rcx
lea addresses_UC_ht+0x14be1, %r11
nop
nop
nop
nop
add $58074, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdx

// Store
lea addresses_D+0x1fe1, %r13
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_US+0x1a3e1, %rax
nop
nop
sub $23824, %rdx
movups (%rax), %xmm1
vpextrq $1, %xmm1, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'ff': 124, '8a': 3, 'ef': 82, '00': 3}
00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 8a ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff 8a ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 8a ff ff ff ff ff ff ff ff ff ff ff ff ff ef ff ff ef ef ef ff ef ef ef ef ef ef ef ef ef ef ef ef ff ff ef ff ef ef ff ef ef ef ef ef ef ef ef ef ff ef ef ef ef ff ff ef ef ef ff ef ef ef ef ef ef ff ef ef ff ff ff ef ef ef ef ef ef ef ef ef ef ff ef ef ef ff ef ef ef ef ef ef ef ff ef ef ef ef 00 ff ff ef ef ef ef ef ff ff ef ef ef ef ef ff ef ef ef ff ef ef ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
*/
