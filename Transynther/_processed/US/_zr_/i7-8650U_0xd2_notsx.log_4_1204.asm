.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1c3b0, %rsi
lea addresses_A_ht+0x1a470, %rdi
clflush (%rsi)
nop
xor $5650, %r10
mov $108, %rcx
rep movsq
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0xc3e0, %rbp
clflush (%rbp)
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x13970, %rbp
nop
add $58662, %r13
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
and $5585, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0xcef0, %r11
nop
nop
nop
nop
nop
dec %rax
movl $0x51525354, (%r11)
and %rbx, %rbx

// Faulty Load
lea addresses_US+0x4af0, %rdi
nop
nop
nop
xor $23341, %r13
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 4}
00 00 00 00
*/
