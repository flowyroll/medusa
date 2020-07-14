.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd515, %rsi
lea addresses_D_ht+0x1c9c1, %rdi
nop
nop
nop
inc %r8
mov $98, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $7474, %r14
lea addresses_WT_ht+0xc6f1, %rsi
lea addresses_D_ht+0x5ff9, %rdi
nop
nop
sub $56368, %rbp
mov $28, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $24042, %r14
lea addresses_WT_ht+0xaec1, %rsi
lea addresses_UC_ht+0x4f41, %rdi
nop
nop
sub $48400, %r10
mov $118, %rcx
rep movsw
nop
nop
nop
nop
nop
and $55981, %r8
lea addresses_normal_ht+0x1832b, %rsi
lea addresses_normal_ht+0x1dac1, %rdi
nop
nop
nop
nop
nop
cmp $39693, %r9
mov $8, %rcx
rep movsl
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x6b41, %rbp
nop
xor $13543, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rbp)
cmp %r9, %r9
lea addresses_WC_ht+0x5ec1, %rbp
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
nop
sub $37368, %rdi
lea addresses_A_ht+0x6f21, %r8
nop
sub $20911, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x12e71, %r14
nop
nop
cmp %rdi, %rdi
movb $0x51, (%r14)
nop
nop
nop
nop
cmp %rax, %rax

// Store
mov $0x510c5f00000003c1, %r10
clflush (%r10)
nop
nop
sub $31698, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
xor $15624, %rax

// Store
lea addresses_A+0x10a69, %r14
nop
nop
and $24681, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
add %r14, %r14

// Store
lea addresses_normal+0x1fec1, %r14
add $13774, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r14)
nop
nop
and $29683, %rax

// Store
mov $0xdc1, %rbp
nop
nop
add $20900, %rax
movl $0x51525354, (%rbp)
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_D+0xb1c1, %rbp
clflush (%rbp)
nop
add $43980, %rdx
vmovups (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'36': 11}
36 36 36 36 36 36 36 36 36 36 36
*/
