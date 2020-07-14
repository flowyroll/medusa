.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
lea addresses_WT_ht+0x8ff6, %rax
nop
nop
nop
and $29416, %r9
movups (%rax), %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x104b6, %rax
nop
nop
nop
sub $10493, %rcx
movw $0x6162, (%rax)
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0xdf36, %rbx
nop
nop
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%rbx)
nop
nop
nop
nop
add %rbx, %rbx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x2296, %rsi
nop
xor $19768, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
sub %r14, %r14

// Load
mov $0xbb6, %rax
cmp $32796, %rbx
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_PSE+0x49e2, %rbx
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
nop
and $46807, %rax

// Store
lea addresses_A+0x597a, %r12
nop
nop
nop
inc %rbx
movb $0x51, (%r12)
add %r14, %r14

// Faulty Load
mov $0x48f81c0000000fb6, %rbx
sub $48355, %rax
mov (%rbx), %si
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'00': 138}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
