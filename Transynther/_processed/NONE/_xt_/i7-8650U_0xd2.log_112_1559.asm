.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x168e1, %r9
and %rbx, %rbx
movb (%r9), %r13b
nop
nop
nop
nop
nop
add $39889, %rcx
lea addresses_D_ht+0x7fe1, %r11
sub %r10, %r10
mov (%r11), %edi
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x1ee9a, %rsi
lea addresses_normal_ht+0x47e1, %rdi
and %r9, %r9
mov $55, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xb511, %rsi
lea addresses_WC_ht+0x11afb, %rdi
clflush (%rsi)
nop
and %r9, %r9
mov $106, %rcx
rep movsw
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi

// Load
mov $0x23748e0000000bb5, %rdi
nop
cmp $17111, %rcx
mov (%rdi), %rbp
add $6281, %rdi

// Store
lea addresses_A+0x1a021, %r10
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
cmp $62765, %r14

// Faulty Load
lea addresses_D+0x4fe1, %rax
clflush (%rax)
xor %r12, %r12
mov (%rax), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'36': 112}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
