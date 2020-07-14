.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x133bf, %rsi
lea addresses_A_ht+0x1563f, %rdi
nop
nop
xor %rbp, %rbp
mov $16, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $21359, %r15
lea addresses_WC_ht+0x90e7, %rax
nop
nop
nop
nop
cmp $48654, %r13
movl $0x61626364, (%rax)
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xba3f, %rsi
nop
nop
nop
nop
dec %rax
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
and $62117, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rdx
push %rsi

// Store
lea addresses_A+0x948b, %r8
nop
nop
nop
nop
nop
and $39864, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r8)
nop
nop
dec %r15

// Store
lea addresses_normal+0x55bf, %rdx
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movntdq %xmm1, (%rdx)
nop
nop
nop
and $63483, %rsi

// Store
mov $0x6fdf1d00000003bf, %rdx
nop
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
add %r13, %r13

// Store
mov $0x1bf, %r13
sub %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r13)
and $56467, %r13

// Store
lea addresses_RW+0x148bf, %rax
nop
nop
nop
nop
xor $49679, %r15
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
add $43562, %r15

// Store
mov $0x8c3, %rsi
nop
and $49254, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rsi)
nop
add %rsi, %rsi

// Store
lea addresses_WC+0x1b9bf, %rdx
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rdx)
and $63595, %r13

// Faulty Load
mov $0x1a766b00000003bf, %r8
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r8), %si
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'54': 1}
54
*/
