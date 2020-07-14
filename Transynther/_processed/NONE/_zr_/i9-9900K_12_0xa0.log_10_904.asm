.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc9b0, %r13
nop
nop
add %r11, %r11
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
nop
xor $40818, %r9
lea addresses_A_ht+0x62e7, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov (%rdi), %r15w
and %r12, %r12
lea addresses_D_ht+0x1df06, %rdi
nop
nop
nop
nop
and %rax, %rax
movl $0x61626364, (%rdi)
nop
nop
nop
add $55980, %r12
lea addresses_D_ht+0x1a866, %rsi
lea addresses_WT_ht+0xe6e6, %rdi
sub $40942, %r15
mov $10, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r11
lea addresses_A_ht+0x55e6, %rsi
lea addresses_WT_ht+0xe966, %rdi
nop
sub %r15, %r15
mov $11, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0xd5da, %rcx
nop
nop
cmp $29789, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
xor $53238, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_UC+0x59e6, %rdi
xor %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rdi)
and %rbp, %rbp

// Store
lea addresses_US+0x1c3e6, %r10
nop
cmp $13696, %r8
movb $0x51, (%r10)
nop
nop
nop
xor $20393, %r10

// Faulty Load
lea addresses_A+0x51e6, %rbx
cmp %rdi, %rdi
movb (%rbx), %r12b
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
