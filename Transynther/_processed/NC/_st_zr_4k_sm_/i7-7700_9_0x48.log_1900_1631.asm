.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb261, %rsi
lea addresses_WT_ht+0x111e1, %rdi
clflush (%rsi)
nop
nop
nop
dec %r14
mov $53, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1e726, %rdi
nop
nop
nop
nop
and %r15, %r15
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x10261, %rcx
nop
nop
nop
nop
and $20310, %rbx
mov (%rcx), %edi
and %rsi, %rsi
lea addresses_D_ht+0x108a1, %rdi
clflush (%rdi)
nop
nop
dec %rcx
mov (%rdi), %r15d
nop
add $31791, %r14
lea addresses_normal_ht+0x11861, %r15
clflush (%r15)
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%r15)
and $48964, %r15
lea addresses_WT_ht+0x17911, %r14
nop
nop
nop
sub $40259, %r15
movb (%r14), %bl
add %rdi, %rdi
lea addresses_normal_ht+0x1427, %rdi
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rdi)
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_WC+0x10be1, %rax
clflush (%rax)
nop
nop
xor $53603, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
add %rcx, %rcx

// Store
lea addresses_normal+0x11a3d, %rsi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_RW+0x11be1, %r9
nop
nop
nop
add $37242, %r12
movups (%r9), %xmm2
vpextrq $1, %xmm2, %r14
nop
nop
nop
nop
dec %r13

// Store
mov $0x72fb7400000003e1, %rcx
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rcx)
add $60242, %r14

// Store
lea addresses_normal+0xff61, %r12
nop
nop
nop
nop
sub $2262, %r9
movb $0x51, (%r12)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Load
mov $0xb61, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rcx), %rax
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_normal+0x12be1, %rcx
nop
nop
nop
nop
nop
add $22483, %r9
movw $0x5152, (%rcx)
nop
sub $32035, %r14

// Faulty Load
mov $0x72fb7400000003e1, %rax
nop
and %r9, %r9
mov (%rax), %si
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 7, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'58': 1725, '00': 175}
58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 00 00 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58
*/
