.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1bc07, %rcx
nop
nop
nop
nop
nop
sub $38679, %rbx
movw $0x6162, (%rcx)
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x2633, %r11
nop
nop
nop
dec %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%r11)
nop
add $55707, %r13
lea addresses_D_ht+0x5007, %r9
nop
nop
nop
nop
xor %rbp, %rbp
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x8407, %rbp
nop
and %rcx, %rcx
mov (%rbp), %r8
nop
nop
nop
nop
and $43852, %r13
lea addresses_D_ht+0x7ac7, %rbp
nop
nop
mfence
mov (%rbp), %r9d
nop
nop
lfence
lea addresses_WT_ht+0xaf39, %rsi
lea addresses_WT_ht+0x7a87, %rdi
clflush (%rsi)
nop
nop
nop
add $11348, %r9
mov $7, %rcx
rep movsw
nop
inc %r13
lea addresses_normal_ht+0x16807, %rsi
lea addresses_UC_ht+0x1dc07, %rdi
nop
nop
nop
dec %rbx
mov $95, %rcx
rep movsq
nop
inc %rcx
lea addresses_UC_ht+0x1907, %rdi
nop
nop
cmp %r8, %r8
movb (%rdi), %r9b
and $50122, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x17037, %rsi
lea addresses_PSE+0x1a0c7, %rdi
nop
nop
and %r13, %r13
mov $58, %rcx
rep movsw
add $22116, %rsi

// Store
lea addresses_WT+0x1bd07, %r15
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%r15)
nop
nop
inc %rsi

// REPMOV
lea addresses_D+0x14717, %rsi
mov $0x3a9, %rdi
nop
nop
nop
and %rax, %rax
mov $25, %rcx
rep movsb
nop
cmp %rax, %rax

// Store
lea addresses_A+0x9007, %r13
nop
nop
cmp $13275, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
nop
xor $27132, %r9

// Load
mov $0x1f79f0000000407, %r15
nop
nop
nop
nop
nop
sub $13498, %rax
mov (%r15), %si
nop
nop
nop
cmp %rsi, %rsi

// Store
mov $0x247e0b0000000307, %rax
nop
nop
nop
add %r9, %r9
movw $0x5152, (%rax)
nop
nop
nop
nop
dec %r13

// Load
lea addresses_UC+0x1e5bb, %r9
nop
add $55002, %rcx
movups (%r9), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
xor %rdx, %rdx

// Load
lea addresses_normal+0xa807, %rsi
nop
nop
nop
sub %rdx, %rdx
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
nop
nop
inc %r9

// Faulty Load
lea addresses_A+0x9007, %r15
nop
dec %rax
mov (%r15), %dx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 394}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
