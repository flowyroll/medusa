.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x179ae, %rbx
xor %rdx, %rdx
movb $0x61, (%rbx)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0xc8e, %r13
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm5
and $0xffffffffffffffc0, %r13
movntdq %xmm5, (%r13)
nop
nop
nop
xor $10423, %r9
lea addresses_UC_ht+0x15b6e, %r12
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x105ae, %rsi
lea addresses_D_ht+0x22c8, %rdi
nop
nop
cmp %rbx, %rbx
mov $88, %rcx
rep movsl
nop
nop
nop
nop
xor $10007, %rbx
lea addresses_normal_ht+0x17aae, %r9
nop
cmp %rdx, %rdx
mov (%r9), %r12d
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x6198, %rdx
nop
nop
nop
inc %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rcx

// Store
mov $0x6e56ad00000002f0, %r12
and %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
add $43246, %rcx

// Store
mov $0x5a099b00000005e6, %r12
clflush (%r12)
sub $35074, %r8
movb $0x51, (%r12)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_normal+0x25f, %rax
nop
dec %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_A+0x9aae, %rax
nop
nop
nop
sub $56343, %rbp
mov (%rax), %r12w
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 1}
00
*/
