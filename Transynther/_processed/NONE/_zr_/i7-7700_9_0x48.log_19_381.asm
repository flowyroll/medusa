.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a515, %rsi
lea addresses_A_ht+0xdab5, %rdi
nop
nop
cmp %rbx, %rbx
mov $12, %rcx
rep movsl
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0xd0b5, %rsi
lea addresses_UC_ht+0x1ac8f, %rdi
nop
nop
nop
nop
nop
xor $5505, %rbp
mov $101, %rcx
rep movsw
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_UC+0x680f, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add $28801, %r13
movaps (%rcx), %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
add %rcx, %rcx

// Store
lea addresses_WT+0xf875, %rbp
nop
nop
and %r14, %r14
movw $0x5152, (%rbp)
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_WC+0x140b5, %rax
nop
inc %rcx
mov (%rax), %bp
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0xeb35, %rcx
nop
nop
nop
cmp $51715, %rdx
movw $0x5152, (%rcx)
nop
nop
nop
add $25113, %rdx

// Load
lea addresses_US+0x1d175, %rdx
nop
nop
nop
nop
nop
xor $49210, %rcx
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
and $15505, %rcx

// Faulty Load
lea addresses_UC+0xb0b5, %rax
nop
nop
nop
add $61103, %rbp
mov (%rax), %r14d
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
