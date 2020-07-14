.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x2ebe, %r8
nop
nop
nop
nop
nop
cmp %r10, %r10
movb (%r8), %bl
nop
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0xdd32, %rsi
lea addresses_WT_ht+0xfe3e, %rdi
nop
nop
xor %r8, %r8
mov $88, %rcx
rep movsb
nop
nop
nop
add $64729, %rbx
lea addresses_WC_ht+0xdc9e, %rcx
nop
nop
and %rbp, %rbp
mov (%rcx), %si
sub %r10, %r10
lea addresses_D_ht+0x13e3e, %rsi
lea addresses_WT_ht+0x1323e, %rdi
nop
nop
nop
nop
cmp $60255, %rax
mov $85, %rcx
rep movsw
cmp $36495, %rax
lea addresses_A_ht+0xb03e, %rsi
lea addresses_WC_ht+0x11620, %rdi
nop
sub %rbx, %rbx
mov $86, %rcx
rep movsq
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1be, %r10
nop
nop
nop
nop
add $13749, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
cmp $40584, %rdi
lea addresses_A_ht+0x140be, %r10
nop
nop
nop
nop
cmp $5110, %r8
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
xor $24690, %rcx
lea addresses_normal_ht+0x12bd6, %r8
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r8)
sub $58572, %rax
lea addresses_WC_ht+0x2e6e, %rsi
lea addresses_normal_ht+0x170da, %rdi
nop
sub $58630, %r8
mov $49, %rcx
rep movsq
nop
nop
nop
cmp $17465, %rdi
lea addresses_A_ht+0x16d3e, %rsi
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
sub $24944, %r10
lea addresses_D_ht+0x14aaa, %rbx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rbx), %rdi
xor $56732, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rsi

// Store
mov $0x4facef0000000f36, %rdi
clflush (%rdi)
nop
nop
nop
add %rsi, %rsi
movl $0x51525354, (%rdi)
add $22581, %r15

// Store
lea addresses_A+0x9846, %rdi
cmp $31162, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movaps %xmm2, (%rdi)
nop
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_WC+0x483e, %rdi
nop
nop
nop
nop
nop
xor $62330, %r11
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A', 'AVXalign': True, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'08': 2, '48': 8914, '16': 1, '00': 12911, '46': 1}
00 48 00 48 00 48 00 48 48 00 48 00 48 00 48 48 48 48 48 48 00 00 48 48 48 00 48 00 48 48 00 00 00 00 48 00 48 00 48 48 48 00 00 00 00 00 48 00 48 00 48 48 48 00 48 00 00 00 00 48 48 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 48 48 48 00 48 00 48 48 00 00 00 00 48 48 48 48 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 00 00 48 00 00 00 48 48 48 48 00 00 00 00 00 00 00 48 48 00 48 00 48 00 48 00 48 00 48 48 00 48 00 48 00 48 00 00 00 48 00 48 48 48 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 48 48 48 00 00 00 48 48 48 48 00 00 00 48 48 48 00 48 00 48 00 48 00 00 00 00 00 48 00 00 48 00 48 48 00 00 00 00 00 48 00 48 00 00 48 00 48 00 00 00 00 00 00 00 48 48 48 48 00 00 48 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 48 48 48 00 48 48 48 00 00 48 00 00 00 00 00 48 00 00 00 48 48 00 00 00 48 48 48 48 48 48 48 48 48 00 00 48 48 00 00 00 00 48 00 48 00 00 48 00 00 00 48 00 48 00 00 00 48 48 00 48 00 48 00 00 00 00 00 00 00 00 48 48 48 00 48 48 48 00 00 00 48 00 00 00 00 48 00 00 48 00 00 48 00 00 48 00 48 48 00 48 00 48 00 00 00 00 00 48 00 48 48 00 48 00 48 00 00 00 48 48 00 48 00 00 00 48 00 48 48 00 48 00 00 00 00 48 00 48 48 48 00 48 48 48 00 48 00 48 00 48 00 00 48 00 48 48 00 00 48 48 48 00 48 00 00 48 00 00 48 00 48 48 48 00 00 00 00 48 00 48 48 00 48 48 00 00 00 48 48 48 00 48 48 00 48 48 00 00 00 00 00 00 48 48 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 48 48 48 48 48 48 00 48 00 48 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 48 48 48 00 00 00 48 00 00 00 48 00 00 48 48 00 00 48 00 00 48 48 48 00 00 48 00 00 48 00 00 48 00 00 00 00 48 00 48 48 48 48 48 00 48 48 48 00 00 48 48 00 48 48 00 48 00 00 48 00 48 48 00 00 00 00 00 00 00 48 00 48 00 00 48 00 00 00 48 48 00 48 00 00 00 48 00 48 00 00 48 00 48 00 00 00 48 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 00 00 48 48 00 48 48 00 00 00 00 48 00 48 48 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 48 48 48 00 00 48 00 48 48 48 48 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 48 00 00 00 48 00 48 00 00 48 48 00 00 00 00 00 00 48 48 00 00 00 48 48 00 48 00 48 00 00 48 48 48 48 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 48 48 48 00 48 00 00 00 48 00 48 48 48 00 00 00 48 00 00 00 48 00 48 00 48 48 00 48 00 00 00 00 48 48 48 00 48 48 00 00 00 00 00 00 00 48 00 48 48 00 48 48 00 00 00 00 48 00 48 48 00 48 00 48 00 48 00 00 00 48 48 48 48 48 48 00 00 00 48 00 00 00 00 00 48 48 48 48 00 48 00 48 00 48 48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 48 48 00 48 48 00 00 00 48 00 00 00 00 48 00 00 48 00 00 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 00 00 48 00 48 48 48 00 00 00 00 00 48 00 00 00 00 00 48 48 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 48 48 00 00 00 48 00 48 00 00 48 48 00 00 48 48 00 48 48 48 00 00 00 48 00 48 48 00 00 48 48 00 00 00 48 00 48 48 00 00 48 48 00 00 00 48 48 48 48 00
*/
