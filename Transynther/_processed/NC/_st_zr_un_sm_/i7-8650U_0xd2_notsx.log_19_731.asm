.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rdi
lea addresses_normal_ht+0x4d18, %r8
nop
nop
cmp $57914, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r8)
nop
nop
sub $16561, %rbx
lea addresses_normal_ht+0x16680, %rdi
cmp %r15, %r15
movl $0x61626364, (%rdi)
nop
nop
nop
add $133, %r15
lea addresses_WC_ht+0x1bf48, %r12
nop
nop
nop
nop
add %r9, %r9
movb (%r12), %r8b
xor $48931, %r15
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
mov $0x6d3df80000000c48, %rcx
clflush (%rcx)
cmp %r14, %r14
movl $0x51525354, (%rcx)
add %rax, %rax

// Load
lea addresses_UC+0x7448, %rsi
nop
nop
inc %rbp
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
add $11821, %rcx

// Faulty Load
mov $0x6d3df80000000c48, %rax
clflush (%rax)
nop
nop
cmp $58319, %rcx
movups (%rax), %xmm5
vpextrq $0, %xmm5, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'24': 11, '00': 1, '54': 7}
24 24 24 00 24 24 24 24 24 24 54 54 24 24 54 54 54 54 54
*/
