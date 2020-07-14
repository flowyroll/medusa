.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1e805, %rsi
lea addresses_D_ht+0x8925, %rdi
clflush (%rsi)
clflush (%rdi)
nop
xor $23941, %rdx
mov $60, %rcx
rep movsq
sub %rdi, %rdi
lea addresses_WC_ht+0x15b05, %r12
nop
nop
nop
nop
nop
sub %r11, %r11
movb $0x61, (%r12)
nop
nop
nop
cmp $18529, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_normal+0x15e05, %rax
nop
nop
nop
nop
sub $64459, %rsi
movw $0x5152, (%rax)
nop
nop
nop
sub $17887, %rsi

// Store
lea addresses_normal+0x1d9e5, %r14
nop
nop
nop
nop
cmp $15240, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovntdq %ymm2, (%r14)
nop
nop
nop
nop
and $38549, %rdi

// Store
lea addresses_UC+0x4985, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rdi)
and $60889, %r14

// Store
lea addresses_WC+0xf505, %r14
nop
nop
add $49747, %r13
movw $0x5152, (%r14)
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_US+0x6d05, %r9
nop
nop
nop
nop
and %r13, %r13
movups (%r9), %xmm6
vpextrq $0, %xmm6, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'00': 220}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
